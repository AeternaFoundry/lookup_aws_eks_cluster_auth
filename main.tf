data "aws_eks_cluster_auth" "eks_cluster_auth_lookup" {
  for_each = var.eks_cluster_auth_lookup

  name   = each.value.name
  region = each.value.region
}

