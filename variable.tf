variable "subscription"{
    type = string
    description = "used for subscription"
   
}
variable "clientid"{
    type = string
    description = "used for clientid"
}

variable "secret"{
    type = string
    description = "used for secret"
}

variable "tenantid"{
    type = string
    description = "used for tenantid"
}

variable "rgname"{
    type = string
    description = "used for rgname"
    default = "TFPractice"
}

variable "rglocation"{
    type = string
    description = "used for trglocation"
    default = "Central India"
}