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