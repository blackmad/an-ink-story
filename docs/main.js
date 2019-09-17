var urlParams = new URLSearchParams(window.location.search);
var debug = urlParams.has('debug');
console.log('debug', debug);


(function() {
  let story = null;
  fetch(urlParams.get('story') || 'story.json')
    .then(function(response){
      return response.text();
    })
    .then(function(storyContent){
      story = new inkjs.Story(storyContent);
      continueStory();
    });

  var storyContainer = document.querySelectorAll('#story')[0];
  var choicesContainer = document.querySelectorAll('#choices')[0];
  let currentContainer = storyContainer;

  function showAfter(delay, el) {
    setTimeout(function() {
      el.classList.add('show');
      scrollToBottom();
    }, delay);
  }

  function scrollToBottom() {
    var progress = 0.0;
    var start =
      window.pageYOffset ||
      document.documentElement.scrollTop ||
      document.body.scrollTop ||
      0;
    var dist = document.body.scrollHeight - window.innerHeight - start;
    if (dist < 0) return;

    var duration = 300 + (300 * dist) / 100;
    var startTime = null;
    function step(time) {
      if (startTime == null) startTime = time;
      var t = (time - startTime) / duration;
      var lerp = 3 * t * t - 2 * t * t * t;
      window.scrollTo(0, start + lerp * dist);
      if (t < 1) requestAnimationFrame(step);
    }
    requestAnimationFrame(step);
  }

  function getValue(value) {
    if (value[0] == '=') {
      return story.variablesState.GetVariableWithName(value.substr(1)).value;
    } else {
      return value;
    }
  }

  function processTag(tag) {
    let cmd = '';
    let args = '';

    if (tag.indexOf(':') > -1) {
      [cmd, args] = tag.split(':').map(s => s.trim());
    } else {
      cmd = tag;
    }
    switch (cmd) {
      case 'START_CONTAINER':
        console.log('start container');
        const [elName, className] = args.split('@');

        const newContainer = document.createElement(elName);
        newContainer.className = className;
        currentContainer.appendChild(newContainer);
        currentContainer = newContainer;
        break;
      case 'SET_CONTAINER_PROPERTY':
        const [attributeName, value] = args.split('@');
        console.log('SET_CONTAINER_PROPERTY', attributeName, getValue(value));
        currentContainer.style[attributeName] = getValue(value);
        break;
      case 'END_CONTAINER':
        console.log('end container');
        currentContainer = currentContainer.parentElement;
        break;
      case 'P':
        var p = document.createElement('p');
        currentContainer.appendChild(p);
        break;
    }
  }

  function processTags(tags) {
    tags.forEach(processTag);
  }

  function removeExistingChoices() {
    // Remove all existing choices
    var existingChoices = choicesContainer.querySelectorAll('p.choice');
    existingChoices.forEach(c => c.parentNode.removeChild(c));
  }

  function hideExistingChoices() {
    // Remove all existing choices
    var existingChoices = choicesContainer.querySelectorAll('p.choice');
    existingChoices.forEach(c => (c.style.visibility = 'hidden'));
  }

  function continueStory() {
    var paragraphIndex = 0;
    var delay = 0.0;

    // Generate story text - loop through available content
    if (story.canContinue) {
      // Get ink to generate the next paragraph
      const paragraphText = story.Continue();

      processTags(story.currentTags);

      if (paragraphText == null || paragraphText.trim() == '') {
        addChoices();
      } else {
        var paragraphElement = document.createElement('span');
        var speed = 25;
        if (debug) {
         speed = 0;
        }
        const currentTypeIt = new TypeIt(paragraphElement, {
          cursor: false,
          speed,
          afterComplete: instance => {
            scrollToBottom();
            addChoices();
          }
        })
          .type(paragraphText)
          .go();
        currentContainer.appendChild(paragraphElement);
      }
    }

    function addChoices() {
      removeExistingChoices();

      // Create HTML choices from ink choices
      if (story.currentChoices.length > 0) {
        story.currentChoices.forEach(function(choice) {
          // Create paragraph with anchor element
          var choiceParagraphElement = document.createElement('p');
          choiceParagraphElement.classList.add('choice');
          choiceParagraphElement.innerHTML = `<a href='#'>${choice.text}</a>`;
          choicesContainer.appendChild(choiceParagraphElement);

          // Fade choice in after a short delay
          showAfter(delay, choiceParagraphElement);
          delay += 200.0;
          if (debug) {
            delay = 0;
          }

          // Click on choice
          var choiceAnchorEl = choiceParagraphElement.querySelectorAll('a')[0];
          choiceAnchorEl.addEventListener('click', function(event) {
            // Don't follow <a> link
            event.preventDefault();

            hideExistingChoices();

            // Tell the story where to go next
            story.ChooseChoiceIndex(choice.index);

            // Aaand loop
            continueStory();
          });
        });
      } else {
        continueStory();
      }
    }

  }
})();
