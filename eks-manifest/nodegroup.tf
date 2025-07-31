resource "aws_eks_node_group" "lubna_ng" {
  cluster_name    = aws_eks_cluster.eks.name
  node_group_name = "app-nodes"
  node_role_arn   = aws_iam_role.eks_role.arn
  subnet_ids      = aws_subnet.eks_public[*].id
  scaling_config {
    desired_size = 2
    max_size     = 3
    min_size     = 1
  }
}