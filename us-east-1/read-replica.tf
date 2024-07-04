# provider "aws" {
#   region = "us-west-2"
# }
# data "aws_db_subnet_group" "readreplica" {
#   name = "My-DB-subnet-group"
# }
# data "aws_security_group" "vsv" {
#     name = "book-rds"
  
# }
# resource "aws_db_instance" "replica-postgresql-rds" {
#   instance_class       = "db.t3.micro"
#   skip_final_snapshot  = true
#   backup_retention_period = 7
#   replicate_source_db = aws_db_instance.rds.identifier
#   db_subnet_group_name   = data.aws_db_subnet_group.readreplica.id
#   vpc_security_group_ids = data.aws_security_group.id
  
# }

# output "replica-url" {
#   value=aws_db_instance.replica-postgresql-rds.endpoint
# }