Ejercicio 1----------------------------------------------------------------------

1.1 Funciones y operaciones para la maipulación de listas

-head
Tipo: head :: [a]→a
Función: devuelve el primer elemento de una lista no vacía

-last
Tipo: last :: [a]→a
Función: devuelve el último elemento de una lista no vacía

-tail
Tipo: tail :: [a]→[a]
Función: devuelve una lista con todos los elementos de la original excepto
el primero

-init
Tipo: init :: [a]→[a]
Función: devuelve una lista con todos los elementos de la original excepto
el último.

-null
tipo: Foldable t => t a → Bool
Función: devuelve true o false dependiendo de si la estructura está vacía

-length
tipo: Foldable t => t a → Int
Función: devuelve el tamaño de una estructura finita

-reverse
Tipo: reverse :: [a]→[a]
Función: devuelve una lista con los elementos de la original pero invertidos

-take
Tipo: take :: Int → [a] → [a]
Función: devuelve una lista con los n primeros valores de la lista original

-drop
Tipo: drop :: Int → [a] → [a]
Funcion: devuelve una lista a la que se le quitaron los n primero valores
respecto a la lista original

-maximum
Tipo: forral a.(Foldable t, Ord a) => t a → a
Función: devuelve el elemento más grande de una estructura no vacía

-minimum
Tipo: forral a.(Foldable t, Ord a) => t a → a
Función: devuelve el elemento más chico de una estructura no vacía

-sum
Tipo: sum :: (Foldable t, Num a) => t a → a
Función: suma todos los elementos de una estructura

-concat
Tipo: concat Foldable t => t [a] → [a]
Función: concatena todos los elementos de una estructura de listas

-product
Tipo: product :: (Foldable t, Num a) → t a → a
Función: multiplica todos los elementos de una estructura

-elem
Tipo: elem :: (Foldable t, Eq a) => a → t a → Bool
Función: devuelve true o false dependiendo de si un elemento está en una 
estructura

-replicate 
Tipo: Int → a → [a]
Función: replica n veces un valor x y lo devuelve en una lista

-:
Tipo: a → [a] → [a]
Función: inserta un elemento en una lista al comienzo

-++
Tipo: (++) :: [a]→[a]→[a]
Función: une dos listas 

-!!
Tipo: (!!) :: [a] → Int → a
Función: a partir de una lista y un índice (que comienza en cero) devuelve el
elemento que se encuentra en esa posición

1.2 funciones definidas para tuplas

-fst
Tipo: fst :: (a,b) → a
Función: devuelve el primer elemento de un par

-snd
Tipo: snd :: (a,b) → b
Función: devuelve el segundo elemento de un par


-swap
Tipo: swap :: (a,b) → (b,a)
Función: invierte los componentes de un par

-zip
Tipo: zip :: [a] → [b] → [(a,b)]
Función: a partir de dos listas, devuelve una lista de duplas donde el primer
elemento corresponde a la lista 1 y el segundo elemento a la lista 2. El 
tamaño de la lista final es igual al tamaño de la lista mas chica.

-unzip
Tipo: unzip :: [(a,b)] → ([a],[b])
Función: a partir de una lista de duplas devuelve dos listas

-zipWith
Tipo: zipWith :: (a → b → c) → [a] → [b] → [c]
Función: a partir de una función y dos listas, aplica la función al elemento i
de la lista 1 con el elemento i de la lista 2 y devuelve una lista con el
resultado de cada operación con el tamaño de la lista más corta 

1.3 funciones definidas para Strings

-lines
Tipo: lines :: String -> [String]
Función: rompe un string en una lista 

-words
Tipo: words :: String -> [String]
Función: rompe un string en una lista de palabras delimitadas por espacios (oración)

-unlines
Tipo: unlines :: [String] -> String
Función: función inversa a lines.

-unwords
Tipo: unwords [String] -> String
Función: función inversa a words

1.4 funciones predefinidas

-const
Tipo: a → b → a
Función: función constante

-flip
Tipo: (a → b → c) → b → a → c
Función: evalúa la función invirtiendo el orden de los argumentos

-uncurry
Tipo: (a → b → c) → (a,b) → c
Función: convierte una función currificada en una no currificada

-curry
Tipo: curry :: ((a,b) → c) → a → b → c
Funcion: convierte una función no currificada en una currificada

Ejercicio 2----------------------------------------------------------------------

-map
Tipo: map :: (a → b) → [a] → [b]
Función: a partir de una lista y una función, aplica la función a cada uno
de los elementos de la lista

-filter
Tipo: filter :: (a → Bool) → [a] → [a]
Función: a partir de una condición (>3, <-4, ==5) y una lista, devuelve una 
lista filtrando los elementos que cumplen con la condición

-any
Tipo: any :: Foldable  t => (a → Bool) → t a → Bool
Función: devuelve true si algún elemento cumple la condición, sino retorna
false

-all
Tipo: Foldable t => (a → Bool) → t a → Bool
Función: devuelve true si todos los elementos de una estructura cumplen la 
condición

-concatMap
Tipo: concatMap :: Foldable t => (a → [b]) → t a → [b]
Función: crea una lista a partir de la aplicación de una función de lista 
en todos los elementos de una lista pasada como segundo argumento 

Ejercicio 3----------------------------------------------------------------------

