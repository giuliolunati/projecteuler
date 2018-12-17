// Ren/C Language -- https://github.com/metaeducation/ren-c/

primes: function [
  <static> primes (make block! 8)
][
  if empty? primes
  [ return last append primes 2 ]
  p: last primes
  forever [
    p: p + 1
    s: square-root p
    is-prime: true
    for-each d primes [
      if p mod d = 0 [is-prime: false break]
      if d > s [break]
    ]
    if is-prime [return last append primes p]
  ]
]

n: 0
for-each p :primes [
  n: n + 1
  if n = 10001 [print [p] quit]
]

// vim: set expandtab ts=2 sw=2:

