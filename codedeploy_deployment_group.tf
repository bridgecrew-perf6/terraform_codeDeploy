resource "aws_codedeploy_deployment_group" "code_depl_grp" {

    app_name = aws_codedeploy_app.my_code_app.name
    deployment_group_name = "my-depl-grp"
    service_role_arn = aws_iam_role.codedeploy_role.arn
    

    ec2_tag_set {
       ec2_tag_filter {
      key   = "Name"
      type  = "KEY_AND_VALUE"
      value = "CodeDeployDemo"
     }
    }
  
}