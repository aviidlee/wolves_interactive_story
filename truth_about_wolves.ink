-> start 

=== start ===
// Initiliase variables 

// Seen the barkeep transform into Wolfgang 
VAR seen_wolf = false
// Whether or not we have killed the son wolf, Wolfgang. 
VAR killed_wolf = false
// Whether or not we know that Wolfgnag only have human physical capacity. 
VAR know_wolf_weak = false
// You agreed to get wolf enough money to buy land 
VAR get_money_for_wolf = false
// You agreed to get wolf a strength upgrade 
VAR get_wolf_strength = false 
// You agreed to increase fertilty of townspeople
VAR increase_fertility = false 
// You agreed to pretend to have killed the wolf 
VAR pretend_to_kill = false 
// Whether you've seen clues in cellar. 
VAR seen_cellar_clues = true 

// What the wolf says to you when he lets you out. 
VAR wolf_nda = "You agree, knowing full well that if you forget about this quest for half the game and then come back, he will behave as though no time had passed at all. Wolfgang lets you out and reminds you that by the contract you signed, your life is forfeit if you violate the non-disclosure agreement and tell the townspeople that the free beer is not real."
-> town 

=== town ===
The narrow streets are paved with mud, feces, and urine. Thankfully, the scent of pickled sardines and onions fills the air, so that if you closed your eyes and took some magic mushrooms, you might think that you were experiencing severe indigestion after a cheap pub meal. 

You stand before the local notice board, a staple of every fantasy story or game. 

+ {!seen_wolf} [Notice boards are put up outside pubs, right? Look for the pub!] -> look_for_pub
+[Notice board means quest/bounty means money. Take a look at the notice board.] -> notice_board

=== look_for_pub ===
The local density of drunk people is unnervingly low. You also don't see any vomit puddles. The building in front of which the notice board stands is a non-descript 3-storey brick house with a wooden shingle roof. 

