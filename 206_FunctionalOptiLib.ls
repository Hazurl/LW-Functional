include("102_Optimisation");
include("500_FUNCTIONAL========");
/*		===== Boolean functions
							andB								:: Bool -> Bool -> Bool
							orB									:: Bool -> Bool -> Bool
							not									:: Bool -> Bool
							otherwise							:: Bool
							
							TYPE : Bool                         :: true, false
*/

Title("Boolean Functions");
	SubTitle("andB", andB, CURRY, PARAM_2, ACC_EXACT, TRANSFORM_NO);
		Exec(true, true, true);
		Exec(true, false, false);
		Exec(false, false, false);
	EndSubTitle();
	SubTitle("orB", orB, CURRY, PARAM_2, ACC_EXACT, TRANSFORM_NO);
		Exec(true, true, true);
		Exec(true, false, true);
		Exec(false, false, false);
	EndSubTitle();
	SubTitle("not", not, CURRY, PARAM_1, ACC_EXACT, TRANSFORM_NO);
		Exec(true, false);
		Exec(false, true);
	EndSubTitle();
EndTitle();
/*		===== Class Eq a
							eq, sEq, dif, sDif 					:: a -> a -> Bool
*/
Title("Class Eq");
	SubTitle("eq", eq, CURRY, PARAM_2, ACC_EXACT, TRANSFORM_NO);
		Exec("test", "test", true);
		Exec(0, false, true);
		Exec(false, true, false);
	EndSubTitle();
	SubTitle("sEq", sEq, CURRY, PARAM_2, ACC_EXACT, TRANSFORM_NO);
		Exec("test", "test", true);
		Exec(0, false, false);
		Exec(false, true, false);
	EndSubTitle();
	SubTitle("dif", dif, CURRY, PARAM_2, ACC_EXACT, TRANSFORM_NO);
		Exec("test", "test", false);
		Exec(0, false, false);
		Exec(false, true, true);
	EndSubTitle();
	SubTitle("sDif", sDif, CURRY, PARAM_2, ACC_EXACT, TRANSFORM_NO);
		Exec("test", "test", false);
		Exec(0, false, true);
		Exec(false, true, true);
	EndSubTitle();
EndTitle();
/* 		===== Class Ord a 
    						compare              				:: a -> a -> Ordering
      						infEq, inf, supEq, sup 				:: a -> a -> Bool
    						max, min							:: a -> a -> a
							
							TYPE : Ordering						:: EQ, GT, LT
*/
Title("Class Ord");
	SubTitle("compare", compare, CURRY, PARAM_2, ACC_EXACT, TRANSFORM_NO);
		Exec(0, 0, EQ);
		Exec(0, 1, LT);
		Exec(1, 0, GT);
	EndSubTitle();
	SubTitle("infEq", infEq, CURRY, PARAM_2, ACC_EXACT, TRANSFORM_NO);
		Exec(0, 0, true);
		Exec(0, 1, true);
		Exec(1, 0, false);
	EndSubTitle();
	SubTitle("inf", inf, CURRY, PARAM_2, ACC_EXACT, TRANSFORM_NO);
		Exec(0, 0, false);
		Exec(0, 1, true);
		Exec(1, 0, false);
	EndSubTitle();
	SubTitle("supEq", supEq, CURRY, PARAM_2, ACC_EXACT, TRANSFORM_NO);
		Exec(0, 0, true);
		Exec(0, 1, false);
		Exec(1, 0, true);
	EndSubTitle();
	SubTitle("sup", sup, CURRY, PARAM_2, ACC_EXACT, TRANSFORM_NO);
		Exec(0, 0, false);
		Exec(0, 1, false);
		Exec(1, 0, true);
	EndSubTitle();
	SubTitle("max", max, CURRY, PARAM_2, ACC_EXACT, TRANSFORM_NO);
		Exec(0, 0, 0);
		Exec(-1, 1, 1);
		Exec(2, 0, 2);
	EndSubTitle();
	SubTitle("min", min, CURRY, PARAM_2, ACC_EXACT, TRANSFORM_NO);
		Exec(0, 0, 0);
		Exec(-1, 1, -1);
		Exec(2, 0, 0);
	EndSubTitle();
EndTitle();

