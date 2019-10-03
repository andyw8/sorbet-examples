# typed: true
# https://youtu.be/eCnnBS2LXcI?t=815

if Random.rand
  foo = 1
else
  foo = 2
end

# dead_code.rb:7: This code is unreachable https://srb.help/7006
#      7 |  foo = 2
#                 ^
# Errors: 1
