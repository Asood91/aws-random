variable "project" {

}

variable "net" {
  type = map(any)
  description = "describes the list of variables to be passed"

}

variable "cx_public_ip" {
    type = string
    description = "describes the public IP of the on-prem network"
    default = ""     
}

variable "onprem_cidr" {
    type = string
    description = "describes the cidr range of the on-prem network"
    default = ""      

}

variable "whitelist_IP" {
    type = any
    description = "describes the IPs which needs to be whitelisted"
    default = ""  

}

variable "sg_cidr_icmp" {
  type    = any
  default = ["0.0.0.0/0"]


}

variable "sg_cidr_ssh" {
  type    = any
  default = ["0.0.0.0/0"]
}