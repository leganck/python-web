# -*- coding: utf-8 -*

import math
from functools import reduce


def test():
    print("3 * 5 * 7 * 9=", prod([3, 5, 7, 9]))

def str2float(s):
    pass


def prod(L):
    return reduce(lambda x, y: x * y, L)


def normalize(name):
    return name.title()


def fib(max):
    n, a, b = 0, 0, 1
    while n < max:
        yield b
        a, b = b, a + b
        n = n + 1
        return 'done'


def quadratic(a, b, c):
    x = pow(b, 2) - 4 * a * c
    print()
    return (-b + math.sqrt(x)) / (2 * a), (-b - math.sqrt(x)) / (2 * a)


def move(n, a, b, c):
    if n > 1:
        move(n - 1, a, c, b)
        print(a, '-->', c)
        move(n - 1, b, a, c)
    if n == 1:
        print(a, '-->', c)


if __name__ == '__main__':
    test()
