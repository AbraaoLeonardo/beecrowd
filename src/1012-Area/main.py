A, B, C = map(float, input().split())

pi = 3.14159

# Calculating the areas
area_triangle = (A * C) / 2
area_circle = pi * C ** 2
area_trapezium = ((A + B) * C) / 2
area_square = B ** 2
area_rectangle = A * B

# Printing the results
print(f"Triângulo: {area_triangle:.3f}")
print(f"Círculo: {area_circle:.3f}")
print(f"Trapézio: {area_trapezium:.3f}")
print(f"Quadrado: {area_square:.3f}")
print(f"Retângulo: {area_rectangle:.3f}")