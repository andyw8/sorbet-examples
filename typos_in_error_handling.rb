# typed: true
# https://youtu.be/eCnnBS2LXcI?t=1376

require 'json'

def foo
  begin
    path = "."
    data = JSON.parse(File.read(path))
  rescue JSON::ParseError => e
    raise "..."
  end
end

# typos_in_error_handling.rb:8: Unable to resolve constant ParseError https://srb.help/5002
#      8 |  rescue JSON::ParseError => e
#                  ^^^^^^^^^^^^^^^^
#   Autocorrect: Use `-a` to autocorrect
#     typos_in_error_handling.rb:8: Replace with OptionParser::ParseError
#      8 |  rescue JSON::ParseError => e
#                  ^^^^^^^^^^^^^^^^
#   Autocorrect: Use `-a` to autocorrect
#     typos_in_error_handling.rb:8: Replace with Racc::ParseError
#      8 |  rescue JSON::ParseError => e
#                  ^^^^^^^^^^^^^^^^
#   Autocorrect: Use `-a` to autocorrect
#     typos_in_error_handling.rb:8: Replace with JSON::JSONError
#      8 |  rescue JSON::ParseError => e
#                  ^^^^^^^^^^^^^^^^
#     https://github.com/sorbet/sorbet/tree/ce1a885653cfe7745f1ba60030ab1e8c6aa02f7a/rbi/stdlib/optparse.rbi#L1570: Did you mean: OptionParser::ParseError?
#     1570 |  class ParseError < RuntimeError
#             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
#     https://github.com/sorbet/sorbet/tree/ce1a885653cfe7745f1ba60030ab1e8c6aa02f7a/rbi/stdlib/racc.rbi#L266: Did you mean: Racc::ParseError?
#      266 |class Racc::ParseError < StandardError
#           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
#     https://github.com/sorbet/sorbet/tree/ce1a885653cfe7745f1ba60030ab1e8c6aa02f7a/rbi/stdlib/json.rbi#L992: Did you mean: JSON::JSONError?
#      992 |class JSON::JSONError < StandardError
#           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
# Errors: 1
