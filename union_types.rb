# typed: true
# https://youtu.be/eCnnBS2LXcI?t=878

str_or_int_or_array = ["1", 2, [3]].sample
hash = str_or_int_or_array.succ

# union_types.rb:4: Method succ does not exist on NilClass component of T.nilable(T.any(String, Integer, T::Array[Integer])) https://srb.help/7003
#      4 |hash = str_or_int_or_array.succ
#                ^^^^^^^^^^^^^^^^^^^^^^^^
#   Autocorrect: Use `-a` to autocorrect
#     union_types.rb:4: Replace with T.must(str_or_int_or_array)
#      4 |hash = str_or_int_or_array.succ
#                ^^^^^^^^^^^^^^^^^^^
# Errors: 1
