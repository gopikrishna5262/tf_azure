variable "subscription"{
    type = string
    description = "used for naming RG"
   
}
variable "clientid"{
    type = string
    description = "used for naming RG"
}

variable "secret"{
    type = string
    description = "used for naming RG"
}

variable "tenantid"{
    type = string
    description = "used for naming RG"
}

variable "rgname"{
    type = string
    description = "used for naming RG"
}


variable "rglocation"{
    type = string
    description = "used for sececting location"
    default = "eastus"
}
