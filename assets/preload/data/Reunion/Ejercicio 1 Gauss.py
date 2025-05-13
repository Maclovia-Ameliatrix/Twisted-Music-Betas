import numpy as np
import matplotlib.pyplot as plt

def gaussian_elimination(a, b):
    n = len(b)
    # Eliminación
    for i in range(n):
        # Buscar el máximo en la columna
        max_row = np.argmax(np.abs(a[i:, i])) + i
        a[[i, max_row]] = a[[max_row, i]]
        b[[i, max_row]] = b[[max_row, i]]
        
        for j in range(i + 1, n):
            factor = a[j][i] / a[i][i]
            a[j] = a[j] - factor * a[i]
            b[j] = b[j] - factor * b[i]
    
    # Sustitución hacia atrás
    x = np.zeros(n)
    for i in range(n - 1, -1, -1):
        x[i] = (b[i] - np.dot(a[i, i + 1:], x[i + 1:])) / a[i][i]
    return x

def plot_lines(coefficients, solutions):
    x = np.linspace(-10, 10, 200)
    for i, (a, b) in enumerate(coefficients):
        y = (solutions[i] - a * x) / b
        plt.plot(x, y, label=f'Ecuación {i + 1}: {a}x + {b}y = {solutions[i]}')
    
    plt.scatter(solutions[0], solutions[1], color='red', zorder=5, label='Intersección')
    plt.title('Sistema de Ecuaciones')
    plt.xlabel('x')
    plt.ylabel('y')
    plt.axhline(0, color='black', linewidth=0.5, ls='--')
    plt.axvline(0, color='black', linewidth=0.5, ls='--')
    plt.grid()
    plt.legend()
    plt.show()

def main():
    n = int(input("Introduce el tamaño de la matriz (n): "))
    
    # Matriz de coeficientes
    a = []
    for i in range(n):
        row = list(map(float, input(f"Ingrese los coeficientes de la ecuación {i + 1} separados por espacios: ").strip().split()))
        a.append(row)
    
    # Vector de soluciones
    b = []
    for i in range(n):
        value = float(input(f"Ingrese el valor de la constante para la ecuación {i + 1}: "))
        b.append(value)
    
    a = np.array(a, dtype=float)
    b = np.array(b, dtype=float)

    # Resolver el sistema
    solution = gaussian_elimination(a, b)

    # Imprimir resultados
    print("\nResultados:")
    for i in range(n):
        print(f"x_{i + 1} = {solution[i]:.4f}")  # Redondear a 4 decimales
    
    # Graficar
    if n == 2:
        plot_lines(a, b)

if __name__ == "__main__":
    main()
