include("500_FUNCTIONAL========");

// Fonction Match : a -> b -> Bool
// a est la valeur de l'utilisateur par exemple si un argument est "null", a = null
// b est l'argument
// Par exemple : 'Just a' sera traduit en : 'inJust(a)' Si l'argument est un Just alors a prend la valeur encapsulé
// Autre exemple : '[]' sera traduit en 'is([])' Si l'argument est un tableau vide alors la fonction renvoie true

// Il est nécéssaire de créer des fonctions pour chaque Structure, i.e. des fonctions imbriqués car il est impossible
// de tester des égalité entre deux fonctions...

function is (@x) { return 
function 	(@y) { return
						x === y
; }; }

function inJust (@x) { return
function 		(@y) { 
						if (y === null) {
							return false;
						} else {
							x =@y();
							return true;
						}
}; }

function inJustIs (@x) { return
function 		  (@y) { 
						if (y === null) {
							return false;
						} else
							return x === y();
}; }

// Fonctions de création de Filtrage par motif
// (a, b, ... ) -> (x, y, ...) -> Bool

function NewMatch1 (@x) {
	return function (@a) {
		if (a === null) {
			a =@ x;
			return true;
		}
		if (a(x)) {
			return true;
		}

		return false;
	};
}

function NewMatch2 (@x, @y) {
	return function (@a, @b) {
		if (a === null && b === null) {
			a =@ x;
			b =@ y;
			return true;
		}

		if (a === null) {
			if(b(y)) {
				a =@ x;
				return true;
			} else 
			return false;
		}

		if (b === null) {
			if(a(x)) {
				b =@ y;
				return true;
			} else 
			return false;
		}

		if (a(x) && b(y))
			return true;

		return false;
	};
}

function NewMatch3 (@x, @y, @z) {
	return function (@a, @b, @c) {
		if (a === null) {
			if (b === null) {
				if (c === null) {
					// a, b, c null
					a =@ x;
					b =@ y;
					c =@ z;
					return true;
				} else {
					// a, b null
					if (c(z)) {
						a =@ x;
						b =@ y;
						return true;
					} else
						return false;
				}
			} else {
				if (c === null) {
					// a, c null
					if (b(y)) {
						a =@ x;
						c =@ z;
						return true;
					} else
						return false;
				} else {
					// a null
					if (b(y) && c(z)) {
						a =@ x;
						return true;
					} else
						return false;
				}
			}
		} else {
			if (b === null) {
				if (c === null) {
					// b, c null
					if (a(x)) {
						b =@ y;
						c =@ z;
						return true;
					} else
						return false;
				} else {
					// b null
					if (a(x) && c(z)) {
						b =@ y;
						return true;
					} else
						return false;
				}
			} else {
				if (c === null) {
					// c null
					if (a(x) && b(y)) {
						c =@ z;
						return true;
					} else
						return false;
				} else {
					// rien null
					if (a(x) && b(y) && c(z)) {
						return true;
					} else
						return false;
				}
			}
		}
	};
}
