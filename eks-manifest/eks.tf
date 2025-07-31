resource "aws_eks_cluster" "eks" {
  name     = "lubna-eks-cluster"
  role_arn = aws_iam_role.eks_role.arn
  vpc_config {
    subnet_ids = aws_subnet.eks_public[*].id
  }

  depends_on = [aws_iam_role.eks_role]
}
