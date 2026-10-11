resource "google_bigquery_reservation" "bigquery_reservations" {
  for_each = var.bigquery_reservations

  name               = each.value.name
  slot_capacity      = each.value.slot_capacity
  concurrency        = each.value.concurrency
  deletion_policy    = each.value.deletion_policy
  edition            = each.value.edition
  ignore_idle_slots  = each.value.ignore_idle_slots
  labels             = each.value.labels
  location           = each.value.location
  project            = each.value.project
  reservation_group  = each.value.reservation_group
  secondary_location = each.value.secondary_location

  dynamic "autoscale" {
    for_each = each.value.autoscale != null ? [each.value.autoscale] : []
    content {
      max_slots = autoscale.value.max_slots
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

