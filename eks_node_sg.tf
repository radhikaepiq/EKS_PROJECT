# resource "aws_security_group" "eks_nodes" {
#   name = "${var.project}-node-sg"
#   description = "Security group for all nodes in the cluster"
#   vpc_id = "${module.EKS_vpc.vpc_id}"

#   egress {
#     cidr_blocks = ["0.0.0.0/0"]
#     description = "Egress for nodes"
#     from_port = 0
#     protocol = "-1"
#     to_port = 0
#   } 

#   tags = {
#     "Name" = "${var.project}-node-sg"
#     "kubernetes.io/cluster/${var.project}-cluster" = "owned"
#   }
# }

# resource "aws_security_group_rule" "node_internal" {
#   description = "Allow nodes to communicate with each other"
#   from_port = 0
#   protocol = "-1"
#   security_group_id = aws_security_group.eks_nodes.id
#   source_security_group_id = aws_security_group.eks_nodes.id
#   to_port = 65535
#   type = "ingress"
# }

# resource "aws_security_group_rule" "node_cluster_inbound" {
#   description = "Allow worker Kubelets and pods to receive communication from the cluster control plane"
#   from_port = 1025
#   protocol = "tcp"
#   security_group_id = aws_security_group.eks_nodes.id
#   source_security_group_id = aws_security_group.eks_nodes.id
#   to_port = 65535
#   type = "ingress"
# }