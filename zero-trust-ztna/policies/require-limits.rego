package kubernetes.admission

# Rule: All pods must define CPU and memory limits
deny[msg] {
  input.kind.kind == "Pod"
  not input.spec.containers[_].resources.limits.cpu
  msg := "Pod is missing CPU limits"
}

deny[msg] {
  input.kind.kind == "Pod"
  not input.spec.containers[_].resources.limits.memory
  msg := "Pod is missing memory limits"
}
