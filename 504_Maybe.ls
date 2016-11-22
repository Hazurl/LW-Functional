/*		===== Maybe
							Nothing								:: -> Nothing
							Just			 					:: a -> Just a
							isNothing							:: Maybe a -> Bool
							isJust								:: Maybe a -> Bool
							maybe								:: b -> (a -> b) -> Maybe a -> b
							fromJust							:: Maybe a -> a
							frommaybe							:: a -> Maybe a -> a
							arrayToMaybe						:: Array a -> Maybe a
							maybeToArray						:: Maybe a -> Array a
							aCatMaybes							:: Array Maybe a -> Array a
							aMapMaybe							:: (a -> Maybe b) -> Array a -> Array b

This file require some modules : "Array", "Utilities"
"Utilities" est défini dans "Array"
*/
include("503_Array");

function Nothing () { return
; }

function Just (@a) { return
							function () { return a; }
; }

function isNothing (@m) { return	
							m === null
; }

function isJust (@m) { return	
							m !== null
; }

function maybe (@d) { return
function 	   (@f) { return
function	   (@m) { return
							isNothing (m) ?
								d
							:	f ( m () )
; }; }; }

function fromJust (@m) { return	
							isNothing (m) ?
								error ("Exception: Maybe.fromJust: Nothing")
							:	m ()
; }

function fromMaybe (@d) { return
function 	       (@m) { return
							isNothing (m) ?
								d
							:	m ()
; }; }

function arrayToMaybe (@xs) { return	
							count(xs) === 0 ?
								Nothing ()
							:	Just(xs[0])
; }

function maybeToArray (@m) { return	
							m === null ?
								[]
							:	[m()]
; }

function aCatMaybes (@ms) { return
							arrayFoldLeft(ms, function(@acc, @m){ if ( m !== null ) push(acc, m() ); return acc;}, [])
; }

function aMapMaybe (@p)  { return
function		   (@xs) { return
							arrayFoldLeft(xs, function(@acc, @x){ var m =@ p(x); if(m !== null) push(acc, m()); return acc;}, [])
; }; }























