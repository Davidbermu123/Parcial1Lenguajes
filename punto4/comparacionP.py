import time

inicio = time.time()
suma = sum(range(1, 100000001))
fin = time.time()

print(f"Suma en Python: {suma}")
print(f"Tiempo en Python: {fin - inicio:.6f} segundos")
