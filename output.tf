output "public_ip" {
    value = aws_instance.aws_instance.jp-k8s-master.public_ip.public_ip
}
