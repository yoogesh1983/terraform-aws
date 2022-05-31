## Steps to follow before running an application

- To work with aws, you first need to install the aws cli in your terminal so that you can run aws command on it
- Create an access-key and use those keyId and password to configure aws credential which will create a hiden .aws file that contains your credential and that will be used by terraform everytime you run
  terraform which means you don't specifically need to put your id and secret in your .tf file which would be obviously worse if you had to ☺️☺️☺️
- Now tou run below command: </br>
  > <strong>terraform init</strong> <br/>

  > <strong>terraform plan</strong> <br/>

  > <strong>terraform apply -auto-approve</strong>

  > <strong>terraform destroy -auto-approve</strong>

