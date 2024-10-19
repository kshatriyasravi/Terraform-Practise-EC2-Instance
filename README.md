# Terraform-Practise-EC2-Instance
This is the repo were we will be creating an ec2 instance with terraform script in aws cloud

pre requirestics are 

1. Install terraform on your local machine
2. Install aws cli on your local machine
3. Create an aws account and set up your aws credentials
4. Install git on your local machine
5. Clone this repository on your local machine
6. Install terraform provider for aws by running the command terraform init in your terminal
7. Run terraform apply to create the ec2 instance in aws cloud
 
 * mainly try to understand how to create an ec2 instance manully in terraform and understand how we can implement.

Steps to create the ec2-instance manually:
1. login to your aws with your credentials
2. navigate to the ec2 dashboard
3. click on the launch instance button
4. firstly we require a name or tag for the ec2 instance so provide a name
5. select the ami (default there are lots of ami avaliable, if you require to create a new ami
     you can click on create an ami and selct that os)
6. Now select the instance type (t2.micro or t2.large)
7. select the key pair (if you have already created a key pair then select that key or else 
     create a new key pair and select that key)
8. select the vpc (if you have already created a vpc then select that vpc or skip the step or  
     create a new vpc and assign it )
9. select the subnet (if you have already created a subnet then select that subnet or skip)
10. select the security group (if you have already created a security group then select that      
    security)
11. configure storage (to store any data inside we reauire one bucket or storage so create here)
12. summary (check if anything is missed and click on create option.)


Now use these same steps for terraform to create an ec2-instance with terraform (IAC)



