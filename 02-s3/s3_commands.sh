# 2.1.1
aws s3 mb s3://stelligent-u-nbaker

# 2.1.2
mkdir data
date > data/testing-file.txt
aws s3 sync data s3://stelligent-u-nbaker/data/

# 2.1.3
date > data/private.txt
aws s3 sync --exclude 'private*' data s3://stelligent-u-nbaker/

# 2.1.4
aws s3 rb s3://stelligent-u-nbaker

# 2.2.1
aws s3 sync data s3://stelligent-u-nbaker/data/ --acl public-read

# 2.2.2
aws s3 sync data/private.txt s3://stelligent-u-nbaker/data/private.txt --acl aws-exec-read

# 2.2.3
aws s3api create-bucket --bucket stelligent-u-nbaker --acl public-read
aws s3 sync data/private.txt s3://stelligent-u-nbaker/data/private.txt --acl aws-exec-read
aws s3 sync data s3://stelligent-u-nbaker/data/ --acl public-read

# 