/*		===== Either
							Left								:: a -> Left a
							Right			 					:: a -> Right a
							isLeft								:: Either a -> Bool
							isRight								:: Either a -> Bool
							either								:: (a -> b) -> (a -> b) -> Either a -> b
							aLefts								:: (Either a b) -> Array a
							aRights								:: (Either a b) -> Array b
							fromLeft							:: Either a b -> a
							fromRight							:: Either a b -> b

This file require some modules : "Array", "Utilities"
"Utilities" est défini dans "Array"
*/
include("503_Array");
function Left (@a) { return
							function (@_) { _ =@ a; return true; }
; }

function Right (@a) { return
							function (@_) { _ =@ a; return false; }
; }

function isLeft (@e) { return
							e(null)
; }

function isRight (@e) { return
							e(null)
; }

function either (@f) { return 
function		(@g) { return
function		(@e) { var _; return
							e(_) ?
								f(_)
							:	g(_)
; }; }; }

function fromLeft (@e) { var a; return	
							e(a) ?
								a
							:	error ("Exception: Maybe.fromJust: Nothing")
; }

function fromRight (@e) { var b; return	
							e(b) ?
								error ("Exception: Maybe.fromJust: Nothing")
							:	b
; }

function aRights (@es) { return
							arrayFoldLeft(es, function (@acc, @e) { var b; if (!e (b)) push(acc, b); return acc; }, [])
; }

function aLefts (@es) { return
							arrayFoldLeft(es, function (@acc, @e) { var a; if (e (a)) push(acc, a); return acc; }, [])
; }
























