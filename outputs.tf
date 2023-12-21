output "account" {
  value = data.aws_caller_identity.current.account_id
}

output "region" {
  value       = data.aws_region.current.name
  description = "Current AWS region"
}

output "availability_zones" {
  value       = sort(data.aws_availability_zones.zones.names)
  description = "Sorted list of availability zones in the current region"
}

output "availability_zone_suffixes" {
  value       = [for az in sort(data.aws_availability_zones.zones.names) : substr(az, -1, 1)]
  description = "Sorted list of availability zone suffixes (a, b, c, ...)"
}
