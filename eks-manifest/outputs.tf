output "cluster_endpoint" {
  value = aws_eks_cluster.eks.endpoint
}

output "kubeconfig" {
  value = <<EOT
apiVersion: v1
clusters:
- cluster:
    server: ${aws_eks_cluster.eks.endpoint}
    certificate-authority-data: ${aws_eks_cluster.eks.certificate_authority[0].data}
  name: lubna-eks
contexts:
- context:
    cluster: lubna-eks
    user: aws
  name: lubna-eks-context
current-context: lubna-eks-context
EOT
}
