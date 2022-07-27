

resource "aws_route53_zone" "web-site" {
  name = "alexisreyes.xyz"
}

# resource "aws_route53_zone" "web-site-dev" {
#   name = "dev.alexisreyes.xyz"

#   tags = {
#     Environment = "dev"
#   }
# }

# resource "aws_route53_record" "dev-ns" {
#   zone_id = aws_route53_zone.main.zone_id
#   name    = "dev.example.com"
#   type    = "NS"
#   ttl     = "30"
#   records = aws_route53_zone.dev.name_servers
# }