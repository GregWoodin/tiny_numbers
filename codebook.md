Codebook for gesture coding
=============

## Columns that do not require hand-coding:

1.	**ID**<br>
	Unique numerical identifier within our table
2.	**URL**<br>
	Permanent URL to TV News Archive
3.	**Archive_ID**<br>
	Identifier within the TV News Archive
4.	**Title**<br>
	Title within the TV News Archive

## Columns that require hand-coding:

5.	**SpeakerName**<br>
	Name of the speaker (courtesy of Alfonso Montoya Jr.)
6.	**Phrase**<br>
	- tiny_number: result of the search crawl for 'tiny number'
	- huge_number: result of the search crawl for 'huge number'
7.	**Negated**<br>
	- no: no negation
	- yes: main phrase is negated
8.	**HasPhrase**<br>
	- yes: the relevant phrase ('tiny number', 'huge number') occurred
	- no: the relevant phrase ('tiny number', 'huge number') did not occur
9.	**SpeakerVisible**<br>
	- yes: the speaker's face is visible in the moment the relevant phrase is uttered
	- no: the speaker's face is not visible during relevant utterance
10.	**HandsVisible**<br>
	- both: both(!) hands are fully visible
	- one: only one hand is fully visible, the other is either not visible or partially occluded
	- neither: both hands are not visible or partially occluded
11.	**HandsFree**<br>
	- both: both(!) hands are free
	- one: only one hand is free
	- neither: both hands are occupied
12.	**HandsMoving**<br>
	- yes: any one hand is moving
	- no: both hands are not moving
13.	**WhichHand**<br>
	- L: left hand is moving
	- R: right hand is moving
	- both: both hands are moving
14.	**HandConfig**<br>
	- open: the fingers of the gesturing hand are not approaching each other
	- closed: the fingers of the gesturing hand are approaching each other
15.	**PinchType**<br>
	- only if HandConfig == 'closed'
	- bunch: what Kendon describes as 'grappolo'
	- ok: ok sign (fingers 3-5 extended)
	- pinch: Kendon's precision grip with index finger and thumb touching or very close, fingers 3-5 curled in
	- lobster_claw: precision grip (fingers 3-5 curled in) but with index finger and thumb held apart
16.	**PinkieCurl**<br>
	- only if HandConfig == 'closed'
	- curled: fingers 3-5 curled in
	- extended: fingers 3-5 extended
17.	**PalmOrientation**<br>
	- only if HandConfig == 'open'
	- up: Kendon's palm supine, Müller's PUOH
	- down: the opposite of 'up', palm facing downwards
	- inward: palm facing sideways, towards the center of the body
18.	**MovementVertical**<br>
	- up: whatever hand is specified ('WhichHand') is moving predominantly up
	- down: whatever hand is specified ('WhichHand') is moving predominantly down
19.	**MovementHorizontal**<br>
	- right: whatever hand is specified ('WhichHand') is moving predominantly right
	- left: whatever hand is specified ('WhichHand') is moving predominantly left
	- outward: right and left hand are moving away from each other
	- inward: right and left hand are approaching each other
20.	**MovementSagittal**<br>
	- front: whatever hand is specified ('WhichHand') is moving frontally away from body
	- back: whatever hand is specified ('WhichHand') is moving frontally towards the body
21.	**QuantityType**<br>
	- percentage: speaker mentions some percentage value ("2%")
	- proportion: speaker mentions some proportion ("two thirds")
	- number: speaker mentions some number that isn't percentage or proportion ("2 million")
22.	**QuantityValue**<br>
	- numerical value of the quantity referred to
23.	**VerbatimReferent**<br>
	- the exact phrasing used to describe the referent that is quantified
24.	**QuantityContrast**<br>
	- yes: the relevant phrase is contrasted with some other quantity in local context
	- no: the relevant phrase is stand-alone
25.	**Comment**<br>
	- add any comments or ideas; also whether the particular video is worth discussing qualitatively in detail
