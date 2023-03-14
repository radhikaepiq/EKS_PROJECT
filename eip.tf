# resource "aws_eip" "main" {
#   vpc = true
#   tags = {
#     "Name" = "${var.project}-eip"
#   }
# }