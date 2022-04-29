project = "tf_aws"

### START - WAF variables for hub ####
cx_public_ip = "0.0.0.0"
onprem_cidr  = "0.0.0.0/24"
whitelist_IP = "0.0.0.0/24"
### END - WAF variables for hub ####


net = {
  hub = {
    vpc_cidr            = "10.1.0.0/16"
    vpc_name            = "vpc_hub"
    public_cidr         = "10.1.1.0/24"
    private_cidr        = "10.1.2.0/24"
    public_subnet_name  = "subnet_public_hub"
    private_subnet_name = "subnet_private_hub"
    public_RT_name      = "RT_public_hub"
    private_RT_name     = "RT_private_hub"
    ## EC2 variables  
    ami          = "ami-0c02fb55956c7d316"
    instanceType = "t2.micro"
    key_name     = "Key-console"
    ## SG variables
    sg_cidr_icmp = ["0.0.0.0/0"]
    sg_cidr_ssh  = ["0.0.0.0/0"]

  },
}