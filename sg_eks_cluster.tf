# resource "aws_security_group" "eks_cluster" {
#   name = "${var.project}-cluster-sg"
#   description = "Cluster communication with worker nodes"
#   vpc_id = "${module.EKS_vpc.vpc_id}"
#   tags = {
#     "Name" = "${var.project}-cluster-sg"
#   }
# }

# resource "aws_security_group_rule" "cluster_inbound" {
#   description = "Allow worker nodes to communication with cluster API server"
#   from_port = 443
#   protocol = "tcp"
#   security_group_id = aws_security_group.eks_clsuter.id
#   source_security_group_id = aws_security_group.worker_node_sg.id
#   to_port = 443
#   type = "ingress"
# }

# resource "aws_security_group_rule" "cluster_outbound" {
#   description = "Allow clsuter API Server to communicate with the worker nodes"
#   from_port = 1024
#   protocol = "tcp"
#   security_group_id = aws_security_group.eks_clsuter.id
#   source_security_group_id = aws_security_group.worker_node_sg.id
#   to_port = 65535
#   type = "egress"
# }