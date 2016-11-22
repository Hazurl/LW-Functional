/*		===== Array Function
							aFoldr 								:: (a -> b -> b) -> b -> Array a -> b
							aFoldl 								:: (b -> a -> b) -> b -> Array a -> b
							aFoldr1 							:: (a -> a -> a) -> Array a -> a
							aFoldl1 							:: (a -> a -> a) -> Array a -> a
							aMap 								:: (a -> b) -> Array a -> Array b
							aAppend 							:: Array a -> Array a -> Array a 
							aFilter 							:: (a -> Bool) -> Array a -> Array a
							aHead 								:: Array a -> a
							aLast 								:: Array a -> a
							aTail 								:: Array a -> Array a
							aInit 								:: Array a -> Array a
							aNull 								:: Array a -> Bool
							aScanl 								:: (b -> a -> b) -> b -> Array a -> Array b
							aScanl1 							:: (a -> a -> a) -> Array a -> Array a
							aScanr  							:: (a -> b -> b) -> b -> Array a -> Array b
							aScanr1  							:: (a -> a -> a) -> Array a -> Array a
							aSum  								:: Array a -> a
							aProduct  							:: Array a -> a
							aElem  								:: a -> Array a -> Bool
							aNotElem  							:: a -> Array a -> Bool
							aReverse 							:: Array a -> Array a
							aConcat  							:: Array Array a -> Array a
							aConcatMap  						:: (a -> Array b) -> Array a -> Array b
							aTake  								:: Int -> Array a -> Array a
							aDrop  								:: Int -> Array a -> Array a
							aTakeWhile  						:: (a -> Bool) -> Array a -> Array a
							aDropWhile  						:: (a -> Bool) -> Array a -> Array a
							aMaximum  							:: Array a -> a
							aMinimum  							:: Array a -> a
							aAnd  								:: Array Bool -> Bool
							aOr  								:: Array Bool -> Bool
							aAny  								:: (a -> Bool) -> Array a -> Bool
							aAll  								:: (a -> Bool) -> Array a -> Bool

This file require some modules : "Bool", "Utilities", "Num", "Type"
*/
include ("501_Bool");
include ("502_Utilities");
include ("506_Num");
include ("510_Type");

function aFoldl (@f)  { return 
function        (@y)  { return 
function        (@xs) { return 
							arrayFoldLeft(xs, uncurry(f), y)
; }; }; }

function aFoldr (@f)  { return 
function        (@y)  { return 
function        (@xs) { return 
							arrayFoldRight(xs, uncurry(f), y)
; }; }; }

function aFoldl1 (@f)  { return 
function         (@xs) { return 
							arrayFoldLeft(aTail(xs), uncurry(f), xs[0])
; }; }

function aFoldr1 (@f)  { return 
function         (@xs) { return 
							arrayFoldRight(aInit(xs), uncurry(f), xs[count(xs) - 1])
; }; }

function aMap (@f)  { return
function	  (@xs) { var ys = []; for (var v in xs) push(ys, f (v) ); return 	
							ys
; }; }

function aAppend (@ys) { return
function	 	 (@xs) { return
							arrayFoldLeft(xs, function(@acc, @x){ push(acc, x); return acc;}, ys)
; }; }

function aFilter (@f)  { return
function	     (@xs) { return 
							arrayFoldLeft(xs, function(@acc, @x){ if ( f (x) ) push(acc, x); return acc;}, [])
; }; }

function aHead (@xs)  { return
							count(xs) ? 
								xs[0]
							:	null
; }

function aLast (@xs)  { return
							count(xs) > 1 ? 
								xs[count(xs) - 1]
							:	null
; }

function aTail (@xs)  { var ys =@ []; for (var i = 1; i < count(xs); ++i) push(ys, xs[i]); return
							ys
; }

function aInit (@xs)  { var ys =@ []; for (var i = 0; i < count(xs) - 1; ++i) push(ys, xs[i]); return
							ys
; }

function aNull (@xs)  { return
							xs === [] || xs === null
; }

