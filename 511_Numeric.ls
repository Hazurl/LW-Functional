/*		===== Numeric functions
    						subtract        				 	:: (Num a) => a -> a -> a
							even, odd        					:: (Num a) => a -> Bool
							rem, quot							:: (Num a) => a -> a -> a
							gcd              					:: (Num a) => a -> a -> a
							lcm              					:: (Num a) => a -> a -> a

This file require some modules : "Utilities"
*/
include("502_Utilities");

function subtract (@x) { return 
function          (@y) { return 
							y - x
; }; }

function odd (@x) { return 
							(x & 1) === 1
; }

function even (@x) { return 
							(x & 1) === 0
; }

function rem (@x) { return 
function     (@y) { return 
							x % y
; }; }

function quot (@x) { return 
function      (@y) { return 
							(x - ( x % y ) ) / y
; }; }

function gcd (@x) { var _gcd = 
   function (@_x) { return
   function (@_y) { return
							_y === 0 ?
								_x
							:	_gcd ( _y ) ( _x % _y )
   ; }; }; 			return
function     (@y) { return 
							x === 0 && y === 0 ?
								error ("") 							// ERROR
							:	x > y ?
								_gcd ( abs (x) ) ( abs (y) )
							:	_gcd ( abs (y) ) ( abs (x) )
; }; }

function lcm (@x) { return 
function     (@y) { return 
							x === 0 || y === 0 ?
								0
							:	x * y / gcd (x) (y)
; }; }
