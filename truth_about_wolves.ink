-> start 

=== start ===
The narrow streets are paved with mud, feces, and urine. Thankfully, the scent of pickled sardines and onions fills the air, so that if you closed your eyes and took some magic mushrooms, you might think that you were experiencing severe indigestion after a cheap pub meal. 

You stand before the local notice board, a staple of every fantasy story or game. 

*[Notice boards are put up outside pubs, right? Look for the pub!] -> look_for_pub
*[Notice board means quest/bounty means money. Take a look at the notice board.] -> notice_board

=== look_for_pub ===
The local density of drunk people is unnervingly low. You also don't see any vomit puddles. The building in front of which the notice board stands is a non-descript 3-storey brick house with a wooden shingle roof. 

*[Don't give up hope yet. It might still be a pub. Or at the very least, the occupant of the building is bound to know where the pub is. Go inside.] -> inside_research_facility
*[Drinks always taste better after an afternoon of hearty questing anyway. Read the notice board and see if there's any easy coin to be made.] -> notice_board

=== notice_board ===
After translating the poor spelling and grammar to the best of your ability, you can see the following notices: 

+ Hunter of savage beasts required! Save the town! -> bounty
+ Pink invisible unicorns for sale -> pink_unicorns
+ Top-notch beer-drinkers required -> beer_drinkers
    
    = bounty 
    Several fell beasts in the classical form of anthropomorphised wolves have the town trembling!
    Innocent bairns and women of child-bearing age have been partially eaten, although certainty we have not, since facial reconstructive skills we possess not, nor dental records, and more importantly we pride ourselves in jumping to conclusions so as to facilitate the entertaining enterprise of capturing, torturing and lynching any viable and non-viable suspect! To this end, to any brave soul who would capture or kill said beasts, offer 250 crowns I do, the alderman of this gentle town. To this noble quest take, ye shall the alderman find, in the only structure in town which a tower has. 
    
        {Your map is updated with the location of the alderman.|}
    
    + [Read other notices] -> notice_board
    + [Sounds good! Go find the alderman] -> find_alderman 
    + Hold your horses. You don't know the cost of living here. For all you know, 250 crowns might not even get you a pint. Time to find that pub! -> look_for_pub
    
    = pink_unicorns 
    Two fine mono-keratinous ungulates produced by a pink stud and an invisible mare ready to find gullible homes. Pedigree available upon request. Contact Mikael for specifics including price. 
    // Later if you actually do run into Mikael, you can kill him for fraud or buy his unicorns.
    + [How the hell are you going to find Mikael? Read the other notices.] -> notice_board
    
    = beer_drinkers 
    // Notice posted by one of the Wolves to lure young male humans with decent amount of muscle 
    // If you follow this notice, you will meet the wolf sons without hearing the old wolf's perspective. 
    Are you a manly man who can drink and drink and drink and never get drunk because you're full of delicious muscle and not a lot of toxin-accumulating lipid tissue? Would you like to put your excellent capacity to metabolise alcohol to good use? We at Redmur Alcoholics Not-anonymous No-liability are looking for people to test our new line of non-addictive beer. If you satisfy the above criteria or have more than 60 pounds of lean muscle mass, apply by visiting your local representative, Wolfgang Notadeus Badart, at: 
    
                RANN HQ, 
                Middle of Scary Forest, 
                The Heap, not the Stack // computer joke :P
    
    + [Read other notices] -> notice_board
    + Hey, this location is on the quest map. Let's go! -> rann_hq

=== inside_research_facility ===
The building is about as far from a pub as you could possibly get. You enter into a long hallway with glass walls. Behind the glass, there are long stainless steel benches filled with glass tubes, cylinders, petri dishes, burettes, and tiny portable fireplaces that you assume function as bunsen burners. The walls are lined with ghastly organic specimens suspended in a liquid which looks difficult to render in real time. 

=== find_alderman ===
-> END

=== rann_hq ===
// Meet the young wolves, possibly get eaten. 
You walk down a dark winding path through the forest. There is a trail but you don't follow it because your quest map shows that there is a more direct path, and you're impatient to actually do something in this damn game already. The leaves of the undergrowth scratch at your calves and the thorny bushes have branches that stick out horizontally at your crotch level, like someone knew someone of your height was going to be walking through here. 

+ You keep walking. Thank goodness computers only have a finite number of states. This will be over soon. -> approaching_rann
+ This sucks. You go back to the notice board. -> notice_board

    = approaching_rann 
    You arrive at a run-down hut with "RANN HQ" painted on the door in unpleasant brown. You can't decide whether you would prefer it to be blood or poop, and you would bet everything in your inventory that it isn't chocolate or coffee. The mud around the hut is trampled with large boot prints, and you feel assured that there is beer nearby. 
    
    + You swing open the door, being careful to avoid touching the bizarre black stains - it's good to be careful until you know for sure whether or not the developers have implemented infectious disease. -> inside_rann
    
    // wolf complains of being anthropomorphised; don't have the running speed or endurance anymore
    
    = inside_rann
    You seem to have entered into a small pub, except without any drunk people. In fact, the only person in the pub is a congenial-looking barkeep, whose programming is not complex enough to simulate boredom at having to polish the same glass and endlessly repeat the same conversations with player characters. 
    
        * You observe the time-honoured protocol of addressing fantasy barkeeps, and greet him with a gruff look as you sit down at the bar. You save the hawking and spitting because this is the first clean pub you've been in. -> lured_to_cellar_1
        
        * "Are you Wolfgang? I'm here for the beer trial." -> lured_to_cellar_2
        
        * You're in the middle of the forest and there are no guards. You really want some loot already so you draw your hunting knife behind your back, ready to stab the barkeep.->fight
        
        
    
    = lured_to_cellar_1
    "You must be here for the non-addictive beer trials," the barkeep says in a voice that sounds a lot like Benedict Cumberbatch's. You nod with manly gravitas. 
    
    -> lured_to_cellar
    
    = lured_to_cellar_2
    "Excellent," says Wolfang, licking his teeth. 
    -> lured_to_cellar
    
    = lured_to_cellar 
    "I would be delighted to include you in our trial. There is just a bit of paperwork to be done - in particular, you'd be agreeing to everything in the fine print on the flyer, especially the clause indemnifying Redmur Alcoholics Not-anonymous No-liability from any event which ensues from your participation in this trial." 
    The barkeep presents you with a piece of parchment and a quill. 
    
    * You nod enthusiastically and sign the parchment, because you hate paperwork. -> rann_hq_cellar
    * "Wait, what fine print?" -> fine_print
    
    = fine_print 
    "It was on the back of the flyer. You can also read it here," he says with a sweep of a hairy hand.
    
    * This is dodgy. You tell Wolfgang that you will return after consulting your lawyer, and go back to town. -> start
    * You can't believe you have to deal with legal blah blah here as well. You just sign the damn thing. -> rann_hq_cellar
    
    
    = fight
    You slide up silently to the barkeep, hoping for a sneak attack bonus. 
    
    * You raise your knife to strike... -> miss
    * Wait. The game engine might roll a critical miss. Maybe you should at least have free beer first. -> inside_rann
    
    = miss
    But you miss. Somehow you believe that you can be a trained assassin/rogue/warrior/human being with an intact nervous system and mechanically-sound upper body and still miss a target the size of a commercial fridge at a distance close enough for kissing. 
    
    The barkeep does a back flip to make distance between you, then pulls out a miniature crossbow from an invisible pocket.-> death
    
=== death
     He fires a bolt straight into your heart, and you feel a split second of agony before all five litres of your blood come gushing out of your wound in a gloriously well-programmed fluid simulation. You are dead. 
    
    + Damn. Should have checked his level before doing that. Reload last save. -> rann_hq
    + Let's just restart the quest. -> start
    + You hate this stupid game. You turn it off and go watch porn instead. -> END

=== rann_hq_cellar ===
The barkeep leads you down into a cellar. Your heart swells with excitement at the sight of barrels, although you are not sure how beer is brewed or stored. For all your know, those barrels could be full of fermenting fish. It does smell a little suspicious, but no worse than town. 

* You keep following Wolfgang through the rows of barrels, your excitement mounting. 
    Wolfang turns to you and smiles like a man presented with a feast. 
    
* You stop to examine one of the barrels, which is leaking a dark red liquid. 
    "We also have wine, but that's not part of the trial, I'm afraid," explains Wolfgang. 

- You hear a thud, and the sound of several latches closing. 

* "What was that?"
    "Oh, just locking everything nice and tight so that food doesn't escape," he replies. 
* You keep walking. It's probably just ambient sound, to make things feel more true to life.

- Wolfgang suddenly stops in his tracks, and begins to transform into a hideous wolf the size of a commercial fridge. He is bipedal and possesses opposable thumbs, but his canines are not so human. You are conveniently paralysed, so that you have to sit through his transformation like you did when you watched Sailor Moon on TV.

Much like The Incredible Hulk's infinitely-stretchy underwear, Wolfgang's clothes stay intact. So intact, in fact, that he can pull out a miniature crossbow from an invisible pocket in his waistcoat. 

* You draw your sword, ready to fight. Finally, some action! You hope he has good loot on him. 
* "Wait, we can negotiate something," you say, hoping to increase your diplomacy skill.
* "You're a WOLF and you use a MINIATURE CROSSSBOW?"
    "It's not a ninny weapon, it's just concealable! And I have a license for it!" Wolfgang snaps angrily. 
    "No, what I mean is, don't you have super strength and speed and stuff?" 
    "Can't you see I'm an ANTHROPOMORPHISED wolf? How am I meant to have this sort of anatomy and have super strength? I can't even run faster than you nincompoops."
    ** Awesome, you think to yourself. You clearly can't beat the wolf on an intelligence check, but it seems like beating him with a strength check is completely doable. 
        You charge him, and before he can react, you disarm him and pin him to the ground with an arm bar. After you break his elbow, you stab him through the heart. Because you turned gore off in the settings, you stay as clean as Legolas through the entire LOTR trilogy. 
            *** {notice_board.bounty} You cut off his head to show to the alderman, and loot him thoroughly.
                You find the key to unlock the doors, two gnawed-on ribs and a recipe for doggy biscuits. 
                **** Go leave to find the alderman -> find_alderman
                **** You search the rest of the cellar. -> search_cellar
            *** {!notice_board.bounty} You loot him
            and find the key to unlock the doors, two gnawed-on ribs and a recipe for doggy biscuits.
                **** You go back to town. -> start
                **** You search the rest of the cellar. -> search_cellar
                **** This game sucks. What kind of loot is this? You'd rather watch porn. ->END
    ** You feel sorry for the wolf. 

- Wolfgang aims steadily. -> death 

    = negotiate
    -> END

=== search_cellar ===
-> END






