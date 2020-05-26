variable "instancetype" {
  type    = map
  default = {
    default = "t2.micro"
    prod = "t3.medium"
    dev = "t2.medium"
  }
}
