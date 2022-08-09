output "aws_route53_zone_name" {
  value = aws_route53_zone.web_site.arn
}

output "aws_route53_zone_id" {
  value = aws_route53_zone.web_site.zone_id
}