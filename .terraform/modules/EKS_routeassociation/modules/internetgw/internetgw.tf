
resource "aws_internet_gateway" "EKS_igw" {
  vpc_id = "${var.vpc_id}"
   tags = {
    Name = "${var.NameIG}"
    Purpose ="${var.Purpose}"
    Owner = "${var.Owner}"
  }
}

/////output
output "igw_id" { value = "${aws_internet_gateway.EKS_igw.id}" }
<<<<<<< HEAD
=======

>>>>>>> 2a76104a650b15ecaa1e95fa07a7852194cb7b60
resource "aws_internet_gateway" "EKS_igw" {
  vpc_id = "${var.vpc_id}"
   tags = {
    Name = "${var.NameIG}"
    Purpose ="${var.Purpose}"
    Owner = "${var.Owner}"
  }
}

/////output
output "igw_id" { value = "${aws_internet_gateway.EKS_igw.id}" }

