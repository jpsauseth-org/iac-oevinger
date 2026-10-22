variable "base_name" {
  type = string
  description = "hoved navn for alle resurser"
}

variable "rg_name" {
  type = string
  description = "navn for ressurs grupper"
}

variable "location" {
  type = string
  description = "lokasjon forklarer (westeurope)"
}

variable "address_space" {
  type = string
  description = "adresser å ta fra med cidr"
}

variable "subnets" {
  type = map(object({
    newbits = number
    netnum  = number
  }))

  default = {
    web = { newbits = 8, netnum = 0 }   # 10.10.0.0/24
    app = { newbits = 8, netnum = 1 }   # 10.10.1.0/24
    gw  = { newbits = 11, netnum = 64 } # 10.10.8.0/27
  }
  description = "newbits og netum for å lage og fordele adresser"
}

variable "tags" {
  type = map(string)
  description = "forklarende merkelapper"
}