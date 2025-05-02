![[Pasted image 20250428215142.png]]
## Primer ejercicio
S -> S S +
S -> S S *
S -> a 
S -> Epsilon

Derivacion por izquierda
Cadena: aa +a*
```
S
S S *
S S + S *
a S + S *
a a + S *
a a + a *
```
Derivacion por derecha
```
S
S S *
S a *
S S + a *
S a + a *
a a + a *
```
Es ambigua
## Segundo ejercicio
S -> 0 S 1
S -> 0 1
Cadena 000111

Derivacion por izquierda 
```
S
0S1
00S11
000111
```

Derivacion por derecha
```
S
0S1
00S11
000111
```

Es ambigua 
## Tercer ejercicio
S -> + S S
S -> * S S 
S -> a
Cadena +* aaa

Derivacion por izquierda

```
S
+ S S
+ * S S S
+ * a S S
+ * a a S
+ * a a a
 ``` 

Derivacion por derecha

```
S 
+ S S
+ S * S S 
```

No es ambigua
## Cuarto ejercicio 
S -> S (S) S
S -> Epsilon

Cadena (()())

Derivacion por izquierda
```
S
S ( S ) S
E ( S ) S
E ( S ( S ) S ) S 
E ( S ( S ) S ( S ) S) S
E ( E ) ( S ) S ( E ) S ) S
E ( E ) ( S ) S ( E ) S ) S
E ( E ) ( E ) S ( E ) S ) S
E ( E ) ( E ) E ( E ) S ) S
E ( E ) ( E ) E ( E ) E ) S
E ( E ) ( E ) E ( E ) E ) E
```
Derivacion por derecha
```
S
S ( S ) S
S ( S ) S
S ( S ) S ( S ) S
```

No es ambigua

## Quinto ejercicio
S -> ( L )
S -> a
L -> L, S
L -> S

cadena ( (a, a), a , (a))

derivacion por izquierda
```
S 
(L)
(L,S)
(S,S)
((L),S)
((L,S),S)
((L,S),S)
((S,S),S)
((a,S),S)
((a,a),S)
((a,a),S)
```
derivacion por derecha
```
S
(L)
(L,S)
(L,(L))
(L,(S))
(L,(a))
(L,S,(a))
(L,a,(a))
(S,a,(a))
((L),a,(a))
((L,S),a,(a))
((L,a),a,(a))
((S,a),a,(a))
((a,a),a,(a))
```

no es ambigua

## Sexto ejercicio

S -> a S b S
S -> b S a S 
S -> E

cadena aabbab

Derivacion por izquierda
```
S
a S b S
a a S b S b S
a a b b S
a a b b a S b S
a a b b a b S
a a b b a b 
```

Derivacion por derecha
```
S
a S b S
a S b b S a S
a S b b S a b S a S
```

No es ambigua