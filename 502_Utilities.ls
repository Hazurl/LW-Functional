/*		===== Utilities
							ifElse 								:: (a -> Bool) -> (a -> b) -> (a -> b) -> a -> b
							default 							:: (a -> Bool) -> b -> (a -> b) -> a -> b
							curry								:: ( (a, b) -> c) -> a -> b -> c
							curry3								:: ( (a, b, c) -> d) -> a -> b -> c -> d
							uncurry								:: (a -> b -> c) -> (a, b) -> c
							uncurry3							:: (a -> b -> c -> d) -> (a, b, c) -> d
							error								:: String ->
*/
function ifElse (@f) { return
function        (@g) { return
function        (@_g) { return
function        (@x) { return
								f(x) ? g(x) : _g(x);
}; }; }; }

function default (@f) { return
function         (@d) { return
function         (@g) { return
function         (@x) { return
								f(x) ? g(x) : d;
}; }; }; }

function uncurry (@f) { return
function 		 (@a, @b) { return
								f (a)(b)
; }; }

function uncurry3 (@f)         { return
function 		  (@a, @b, @c) { return
								f (a)(b)(c)
; }; }

function curry (@f) { return
function 	   (@a) { return
function 	   (@b) { return
								f (a, b)
; }; }; }

function curry3 (@f) { return
function 	    (@a) { return
function 	    (@b) { return
function 	    (@c) { return
								f (a, b, c)
; }; }; }; }

function error (@str) { return
								debugC(str, COLOR_RED)
; }








