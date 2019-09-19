-> note_4
VAR sloppy = 0

VAR house_word = "house"

You arrive at
* (house) a house in Morristown[]. #IMG=house_in_morristown.jpg
* (apartment) an apartment in Bushwick[]. #IMG=loft_in_bushwick.jpg
~ house_word = "apartment"
* (farmhouse) a renovated farmhouse upstate[]. #IMG=farmhouse_upstate.jpg

- At eye level you see
* a handwritten note[]. The lettering is
* * messy[]. A messy handwriting that you've seen many times before. For a moment you are unsure. Shouldn't -> he_picker ->
be more elegant. Shouldn't this look more like movies? Couldn't {he} have at least paid someone to write it for him? You take a deep breath and check in with your nerves. Of course there are nerves. Of course it's still {him}. You wouldn't be here if it wasn't. You remind yourself to find comfort in the parts that aren't a storybook.
* * in an unfamiliar script. -> He_picker ->
must have had someone else write this note. These little touches make you feel
* * * like you're living in a fantasy.
* * * cared for.
* * * a little exhausted to keep up[], but it's the effort that counts.
* * uneven cursive[]. -> His_picker -> 
usual handwriting is such chickenscratch. It's adorable how {he} tries for these elegant touches
* * elegant[]. Sometimes it's shocking how much the reality can look and feel like the fantasy. Is that a stray mark of a fountain pen? You picture the heavy metal inkwell, the 
~ temp ink_color = "ink_color"
* * * night dark black
~ink_color="black"
* * * almost black brown
~ink_color="brown"
* * * oxblood red
~ink_color="red"
ink, the carefully carved nib, and the scratch of the tip dragging into the paper
* an embossed envelope[], complete with a 
* * black #IMG=black_wax_seal.jpg
* * red #IMG=red_wax_seal.jpg
* * silver #IMG=silver_wax_seal.jpg
- - wax seal on the back. You slide your carefully manicured nail underneath the flap, first diggging one nail into the line of glue until there's a large enough opening to push your finger in and feel the cool smoothness of the paper against your fingertip.
* a typewritten letter[] folded three times. You can see the reverse impressions of some of the struck letters through the paper. In you head, you see the metal hammers firmly striking down on the page.

- The note begins, # P
- (note_1)
# START_CONTAINER: div@note
- (opts) 
* I am so proud[] of you for being here.
* I am so thankful[] for your trust. 
* I am so grateful[] for you.
* You must be nervous[], and, as always, there is both no reason to be so, and lots of reasons to be so.
* You are safe here[] and yet you will be made to feel unsafe.
* -> note_done
- -> opts

- (note_done) 
* Please read the following instructions carefully. #P

VAR door_box="box"
VAR door_box_requires_lock=false
- Look down to your
* left[].
* right[].
- There is a
* cast iron safe[] which I encourage you not to touch until you have read through all your instructions.
~ door_box = "safe"
~ door_box_requires_lock = false
* cedar box[] with a hasp for a padlock.
~ door_box = "box"
~ door_box_requires_lock = true
* bench[] with a lid that lifts open.
~ door_box = "bench"
~ door_box_requires_lock = true

-Open it up. Do you see the empty space inside? You are going to fill it. You are going to pour yourself into it as you exist in this moment and cross the threshold an empty vessel to be filled up anew. #P

* Close your eyes. #P

- If you are reading this, it means you did not follow your instructions precisely. I told you to close your eyes, but did not tell you when or how, or even if, to open them. Perhaps if you were good, I will find you here with your eyes closed, awaiting further instuction, when I return. #P

But I doubt that. #P

I am going to ask you to close your eyes again. While you are doing so, savor

- (moment_opts)
* this moment of liminality, 
* this moment on the edge of taboo,
* this moment of not knowing what comes next,
-> moment_done
- -> moment_opts

- (moment_done)
* this moment when you could still leave.
- (note_2)
- Close your eyes and #P
* count backwards from 10 
# END_CONTAINER: div@note
-> count_backwards(10, "") -> 
* take three deep breaths[], count four in, four hold, and four out. 
# END_CONTAINER: div@note
-> count_backwards(3, "in for four, hold for four, out for four") ->  
* keep them closed for as long as you wish. 
# END_CONTAINER: div@note
* * You keep them closed for what feels like an eternity.
* * You pick a number  and decide you will count your heartbeats up until that.
* * You blink for a second[], following the instructions to the letter.

- You open your eyes and feel
* your heartbeat speeding up.
* unexpected tears welling up in your eyes.
* anxious to get going.
* calm.

- (note_3)
# START_CONTAINER: div@note
- I do so love to surprise you, but alas, you are very smart and at times there are tropes and stations, so I am going to assume you have already figured out what comes next.

I ask you to do it with the level of care and intention that befits the action. #P

Place everything you are currently wearing, carrying or holding in the {door_box} by the door. Everything. Clothing. Jewelry. Phone. Underwear. #P

{
  - door_box_requires_lock:
    Reach underneath the {door_box}. Underneath you will find an open lock. When you are done, close the {door_box}, drop the hasp, and click the lock shut. 
  - !door_box_requires_lock:
    When you are finished, push the door of the safe closed and turn the handle to lock it.
  }
  
  After locking it, let yourself into the {house} where you'll find further instructions.
 
 # END_CONTAINER: div@note
 
 - (note_4)
 
 Of course that's what the note would say. Of course. You could have written it
 * since you were fifteen years old.
 * for {him}[].
 * and very well might have, in some late night sext.
 
