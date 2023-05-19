resource "aws_s3_bucket" "www_bucket" {
  bucket = "www-markuc-bucket"
  acl = "public-read"
  policy = <<EOF
{
     "id" : "MakePublic",
   "version" : "2012-10-17",
   "statement" : [
      {
         "action" : [
             "s3:GetObject"
          ],
         "effect" : "Allow",
         "resource" : "arn:aws:s3:::www-markuc-bucket/*",
         "principal" : "*"
      }
    ]
  }
EOF
}