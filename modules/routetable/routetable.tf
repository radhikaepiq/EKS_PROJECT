resource "aws_route_table" "EKS_Rtbl" {
  vpc_id = "${var.vpc_id}"

   route {
    cidr_block = var.cidr_block
    gateway_id = "${var.igw_id}"
  }

<<<<<<< HEAD
## Add tags
=======
# ## Add tags
>>>>>>> 2a76104a650b15ecaa1e95fa07a7852194cb7b60
   tags = {
    Name = "${var.NameRT}"
    Purpose ="${var.Purpose}"
    Owner = "${var.Owner}"
  }
}
<<<<<<< HEAD
/////output
output "route_table_id" { value = "${aws_route_table.EKS_Rtbl.id}" }
=======
# /////output
 output "route_table_id" { value = "${aws_route_table.EKS_Rtbl.id}" }
>>>>>>> 2a76104a650b15ecaa1e95fa07a7852194cb7b60