/*		===== Class Num a  
							add, sub, prdct, div, mod			:: a -> a -> a
    						negate           					:: a -> a  		
    						abs, signum     				 	:: a -> a
							recip            					:: a -> a
*/
Title("Class Num");
	SubTitle("add", add, CURRY, PARAM_2, ACC_EXACT, TRANSFORM_NO);
		Exec(0, 101, 101);
		Exec(-10, -5, -15);
		Exec(-1, 1, 0);
	EndSubTitle();
	SubTitle("sub", sub, CURRY, PARAM_2, ACC_EXACT, TRANSFORM_NO);
		Exec(0, 101, -101);
		Exec(-10, -5, -5);
		Exec(-1, 1, -2);
	EndSubTitle();
	SubTitle("prdct", prdct, CURRY, PARAM_2, ACC_EXACT, TRANSFORM_NO);
		Exec(0, 101, 0);
		Exec(-10, -5, 50);
		Exec(-1, 1, -1);
	EndSubTitle();
	SubTitle("div", div, CURRY, PARAM_2, ACC_EXACT, TRANSFORM_NO);
		Exec(0, 101, 0);
		Exec(-10, -5, 2);
		Exec(-1, 1, -1);
	EndSubTitle();
	SubTitle("mod", mod, CURRY, PARAM_2, ACC_EXACT, TRANSFORM_NO);
		Exec(10, 2, 0);
		Exec(10, 3, 1);
		Exec(10, 15, 10);
	EndSubTitle();
	SubTitle("negate", negate, CURRY, PARAM_1, ACC_EXACT, TRANSFORM_NO);
		Exec(1, -1);
		Exec(-10, 10);
	EndSubTitle();
	SubTitle("abs", abs, CURRY, PARAM_1, ACC_EXACT, TRANSFORM_NO);
		Exec(1, 1);
		Exec(-10, 10);
	EndSubTitle(); 
	SubTitle("signum", signum, CURRY, PARAM_1, ACC_EXACT, TRANSFORM_NO);
		Exec(100, 1);
		Exec(-10, -1);
		Exec(0, 0);
	EndSubTitle();
	SubTitle("recip", recip, CURRY, PARAM_1, ACC_EXACT, TRANSFORM_NO);
		Exec(2, 0.5);
		Exec(-8, -0.125);
	EndSubTitle();
EndTitle();

/*		===== Class  Floating a
    						pi                  				:: a
    						exp, log, sqrt      				:: a -> a
    						pow, logBase        				:: a -> a -> a
    						sin, cos, tan       				:: a -> a
    						asin, acos, atan    				:: a -> a
*/
Title("Class Floating");
	SubTitle("exp", exp, CURRY, PARAM_1, ACC_BIG, TRANSFORM_NO);
		Exec(0, 1);
		Exec(1, E);
	EndSubTitle();
	SubTitle("log", log, CURRY, PARAM_1, ACC_BIG, TRANSFORM_NO);
		Exec(1, 0);
		Exec(E, 1);
	EndSubTitle();
	SubTitle("sqrt", sqrt, CURRY, PARAM_1, ACC_BIG, TRANSFORM_NO);
		Exec(1, 1);
		Exec(100, 10);
	EndSubTitle();
	SubTitle("pow", pow, CURRY, PARAM_2, ACC_BIG, TRANSFORM_NO);
		Exec(10, 8, 100000000);
		Exec(2, 5, 32);
		Exec(5, 3, 125);
	EndSubTitle();
	SubTitle("logBase", logBase, CURRY, PARAM_2, ACC_BIG, TRANSFORM_NO);
		Exec(10, 10, 1);
		Exec(2, 2, 1);
	EndSubTitle();
	SubTitle("sin", sin, CURRY, PARAM_1, ACC_BIG, TRANSFORM_NO);
		Exec(PI, 0);
		Exec(PI/2, 1);
	EndSubTitle();
	SubTitle("cos", cos, CURRY, PARAM_1, ACC_BIG, TRANSFORM_NO);
		Exec(PI, -1);
		Exec(PI/2, 0);
	EndSubTitle();
	SubTitle("tan", tan, CURRY, PARAM_1, ACC_BIG, TRANSFORM_NO);
		Exec(0, 0);
		Exec(PI/4, 1);
	EndSubTitle();
	SubTitle("asin", asin, CURRY, PARAM_1, ACC_BIG, TRANSFORM_NO);
		Exec(0, 0);
		Exec(1, PI/2);
	EndSubTitle();
	SubTitle("acos", acos, CURRY, PARAM_1, ACC_BIG, TRANSFORM_NO);
		Exec(-1, PI);
		Exec(0, PI/2);
	EndSubTitle();
	SubTitle("atan", atan, CURRY, PARAM_1, ACC_BIG, TRANSFORM_NO);
		Exec(0, 0);
		Exec(1, PI/4);
	EndSubTitle();
