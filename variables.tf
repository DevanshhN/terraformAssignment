variable "default_tags" {
  description = "The default tags to be attached to each resource being created"
  type = map(string)
  default = {
    Purpose      = "Development"
    Owner        = "Devansh"
    CanBeDeleted = "Yes"
  }
}