/* 		===== Class Ord a 
    						compare              				:: a -> a -> Ordering
      						infEq, inf, supEq, sup 				:: a -> a -> Bool
    						max, min							:: a -> a -> a
							
							TYPE : Ordering						:: EQ, GT, LT
*/

global EQ = 0, GT = 1, LT = -1;

function compare (@x) { return 
function     	 (@y) { return 
							x === y  ? 	
								EQ
							:	x < y 	 ? 	
								LT
							: 	GT
; }; }

function supEq (@x) { return 
function     (@y) { return 
							x >= y
; }; }

function infEq (@x) { return 
function     (@y) { return 
							x <= y
; }; }

function sup (@x) { return 
function      (@y) { return 
							x > y
; }; }

function inf (@x) { return 
function      (@y) { return 
							x < y
; }; }

function max (@x) { return
function 	 (@y) { return 
							x <= y ?	
								y 
							:	x
; }; }

function min (@x) { return
function 	 (@y) { return 
							x <= y ?
								x 
							:	y
; }; }
