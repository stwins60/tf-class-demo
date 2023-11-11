
variable "environment" {
  type = string
}

variable "bucket_names" {
  type = map(object({
    bucket_name = string
    # region = string
    obj_key             = string
    obj_source          = string
    obj_create_resource = bool
  }))
}