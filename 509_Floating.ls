/*		===== Class Floating a
    						pi                  				:: a
    						exp, log, sqrt      				:: a -> a
    						pow, logBase        				:: a -> a -> a
    						sin, cos, tan       				:: a -> a
    						asin, acos, atan    				:: a -> a
*/

global pi = PI;

global 	 pow 		=
function     (@x) { return 
function     (@y) { return 
							x < 0 ?
								exp ( log ( -x ) * y)
							:	exp ( log ( x ) * y)
							
							
; }; };

function logBase (@x) { return 
function         (@y) { return 
							log (x) / log (y)
; }; }

