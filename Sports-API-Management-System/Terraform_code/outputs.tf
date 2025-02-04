output "ecr_repository_url" {
  value = aws_ecr_repository.sports_api.repository_url
}

output "alb_dns_name" {
  value = aws_lb.main.dns_name
}

output "api_gateway_url" {
  value = "${aws_api_gateway_stage.prod.invoke_url}/sports"
}