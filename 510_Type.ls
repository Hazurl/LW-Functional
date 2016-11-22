/*		===== Function type
							id               					:: a -> a
							const								:: a -> b -> a
							seq									:: a -> b -> b
							dot						            :: (b -> c) -> (a -> b) -> a -> c
							flip            				 	:: (a -> b -> c) -> b -> a -> c
*/

function id (@x) { return 
							x
; }

function const (@x) { return 
function       (@y) { return 
							x
; }; }

function seq (@x) { return 
function     (@y) { return 
							y
; }; }

function dot (@f) { return 
function     (@g) { return
function     (@x) { return
							f ( g (x) )
; }; }; }

function flip (@f) { return 
function      (@x) { return
function      (@y) { return
							f (y) (x)
; }; }; }

function until (@p) { return 
function       (@f) { var g = 
function 	   (@x) { return
							p (x) ?
								g ( f (x) )
							:	x
; }; 		 	  	  return
							g
; }; }