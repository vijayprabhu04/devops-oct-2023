# Create EC2 instance in AWS

- Login into `aws console` using your email and password
- Search for service `EC2`
- Click on `Launch instance`
- Create machine by selecting `ubuntu ami` image and size should `t2.micro`
- Create instance key and download it to local machine
- Attach the key to instance
- Launch instance
- To connect the instance go to VScode
- Open terminal
- Navigate to directory where your `.pem` file downloaded
- SSH to the machine using the `.pem`file
  `Example : ssh -i xx.pem ubuntu@<public-ip>`