EndTitle();

/*		===== Numeric functions
    						subtract        				 	:: (Num a) => a -> a -> a
							even, odd        					:: (Num a) => a -> Bool
							rem, quot							:: (Num a) => a -> a -> a
							gcd              					:: (Num a) => a -> a -> a
							lcm              					:: (Num a) => a -> a -> a
*/
Title("Numeric functions");
	SubTitle("subtract", subtract, CURRY, PARAM_2, ACC_EXACT, TRANSFORM_NO);
		Exec(0, 101, 101);
		Exec(-10, -5, 5);
		Exec(-1, 1, 2);
	EndSubTitle();
	SubTitle("even", even, CURRY, PARAM_1, ACC_EXACT, TRANSFORM_NO);
		Exec(0, true);
		Exec(1, false);
		Exec(-11, false);
		Exec(-100, true);
	EndSubTitle();
	SubTitle("odd", odd, CURRY, PARAM_1, ACC_EXACT, TRANSFORM_NO);
		Exec(0, false);
		Exec(1, true);
		Exec(-11, true);
		Exec(-100, false);
	EndSubTitle();
	SubTitle("rem", rem, CURRY, PARAM_2, ACC_EXACT, TRANSFORM_NO);
		Exec(10, 2, 0);
		Exec(10, 3, 1);
		Exec(10, 15, 10);
	EndSubTitle();
	SubTitle("quot", quot, CURRY, PARAM_2, ACC_EXACT, TRANSFORM_NO);
		Exec(10, 2, 5);
		Exec(10, 3, 3);
		Exec(10, 15, 0);
	EndSubTitle();
	SubTitle("gcd", gcd, CURRY, PARAM_2, ACC_EXACT, TRANSFORM_NO);
		Exec(96, 36, 12);
		Exec(738, 306, 18);
	EndSubTitle();
	SubTitle("lcm", lcm, CURRY, PARAM_2, ACC_EXACT, TRANSFORM_NO);
		Exec(6, 22, 66);
		Exec(10, 50, 50);
		Exec(11, 7, 77);
	EndSubTitle(); 
EndTitle();
/*		===== Function type
							id               					:: a -> a
							const								:: a -> b -> a
							seq									:: a -> b -> b
							dot						            :: (b -> c) -> (a -> b) -> a -> c
							flip            				 	:: (a -> b -> c) -> b -> a -> c
							until 								:: (a -> Bool) -> (a-> a) -> a
*/		
Title("Type Functions");
	SubTitle("id", id, CURRY, PARAM_1, ACC_EXACT, TRANSFORM_NO);
		Exec(true, true);
		Exec(-1, -1);
		Exec("test", "test");
	EndSubTitle();
	SubTitle("const", const, CURRY, PARAM_2, ACC_EXACT, TRANSFORM_NO);
		Exec(true, -1, true);
		Exec("test", false, "test");
		Exec(8, "test", 8);
	EndSubTitle();
	SubTitle("seq", seq, CURRY, PARAM_2, ACC_EXACT, TRANSFORM_NO);
		Exec(true, -1, -1);
		Exec("test", false, false);
		Exec(8, "test", "test");
	EndSubTitle();
	SubTitle("dot", dot, CURRY, PARAM_2, ACC_EXACT, function (@_) { return _(10); });
		Exec(add(1), prdct(2), 21);
		Exec(prdct(5), add(2), 60);
	EndSubTitle();
	SubTitle("flip", flip, CURRY, PARAM_1, ACC_EXACT, function (@_) { return _(-1)(1); });
		Exec(const, 1);
		Exec(seq, -1);
	EndSubTitle();
	SubTitle("until", until, CURRY, PARAM_3, ACC_EXACT, TRANSFORM_NO);
		Exec(sup(5), add(1), 0, 5);
		Exec(inf(0), subtract(1), 5, 0);
	EndSubTitle();
