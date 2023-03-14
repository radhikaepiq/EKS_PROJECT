# resource "aws_security_group" "control_plane_sg" {
#   name = "${var.project}-ControlPlane-sg"
#   vpc_id = "${module.EKS_vpc.vpc_id}"
#   tags = {
#     "Name" = "${var.project}-ControlPlane-sg"
#   }
# }

# resource "aws_security_group_rule" "control_plane_inbound" {
#   security_group_id = aws_security_group.control_plane_sg.id
#   type = "ingress"
#   from_port = 0
#   to_port = 65535
#   protocol = "tcp"
#   cidr_blocks = ["10.0.1.0/26","10.0.1.64/26","10.0.1.128/26","10.0.1.192/26"]
#   }
  
# resource "aws_security_group_rule" "control_plane_outbound" {
#     security_group_id = aws_security_group.control_plane_sg.id
#     type              = "egress"
#     from_port         = 0
#     to_port           = 65535
#     protocol          = "-1"
#     cidr_blocks       = ["0.0.0.0/0"]
# }