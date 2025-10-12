# Ejercicios de Introducción con Haskell

## Proceso de compilación
Posicionate en el archivo y escribe `CTRL ALT N`

## Proceso de Test
En la terminal escribe 

```
ghci <nombre del archivo>
```

Ejemplo

```
ghci 1.1factorial.hs 
```

En la nueva terminal escribe

```
quickCheck prop_equivalencia
```

> **NOTA**: Para esto necesitas tener instalada la librería: `import Test.QuickCheck`.

