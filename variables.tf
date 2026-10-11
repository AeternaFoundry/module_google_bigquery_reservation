variable "bigquery_reservations" {
  description = <<EOT
Map of bigquery_reservations, attributes below
Required:
    - name
    - slot_capacity
Optional:
    - concurrency
    - deletion_policy
    - edition
    - ignore_idle_slots
    - labels
    - location
    - project
    - reservation_group
    - secondary_location
    - autoscale (block):
        - max_slots (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name               = string
    slot_capacity      = number
    concurrency        = optional(number)
    deletion_policy    = optional(string)
    edition            = optional(string)
    ignore_idle_slots  = optional(bool)
    labels             = optional(map(string))
    location           = optional(string)
    project            = optional(string)
    reservation_group  = optional(string)
    secondary_location = optional(string)
    autoscale = optional(object({
      max_slots = optional(number)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

