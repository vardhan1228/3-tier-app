resource "aws_acm_certificate" "cert" {
  domain_name       = "*.vardhan.live"
  validation_method = "DNS"
}