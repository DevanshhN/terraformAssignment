variable "default_tags" {
  type = map(string)
  default = {
    Purpose      = "Development"
    Owner        = "Devansh"
    CanBeDeleted = "Yes"
  }
}