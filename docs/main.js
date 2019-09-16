(function(storyContent) {

    var story = new inkjs.Story(storyContent);

    var storyContainer = document.querySelectorAll('#story')[0];
    let currentContainer = storyContainer;

    var containerTag = 'null';

    function showAfter(delay, el) {
        setTimeout(function() { el.classList.add("show") }, delay);
    }

    function scrollToBottom() {
        var progress = 0.0;
        var start = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop || 0;
        var dist = document.body.scrollHeight - window.innerHeight - start;
        if( dist < 0 ) return;

        var duration = 300 + 300*dist/100;
        var startTime = null;
        function step(time) {
            if( startTime == null ) startTime = time;
            var t = (time-startTime) / duration;
            var lerp = 3*t*t - 2*t*t*t;
            window.scrollTo(0, start + lerp*dist);
            if( t < 1 ) requestAnimationFrame(step);
        }
        requestAnimationFrame(step);  
    }

    function processTag(tag) { 
      let cmd = '';
      let args = '';

      if (tag.indexOf(':') > -1) {
        [cmd, args] = tag.split(':').map(s => s.trim());
      } else {
        cmd = tag;
      }
      switch(cmd) {
        case 'START_CONTAINER':
          console.log('start container');
          const [elName, className] = args.split('@');
          
          const newContainer = document.createElement(elName);
          newContainer.className = className;
          console.log(args);
          console.log(className);
          currentContainer.appendChild(newContainer);
          currentContainer = newContainer;
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
      tags.forEach(processTag)
    }

    function continueStory() {

        var paragraphIndex = 0;
        var delay = 0.0;

        // Generate story text - loop through available content
        if (story.canContinue) {

            // Get ink to generate the next paragraph
            const paragraphText = story.Continue();
            console.log(paragraphText);
            console.log(story.state.currentPathString)
            // console.log(story.currentPathString)
            console.log(story.currentTags);
            processTags(story.currentTags);

           console.log(paragraphText);

           var paragraphElement = document.createElement('span');
           const currentTypeIt = new TypeIt(paragraphElement, {
            cursor: false,
            speed: 25,
            afterComplete: (instance) => {
              addChoices();
           }}).type(paragraphText).go();
           currentContainer.appendChild(paragraphElement);

            // Create paragraph element
            // paragraphElement.innerHTML = paragraphText;
            // currentContainer.appendChild(paragraphElement);

            // // Fade in paragraph after a short delay
            // showAfter(delay, paragraphElement);

            // delay += 200.0;
        }

        function addChoices() {
          // Create HTML choices from ink choices
          if (story.currentChoices.length > 0) {
            story.currentChoices.forEach(function(choice) {

                // Create paragraph with anchor element
                var choiceParagraphElement = document.createElement('p');
                choiceParagraphElement.classList.add("choice");
                choiceParagraphElement.innerHTML = `<a href='#'>${choice.text}</a>`
                storyContainer.appendChild(choiceParagraphElement);

                // Fade choice in after a short delay
                showAfter(delay, choiceParagraphElement);
                delay += 200.0;

                // Click on choice
                var choiceAnchorEl = choiceParagraphElement.querySelectorAll("a")[0];
                choiceAnchorEl.addEventListener("click", function(event) {

                    // Don't follow <a> link
                    event.preventDefault();

                    // Remove all existing choices
                    var existingChoices = storyContainer.querySelectorAll('p.choice');
                    for(var i=0; i<existingChoices.length; i++) {
                        var c = existingChoices[i];
                        c.parentNode.removeChild(c);
                    }

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

        scrollToBottom();
    }

    continueStory();

})(storyContent);