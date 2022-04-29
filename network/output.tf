output "vpc-ID" {
  value = [
    for bd in module.network : bd.vpcID
  ]
}


