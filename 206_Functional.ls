include("102_Debug");
include("500_FUNCTIONAL========");

/*		===== Boolean functions
							andB								:: Bool -> Bool -> Bool
							orB									:: Bool -> Bool -> Bool
							not									:: Bool -> Bool
							otherwise							:: Bool
							
							TYPE : Bool                         :: true, false
*/

header ("Boolean Functions");
bench_verify(function () { return andB(true)(true); }, true, "andB : True && True");
bench_verify(function () { return andB(false)(true); }, false, "andB : false && True");

bench_verify(function () { return orB(false)(true); }, true, "orB : False || True");
bench_verify(function () { return orB(false)(false); }, false, "orB : False || False");

bench_verify(function () { return not(false); }, true, "not : !true");
bench_verify(function () { return not(true); }, false, "not : !false");

bench_verify(function () { return otherwise; }, true, "otherwise : true");

/*		===== Class Eq a
							eq, sEq, dif, sDif 					:: a -> a -> Bool
*/

header ("Class Eq");
bench_verify(function () { return eq(0)(false); }, true, "eq : 0 == false");
bench_verify(function () { return eq(0)("1"); }, false, "eq : 0 == '1'");

bench_verify(function () { return sEq(0)(0); }, true, "sEq : 0 === 0");
bench_verify(function () { return seq(0)(false); }, false, "sEq : 0 === false");

bench_verify(function () { return dif(0)("1"); }, true, "dif : 0 != '1'");
bench_verify(function () { return dif(0)(false); }, false, "dif : 0 != false");

bench_verify(function () { return sDif(0)(false); }, true, "sDif : 0 !== false");
bench_verify(function () { return sDif(0)(0); }, false, "sDif : 0 !== 0");


/* 		===== Class Ord a 
    						compare              				:: a -> a -> Ordering
      						infEq, inf, supEq, sup 				:: a -> a -> Bool
    						max, min							:: a -> a -> a
							
							TYPE : Ordering						:: EQ, GT, LT
*/

header ("Class Ord");
bench_verify(function () { return compare(0)(1); }, LT, "compare : LT");
bench_verify(function () { return compare(0)(0); }, EQ, "compare : EQ");
bench_verify(function () { return compare(1)(0); }, GT, "compare : GT");

bench_verify(function () { return infEq(0)(0); }, true, "infEq : 0 <= 0");
bench_verify(function () { return infEq(1)(0); }, false, "infEq : 1 <= 0");

bench_verify(function () { return inf(0)(1); }, true, "inf : 0 < 1");
bench_verify(function () { return inf(0)(0); }, false, "inf : 0 < 0");

bench_verify(function () { return supEq(1)(1); }, true, "supEq : 1 >= 1");
bench_verify(function () { return supEq(1)(2); }, false, "supEq : 1 >= 2");

bench_verify(function () { return sup(1)(0); }, true, "sup : 1 > 0");
bench_verify(function () { return sup(0)(0); }, false, "sup : 0 > 0");

/*		===== Class Num a  
							add, sub, prdct, div, mod			:: a -> a -> a
    						negate           					:: a -> a  		
    						abs, signum     				 	:: a -> a
							recip            					:: a -> a
*/

header ("Class Num");
bench_verify(function () { return add(0)(1); }, 1, "add : 1 + 0");
bench_verify(function () { return add(-1)(1); }, 0, "add : -1 + 1");

bench_verify(function () { return sub(0)(1); }, -1, "sub : 0 - 1");
bench_verify(function () { return sub(-1)(0); }, -1, "sub : -1 - 0");

bench_verify(function () { return prdct(0)(1); }, 0, "prdct : 0 * 1");
bench_verify(function () { return prdct(10)(2); }, 20, "prdct : 10 * 2");

bench_verify(function () { return div(0)(1); }, 0, "div : 0 / 1");
bench_verify(function () { return div(20)(10); }, 2, "div : 20 / 10");

bench_verify(function () { return mod(10)(2); }, 0, "mod : 10 % 2");
bench_verify(function () { return mod(10)(3); }, 1, "mod : 10 % 3");

bench_verify(function () { return negate(-10); }, 10, "negate : --10");
bench_verify(function () { return negate(15); }, -15, "negate : -15");

bench_verify(function () { return abs(-10); }, 10, "abs : |-10|");
bench_verify(function () { return abs(10); }, 10, "abs : |10|");

bench_verify(function () { return signum(-10); }, -1, "signum :  |-10| / -10");
bench_verify(function () { return signum(10); }, 1, "signum :  |10| / 10");

bench_verify(function () { return recip(10); }, 0.1, "recip : 1 / 10");
bench_verify(function () { return recip(-10); }, -0.1, "recip : 1 / -10");

/*		===== Class  Floating a
    						pi                  				:: a
    						exp, log, sqrt      				:: a -> a
    						pow, logBase        				:: a -> a -> a
    						sin, cos, tan       				:: a -> a
    						asin, acos, atan    				:: a -> a
*/

header ("Class Floating");
bench_verify(function () { return exp(0); }, 1, "exp : e^0");
bench_verify(function () { return exp(1); }, E, "exp : e^1");

