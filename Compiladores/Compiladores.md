## Herramientas para la construccion de Compiladores (Analizadores Lexicos)

### Analizador lexico:
Transforma el codigo fuente en tokens para el analisis sintactico 
### Herramientas principales

#### Flex(Fast Lexical Analyzer):
	a. Generadores lexicos en C y C++
	b. Usa expresiones regulares para tokens
	c. Integracion con GCC 
#### Lex(Lexical Analyzer Generator)
	a. Similares a flex
	b. Reglas basadas en expresiones regulares
	c. Genera codigo C para el analisis lexico
#### ANTLR Another tool for language reconigtion
	a. Genera analizadores lexicos y sintacticos
	b. Soporta Java, C#, Js, Python
	c. Usa .g4
#### Jflex
	a. Es para java
	b. Usa CUP para analisis sintactico
	c. Usa expresiones para reconocimiento lexico
#### Ragel
	a. Basado en maquinas de estados finitos
	b. Soporta C, C++, Java, Go
	c. Analisis binarios y protocolos
#### RE2C
	a. Generador de analizadores lexico C y C++
	b. Mas rapido que Flex y lex
	c. Usado en sqlite

| Herramienta | Descripcion                       |
| ----------- | --------------------------------- |
| Flex        | Rapido, ideal para C/C++          |
| Lex         | Antiguo, usado en Unix            |
| ANTLR       | Potente, multi lenguaje           |
| JFlex       | Java, integrando con CUP          |
| Ragel       | Procesamiento binario             |
| RE2C        | Alto rendimiento, usado en SQLite |
***
## Analizador sintactico 
![[Pasted image 20250427233120.png]]
### Tipos de analizadores sintacticos 
1. Universales
2. Descendentes
3. Ascendentes
#### Metodos universales de analisis sintacticos
1. Cocke Younger-Kasami
2. Early
*Pueden analizar cualquier gramatica*
### Metodo que se usan para los compiladores
1. Descendentes: Construyen arboles dela raiz a las hojas 
2. Ascendentes: Construyen desde las hojas a la raiz 
*Se leen de izquierda a derecha*
## Representacion de gramaticas
1. Asociatividad:
	1. La **asociatividad** en programación (y en matemáticas) dice **en qué orden** se agrupan operadores **cuando tienen la misma prioridad** (o precedencia).
2. Precedencia:
	1. La **precedencia** define **qué operador se evalúa primero** cuando hay **varios operadores diferentes** en una expresión.
#### Gramaticas ambiguas
Son gramaticas que pueden ser resueltas por izquierda como por derecha

## Manejo de los errores sintacticos
1. Modo panico
2. Nivel de frase
#### Niveles de errores
1. Errores lexicos: Escritura incorrecta
2. Errores sintacticos: Colocacion incorrecta de signos de punto, coma y llaves
3. Errores semanticos: Conflictos entre operandos y operadores
4. Errores logicos: Errores en operadores 
### ¿De qué manera un mango de errores debe reportar la presencia de un error?
Al menos debe reportar el lugar en el programa fuente donde fallo
### ¿Cómo debe recuperarse el analizador sintáctico?
1. Que el analizador sintactico termine
2. El compilador se restaura para detallar informacion
3. Apilacion de errores
### Estrategias para recuperar errores
1. Recuperacion modo panico
	 Descarta los simbolos de entrada hasta encontrar un delimitador
2. Recuperacion a nivel de frase 
	Puede realizar una correccion local sobre la frase restante
3. Produccion de errores
	 Generar diagnosticos de error de manera anticipada con la gramatica
4. Correccion global
	 Dada una cadena x y una gramatica G busca relacionar de la menor manera en un arbol sintactico  x en y

## Gramaticas libres de contexto
1. Los terminales (Token)
	 Son las palabras reservadas [if, else (, )]
2. Los no terminales
	 1. Son las variables
	 2. Es el simbolo inicial
	![[Pasted image 20250428070327.png]]
3. Producciones
	 Describen como debera estar formada una expresion
	 Como se compone:
	 1. Un no terminal (Lado izquierdo): Define algunas cadenas 
	 2. Simbolo
	 3. Cuerpo (Lado derecho): **0 o n** no terminales 