*[Don't give up hope yet. It might still be a pub. Or at the very least, the occupant of the building is bound to know where the pub is. Go inside.] 
    The building is about as far from a pub as you could possibly get.-> inside_research_facility
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
    + {!seen_wolf} Hey, this location is on the quest map. Let's go! -> rann_hq

=== inside_research_facility ===
You enter into a long hallway with glass walls. Behind the glass, there are long stainless steel benches filled with glass tubes, cylinders, petri dishes, burettes, and tiny portable fireplaces that you assume function as bunsen burners. The walls are lined with ghastly organic specimens suspended in a liquid which looks difficult to render in real time. 

    -> END

=== find_alderman ===
You arrive at the only structure in the town with a tower, although it is just as unimpressive as the rest of the buildings. The tower is about 7 storeys tall and is probably used as a lookout, judging by the snoring guard manning it. 

    + {get_money_for_wolf} You plan to steal some money for Wolfgang (and keep some for yourself, of course). -> alderman_basement_window
    + You enter through the front door. -> alderman_main_entrance

    = alderman_main_entrance
    An ugly man with a beer gut is smoking a pipe in the shabby hall. You consider informing him of the carcinogenic properties of his habit, but decide against it. 
    
    + "I'm looking for the alderman." 
    
    - "Well the revered, great, and all-important man called alderman, I be. Great I am, not just becuase the giver of quests I be, but also because the word 'alderman' doth with a certain significance ring."
        ++ "That's great. Is there anything interesting to do in this town?" 
        "Thou like a foreigner speakest. What bussiness hast thou in this fabulous town? By convention, of strangers insular folk like us are suspicious."
            +++ "I'm just passing through." 
            +++ "Great warrior I am, your problems I solve."
            --- "If ye must know, there be a fell lupine beast which doth stalk these lands. If ye be brave enough, perhaps this monstrosity to its demise will be brought. There also be a magic place behind the notice board, wherein great things of interest occur." 
                ++++ {notice_board.bounty}{killed_wolf} "In fact," you say with a puffed chest, taking out the wolf head. -> give_wolf_head
                ++++ "Tell me more about this wolf." -> ask_about_wolf
                ++++ "Tell me more about this magic place." -> ask_about_facility
            
        ++ {notice_board.bounty}{killed_wolf} [Give the wolf head to the alderman] -> give_wolf_head
        ++ "I saw the bounty on the wolf. Tell me more about him. Or her." -> ask_about_wolf
        // option for asking about facility if player has been inside it. 
        ++ This guy is crazy and you'd rather do something else, so you return to town unceremoniously, fully aware that the AI that runs the alderman isn't sophisticated enough to remember your rude exit. -> town 
        
    = ask_about_wolf
    -> END
    
    = ask_about_facility
    -> END
    
    = give_wolf_head 
    "I come seeking the bounty for the fell beast which has stalked these lands the last few moons," you say in flawless fantasy-speak. You throw the head at the alderman's feet with a perfect dramatic flourish. 
    
    = alderman_basement_window 
    // precondition: you agreed to steal money for Wolfgang. 
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
    
        + You observe the time-honoured protocol of addressing fantasy barkeeps, and greet him with a gruff look as you sit down at the bar. You save the hawking and spitting because this is the first clean pub you've been in. -> lured_to_cellar_1
        
        + "Are you Wolfgang? I'm here for the beer trial." -> lured_to_cellar_2
        
        + You're in the middle of the forest and there are no guards. You really want some loot already so you draw your hunting knife behind your back, ready to stab the barkeep.->fight
        
    = lured_to_cellar_1
    "You must be here for the non-addictive beer trials," the barkeep says in a voice that sounds a lot like Benedict Cumberbatch's. You nod with manly gravitas. 
    
    -> lured_to_cellar
    
    = lured_to_cellar_2
    "Excellent," says Wolfang, licking his teeth. 
    -> lured_to_cellar
    
    = lured_to_cellar 
    "I would be delighted to include you in our trial. There is just a bit of paperwork to be done - in particular, you'd be agreeing to everything in the fine print on the flyer, especially the clause indemnifying Redmur Alcoholics Not-anonymous No-liability from any event which ensues from your participation in this trial." 
    The barkeep presents you with a piece of parchment and a quill. 
    
    + You nod enthusiastically and sign the parchment, because you hate paperwork. -> rann_hq_cellar
    + "Wait, what fine print?" -> fine_print
    
    = fine_print 
    "It was on the back of the flyer. You can also read it here," he says with a sweep of a hairy hand.
    
    + This is dodgy. You tell Wolfgang that you will return after consulting your lawyer, and go back to town. -> start
    + You can't believe you have to deal with legal blah blah here as well. You just sign the damn thing. -> rann_hq_cellar
    
    
    = fight
    You slide up silently to the barkeep, hoping for a sneak attack bonus. 
    
    + You raise your knife to strike... -> miss // TODO: randomise result here.
    + Wait. The game engine might roll a critical miss. Maybe you should at least have free beer first. -> inside_rann
    
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

+ You keep following Wolfgang through the rows of barrels, your excitement mounting. 
    Wolfang turns to you and smiles like a man presented with a feast. 
    
+ You stop to examine one of the barrels, which is leaking a dark red liquid. 
    "We also have wine, but that's not part of the trial, I'm afraid," explains Wolfgang. 

- You hear a thud, and the sound of several latches closing. 

+ "What was that?"
    "Oh, just locking everything nice and tight so that food doesn't escape," he replies. 
+ You keep walking. It's probably just ambient sound, to make things feel more true to life.

- Wolfgang suddenly stops in his tracks, and begins to transform into a hideous wolf the size of a commercial fridge. He is bipedal and possesses opposable thumbs, but his canines are not so human. You are conveniently paralysed, so that you have to sit through his transformation like you did when you watched Sailor Moon on TV.
    ~ seen_wolf = true

Much like The Incredible Hulk's infinitely-stretchy underwear, Wolfgang's clothes stay intact. So intact, in fact, that he can pull out a miniature crossbow from an invisible pocket in his waistcoat. 

+ You draw your sword, ready to fight. Finally, some action! You hope he has good loot on him. 
+ "Wait, we can negotiate something," you say, hoping to increase your diplomacy skill. -> negotiate
+ "You're a WOLF and you use a MINIATURE CROSSSBOW?"
    "It's not a ninny weapon, it's just concealable! And I have a license for it!" Wolfgang snaps angrily. 
    "No, what I mean is, don't you have super strength and speed and stuff? Can't you rip me to shreds with your bare paws?" 
    "Can't you see I'm an ANTHROPOMORPHISED wolf? How am I meant to have this sort of anatomy and have super strength? I can't even run faster than you nincompoops."
    ~ know_wolf_weak = true 
    
    ++ Awesome, you think to yourself. You clearly can't beat the wolf on an intelligence check, but it seems like beating him with a strength check is completely doable. 
        You charge him, and before he can react, you disarm him and pin him to the ground with an arm bar. After you break his elbow, you stab him through the heart. Because you turned gore off in the settings, you stay as clean as Legolas through the entire LOTR trilogy. 
            ~ killed_wolf = true
            *** {notice_board.bounty} You cut off his head to show to the alderman, and loot him thoroughly.
                You find the key to unlock the doors, two gnawed-on ribs and a recipe for doggy biscuits. 
                **** Leave to find the alderman -> find_alderman
                **** You search the rest of the cellar. -> search_cellar
            *** {!notice_board.bounty} You loot him
            and find the key to unlock the doors, two gnawed-on ribs and a recipe for doggy biscuits.
                **** You go back to town. -> town 
                **** You search the rest of the cellar. -> search_cellar
                **** This game sucks. What kind of loot is this? You'd rather watch porn. ->END
    ** You feel sorry for the wolf.
        "Perhaps I can help you out." -> negotiate 

- Wolfgang aims steadily. -> death 

    = negotiate
        "What could you possibly offer me?" -> choices
        
        = choices
        + {know_wolf_weak} "Maybe I can make you stronger, in exchange for making our contract null and void, and signing a new contract promising not to harm me for the rest of my natural life." // Steal stuff from lab
            "There is in fact a research facility in town where the notice board is, which I know because it is convenient for the story. You may be able to obtain some upgrades, which by virtue of our fictional setting, can be applied to anyone by anyone."
            ~ get_wolf_strength = true 
            {wolf_nda}
            ++ You return to town. -> town
            ++ You head straight for said research facility, disappointed that it is not a pub.->inside_research_facility
            
        * "Money?" 
            Wolfgang scoffed. "How long do you think your petty cash will last me? Do you still not see how my business model works?" -> listen_to_wolf.wolf_business
            
        * "Umm, lady wolves?" 
            "Don't be absurd," he said angrily. "I'm one of a kind. Doomed to loneliness!"
            ** You offer something else. -> choices
            ** "How could you know that?" -> listen_to_wolf.origin
            
        + {notice_board.bounty} "I know there's a bounty on you. I could pretend to have caught you, thus freeing you from the trouble of having to kill bounty hunters." 
            Without hesitation, the wolf cuts off his tail and hands the bloody mess to you.
            "It grows back, but they don't know that," he says slyly. "I doubt they would find me, but I can let one meal slide for a bit of peace of mind."
            Wolfgang makes you sign another contract, in which you promise to collect the bounty, and he promises not to kill you. 
            ~ pretend_to_kill = true
            {wolf_nda}
            ++ You go to the alderman. -> find_alderman
            ++ You return to town. -> town
            
        + "I don't know, what do you want?" 
          The wolf contemplates something for a long time, then recounts a sappy life story.
          -> listen_to_wolf.origin
        
    
=== listen_to_wolf ===

-> wolf_business
    
    = wolf_business 
    "I post a sign for free beer. Idiots come and sign their lives over to me in a contract, like you did. I trap them in the cellar and I eat them. What else do you think I can do for a living? Nobody teaches humanish wolves a trade. Can't even raise animals here because of the actual wolves. With what I've got going, there's an unlimited supply and no legal issues."
    
        + "Still, eating people... seems wrong." 
            "Oh yeah? And eating cows, sheep, and chicken isn't? What makes your life any more valuable than mine or anyone else's?" // weave
            
        + "You know how to draw up contracts. Why don't you be a lawyer?" 
            "Don't have a license," he grunted. "Law school doesn't accept anthropomorphised animals of any kind." // weave 
        
        + "Don't you have family? -> origin
        
    - "Enough of this," Wolfgang snarles suddenly. "I'm hungry and you obviously have nothing to offer me except your own flesh. Good bye, cruel human." 
        You feel your consciousness split into a thousand pieces as Wolfgang digs into you without even the courtesy of killing you first. You marvel as various parts of you simultaneously explore the wolf's maw, oesophagus, cardiac sphincter, stomach and small intestine in a glorious tribute to the power of parallel processing. You didn't realise dying would be the most interesting part of this game.
        
    + [Go back to last save] -> wolf_business
    + [Restart game] -> start 
    + You are fulfilled now. You end the game to meditate upon its implications. -> END
    
    = origin 
    "I had a family once. A mother and a father." Wolfgang put his crossbow away into his invisible pocket and sighes heavily. 
    "We scratched out a living in these woods, until my mother stole a red cloak to keep me warm. And even though we had never touched a human at that point, they accused her of eating some girl and her big game hunter grandma. They killed my mother. I wanted vengeance, but my father would have nothing of it. I ran away when I was 15 and I haven't seen him since." 
    
    His eyes glow dangerously again, and you wonder what kind of rendering algorithm they're using. Before his appetite gets the better of him, you decide to offer help. The XP had better be worth this trouble.  
    
    + "Maybe I can find your father." 
        "That is the LAST thing I want!"
        -> death // TODO a more interesting solution?
        
    + "Maybe I can get enough money to buy you a plot of land where you can farm or raise animals," you say without having the faintest idea of what kind of a sum that would be. 
        // steal money from alderman
        "Well," says the wolf. "Perhaps you can steal some money from the alderman. He lives in the only structure in town that has a tower. Easy to find. Probably easy to break into."
        You thank him for the tip and promise upon your honour that you will find him the money. He says honour is overrated and makes you sign an appropriate contract. 
        ~ get_money_for_wolf = true
        {wolf_nda}
        ++ You go to look for the alderman. -> find_alderman
        ++ You go back to town. -> town
        
    + "You're right, eating the townspeople seems to be your best business plan. Maybe I can increase their reproduction rate so that you don't run out of food."
        Wolfgang's eyes gleamed. "An excellent proposition."
        "But no eating children," you add anxiously. 
        "Of course, of course. If you could also accelerate their growth though..."
        // Ironic; the creature made by is going to use it for its own ends. 
        "I could try. But you need to give me a starting point for this quest." 
        "By Deus Ex Machina, I know that there is a research facility, where the town notice board is. You're bound to find something there." 
        
        You agree, knowing full well that if you forget about this quest for half the game and then come back, he will behave as though no time had passed at all. Wolfgang lets you out and reminds you that by the contract you signed, your life is forfeit if you violate the non-disclosure agreement and tell the townspeople that the free beer is not real.
        ~ increase_fertility = true
        ++ You go to look for the alderman. -> find_alderman
        ++ You go to the research facility which is sadly not a pub. -> inside_research_facility

=== search_cellar ===
// precondition: wolf has died without telling his origin story. 
// You find confusing evidence about the nature of the wolf, which you can further investigate 
// by going to the research facility. 
The cellar seems to be full of odd bits and bobs, but thankfully there are no dicernable human remains, presumably to make the game appeal to a larger market. There is a crumpled red cloak, stained with decades-old blood. There are also clippings from news items posted on a notice board. For a bachelor pad, the place is remarkably clean and tidy. 
    -> examine_items
    
    = examine_items 
    + You examine the cloak.
        It's a plain cloak, and you surmise that it would fit a 12-year-old girl or an adult male dwarf. The styling suggests the former more strongly. 
        
    You examine the clippings. 
    ~ seen_cellar_clues = true
            One tells the story of the local big game hunter Nana Wunderbar, who is almost eaten by a vicious talking wolf but manages to save herself and her granddaughter with her formidable archery skill. 
            
            Another is about the opening of a research facility headed by Nana Wunderbar. The facility will research everything from acne treatments to cures for the plague, from breeding domestic cattle to fierce war hounds. They don't mention it but you can tell that Nana based her research facility in a town in the middle of nowhere to avoid audits by whatever ethics and safety regulation authorities there are in this world, and possibly also to facilitate tax evasion. Becase you conveniently have a self-updating quest map that always shows you your current location, you realise that this research facility is in fact the building in front of which the notice board stands. 
    -
        + {notice_board.bounty} You head off to find the alderman. -> find_alderman
        + This research facility sounds curious. You head off to investigate it. ->inside_research_facility
        + You return to town. -> town 
    







