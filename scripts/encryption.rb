# to encrypt a secret, use BCrypt::Password.create(secret)
# to test a secret, use BCrypt::Password.new(encrypted) == secret
# run this file using rails runner scripts/encryption.rb

# TODO:
# 1. encrypt a secret and puts encrypted string
password = "puppies" #any text value
encrypted_pass = BCrypt::Password.create("puppies")
puts encrypted_pass
# 2. prepare encrypted string for testing
re_encrypted_pass = BCrypt::Password.new(encrypted_pass) 
puts re_encrypted_pass

# 3. test secret against prepared encrypted string
user_entered_password = "kittens"
puts re_encrypted_pass =="puppies"
