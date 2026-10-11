output "route53_health_checks_id" {
  description = "Map of id values across all route53_health_checks, keyed the same as var.route53_health_checks"
  value       = { for k, v in aws_route53_health_check.route53_health_checks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "route53_health_checks_arn" {
  description = "Map of arn values across all route53_health_checks, keyed the same as var.route53_health_checks"
  value       = { for k, v in aws_route53_health_check.route53_health_checks : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "route53_health_checks_child_health_threshold" {
  description = "Map of child_health_threshold values across all route53_health_checks, keyed the same as var.route53_health_checks"
  value       = { for k, v in aws_route53_health_check.route53_health_checks : k => v.child_health_threshold if v.child_health_threshold != null }
}
output "route53_health_checks_child_healthchecks" {
  description = "Map of child_healthchecks values across all route53_health_checks, keyed the same as var.route53_health_checks"
  value       = { for k, v in aws_route53_health_check.route53_health_checks : k => v.child_healthchecks if v.child_healthchecks != null && length(v.child_healthchecks) > 0 }
}
output "route53_health_checks_cloudwatch_alarm_name" {
  description = "Map of cloudwatch_alarm_name values across all route53_health_checks, keyed the same as var.route53_health_checks"
  value       = { for k, v in aws_route53_health_check.route53_health_checks : k => v.cloudwatch_alarm_name if v.cloudwatch_alarm_name != null && length(v.cloudwatch_alarm_name) > 0 }
}
output "route53_health_checks_cloudwatch_alarm_region" {
  description = "Map of cloudwatch_alarm_region values across all route53_health_checks, keyed the same as var.route53_health_checks"
  value       = { for k, v in aws_route53_health_check.route53_health_checks : k => v.cloudwatch_alarm_region if v.cloudwatch_alarm_region != null && length(v.cloudwatch_alarm_region) > 0 }
}
output "route53_health_checks_disabled" {
  description = "Map of disabled values across all route53_health_checks, keyed the same as var.route53_health_checks"
  value       = { for k, v in aws_route53_health_check.route53_health_checks : k => v.disabled if v.disabled != null }
}
output "route53_health_checks_enable_sni" {
  description = "Map of enable_sni values across all route53_health_checks, keyed the same as var.route53_health_checks"
  value       = { for k, v in aws_route53_health_check.route53_health_checks : k => v.enable_sni if v.enable_sni != null }
}
output "route53_health_checks_failure_threshold" {
  description = "Map of failure_threshold values across all route53_health_checks, keyed the same as var.route53_health_checks"
  value       = { for k, v in aws_route53_health_check.route53_health_checks : k => v.failure_threshold if v.failure_threshold != null }
}
output "route53_health_checks_fqdn" {
  description = "Map of fqdn values across all route53_health_checks, keyed the same as var.route53_health_checks"
  value       = { for k, v in aws_route53_health_check.route53_health_checks : k => v.fqdn if v.fqdn != null && length(v.fqdn) > 0 }
}
output "route53_health_checks_insufficient_data_health_status" {
  description = "Map of insufficient_data_health_status values across all route53_health_checks, keyed the same as var.route53_health_checks"
  value       = { for k, v in aws_route53_health_check.route53_health_checks : k => v.insufficient_data_health_status if v.insufficient_data_health_status != null && length(v.insufficient_data_health_status) > 0 }
}
output "route53_health_checks_invert_healthcheck" {
  description = "Map of invert_healthcheck values across all route53_health_checks, keyed the same as var.route53_health_checks"
  value       = { for k, v in aws_route53_health_check.route53_health_checks : k => v.invert_healthcheck if v.invert_healthcheck != null }
}
output "route53_health_checks_ip_address" {
  description = "Map of ip_address values across all route53_health_checks, keyed the same as var.route53_health_checks"
  value       = { for k, v in aws_route53_health_check.route53_health_checks : k => v.ip_address if v.ip_address != null && length(v.ip_address) > 0 }
}
output "route53_health_checks_measure_latency" {
  description = "Map of measure_latency values across all route53_health_checks, keyed the same as var.route53_health_checks"
  value       = { for k, v in aws_route53_health_check.route53_health_checks : k => v.measure_latency if v.measure_latency != null }
}
output "route53_health_checks_port" {
  description = "Map of port values across all route53_health_checks, keyed the same as var.route53_health_checks"
  value       = { for k, v in aws_route53_health_check.route53_health_checks : k => v.port if v.port != null }
}
output "route53_health_checks_reference_name" {
  description = "Map of reference_name values across all route53_health_checks, keyed the same as var.route53_health_checks"
  value       = { for k, v in aws_route53_health_check.route53_health_checks : k => v.reference_name if v.reference_name != null && length(v.reference_name) > 0 }
}
output "route53_health_checks_regions" {
  description = "Map of regions values across all route53_health_checks, keyed the same as var.route53_health_checks"
  value       = { for k, v in aws_route53_health_check.route53_health_checks : k => v.regions if v.regions != null && length(v.regions) > 0 }
}
output "route53_health_checks_request_interval" {
  description = "Map of request_interval values across all route53_health_checks, keyed the same as var.route53_health_checks"
  value       = { for k, v in aws_route53_health_check.route53_health_checks : k => v.request_interval if v.request_interval != null }
}
output "route53_health_checks_resource_path" {
  description = "Map of resource_path values across all route53_health_checks, keyed the same as var.route53_health_checks"
  value       = { for k, v in aws_route53_health_check.route53_health_checks : k => v.resource_path if v.resource_path != null && length(v.resource_path) > 0 }
}
output "route53_health_checks_routing_control_arn" {
  description = "Map of routing_control_arn values across all route53_health_checks, keyed the same as var.route53_health_checks"
  value       = { for k, v in aws_route53_health_check.route53_health_checks : k => v.routing_control_arn if v.routing_control_arn != null && length(v.routing_control_arn) > 0 }
}
output "route53_health_checks_search_string" {
  description = "Map of search_string values across all route53_health_checks, keyed the same as var.route53_health_checks"
  value       = { for k, v in aws_route53_health_check.route53_health_checks : k => v.search_string if v.search_string != null && length(v.search_string) > 0 }
}
output "route53_health_checks_tags" {
  description = "Map of tags values across all route53_health_checks, keyed the same as var.route53_health_checks"
  value       = { for k, v in aws_route53_health_check.route53_health_checks : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "route53_health_checks_tags_all" {
  description = "Map of tags_all values across all route53_health_checks, keyed the same as var.route53_health_checks"
  value       = { for k, v in aws_route53_health_check.route53_health_checks : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "route53_health_checks_triggers" {
  description = "Map of triggers values across all route53_health_checks, keyed the same as var.route53_health_checks"
  value       = { for k, v in aws_route53_health_check.route53_health_checks : k => v.triggers if v.triggers != null && length(v.triggers) > 0 }
}
output "route53_health_checks_type" {
  description = "Map of type values across all route53_health_checks, keyed the same as var.route53_health_checks"
  value       = { for k, v in aws_route53_health_check.route53_health_checks : k => v.type if v.type != null && length(v.type) > 0 }
}

