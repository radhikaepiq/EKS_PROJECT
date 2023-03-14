# resource "aws_eks_node_group" "tj_eks_node_group" {
#   cluster_name = aws_eks_cluster.tj-eks-cluster.name
#   node_group_name = var.project
#   node_role_arn = aws_iam_role.node.arn
#   subnet_ids = [ "subnet-0b6dba9f16c2eaa3e","subnet-05d80accc87b84c6e"]

#   scaling_config {
#     desired_size = 2
#     max_size = 5
#     min_size = 1
#   }

#   ami_type = "AL2_x86_64"
#   capacity_type = var.capacity
#   disk_size = 20
#   instance_types = [ var.instance ]

#   tags = {
#     "Name" = "${var.project}-node_group"
#     "k8s.io/cluster-autoscaler/${var.project}-cluster" = "owned"
#     "k8s.io/cluster-autoscaler/enabled" = "true"
#     "kubernetes.io/cluster/${var.project}-cluster" = "owned"
#   }

#   depends_on = [
#     aws_iam_role_policy_attachment.node_AmazonEKSWorkerNodePolicy,
#     aws_iam_role_policy_attachment.node_AmazonEKS_CNI_Policy,
#     aws_iam_role_policy_attachment.node_AmazonEC2ContainerRegistryReadOnly,
#   ]
# }