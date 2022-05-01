terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
#iam group that created user is associated with iam user.
resource "aws_iam_group" "example" {
  name = "example"
  path = "/users/"
}
#creates an iam user. repeat code to make another user.
resource "aws_iam_user" "example" {
  name = "example"
  path = "/system/"

  tags = {
    tag-key = "tag-value"
  }
}
resource "aws_iam_access_key" "example" {
  user = aws_iam_user.example.name
}
data "aws_iam_policy" "AdministratorAccess" {
  arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
#creates user password. repeat code for another user.
resource "aws_iam_user_login_profile" "example" {
  user            = aws_iam_user.example.name
  password_length = 10
  pgp_key         = "keybase@example"
}
resource "local_file" "example" {
  sensitive_content = "-----BEGIN PGP MESSAGE-----\nComment: https://keybase.io/download\nVersion: Keybase Go 1.0.10 (linux)\n\n${aws_iam_user_login_profile.example.encrypted_password}\n-----END PGP MESSAGE-----\n"
  filename          = "encrypted_password.example.txt"
  file_permission   = "0600"
}

