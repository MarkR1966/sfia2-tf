output "sg1_id" {
  value = [aws_security_group.sg_manager.id]
}

output "sg2_id" {
  value = [aws_security_group.sg_worker.id]
}