  # locals{
  #   pubSubnet = [for f in module.EKS_subnets.subnet_id_2 : 
  #   {
  #       subId =  "f"
  #     } 
  #   ]
  #   }

resource "aws_eks_cluster" "tj-eks-cluster" {
  name = "${var.project}-cluster"
  role_arn = aws_iam_role.cluster_role.arn
  version = "1.22"

  vpc_config {
   
    subnet_ids  = module.EKS_subnets.subnet_id_2
    # subnet_ids =  [each.value]
    # "sub-1" = "subnet-0b6dba9f16c2eaa3e"
    # "sub-2" = "subnet-05d80accc87b84c6e"
    # "sub-3" = "subnet-02e0a1f0eda753ea5"
    # "sub-4" = "subnet-0b85d8d23059af78a"
    # subnet_ids = ["subnet-0b6dba9f16c2eaa3e","subnet-05d80accc87b84c6e","subnet-02e0a1f0eda753ea5","subnet-0b85d8d23059af78a"]
      }

  depends_on = [
    aws_iam_role_policy_attachment.eks_cluster_policy,
    aws_iam_role_policy_attachment.eks_AmazonEKSVPCResourceController,
  ]

  tags = {
    "Name" = "${var.project}-cluster"
  }

}