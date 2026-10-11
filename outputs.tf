output "bigquery_reservations_id" {
  description = "Map of id values across all bigquery_reservations, keyed the same as var.bigquery_reservations except keys with no id are omitted"
  value       = { for k, v in google_bigquery_reservation.bigquery_reservations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "bigquery_reservations_autoscale" {
  description = "Map of autoscale values across all bigquery_reservations, keyed the same as var.bigquery_reservations except keys with no autoscale are omitted"
  value       = { for k, v in google_bigquery_reservation.bigquery_reservations : k => one(v.autoscale) if v.autoscale != null && length(v.autoscale) > 0 }
}
output "bigquery_reservations_concurrency" {
  description = "Map of concurrency values across all bigquery_reservations, keyed the same as var.bigquery_reservations except keys with no concurrency are omitted"
  value       = { for k, v in google_bigquery_reservation.bigquery_reservations : k => v.concurrency if v.concurrency != null }
}
output "bigquery_reservations_deletion_policy" {
  description = "Map of deletion_policy values across all bigquery_reservations, keyed the same as var.bigquery_reservations except keys with no deletion_policy are omitted"
  value       = { for k, v in google_bigquery_reservation.bigquery_reservations : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "bigquery_reservations_edition" {
  description = "Map of edition values across all bigquery_reservations, keyed the same as var.bigquery_reservations except keys with no edition are omitted"
  value       = { for k, v in google_bigquery_reservation.bigquery_reservations : k => v.edition if v.edition != null && length(v.edition) > 0 }
}
output "bigquery_reservations_effective_labels" {
  description = "Map of effective_labels values across all bigquery_reservations, keyed the same as var.bigquery_reservations except keys with no effective_labels are omitted"
  value       = { for k, v in google_bigquery_reservation.bigquery_reservations : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "bigquery_reservations_ignore_idle_slots" {
  description = "Map of ignore_idle_slots values across all bigquery_reservations, keyed the same as var.bigquery_reservations except keys with no ignore_idle_slots are omitted"
  value       = { for k, v in google_bigquery_reservation.bigquery_reservations : k => v.ignore_idle_slots if v.ignore_idle_slots != null }
}
output "bigquery_reservations_labels" {
  description = "Map of labels values across all bigquery_reservations, keyed the same as var.bigquery_reservations except keys with no labels are omitted"
  value       = { for k, v in google_bigquery_reservation.bigquery_reservations : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "bigquery_reservations_location" {
  description = "Map of location values across all bigquery_reservations, keyed the same as var.bigquery_reservations except keys with no location are omitted"
  value       = { for k, v in google_bigquery_reservation.bigquery_reservations : k => v.location if v.location != null && length(v.location) > 0 }
}
output "bigquery_reservations_name" {
  description = "Map of name values across all bigquery_reservations, keyed the same as var.bigquery_reservations except keys with no name are omitted"
  value       = { for k, v in google_bigquery_reservation.bigquery_reservations : k => v.name if v.name != null && length(v.name) > 0 }
}
output "bigquery_reservations_original_primary_location" {
  description = "Map of original_primary_location values across all bigquery_reservations, keyed the same as var.bigquery_reservations except keys with no original_primary_location are omitted"
  value       = { for k, v in google_bigquery_reservation.bigquery_reservations : k => v.original_primary_location if v.original_primary_location != null && length(v.original_primary_location) > 0 }
}
output "bigquery_reservations_primary_location" {
  description = "Map of primary_location values across all bigquery_reservations, keyed the same as var.bigquery_reservations except keys with no primary_location are omitted"
  value       = { for k, v in google_bigquery_reservation.bigquery_reservations : k => v.primary_location if v.primary_location != null && length(v.primary_location) > 0 }
}
output "bigquery_reservations_project" {
  description = "Map of project values across all bigquery_reservations, keyed the same as var.bigquery_reservations except keys with no project are omitted"
  value       = { for k, v in google_bigquery_reservation.bigquery_reservations : k => v.project if v.project != null && length(v.project) > 0 }
}
output "bigquery_reservations_replication_status" {
  description = "Map of replication_status values across all bigquery_reservations, keyed the same as var.bigquery_reservations except keys with no replication_status are omitted"
  value       = { for k, v in google_bigquery_reservation.bigquery_reservations : k => v.replication_status if v.replication_status != null && length(v.replication_status) > 0 }
}
output "bigquery_reservations_reservation_group" {
  description = "Map of reservation_group values across all bigquery_reservations, keyed the same as var.bigquery_reservations except keys with no reservation_group are omitted"
  value       = { for k, v in google_bigquery_reservation.bigquery_reservations : k => v.reservation_group if v.reservation_group != null && length(v.reservation_group) > 0 }
}
output "bigquery_reservations_secondary_location" {
  description = "Map of secondary_location values across all bigquery_reservations, keyed the same as var.bigquery_reservations except keys with no secondary_location are omitted"
  value       = { for k, v in google_bigquery_reservation.bigquery_reservations : k => v.secondary_location if v.secondary_location != null && length(v.secondary_location) > 0 }
}
output "bigquery_reservations_slot_capacity" {
  description = "Map of slot_capacity values across all bigquery_reservations, keyed the same as var.bigquery_reservations except keys with no slot_capacity are omitted"
  value       = { for k, v in google_bigquery_reservation.bigquery_reservations : k => v.slot_capacity if v.slot_capacity != null }
}
output "bigquery_reservations_terraform_labels" {
  description = "Map of terraform_labels values across all bigquery_reservations, keyed the same as var.bigquery_reservations except keys with no terraform_labels are omitted"
  value       = { for k, v in google_bigquery_reservation.bigquery_reservations : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}

