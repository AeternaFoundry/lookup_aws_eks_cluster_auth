output "eks_cluster_auth_lookup_id" {
  description = "Map of id values across all eks_cluster_auth_lookup, keyed the same as var.eks_cluster_auth_lookup"
  value       = { for k, v in data.aws_eks_cluster_auth.eks_cluster_auth_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "eks_cluster_auth_lookup_name" {
  description = "Map of name values across all eks_cluster_auth_lookup, keyed the same as var.eks_cluster_auth_lookup"
  value       = { for k, v in data.aws_eks_cluster_auth.eks_cluster_auth_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "eks_cluster_auth_lookup_region" {
  description = "Map of region values across all eks_cluster_auth_lookup, keyed the same as var.eks_cluster_auth_lookup"
  value       = { for k, v in data.aws_eks_cluster_auth.eks_cluster_auth_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "eks_cluster_auth_lookup_token" {
  description = "Map of token values across all eks_cluster_auth_lookup, keyed the same as var.eks_cluster_auth_lookup"
  value       = { for k, v in data.aws_eks_cluster_auth.eks_cluster_auth_lookup : k => v.token if v.token != null && length(v.token) > 0 }
  sensitive   = true
}

