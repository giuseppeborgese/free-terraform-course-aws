variable "prefix" {
  type = string
  description = "this will be a prefix for all the resources"
}

variable "external_port" {
    type = number
    default = 8080
    validation {
        condition = can(regex("8080|80", var.external_port))
        error_message = "Port Values can only be 8080 or 80."
    }
}

#with any the type will be determined at running time
variable "data" {
       type = list(any)
       default = [1, 3, 5]
}
