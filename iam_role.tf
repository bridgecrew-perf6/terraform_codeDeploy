

resource "aws_iam_role" "codedeploy_role" {
    name="codedeploy_role"
    assume_role_policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "",
            "Effect": "Allow",
            "Principal": {
                "Service": [
                    "codedeploy.amazonaws.com"
                ]
            },
            "Action": [
                "sts:AssumeRole"
            ]
        }
    ]
}) 
}

resource "aws_iam_policy_attachment" "codedeploy_policy_attach" {
     name = "codedeploy_policy_attach"
     policy_arn = "arn:aws:iam::aws:policy/service-role/AWSCodeDeployRole"
     roles = [aws_iam_role.codedeploy_role.name]       
}