-foldr
Tipo: foldr :: (a → b → b) → b → [a] → b
Funcionamiento: aplica una funcion binaria a una lista y las operaciones se
realizan de derecha a izquierda

Ejemplo: suma = foldr (\x acc → x + acc) 0 [1..10]
funcionamiento → (1+..(8+(9+(10+0)))))

-foldr1


-foldl
Tipo: foldl :: (a → b → a) → a → [b] → a
Función: aplica una funcion binaria  a una lista y las operaciones se realizan
de izquierda a derecha

Ejemplo: suma 0 foldl (\acc x → acc + x) 0 [1..10]
funcionamiento → (((0+1)+2) ... + 10)

-foldl1

Ejercicio 4----------------------------------------------------------------------

1.

longitud :: [a] → Integer
longitud x = sum (map (const 1) x) 

2.

ejercicio2 :: [a] → a → Integer
ejercicio2 x y = sum (map (const 1) (filter (==y) x))

3.

pertenencia :: a → [a] → Bool
pertenencia x y = elem x y

4.

listaDoble :: [a] → [a]
listaDoble x = x ++ x

5.

tamaño :: [a] → [b] → Integer
tamaño x y 
		  | (sum (map (const 1) x))>(sum (map (const 1) y)) = 1
          | (sum (map (const 1) x))<(sum (map (const 1) y)) = 1
		  | otherwise = 0

6.

átomos numéricos?

ejercicio8 :: Num a => [(a,b)] → [c]
ejercicio8 x = map f x where f y = fst y * snd y

7.

ejercicio7 :: Num a => [a] → a
ejercicio7 x = sum(replicate ((!!) x 0) ((!!) x 1))

8.

reverso :: [a] → [a]
reverso xs = if null xs then [] else last xs : reverso (init xs)

9.

ejercicio9 :: [[a]] → [[]]
ejercicio9 x = if null x then [] else (reverse (head x)):ejercicio9 (tail x)

Ejercicio 5----------------------------------------------------------------------

5.1 ejercicio 4 pero con recursión controlada

1.

longitud :: [a] → Integer
longitud [] = 0
longitud (_:xs) = 1+ longitud xs

2.

cuentaElem :: [a] → a → Integer
cuentaElem [] y = 0
cuentaElem (x:xs) y = if x == y then 1 + cuentaElem xs y else 0 + cuentaElem xs y

3.

pertenencia :: [a] → a → Bool
pertenencia [] y = False 
pertenencia (x:xs) y = if x==y then True else pertenencia xs

4.

ejercicio4 :: [a] → [a]
ejercicio4 [] = []
ejercicio4 (x:xs) = [x,x] ++ ejercicio4 xs

5.
(preguntar)

ejercicio5 :: [a] -> [b] -> Integer
ejercicio5 [] [] = 0
ejercicio5 x [] = 1
ejercicio5 [] y = 2
ejercicio5 (_:xs) (_:ys) = 0 + ejercicio5 xs ys

6.

ejercicio6  :: Num a => [[a]] → [a]
ejercicio6 [] = 0
ejercicio6 (x:xs) = (let f y = fst y * snd y in map f x)++ejercicio6 xs

7.
(Preguntar)

ejercicio7 :: Num a => [a] → a

8.

ejercicio8 :: [a] → [a]
ejercicio8 [] = []
ejercicio8 (x:xs) = ejercicio8 xs ++ [x]


9.

ejercicio9 :: [[a]] → [[a]]
ejercicio9 [] = []
ejercicio9 (x:xs) = (reverse x):(ejercicio9 xs)


Ejercicio 6----------------------------------------------------------------------

1.

longitud lista = aux lista 0
		where
			aux [] a = a
			aux (_:xs) a = aux(xs)(a+1)
		
2

contar lista elem = aux lista elem 0
		where
			aux [] elem a = a
			aux (x:xs) elem a = aux xs elem (if x==elem then a+1 else a)

3.

pertenencia lista elem = aux lista elem False
		where
			aux [] elem a = a
			aux (x:xs) elem a = aux xs elem (if x==elem then True else a)
		

4.

dobleLista lista = aux lista []
		where
		aux [] a = a
		aux (x:xs) a = aux xs [x,x]++a 

5.

secuencia a b = aux a b -1
		where
		aux [] [] a = 0
		aux [] b a = 2
		aux a [] a = 1
		aux (x:xs) (y:ys) a = aux xs ys a


Ejercicio 7--------------------------------------------------------------------

1.

longitud :: [a] -> Integer
longitud x = foldr (+) 0 (map (const 1) x)

longitud x = foldr ((+).(const 1)) 0 x

2. 

contar lista elem = foldr(aux) 0 lista
		where 
		aux x xl
		|xl==elem = x+1
		|otherwise = x
	

3.

pertenencia lista elem = foldl(aux) False lista where aux x xl = if xl==elem then x||True else x 

4.

listaDoble x = foldl(aux) [] x where aux x xl = x++[xl,xl] 

5.

listaDoble x y 
	|(foldl ((+).(const 1)) 0 x) > (foldl ((+).(const 1)) 0 y) = 1
	|(foldl ((+).(const 1)) 0 x) < (foldl ((+).(const 1)) 0 y) = 2
	|otherwise = 0

6.

producto x = foldl (aux) [] x where aux x xl = x++[fst xl * snd xl]