bench_verify(function () { return log(1); }, 0, "log : ln 1");
bench_verify(function () { return log(E); }, 1, "log : ln e");

bench_verifyRound(function () { return sqrt(100); }, 10, "sqrt : 100");
bench_verifyRound(function () { return sqrt(1); }, 1, "sqrt : 1");

bench_verifyRound(function () { return pow(1)(100); }, 1, "pow : 1^100");
bench_verifyRound(function () { return pow(20)(2); }, 400, "pow : 20^2");

bench_verifyRound(function () { return logBase(10)(10); }, 1, "logBase : log10 10");
bench_verifyRound(function () { return logBase(2)(2); }, 1, "logBase : log2 2");

var piDemi = PI * 0.5, piQuart = PI*0.25;

bench_verifyRound(function () { return sin(PI); }, 0, "sin : pi");
bench_verifyRound(function () { return sin(piDemi); }, 1, "sin : pi/2");

bench_verifyRound(function () { return cos(PI); }, -1, "sin : pi");
bench_verifyRound(function () { return cos(piDemi); }, 0, "sin : pi/2");

bench_verifyRound(function () { return tan(0); }, 0, "tan :  0");
bench_verifyRound(function () { return tan(piQuart); }, 1, "tan :  pi/4");

bench_verify(function () { return asin(0); }, 0, "asin : 0");
bench_verify(function () { return asin(1); }, piDemi, "asin : 1");

bench_verify(function () { return acos(-1); }, pi, "acos : -1");
bench_verify(function () { return acos(0); }, piDemi, "acos : 0");

bench_verify(function () { return atan(0); }, 0, "atan :  0");
bench_verify(function () { return atan(1); }, piQuart, "atan :  1");

/*		===== Numeric functions
    						subtract        				 	:: (Num a) => a -> a -> a
							even, odd        					:: (Num a) => a -> Bool
							rem, quot							:: (Num a) => a -> a -> a
							gcd              					:: (Num a) => a -> a -> a
							lcm              					:: (Num a) => a -> a -> a
*/

header ("Class Numeric functions");
bench_verify(function () { return subtract(0)(1); }, 1, "subtract : 1 - 0");
bench_verify(function () { return subtract(-1)(1); }, 2, "subtract : 1 - -1");

bench_verify(function () { return even(0); }, true, "even : 0");
bench_verify(function () { return even(1); }, false, "even : 1");

bench_verify(function () { return odd(0); }, false, "odd : 0");
bench_verify(function () { return odd(1); }, true, "odd : 1");

bench_verify(function () { return rem(10)(2); }, 0, "rem : 10 `rem` 2");
bench_verify(function () { return rem(10)(3); }, 1, "rem : 10 `rem` 3");

bench_verify(function () { return quot(10)(2); }, 5, "quot : floor 10 / 2");
bench_verify(function () { return quot(10)(3); }, 3, "quot : floor 10 / 3");

bench_verify(function () { return gcd(96)(36); }, 12, "gcd : 96, 36");
bench_verify(function () { return gcd(738)(306); }, 18, "gcd : 738, 306");

bench_verify(function () { return lcm(6)(22); }, 66, "lcm : 6, 22");
bench_verify(function () { return lcm(10)(50); }, 50, "lcm : 10, 50");

/*		===== Function type
							id               					:: a -> a
							const								:: a -> b -> a
							seq									:: a -> b -> b
							dot						            :: (b -> c) -> (a -> b) -> a -> c
							flip            				 	:: (a -> b -> c) -> b -> a -> c
							until 								:: (a -> Bool) -> (a-> a) -> a
*/		

header ("Class type functions");
bench_verify(function () { return id(0); }, 0, "id : 0");
bench_verify(function () { return id(-1); }, -1, "id : -1");

bench_verify(function () { return const(0)(1); }, 0, "const : 0 1");
bench_verify(function () { return const(1)(0); }, 1, "const : 1 0");

bench_verify(function () { return seq(0)(1); }, 1, "seq : 0 1");
bench_verify(function () { return seq(1)(0); }, 0, "seq : 1 0");

bench_verify(function () { return dot(add(10))(prdct(2))(5); }, 20, "dot : 5 * 2 + 10");

bench_verify(function () { return flip(const)(2)(1); }, 1, "1 : const 2 1");
bench_verify(function () { return flip(seq)(3)(2); }, 3, "flip : seq 3 2");

bench_verify(function () { return until(sup(5))(add(1))(0); }, 5, "until : 5> -> +1");

/*		===== Utilities
							ifElse 								:: (a -> Bool) -> (a -> b) -> (a -> b) -> a -> b
							default 							:: (a -> Bool) -> b -> (a -> b) -> a -> b
							curry								:: ( (a, b) -> c) -> a -> b -> c
							curry3								:: ( (a, b, c) -> d) -> a -> b -> c -> d
							uncurry								:: (a -> b -> c) -> (a, b) -> c
							uncurry3							:: (a -> b -> c -> d) -> (a, b, c) -> d
							error								:: String ->
*/
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
*/
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
*/
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
*/