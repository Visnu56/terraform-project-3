# using locals
resource "local_file" "first"{
    content = local.content1
    filename = local.name1
}
locals {
  name1="locals.txt"
  content1 ="lets play with terraform"
}

# using random resource
resource "local_file" "second" {
  content = "${random_id.hello.hex}"
  filename =local.name2
}
locals {
  name2 = "random_id.txt"
  content2="hello"
}
resource "random_id" "hello" {
  byte_length = 4
}
 
# using variabl ( number )
resource "local_file" "third" {
  filename = "number.txt"
  content = var.vvk1
}
# using variable ( string )
resource "local_file" "fourth" {
  filename = "string.txt"
  content = var.vvk2
}
# using variable ( List )
resource "local_file" "fifth" {
  filename = "list.txt"
  content =var.vvk3[2]
}
resource "local_file" "sixh" {
  filename = "map.txt"
  content = var.vvk4["value3"]
}
resource "local_file" "seventh" {
  filename = "object.txt"
  content = var.vvk5["content"]
}
 
# using terraform.tfvars
resource "local_file" "tfvars" {
  filename = var.vishnu
  content = var.content
}

#output Block
resource "local_file" "nineth" {
  filename = var.vishnu
  content = var.content
}
output "output_name" {
  value = local_file.nineth.content
}