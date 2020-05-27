resource "aws_instance" "module_instance" {
    ami = data.aws_ami.ubuntu.id
    instance_type = var.instance_size
    key_name = var.key_pair
    vpc_security_group_ids = [var.sg_id]
    user_data = templatefile("${path.module}/scripts/install.sh", {})
    subnet_id = var.subnet_id
    iam_instance_profile = var.profile_id
}
