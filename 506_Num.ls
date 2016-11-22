/*		===== Class Num a  
							add, sub, prdct, div, mod			:: a -> a -> a
    						negate           					:: a -> a  		
    						abs, signum     				 	:: a -> a
							recip            					:: a -> a
*/

function add (@x) { return 
function     (@y) { return 
							x + y
; }; }

function sub (@x) { return 
function     (@y) { return 
							x - y
; }; }

function prdct (@x) { return 
function       (@y) { return 
							x * y
; }; }

function negate (@x) { return
							-x
; }

function abs (@x) { return
							x < 0 ?	   	
								-x
							:	x
; }

function signum (@x) { return
							x < 0 ?	   	
								-1
							:x > 0 ?
								1
							:	0
; }

function div (@x) { return 
function     (@y) { return 
							x / y
; }; }

function mod (@x) { return 
function     (@y) { return 
							x % y
; }; }

function recip (@x) { return
							1 / x
; }
