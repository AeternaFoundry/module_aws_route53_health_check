resource "aws_route53_health_check" "route53_health_checks" {
  for_each = var.route53_health_checks

  type                            = each.value.type
  tags                            = each.value.tags
  search_string                   = each.value.search_string
  routing_control_arn             = each.value.routing_control_arn
  resource_path                   = each.value.resource_path
  request_interval                = each.value.request_interval
  regions                         = each.value.regions
  reference_name                  = each.value.reference_name
  port                            = each.value.port
  measure_latency                 = each.value.measure_latency
  tags_all                        = each.value.tags_all
  ip_address                      = each.value.ip_address
  insufficient_data_health_status = each.value.insufficient_data_health_status
  fqdn                            = each.value.fqdn
  failure_threshold               = each.value.failure_threshold
  enable_sni                      = each.value.enable_sni
  disabled                        = each.value.disabled
  cloudwatch_alarm_region         = each.value.cloudwatch_alarm_region
  cloudwatch_alarm_name           = each.value.cloudwatch_alarm_name
  child_healthchecks              = each.value.child_healthchecks
  child_health_threshold          = each.value.child_health_threshold
  invert_healthcheck              = each.value.invert_healthcheck
  triggers                        = each.value.triggers
}

