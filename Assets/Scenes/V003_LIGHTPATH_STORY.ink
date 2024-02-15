VAR code = 0
VAR key = false

LIGHTPATH 
# menu
+ Play
->THIRTEEN
+ Quit Game
->END

//Main menu 2
//=THIRTYONE
//# menu2
//+Play again
//->THIRTEEN
//+Quit
//->END

//LIVING ROOM
= THIRTEEN  
# livingroom
“huff..huff..”
SLAMS!
[Jack closes the door as soon as he enters the abandoned house.]
“huff... I... huff... don’t... think… I ever ran so fast... before…”
[Jack tries to catch his breath.]
[Suddenly… Jack feels uneasy.]
[He looks at the door and anxiously takes some steps behind.]
Thud.
[Jack stumbles on a broken wooden chair and falls to the ground.]
“ugh…”
[Jack looks at his Candyshooter 2000 first, checking if it’s okay.]
Clink…
CRASH!
[Jack, startled, looks back at the front door.]
[Part of the ceiling falls not far away from him.]
“Huh..?”

[Jack looks scared, his hands trembling with fear. The atmosphere is tense, adding to Jack's sense of overwhelming fear, as the soft hum of the fireflies fills the room.]
+ “Am… Am I trapped..?”
-> FOURTEEN

//LIVINGROOM
=FOURTEEN
[Jack speaks with a trembling voice] 
+ "What… What is even happening…” 
[His voice breaks as he struggles to hold back tears.] 
[Jack's shoulders slump as he tries to gather himself, but the weight of the situation seems to crush him further. Tears well up in his eyes, threatening to spill over.]
[As if sensing his distress, the fireflies gather around him, their gentle glow casting a comforting light.]
[The soft buzz of their wings grows louder as they draw near.]
[Jack looks at them in comfort and wipes his tears.]
[Despite his fear, Jack feels a sense of calm wash over him as the fireflies flutter around him.]
[Their soft movements and soothing light offer him solace in the midst of his turmoil. The gentle fluttering of wings accompanies their movements.]
->FOURTEEN_TWO

=FOURTEEN_TWO
[Jack clenches his fists]
+ “No... I can't afford to fall apart now. I have to be strong. I need to find a way out of here before that man finds me.”
-> FIFTEEN

//LIVINGROOM
=FIFTEEN
{ ~ [Jack stands alone in a faintly lit living room.] | [Alone in a softly illuminated lounge, Jack ponders his surroundings.] }
[In front of Jack is a dimly lit corridor with fireflies, noticing also a slightly open door, which seemed to lead to a room.]
->FIFTEEN_TWO

=FIFTEEN_TWO
# livingroom
{ ~ [Fireflies flit about, casting a soft, ethereal glow that illuminates the space.] | [The flickering light of fireflies adds a serene, otherworldly atmosphere to the surroundings.]| [Fireflies dart around, their gentle glow lending an enchanting aura to the surroundings.]| [Fireflies dance around, casting a gentle, mystical light that fills the area.] }

->SIXTEEN

//LIVINGROOM CHOICES
= SIXTEEN
+Walk towards the dimly lit corridor 
->TWENTYONE
+Investigate the room with a slightly ajar door
-> SEVENTEEN

//BEDROOM
=SEVENTEEN
# bedroom
{ ~ [The abandoned bedroom presents a scene of desolation and decay.] | [Despite its dilapidated state, the bedroom retains a haunting sense of nostalgia.]}
+Inspect the room
-> EIGHTEEN
+Go back 
->FIFTEEN_TWO

=EIGHTEEN
What do you want to inspect?
+Inspect bed
{ ~ [The mattress, once plush and inviting, now lies worn and uneven, its surface marred by the impressions of countless slumber.] | [In the dimly lit room, a dilapidated bed stands as a weary sentinel, its frame groaning softly with the faintest touch, bearing the weight of time's relentless passage.] }
->EIGHTEEN
+Inspect the wardrobe
{ ~ [In the corner of the room, overshadowed by the passage of time, stands a worn-out wardrobe.] | [The wood, weathered and weary, bears the scars of countless openings and closings.] }
->EIGHTEEN
+Inspect shelf
->NINETEEN
+Stop inspecting
->SEVENTEEN

=NINETEEN
[Cobwebs cling to the corners, weaving a delicate tapestry of abandonment amidst the forgotten relics.] 
[In the lowest shelf there was a picture of those two little kids.]
[They were wearing such silly hats and looking so happy together. Yet, upon closer inspection, a poignant detail emerges - one of the children's faces has been crudely obscured with a black marker.]
+Turn the picture
-> TWENTY

=TWENTY
[Behind the picture there was a handwritten letter.]
“12/3, Today we had so much fun at the WaaaLand! I hope I can visit it with my best friend again soon! - B.”
+Put the picture back
->EIGHTEEN

//HALLWAY
=TWENTYONE
# hallway
[Jack stands before the hallway, its path continuing in the depth of the hoouse amidst a swarm of fireflies. To his left, a door adorned with the same glowing insects stands slightly open.]
+Enter the room
->TWENTYTWO
+Go towards the depth of the house
->TWENTYEIGHT
+Go back to the living room
->FIFTEEN_TWO

//OFFICE
=TWENTYTWO
# office
[The room looked like an abandoned office room, illuminated only by faint rays of light filtering through grimy windows.] 
+Inspect room
->TWENTYTHREE
+Go back to the hallway
->TWENTYONE

=TWENTYTHREE
What do you want to inspect?
+Inspect shelves
{ ~ [The shelves are aged and worn, their once-polished surfaces now dulled by years of neglect.]|[The wood is weathered, with visible cracks and scratches marring its surface]|[Dust coats the shelves thickly, obscuring any remnants of the items that once adorned them.]}
->TWENTYTHREE
+Inspect desk
->TWENTYFOUR
+Stop inspecting
->TWENTYTWO
 
 
 =TWENTYFOUR
[The desk, weathered and worn, bears the marks of countless tasks and years of use.] 
+{TWENTYFIVE && key} Inspect box
->TWENTYFIVE
+{not TWENTYFIVE && not key} Inspect box
->TWENTYSIX
+Stop Inspecting
->TWENTYTWO
 
=TWENTYFIVE
{ ~ [Among all the dust on the desk, there is an opened box.]|[Nothing to see here, just an opened box full of dust.]} 
->TWENTYTHREE

=TWENTYSIX
{[The box has a lock on it, and it seems like a 3 numbered password is needed to open the box.]|[The box is locked..]} 
-> DIGIT1
=DIGIT1
Insert password.
~code=0
+ 1
~code += 1
->DIGIT2 
+2
~code += 2
->DIGIT2
+3
~code += 3
->DIGIT2
+4
~code += 4
->DIGIT2
+Go back
->TWENTYTHREE

=DIGIT2
+1
~code += 10
->DIGIT3
+2
~code += 20
->DIGIT3
+3
~code += 30
->DIGIT3
+4
~code += 40
->DIGIT3
+Go back
->TWENTYTHREE

=DIGIT3
+1
~code += 100
->CHECKCODE
+2
~code += 200
->CHECKCODE
+3
~code += 300
->CHECKCODE
+4
~code += 400
->CHECKCODE
+Go back
->TWENTYTHREE

=CHECKCODE
+{code == 321} open
->RIGHTCODE
+{code != 321} error, wrong password.
->DIGIT1

=RIGHTCODE
Click
[The box opens and there is a key inside.]
~key = true
->TWENTYFIVE


//stairs establishment shot
=TWENTYEIGHT
# stairs
Jack is now standing in front of stairs.
+Go upstairs
->TWENTYNINE
+Go back to the hallway
->TWENTYONE

=TWENTYNINE
{ ~ “Wow.. I think I'm out of exercise.” | "Ha... those stairs.. I'm feeling a bit drained." | "Hmm, feeling slightly exhausted..." }
# door
[Jack arrives at the top of the stairs just to see a locked door in front of him.]
+{key} Try and open the door.
->OPEN 
+{not key} Try and open the door
->CLOSED

=CLOSED
"The door is locked, it seems like I need a key to open it..."
+Go downstairs
->TWENTYEIGHT

=OPEN
Clack.
"The door opened… Maybe this will bring me to an exit from this house!”

Level completed
->THIRTY

=THIRTY
->END