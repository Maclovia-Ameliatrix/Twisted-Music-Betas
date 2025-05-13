import numpy as np
import matplotlib.pyplot as plt

# Función para calcular los coeficientes del polinomio de Newton
def newton_interpolation(x, y):
    n = len(x)
    coef = np.zeros((n, n))
    coef[:, 0] = y  # Primer columna es y

    # Llenar la tabla de diferencias divididas
    for j in range(1, n):
        for i in range(n - j):
            coef[i][j] = (coef[i + 1][j - 1] - coef[i][j - 1]) / (x[i + j] - x[i])
    
    return coef[0]  # Retornamos solo la primera fila, que contiene los coeficientes

# Función para evaluar el polinomio de Newton en un punto
def evaluate_polynomial(coef, x_points, x):
    n = len(coef)
    result = coef[0]
    for i in range(1, n):
        term = coef[i]
        for j in range(i):
            term *= (x - x_points[j])
        result += term
    return result

# Datos de entrada (puntos a interpolar)
x_points = np.array([2, -3, 5, -7])
y_points = np.array([-15, 15, -153, 291])

# Cálculo de coeficientes
coefficients = newton_interpolation(x_points, y_points)

# Generación de puntos para graficar
x_vals = np.linspace(-10, 10, 100)
y_vals = [evaluate_polynomial(coefficients, x_points, x) for x in x_vals]

# Valor de interpolación en x = -4
x_interp = -4
y_interp = evaluate_polynomial(coefficients, x_points, x_interp)

# Graficar los puntos y el polinomio interpolado
plt.figure(figsize=(10, 6))
plt.plot(x_vals, y_vals, label='Polinomio Interpolado', color='blue')
plt.scatter(x_points, y_points, color='red', label='Puntos Originales')
plt.scatter(x_interp, y_interp, color='green', label=f'Interpolación en x={x_interp}: y={y_interp:.2f}')
plt.axhline(0, color='black', linewidth=0.5, linestyle='--')
plt.axvline(0, color='black', linewidth=0.5, linestyle='--')
plt.title('Interpolación de Newton')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.legend()
plt.grid()
plt.show()

# Mostrar el polinomio en forma de texto
polynomial_str = "P(x) = " + " + ".join([f"{coefficients[i]:.3f} * " + " * ".join([f"(x - {x_points[j]})" for j in range(i)]) for i in range(len(coefficients))])
print(polynomial_str)

# Mostrar el resultado de la interpolación
print(f'El valor interpolado en x={x_interp} es y={y_interp:.2f}')