## Convenciones de notacion
1. Terminales
	* [a, b,c]
	* [+, - , /, *]
	* [ (, ),[ , ]{ , }, ;, ]
	* [0, ... 9]
	* [Id, If, Else, For, While, Do]
2. No terminales
	 * [A,B,C]
	 * S
	 * Nombres en cursiva y minusculas [*var* ]
	 * [u,v,z] (Vacias)
3. Simbolos gramaticales
	* [X,Y,Z]
### Derivaciones
Construccion de un arbol sintactico
Las producciones son reglas de rescritura
Empieza por el simbolo inicial
En cada paso se sustituye


### Practica [[Practica Compiladores]]
## Generacion de codigo intermedio

1. Frontend analiza programa fuente -> crea una representacion intermedia
 2. Backend genera codigo destino
	 ![[Pasted image 20250428220139.png]]
### Codigo de tres direcciones
1. Maximo hay un solo operador del lado derecho
2. Basado en dos conceptos
	1. Direcciones
		* Nombre: Se sustituye por un simbolo en la tabla de simbolos
		* Constante: 
		* Valor temporal: Es importante al optimizar
	2. Instrucciones
	 ![[Pasted image 20250428220541.png]]
### Lista de las formas comunes de instrucciones de tres direcciones
- **Asignaciones binarias**
     - **Forma:** `x = y op z`
     - **Descripción:** `x` recibe el resultado de aplicar una operación binaria `op` (aritmética o lógica) entre `y` y `z`.
       - **Ejemplos de `op`:** `+`, `-`, `*`, `/`, `&&`, `||`, etc.
        
- **Asignaciones unarias**
     - **Forma:** `x = op y`
     - **Descripción:** `x` recibe el resultado de aplicar una operación unaria `op` sobre `y`.
      - **Operaciones unarias comunes:** negación (`-`), negación lógica (`!`), desplazamientos, conversiones de tipos (por ejemplo, entero a flotante).
        
- **Copias directas**
     - **Forma:** `x = y`
     - **Descripción:** Simplemente se asigna a `x` el valor de `y`.
        
- **Saltos incondicionales**
     - **Forma:** `goto L`
     - **Descripción:** El flujo de ejecución salta directamente a la instrucción etiquetada como `L`.
        
- **Saltos condicionales simples**
    
    - **Formas:**
         - `if x goto L` (salta a `L` si `x` es **verdadero**)
         - `ifFalse x goto L` (salta a `L` si `x` es **falso**)
      - **Descripción:** Dependiendo del valor de `x`, se cambia o no el flujo de ejecución.
      
- **Saltos condicionales con relación**
     - **Forma:** `if x relop y goto L`
     - **Descripción:** Se realiza una comparación (`relop` puede ser `==`, `!=`, `<`, `>`, `<=`, `>=`), y si la condición es verdadera, se salta a `L`.
 - ####  **Llamadas a procedimientos y retornos en código de tres direcciones**

- **`param x`**
    - Prepara el valor `x` como **parámetro** para el procedimiento o función que se va a llamar.
 
- **`call p, n`**
    - Llama al procedimiento `p`, pasando `n` parámetros.
    - No se espera un valor de retorno.
        
- **`y = call p, n`**
    - Llama a la función `p`, pasando `n` parámetros.
    - El resultado que retorna la función se almacena en `y`.
        
- **`return y`**
    - Termina la ejecución del procedimiento o función, devolviendo el valor `y`.
    - Si no hay valor que devolver, simplemente se usa `return`.
### Cuadruplos
Tiene cuatro campos op, arg1, arg2, resultado
#### Tripletas
Tiene tres campos op, arg1, arg2 

| Op  | arg1 | arg2 | resultado |
| --- | ---- | ---- | --------- |
| +   | z    | y    | x         |
#### Transformar un abol de tres direcciones a cuadruplos
![[Pasted image 20250428232638.png]]

| Cuadruplos                              | Tripletas                                    | Arboles de tres direcciones |
| --------------------------------------- | -------------------------------------------- | --------------------------- |
| Usa un tablero de 4 campos y temporales | Usa un tablero de 3 campos y usa iteraciones | Usa temporales              |
|                                         |                                              |                             |
## Ejercicios de Codigo Intermedio [[Modulo V ejercicio]]
## Ejercicios de Derivaciones [[Ejercicio Derivaciones]]
