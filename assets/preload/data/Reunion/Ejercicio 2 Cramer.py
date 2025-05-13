import numpy as np
import matplotlib.pyplot as plt

# Función para calcular el determinante de una matriz
def determinante(matriz):
    return np.linalg.det(matriz)

# Función para aplicar la Regla de Cramer
def regla_de_cramer(A, B):
    # Determinante de la matriz de coeficientes
    det_A = determinante(A)
    if det_A == 0:
        raise ValueError("El sistema no tiene solución única (determinante es 0).")
    
    # Matriz A original
    n = A.shape[0]  # Número de incógnitas
    soluciones = np.zeros(n)

    # Resolver para cada incógnita
    for i in range(n):
        A_temp = np.copy(A)  # Hacemos una copia de A
        A_temp[:, i] = B  # Reemplazamos la columna i por el vector B
        det_A_temp = determinante(A_temp)  # Calculamos el determinante de la matriz modificada
        soluciones[i] = det_A_temp / det_A  # Solución para la variable i
    
    return np.round(soluciones, 3)

# Datos del sistema de ecuaciones
# A * X = B, donde A es la matriz de coeficientes y B es el vector de términos independientes
A = np.array([[1, 1, 1],
              [1, -3, 3],
              [-9, 8, 0]])  # Matriz de coeficientes

B = np.array([515, 0, 0])  # Vector de términos independientes

# Aplicar la Regla de Cramer
soluciones = regla_de_cramer(A, B)

# Imprimir las soluciones
for i, sol in enumerate(soluciones, start=1):
    print(f"Valor de la variable x{i}: {sol}")

# Gráfico en el plano cartesiano (soluciones de las variables)
x_vals = ['x1', 'x2', 'x3']
y_vals = soluciones

# Convertir los índices de las variables en coordenadas para graficar en un plano 2D
# En este caso, graficaremos las soluciones como puntos en el eje Y, usando los índices como X
indices = np.array([1, 2, 3])  # Coordenadas en el eje X

# Graficar las soluciones en el plano XY
plt.figure(figsize=(8, 5))
plt.plot(indices, y_vals, 'bo-', label='Soluciones del sistema')  # Línea que une los puntos
plt.scatter(indices, y_vals, color='red', zorder=5)  # Puntos de las soluciones
plt.title('Soluciones del sistema en el plano cartesiano')
plt.xlabel('Variables (x1, x2, x3)')
plt.ylabel('Valores de las variables')
plt.xticks(indices, x_vals)  # Colocar etiquetas en los puntos (x1, x2, x3)
plt.axhline(0, color='black', lw=0.5, ls='--')
plt.axvline(0, color='black', lw=0.5, ls='--')
plt.grid(True)
plt.legend()
plt.show()
