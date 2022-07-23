variable "vvk1" {
  type = number 
  description = "pass value number"
  default = 853486
}
variable "vvk2" {
  type = string 
  description = "pass value string"
  default = "lets play with terraform"
}
variable "vvk3" {
  type= list(any)
  description = "pass value list"
  default = [25,26,"this is list"]
}
variable "vvk4" {
  type = map(any)
  description = "pass value map"
  default = {
    value1 = "vishnu"
    value2 = "vishvakarma"
    value3 = "map example"
  }
}
variable "vvk5" {
  type = object({
    filename= string,
    content = number
  })
  description = "pass value object"
  default = {
    content= 123567890
    filename = "hello"
  }
}
variable "vishnu" {
  type=string
  default="output.txt"
}
variable "content" {
  type = string
  default = "abcdxyz"
}