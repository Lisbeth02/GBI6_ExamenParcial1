###################################################
# Ejercicio 1.10.2 Hormone Levels in Baboons(datos de Gesquiere *et al.*, 2011)

1. Puede usar `cut` para extraer solo el `maleID` del archivo; para hacer coincidir el individuo 3 (o 27), puede usar `grep`.
2. Quiere convertir la solución de la parte 1 en un guión; para hacerlo, abra un nuevo archivo y copie el código que ha escrito. Ahora puede usar las variables genéricas `$1` y `$2` como marcadores de posición para el nombre del archivo y el `maleID`; puede pasar estos argumentos a la línea de comando.
3. Primero, necesita usar `cut` en combinación con `tail`, `sort` y `uniq` para extraer todos los `maleID` distintos. Entonces, el principal obstáculo es tomar la salida de esta canalización y usarla como entrada para un bucle for en `bash`. El siguiente ejemplo debería ayudar:


```
#!/bin/bash

# to store the results of a command into a variable,
# surround the command with backticks (`)
myfiles=`ls`
for myfile in $myIDS
do
    echo $myfile
done
```