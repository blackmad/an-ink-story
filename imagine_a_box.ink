* Imagine yourself a thing.

- * No, no, imagine yourself as a thing.[] A thing for others to use. A tool. An object.

VAR singular="thing"
VAR plural="things"

- What kind of a thing are you? #
* [a tool] I'm a tool to be used #display:second
~singular="tool"
~plural="tools"
* [an object] I'm an object#display:second
~singular="object"
~plural="objects"
* [a canvas] I'm a canvas to be painted on #display:second
~singular="canvas"
~plural="canvases"
* [just a thing] I'm just a thing #display:second

- Sometimes people proudly display their {plural}. Other times people hide them away in carefully constructed boxes, even their most precious, valuable, loved {plural}.

What kind of {singular} are you?
* I'm a displayed thing #display:second
-> displayed_thing
* I'm a hidden away thing #display:second
-> hidden_away_thing
* I'm an indecisive, unsure thing #display:second
{~->displayed_thing|->hidden_away_thing}.


== hidden_away_thing
Hidden away {plural} need their proper container.

Imagine yourself a box.

How big is the box?
* Small, smaller than I am. #display:second
* Just big enough to lay down in. #display:second
* Large, enough to move around a bit. #display:second

- Now reach out your hand and touch the box, what does it feel like?
VAR box_texture = ""
* Smooth
~ box_texture = "smooth"
* Rough
~ box_texture = "rough"

VAR box_material = "wood"
- What is the box made of?
* Metal
~ box_material = "metal"
* Wood[],
~ box_material = "wood"
* * stained wood.
* * raw wood.
* Plastic
~ box_material = "plastic"

- Can you see what color it is from the outside?
VAR box_color = "blue"
* Blue
~box_color="blue"
* Red
~box_color="red"
* Black
~box_color="black"
* Gold
~box_color="gold"
* Silver
~box_color="silver"
* Natural
~box_color="natural"


- A {box_texture} {box_color} {box_material} box. 

Now, walk around the box. How does looking at the box make you feel?
* Nothing[], it's just a box.
* Nervous[] about what's going to happen with the box.
* Embarassed[] that I want to be inside the box.
* Excited[] to finish constructing my box.

- -> DONE

== displayed_thing
Displayed {plural} need a proper surface on which to be displayed.
-> DONE

// - A nice you sized {box_color} box. Now, how big is it? 