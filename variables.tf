variable "role_name" {
  description = "Name of the IAM role"
  type        = string
}

variable "assume_role_policy" {
  description = "IAM assume role policy JSON"
  type        = string
}

variable "tags" {
  description = "Tags for the role"
  type        = map(string)
  default     = {}
}