EndTitle();

/*		===== Utilities
							ifElse 								:: (a -> Bool) -> (a -> b) -> (a -> b) -> a -> b
							default 							:: (a -> Bool) -> b -> (a -> b) -> a -> b
*/
//		PAS ENCORE IMPLEMENETER LES PARAMETRES SUP A 3
/*
Title("Utilities");
	SubTitle("ifElse", ifElse, CURRY, PARAM_4, ACC_EXACT, TRANSFORM_NO);
		Exec(true, true);
		Exec(-1, -1);
		Exec("test", "test");
	EndSubTitle();
	SubTitle("default", default, CURRY, PARAM_4, ACC_EXACT, TRANSFORM_NO);
		Exec(true, -1, true);
		Exec("test", false, "test");
		Exec(8, "test", 8);
	EndSubTitle();
EndTitle();
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
							fromMaybe							:: a -> Maybe a -> a
							arrayToMaybe						:: Array a -> Maybe a
							maybeToArray						:: Maybe a -> Array a
							aCatMaybes							:: Array Maybe a -> Array a
							aMapMaybe							:: (a -> Maybe b) -> Array a -> Array b
*/
Title("Maybe");
	SubTitle("Nothing", Nothing, CURRY, PARAM_0, ACC_EXACT, TRANSFORM_NO);
		Exec(null);
	EndSubTitle();
	SubTitle("Just", Just, CURRY, PARAM_1, ACC_EXACT, fromJust);
		Exec("test", "test");
		Exec(1, 1);
		Exec(null, null);
	EndSubTitle();
	SubTitle("isNothing", isNothing, CURRY, PARAM_1, ACC_EXACT, TRANSFORM_NO);
		Exec(null, true);
		Exec(Nothing(), true);
		Exec(Just(1), false);
	EndSubTitle();
	SubTitle("isJust", isJust, CURRY, PARAM_1, ACC_EXACT, TRANSFORM_NO);
		Exec(Nothing(), false);
		Exec(Just(1), true);
		Exec(Just("test"), true);
	EndSubTitle();
	SubTitle("maybe", maybe, CURRY, PARAM_3, ACC_EXACT, TRANSFORM_NO);
		Exec("nope", id, Just(5), 5);
		Exec("nope", id, Just("test"), "test");
		Exec("nope", id, Nothing(), "nope");
		Exec("nope", id, null, "nope");
	EndSubTitle();
	SubTitle("fromJust", fromJust, CURRY, PARAM_1, ACC_EXACT, TRANSFORM_NO);
		Exec(Just(1), 1);
		Exec(Just("test"), "test");
	EndSubTitle();
	SubTitle("fromMaybe", fromMaybe, CURRY, PARAM_2, ACC_EXACT, TRANSFORM_NO);
		Exec("nope", null, "nope");
		Exec("nope", Just(1), 1);
		Exec("nope", Just("test"), "test");
	EndSubTitle();
	SubTitle("arrayToMaybe", arrayToMaybe, CURRY, PARAM_1, ACC_EXACT, function (@_) { return fromMaybe(null)(_); });
		Exec([0, 1, 2], 0);
		Exec([], null);
		Exec(["test", 1, 2], "test");
	EndSubTitle();
	SubTitle("maybeToArray", maybeToArray, CURRY, PARAM_1, ACC_EXACT, TRANSFORM_NO);
		Exec(Just(1), [1]);
		Exec(null, []);
		Exec(Just("test"), ["test"]);
	EndSubTitle();
	SubTitle("aCatMaybes", aCatMaybes, CURRY, PARAM_1, ACC_EXACT, TRANSFORM_NO);
		Exec([], []);
		Exec([Nothing(), Nothing(), Just(0), Nothing(), Just("test")], [0, "test"]);
	EndSubTitle();
	SubTitle("aMapMaybe", aMapMaybe, CURRY, PARAM_2, ACC_EXACT, TRANSFORM_NO);
		Exec(id, [], []);
		Exec(id, [Nothing(), Just(-1), Just(0), Nothing(), Just("test")], [-1, 0, "test"]);
	EndSubTitle();
EndTitle();
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

Analyze();