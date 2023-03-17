import numpy as np

np.random.seed(2333)
A = np.random.rand(3, 2).astype('f')
print(A.dtype, A)
with open('dummy_f32.dat', 'wb') as f:
	A.tofile(f)

B = np.random.randint(0, 4, 4, dtype=np.int64)
print(B.dtype, B)
with open('dummy_i64.dat', 'wb') as f:
    B.tofile(f)
