* Imagine yourself a thing. #P

I am thinking of a thing #style: second #P

- * No, no, imagine yourself as a thing.[] #P

I am imagining myself as a thing #style: second #P

A thing for others to use. #P

VAR singular="thing"
VAR plural="things"

- What kind of a thing are you? #P
* [a tool] I'm a tool to be used #style:second 
~singular="tool"
~plural="tools"
* [an object] I'm an object #style:second
~singular="object"
~plural="objects"
* [a canvas] I'm a canvas to be painted on #style:second
~singular="canvas"
~plural="canvases"
* [just a thing] I'm just a thing #style:second

#P

- Sometimes people proudly display their {plural}. Other times people hide them away in carefully constructed boxes, even their most precious, valuable, loved {plural}. #P
-> what_kind

== what_kind
What kind of {singular} are you? #P
* I'm a displayed thing #style:second #P
-> displayed_thing
* I'm a hidden away thing #style:second #P
-> hidden_away_thing
* I'm an indecisive, unsure thing #style:second #P
{~->displayed_thing|->hidden_away_thing}.


== hidden_away_thing
Hidden away {plural} need their proper container. #P

Imagine yourself a box. #P

How big is the box? #P
* [Small] The box is small, smaller than I am. #style:second #P
* [Just big enough] The box is just big enough for me to lay down in. #style:second #P
* [Roomy] The box is large, enough for me to move around in a bit. #style:second #P

- Now reach out your hand and touch the box, what does it feel like? #P
VAR box_texture = ""
* [Smooth] The box feels smooth to my touch.  #style:second #P
~ box_texture = "smooth"
* [Rough] The box feels rough to my touch.  #style:second #P
~ box_texture = "rough"

VAR box_material = "wood"
- What is the box made of? #P
* [Metal] The box is made of metal. It's harsh. Cold to my touch. #style:second #P
~ box_material = "metal"
* [Wood] The box is made of wood. I can feel the grain and smell the aroma. #style:second #P
~ box_material = "wood"
* * (stained_wood)[Stained Wood] The box is stained a deep cherry red. The finish is dark and rich. Like I am meant to be stored in someone's study. #style:second #P
* * (raw_wood) [Raw Wood] The box is made of raw wood. A simple, rustic box. Like I was meant to be stored in a barn. #style:second #P
* (plastic) [Plastic] The box is made of plastic. Like I am meant to be stored in a factory, or a warehouse, or a spaceship.  #style:second #P
~ box_material = "plastic"

- Can you see what color it is from the outside?
VAR box_color = "blue"
* [Blue] The box is blue. #style:second #P
~box_color="blue"
* [Red] The box is red. #style:second #P
~box_color="red"
* [Black] The box is black. #style:second #P
~box_color="black"
* [Gold] The box is gold. #style:second #P
~box_color="gold"
* [Silver] The box is silver. #style:second #P
~box_color="silver"
* {!stained_wood && !plastic} [Natural] The box is the natural color of the {box_material} #style:second #P
~box_color="natural"
* {plastic} [Clear] The box is clear. There will be no privacy for me in the box.
~box_color="clear"


- A {box_texture} {box_color} {box_material} box. 

Now, walk around the box. How does looking at the box make you feel?
* Nothing[], it's just a box.
* Nervous[] about what's going to happen with the box.
* Embarassed[] that I want to be inside the box.
* Excited[] to finish constructing my box.

- -> DONE

== displayed_thing
Displayed {plural} need a proper surface on which to be displayed. #P
-> DONE

// - A nice you sized {box_color} box. Now, how big is it? 