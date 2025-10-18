def xor(x):
    val = x[0]
    for i in range(1, len(x)):
        val ^= x[i]
    return val


def find_error_bit(a):
    error = 0
    n = len(a)
    r = 1
    while r <= n:
        bits = [a[i] for i in range(n) if (i + 1) & r]
        if xor(bits) == 1:
            error += r
        r *= 2
    return error


def validate_input(a_str):
    if not all(bit in "01" for bit in a_str):
        return "Ошибка: допускаются только символы 0 и 1."
    return None  


def show_answer(a):
    error_bit = find_error_bit(a)
    if error_bit == 0:
        print("Ошибок нет ✅")
        print("Последовательность верна:", "".join(map(str, a)))
    else:
        corrected = a.copy()
        corrected[error_bit - 1] ^= 1
        print(f"Ошибка найдена в бите №{error_bit}")
        print("Исправленная последовательность:", "".join(map(str, corrected)))


a_str = input("Введите n битов (например 1011010): ").strip()

error = validate_input(a_str) 
if error:
    print(error)
else:
    a = [int(bit) for bit in a_str]
    show_answer(a)