- You think to yourself, "<>#P
* Can I really do this? 
Here?<> { 
    - house: 
        On this busy street?"
    - apartment: 
       In this hallway where anyone could walk by while I'm stripping down?"
    - farmhouse: 
        Well, At least no one is likely to see me here."
    - else:
        Exposed in the open?"
    }
* How does {he} know me so well?
Of course {he} chose<> { 
    - house: 
        a place just on the edge of my comfort"
    - apartment: 
       a place {he} knew would embarrass me"
    - farmhouse: 
        a secluded place {he} knew I'd feel safe."
    - else:
        this place."
    }
* Calm down, breathe in, just a few more minutes"[] and then the click of the lock would be an irreversible choice in your past, a clear break between lives.


- Feelings of
* arousal
* embarassment
* trepidation
- rise up in your stomach.

- You feel it in your fingertips as they turn
* cold and clammy.[] This isn't a sexy feeling. You try to move the feeling around in your body, to eroticize the fear. You begin by pulling off your -> clothing_undress_1 -> 

  the fabric feels rough in your hands, like trying to carry a paper bag in winter.
* warm and tingly.[] You wonder if the electricity you felt was visible to others.  You could almost feel them burning through the cloth as you pull off your  -> clothing_undress_1 ->
.
* numb and heavy.[] It feels like a struggle to lift them up to begin undressing. . You shake your arms out, hoping to awaken them. With great effort, you peel off your -> clothing_undress_1 ->
.

- A calm begins to come over you. #P 
You look down at your -> clothing_undress_2 ->
and  
* unzip
* unbutton
* slide down
- them. Down they go. #P

Just a few more pieces to take off
- (clothing_undress_3) 
* bra[],
* underwear[],
* watch[],
* earrings[],
* handbag[],
* bracelets[],
* {clothing_undress_3} and then you're all done. -> clothing_undress_done
- -> clothing_undress_3

- (clothing_undress_done)

By now there's
* an untidy pile by your feet
* * you shove the crumpled clothing into the {door_box}
* * you begin folding each piece[], not wanting to {him} to think you were being careless.
* neatly folded stack[] of clothing on top of the {door_box}. You bend down and place it all inside 


- -> DONE

== clothing_undress_1
* t-shirt
* blouse
* dress
- ->->

== clothing_undress_2
* pants
* stockings
* leggings
* jeans
* skirt
- ->->

== count_backwards(count_backwards_var, extra)
// 

- (count_backwards_counter)
	+	{count_backwards_var > 0} &nbsp;{count_backwards_var}. {extra}
    ~ count_backwards_var = count_backwards_var - 1
	-> count_backwards_counter
	* {count_backwards_var == 0} ->->

== small_room
You are alone in a small room. The walls are
* red.
* white.
* blue.
- -> DONE

VAR he = "he_pronoun"
VAR his = "his_pronoun"
VAR him = "him_pronoun"
VAR He = "He_pronoun"
VAR His = "His_pronoun"
VAR man = "man"
VAR Man = "Man"
VAR says = "says"
VAR pronoun_chosen = false

== he_picker
{ pronoun_chosen:
	{he} ->->
- else:
	-> he_picker_helper ->->
}

== he_picker_helper 
* he
-> set_male_pronouns ->
* she
-> set_female_pronouns ->
* they
-> set_nb_pronouns ->
- ->->


== He_picker
{ pronoun_chosen:
	{He} ->->
- else:
	-> He_picker_helper ->->
}

== He_picker_helper 
* He
-> set_male_pronouns ->
* She
-> set_female_pronouns ->
* They
-> set_nb_pronouns ->
- ->->

== His_picker
{ pronoun_chosen:
	{His} ->->
- else:
	-> His_picker_helper ->->
}

== His_picker_helper 
* His -> set_male_pronouns ->
* Her -> set_female_pronouns ->
* Their -> set_nb_pronouns ->
- ->->

== set_male_pronouns
~ he = "he"
~ his = "his"
~ him = "him"
~ He = "He"
~ His = "His"
~ man = "man"
~ Man = "Man"
->->

== set_female_pronouns
~ he = "she"
~ his = "her"
~ him = "her"
~ He = "She"
~ His = "Her"
~ man = "woman"
~ Man = "Woman"
->->

== set_nb_pronouns
~ he = "they"
~ his = "their"
~ him = "them"
~ He = "They"
~ His = "Their"
~ man = "person"
~ Man = "Person"
~ says = "say"
->->

== person_walks_in 
// https://webapps.towson.edu/ows/pronouns.htm

-<> A
* man
-> set_male_pronouns ->
* woman
-> set_female_pronouns ->
* hooded figure
-> set_nb_pronouns ->

- walks in. 
-> DONE

// -----------------------
// -----------------------
// -----------------------
// -----------------------

== try_1
{He} looks deeply at your body as you

* sit[] with your legs crossed, your palms sweaty against your knees.
~ sloppy += 1
"Tsk," {he} {says}. "That isn't a very tidy way to arrange your body, now is it?"
* stand[] with your fingers interlocked behind your head. Your elbows and shoulders are beginning to burn. 
* kneel[] with your eyes gazing
  * * straight ahead[]. "Relax." {he} {says}. "Look at me."
  * * downcast at the floor.
  * * towards the {man}.
- -> DONE

// -----------------------
// -----------------------
// -----------------------
// -----------------------

