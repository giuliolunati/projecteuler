// at each call returns next multiple-of-3-or-5
multiples-of-3-or-5: function [
  <static> n3 (3)
  <static> n5 (5)
][
	// about 5x faster than checking remainders
	if n5 = n3 [n5: me + 5]
  if n3 < n5 [
		n3: 3 + r: n3
  ] else [
		n5: 5 + r: n5
  ]
  r
]

total: 0
for-each x :multiples-of-3-or-5 [
  if x >= 1000 [break]
  total: me + x
]
print [total]
; vim: set expandtab sw=2 ts=2:  
