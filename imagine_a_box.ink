# NEWLINE_MODE=true

-> hidden_away_thing.box_feels

* Imagine yourself a thing

I am thinking of a thing #style: second

- * No, no, imagine yourself as a thing.[]

I am imagining myself as a thing #style: second

A thing for others to use.

VAR singular="thing"
VAR plural="things"

- What kind of a thing are you?
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

- Sometimes people proudly display their {plural}. Other times people hide them away in carefully constructed boxes, even their most precious, valuable, loved {plural}.
-> what_kind

== what_kind
What kind of {singular} are you?
* I'm a displayed {singular} #style:second
-> displayed_thing
* I'm a hidden away {singular} #style:second
-> hidden_away_thing
* I'm an indecisive, unsure {singular} #style:second
{~->displayed_thing|->hidden_away_thing}.


== hidden_away_thing
Hidden away {plural} need their proper container.

Imagine yourself a box.

How big is the box?
* [Small] The box is small, smaller than I am. #style:second
* [Just big enough] The box is just big enough for me to lay down in. #style:second
* [Roomy] The box is large, enough for me to move around in a bit. #style:second

- Now reach out your hand and touch the box, what does it feel like?
VAR box_texture = ""
* [Smooth] The box feels smooth to my touch.  #style:second
~ box_texture = "smooth"
* [Rough] The box feels rough to my touch.  #style:second
~ box_texture = "rough"

VAR box_material = "wood"
- What is the box made of?
* [Metal] The box is made of metal. It's harsh. Cold to my touch. #style:second
~ box_material = "metal"
* [Wood] The box is made of wood. I can feel the grain and smell the aroma. #style:second
~ box_material = "wood"
* * (stained_wood)[Stained Wood] The box is stained a deep, dark color. Like I am meant to be stored in someone's study. #style:second
* * (raw_wood) [Raw Wood] The box is made of raw wood. A simple, rustic box. Like I was meant to be stored in a barn. #style:second
* (plastic) [Plastic] The box is made of plastic. Like I am meant to be stored in a factory, or a warehouse, or a spaceship.  #style:second
~ box_material = "plastic"

- Can you see what color it is from the outside?
VAR box_color = "blue"
* [Blue] The box is blue. #style:second
~box_color="blue"
* [Red] The box is red. #style:second
~box_color="red"
* [Black] The box is black. #style:second
~box_color="black"
* [Gold] The box is gold. #style:second
~box_color="gold"
* [Silver] The box is silver. #style:second
~box_color="silver"
* {!stained_wood && !plastic} [Natural] The box is the natural color of the {box_material} #style:second
~box_color="natural"
* {plastic} [Clear] The box is clear. There will be no privacy for me in the box.
~box_color="clear"


- A {box_texture} {box_color} {box_material} box. 

- (box_feels)
Now, walk around the box. How does looking at the box make you feel?
* [Nothing ...]I feel nothing, it's just a box. #style:second
Are you being willfully bratty? Honestly, do you really feel nothing?
* * [Yes] Yes, I really feel nothing right now. #style:second
-> maybe_stop
* * [No] No, I was just being bratty. #style:second

* [Nervous ... ]I feel nervous about what's going to happen with the box.  #style:second
Good. I like it when you've got butterflies in your stomach. It's an exciting nervousness, isn't it?
* * [Yes] Yes, it's an exciting nervousness. Like the clicking ascent up the first hill of a roller coaster.
* * [No] No, I don't feel good about this.
-> maybe_stop

* [Embarassed .. ]I feel embarrassed that I want to be inside the box. #style:second
Let's unpack that. Firstly, why do you want to be inside the box?
* * [It's safe in there] It's safe in there. Safety in giving myself away. #style:second
* * [It's scary in there] It's scary in there. Fear in what might happen. Fear of giving myself away #style:second
* * [I don't know] I don't know why I want to get inside the box. I just do #style:second
- - Now, why does that make you feel embarrassed?
* * [It feels wrong] It feels wrong, to want to give into those feelings. To step out of polite society for this. #style:second
* * [Others will judge me] Because if anyone knew I was having this fantasy, they would judge me for being weak or selfish or ... I don't know #style:second
* * [It's selfish] It's selfish to step outside of polite society and ask someone else to take care of you forever #style:second
* * [It's overtly sexual] I'm always embarrassed to give in to my deviant sexual desires. Polite society says not to. #style:second
- - Does saying that make you any less embarrassed?
* * [Yes ...] Yes, saying it out loud makes me less embarrassed # style:second
- - - Good.
* * [No ...] No, talking about it just makes it worse # style:second
- - - Can you play with that embarrassment? Can you make it into an exciting discomfort?
* * * [Yes ...] Yes, that helps # style:second
- - - Good.
* * * [No ...] No, I can't. #style:second 
-> maybe_stop -> 

* [Excited ...]I feel excited to finish constructing my box. #style:second
- - You should be. It's going to be very cozy.

- Look inside the box. 





- -> DONE

== maybe_stop
In that case, perhaps it is time to part ways in this fantasy. Let's stop?
* * * [Yes, thank you] Thank you for checking in. I'm not feeling this right now. Maybe I'll come back later. #style:second
-> DONE
* * * [No, I want to keep playing] No, I want to keep playing. #style:second
Let's continue when you're ready. Close your eyes. Imagine your {box_texture} {box_color} {box_material} box. Imagine getting into it. When you're ready, let's continue.
* * * * [I'm ready] I'm ready. Thank you for waiting for me. #style:second
->->

== displayed_thing
Displayed {plural} need a proper surface on which to be displayed.
-> DONE

// - A nice you sized {box_color} box. Now, how big is it? 