function aScanl (@f)  { return 
function        (@y)  { return 
function        (@xs) { var ys =@ [], ws = y; 
					   for (var i = 0; i < count(xs); ++i) {
					   	   ws = f(ws)(xs[i]); push(ys, ws)
					   ; }
					   return 
					   		ys

; }; }; }

function aScanr (@f)  { return 
function        (@y)  { return 
function        (@xs) { var ys =@ [], ws = y; 
					   for (var i = count(xs) - 1; i > -1; --i) {
					   	   ws = f(xs[i])(ws); insert(ys, ws, 0)
					   ; }
					   return 
					   		ys
; }; }; }

function aScanl1 (@f)  { return 
function         (@xs) { var ws = xs[0], ys =@ [ws];
					   for (var i = 1; i < count(xs); ++i) {
					   	   ws = f(ws)(xs[i]); push(ys, ws)
					   ; }
					   return 
					   		ys
; }; }

function aScanr1 (@f)  { return 
function         (@xs) { var ws = xs[count(xs) - 1], ys =@ [ws]; 
					    for (var i = count(xs) - 2; i > -1; --i) {
							ws = f(xs[i])(ws); insert(ys, ws, 0)
					    ; }
					    return 
					   		ys
; }; }

function aSum (@xs)  { return
							aFoldl(add)(0)(xs)
; }

function aProduct (@xs)  { return
							aFoldl(prdct)(0)(xs)
; }

function aElem (@xs)  { return
function       (@y)   { return
							arrayFoldLeft(xs, function (@acc) { return function (@x) { return acc || x === y; }; }, false)
; }; }

function aNotElem (@xs)  { return
							dot (not) (aElem(xs))
; }

function aReverse (@xs)  { return
							arrayFoldRight(xs, function(@x, @acc){ push(acc, x); return acc;}, [])
; }

function aConcat (@xss) { return 
							arrayFlatten(xss, 1)
; }

function aConcatMap (@f)  { return 
function            (@xs) { return 
							arrayFoldLeft(xs, function(@acc, @x) { push(acc, f (x) ); return acc; }, [])
; }; }

function aTake (@n)  { return 
function       (@xs) { var ys =@ []; for (var i = 0; i < n && i < count(xs); ++i) push(ys, xs[i]); return
							ys
; }; }

function aDrop (@n)  { return 
function       (@xs) { var ys =@ []; for (var i = n; i < count(xs); ++i) push(ys, xs[i]); return
							ys
; }; }

function  aTakeWhile (@f)  { return 
function             (@xs) { var ys =@ []; 
					        for (var i = 0; i < count(xs); ++i) {
								var x =@ xs[i]; 
								if ( f(x) ) push(ys, xs[i]);
								else break
							; }	return
							ys
; }; }

function  aDropWhile (@f)  { return 
function             (@xs) { var ys =@ []; 
					        for (var i = 0; i < count(xs); ++i) {
								var x =@ xs[i]; 
								if ( f(x) ) break;
								else push(ys, xs[i])
							; }	return
							ys
; }; }

function aMaximum (@xs)  { return
							arrayFoldLeft(xs, function(@acc, @x){ if (acc === null || x > acc) return x; return acc;}, null)
; }

function aMinimum (@xs)  { return
							arrayFoldLeft(xs, function(@acc, @x){ if (acc === null || x < acc) return x; return acc;}, null)
; }

function aAnd (@xs)  { return
							arrayFoldLeft(xs, function(@acc, @x){ return acc && x; }, true)
; }

function aOr (@xs)  { return
							arrayFoldLeft(xs, function(@acc, @x){ return acc || x; }, false)
; }

function aAll (@f)  { return
function      (@xs) { return 
							arrayFoldLeft(xs, function(@acc, @x){ return acc && f(x); }, true)
; }; }

function aAny (@f)  { return
function      (@xs) { return 
							arrayFoldLeft(xs, function(@acc, @x){ return acc || f(x); }, false)
; }; }
