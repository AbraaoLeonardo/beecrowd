from math import sqrt

x1, y1 = map(float, input().split())  # First point (x1, y1)
x2, y2 = map(float, input().split())  # Second point (x2, y2)

# Calculate the Euclidean distance
distance = sqrt((x2 - x1) ** 2 + (y2 - y1) ** 2)

# Print the result with 4 decimal places
print(f"{distance:.4f}")