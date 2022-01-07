# Terraforming

Exportando a configuração existente na AWS para o Terraform.

```text
Commands:
  alb             # ALB
  asg             # AutoScaling Group
  cwa             # CloudWatch Alarm
  dbpg            # Database Parameter Group
  dbsg            # Database Security Group
  dbsn            # Database Subnet Group
  ddb             # DynamoDB
  ec2             # EC2
  ecc             # ElastiCache Cluster
  ecsn            # ElastiCache Subnet Group
  efs             # EFS File System
  eip             # EIP
  elb             # ELB
  help [COMMAND]  # Describe available commands or one specific command
  iamg            # IAM Group
  iamgm           # IAM Group Membership
  iamgp           # IAM Group Policy
  iamip           # IAM Instance Profile
  iamp            # IAM Policy
  iampa           # IAM Policy Attachment
  iamr            # IAM Role
  iamrp           # IAM Role Policy
  iamu            # IAM User
  iamup           # IAM User Policy
  igw             # Internet Gateway
  kmsa            # KMS Key Alias
  kmsk            # KMS Key
  lc              # Launch Configuration
  nacl            # Network ACL
  nat             # NAT Gateway
  nif             # Network Interface
  r53r            # Route53 Record
  r53z            # Route53 Hosted Zone
  rds             # RDS
  rs              # Redshift
  rt              # Route Table
  rta             # Route Table Association
  s3              # S3
  sg              # Security Group
  sn              # Subnet
  snst            # SNS Topic
  snss            # SNS Subscription
  sqs             # SQS
  vgw             # VPN Gateway
  vpc             # VPC

Options:
  [--merge=MERGE]                                # tfstate file to merge
  [--overwrite], [--no-overwrite]                # Overwrite existng tfstate
  [--tfstate], [--no-tfstate]                    # Generate tfstate
  [--profile=PROFILE]                            # AWS credentials profile
  [--region=REGION]                              # AWS region
  [--use-bundled-cert], [--no-use-bundled-cert]  # Use the bundled CA certificate from AWS SDK
```
## Variaveis

Suas credenciais da AWS devem ser adicionadas no arquivo `.env`.

- AWS_ACCESS_KEY_ID
- AWS_SECRET_ACCESS_KEY
- AWS_REGION

## Executando

>Como exemplo, o comando irá exportar a config do S3 e monstrar a saida no console.

Dê permissão para o script
```bash
chmod +x aws-tf-export.sh
```
Execute
```bash
./aws-tf-export.sh s3
```
>Se não houver algo para exportar do AWS será ixibido a mensagem "**Nenhuma saida**"


#### Referencias
- https://github.com/dtan4/terraforming/
- https://docs.docker.com/compose/compose-file/compose-file-v3/
- https://docs.docker.com/compose/reference/run/
