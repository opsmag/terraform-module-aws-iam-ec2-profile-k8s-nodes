resource "aws_iam_instance_profile" "this" {
  name = "${var.cluster_name}-ec2-profile-k8s-nodes"
  role = aws_iam_role.this.*.id[0]
}