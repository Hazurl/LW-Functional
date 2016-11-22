/* 
This file contains the prototye of all functions, if you want to use functional algorithme include this file and everything will be loaded...

		===== Boolean functions
							andB								:: Bool -> Bool -> Bool
							orB									:: Bool -> Bool -> Bool
							not									:: Bool -> Bool
							otherwise							:: Bool
							
							TYPE : Bool                         :: true, false

		===== Class Eq a
							eq, sEq, dif, sDif 					:: a -> a -> Bool

 		===== Class Ord a 
    						compare              				:: a -> a -> Ordering
      						infEq, inf, supEq, sup 				:: a -> a -> Bool
    						max, min							:: a -> a -> a
							
							TYPE : Ordering						:: EQ, GT, LT

		===== Class Num a  
							add, sub, prdct, div, mod			:: a -> a -> a
    						negate           					:: a -> a  		
    						abs, signum     				 	:: a -> a
							recip            					:: a -> a

		===== Class  Floating a
    						pi                  				:: a
    						exp, log, sqrt      				:: a -> a
    						pow, logBase        				:: a -> a -> a
    						sin, cos, tan       				:: a -> a
    						asin, acos, atan    				:: a -> a

		===== Numeric functions
    						subtract        				 	:: (Num a) => a -> a -> a
							even, odd        					:: (Num a) => a -> Bool
							rem, quot							:: (Num a) => a -> a -> a
							gcd              					:: (Num a) => a -> a -> a
							lcm              					:: (Num a) => a -> a -> a

		===== Function type
							id               					:: a -> a
							const								:: a -> b -> a
							seq									:: a -> b -> b
							dot						            :: (b -> c) -> (a -> b) -> a -> c
							flip            				 	:: (a -> b -> c) -> b -> a -> c
							until 								:: (a -> Bool) -> (a-> a) -> a
		
		===== Utilities
							ifElse 								:: (a -> Bool) -> (a -> b) -> (a -> b) -> a -> b
							default 							:: (a -> Bool) -> b -> (a -> b) -> a -> b
							curry								:: ( (a, b) -> c) -> a -> b -> c
							curry3								:: ( (a, b, c) -> d) -> a -> b -> c -> d
							uncurry								:: (a -> b -> c) -> (a, b) -> c
							uncurry3							:: (a -> b -> c -> d) -> (a, b, c) -> d
							error								:: String ->

		===== Array Function
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

		===== Maybe
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

		===== Either
							Left								:: a -> Left a
							Right			 					:: a -> Right a
							isLeft								:: Either a -> Bool
							isRight								:: Either a -> Bool
							either								:: (a -> b) -> (a -> b) -> Either a -> b
							aLefts								:: (Either a b) -> Array a
							aRights								:: (Either a b) -> Array b
							fromLeft							:: Either a b -> a
							fromRight							:: Either a b -> b
*/

include("501_Bool");
include("502_Utilities");
include("503_Array");
include("504_Maybe");
include("505_Either");
include("506_Num");
include("507_Ord");
include("508_Eq");
include("509_Floating");
include("510_Type");
include("511_Numeric");



































