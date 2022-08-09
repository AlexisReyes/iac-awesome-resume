# DNS base records for my website

resource "aws_route53_zone" "web_site" {
  name = var.domain
}

resource "aws_route53_record" "www" {
  zone_id = aws_route53_zone.web_site.zone_id
  name    = "www.${var.domain}"
  type    = "A"
  allow_overwrite = true

  alias {
    name    = var.domain
    zone_id = aws_route53_zone.web_site.zone_id
    evaluate_target_health = true
  }
}
