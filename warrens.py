#from __future__ import division
from decimal import *
import itertools, operator, functools, copy

getcontext().prec = 60 # Any fewer causes rounding errors

def memoize(obj):
    "A decorator that memoizes a function."
    cache = obj.cache = {}
    @functools.wraps(obj)
    def memoizer(*args, **kwargs):
        if args not in cache:
            cache[args] = obj(*args, **kwargs)
        return cache[args]
    return memoizer

@memoize
def f(n): # There were integer overflows with the built-in function
    "Factorial function."
    acc = 1
    for i in xrange(1, n+1):
        acc *= i
    return acc

def removeDuplicates(seq): # Useful for sequences of unhashable types.
    "Remove all the duplicates in a sequence."
    noDupes = []
    for i in seq:
        if not noDupes.count(i):
            noDupes.append(i)
    return noDupes

@memoize
def partitions(n): # https://en.wikipedia.org/wiki/Integer_partition
    "Return all integer partitions of n."
    if n == 0: return []
    acc = [[n]]
    for i in xrange(1, n):
        for item in partitions(n - i):
            current = [i]
            current += item
            acc.append(sorted(current))
    acc = removeDuplicates(acc)
    return acc

def C(n, r):
    "N choose R."
    if r > n: return 0
    x = f(n) // f(n - r) // f(r)
    return Decimal(x)

def multiplicity(part):
    "The multiplicity of an integer partition."
    # The multiplicity = the number of ways that it can be arranged.
    # This code is equivalent to len(set(itertools.permutations(part)))
    # but faster.
    repeats = (part.count(x) for x in set(part)) # the amount each number repeats
    acc = Decimal(f(len(part)))
    for number in repeats:
        acc /= Decimal(f(number))
    return acc

def g(N, K):
    "Return the number of connected graphs on N verticies and K edges."
    # Explanation of how this algorithm works:
    # https://math.stackexchange.com/questions/689526/how-many-connected-graphs-over-v-vertices-and-e-edges
    def term(lamb, N, K):
        "The inside of a sigma."
        # This function is the generator for terms that are summed in a sigma.
        q = len(lamb)
        x = Decimal((-1) ** (q + 1)) / Decimal(q)
        x *= Decimal(f(N)) / Decimal(reduce(operator.mul, [f(li) for li in lamb], 1)) #C(N, lamb[-1]) # ???
        x *= multiplicity(lamb)
        x *= C(sum([(i * (i - 1)) // 2 for i in lamb]), K)
        return x
    return sum([term(lamb, N, K) for lamb in partitions(N)])

def answer(N, K):
    return str(int(g(N, K)))
