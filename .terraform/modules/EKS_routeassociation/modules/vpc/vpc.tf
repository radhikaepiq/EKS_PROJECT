<<<<<<< HEAD
=======
# <<<<<<< HEAD
resource "aws_vpc" "EKSVPC" {
  cidr_block       = "${var.vpc_cidr}"
  tags = {
    Name = "${var.Namevpc}"
    Purpose ="${var.Purpose}"
    Owner = "${var.Owner}"
  }
}

///output

output "vpc_id" {
  value = "${aws_vpc.EKSVPC.id}"
}
>>>>>>> 2a76104a650b15ecaa1e95fa07a7852194cb7b60

resource "aws_vpc" "EKSVPC" {
  cidr_block       = "${var.vpc_cidr}"
  tags = {
    Name = "${var.Namevpc}"
    Purpose ="${var.Purpose}"
    Owner = "${var.Owner}"
  }
}

# ///output

output "vpc_id" {
  value = "${aws_vpc.EKSVPC.id}"
}
<<<<<<< HEAD
# =======
resource "aws_vpc" "EKSVPC" {
  cidr_block       = "${var.vpc_cidr}"
  tags = {
    Name = "${var.Namevpc}"
    Purpose ="${var.Purpose}"
    Owner = "${var.Owner}"
  }
}

# # ///output

output "vpc_id" {
  value = "${aws_vpc.EKSVPC.id}"
}

=======
# >>>>>>> d0470fa (done)
>>>>>>> 2a76104a650b15ecaa1e95fa07a7852194cb7b60
