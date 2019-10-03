# typed: true

extend T::Sig

module Stripe
  class Charge
  end
end

sig { params(amount: Integer, currency: String).returns(Stripe::Charge) }

def create_charge(amount, currency)
  Stripe::Charge.new
end

create_charge(10_000, :jpy)

# declaration.rb:16: Expected String but found Symbol(:"jpy") for argument currency https://srb.help/7002
#     16 |create_charge(10_000, :jpy)
#         ^^^^^^^^^^^^^^^^^^^^^^^^^^^
#     declaration.rb:10: Method Object#create_charge has specified currency as String
#     10 |sig { params(amount: Integer, currency: String).returns(Stripe::Charge) }
#                                       ^^^^^^^^
#   Got Symbol(:"jpy") originating from:
#     declaration.rb:16:
#     16 |create_charge(10_000, :jpy)
#                               ^^^^
# Errors: 1
