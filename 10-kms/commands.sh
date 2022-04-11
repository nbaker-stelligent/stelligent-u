# encrypt plaintext
aws kms encrypt --key-id alias/my-alias --plaintext fileb://date_file.txt --output text --query CiphertextBlob | base64 --decode > encrypted_date_file

# decrypt file
aws kms decrypt --key-id alias/my-alias --ciphertext-blob fileb://encrypted_date_file --output text --query Plaintext | base64 --decode >unencrypted_date_file.txt