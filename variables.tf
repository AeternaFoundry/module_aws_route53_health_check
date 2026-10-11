variable "route53_health_checks" {
  description = <<EOT
Map of route53_health_checks, attributes below
Required:
    - type
Optional:
    - child_health_threshold
    - child_healthchecks
    - cloudwatch_alarm_name
    - cloudwatch_alarm_region
    - disabled
    - enable_sni
    - failure_threshold
    - fqdn
    - insufficient_data_health_status
    - invert_healthcheck
    - ip_address
    - measure_latency
    - port
    - reference_name
    - regions
    - request_interval
    - resource_path
    - routing_control_arn
    - search_string
    - tags
    - tags_all
    - triggers
EOT

  type = map(object({
    type                            = string
    tags                            = optional(map(string))
    search_string                   = optional(string)
    routing_control_arn             = optional(string)
    resource_path                   = optional(string)
    request_interval                = optional(number)
    regions                         = optional(set(string))
    reference_name                  = optional(string)
    port                            = optional(number)
    measure_latency                 = optional(bool)
    tags_all                        = optional(map(string))
    ip_address                      = optional(string)
    insufficient_data_health_status = optional(string)
    fqdn                            = optional(string)
    failure_threshold               = optional(number)
    enable_sni                      = optional(bool)
    disabled                        = optional(bool)
    cloudwatch_alarm_region         = optional(string)
    cloudwatch_alarm_name           = optional(string)
    child_healthchecks              = optional(set(string))
    child_health_threshold          = optional(number)
    invert_healthcheck              = optional(bool)
    triggers                        = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.route53_health_checks : (
        v.child_health_threshold == null || (v.child_health_threshold <= 256)
      )
    ])
    error_message = "must be at most 256"
  }
  validation {
    condition = alltrue([
      for k, v in var.route53_health_checks : (
        v.child_healthchecks == null || (alltrue([for x in v.child_healthchecks : length(x) >= 0 && length(x) <= 64]))
      )
    ])
    error_message = "must be between 0 and 64 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.route53_health_checks : (
        v.failure_threshold == null || (v.failure_threshold >= 1 && v.failure_threshold <= 10)
      )
    ])
    error_message = "must be between 1 and 10"
  }
  validation {
    condition = alltrue([
      for k, v in var.route53_health_checks : (
        v.fqdn == null || (length(v.fqdn) >= 0 && length(v.fqdn) <= 255)
      )
    ])
    error_message = "must be between 0 and 255 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.route53_health_checks : (
        v.request_interval == null || (contains([10, 30], v.request_interval))
      )
    ])
    error_message = "must be one of: 10, 30"
  }
  validation {
    condition = alltrue([
      for k, v in var.route53_health_checks : (
        v.resource_path == null || (length(v.resource_path) >= 0 && length(v.resource_path) <= 255)
      )
    ])
    error_message = "must be between 0 and 255 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.route53_health_checks : (
        v.search_string == null || (length(v.search_string) >= 0 && length(v.search_string) <= 255)
      )
    ])
    error_message = "must be between 0 and 255 characters"
  }
  # Note: 8 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

