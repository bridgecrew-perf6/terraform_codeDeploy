resource "aws_codedeploy_app" "my_code_app" {
    
    compute_platform = var.my_compute_platform
    name = "Java_Application"
  
}