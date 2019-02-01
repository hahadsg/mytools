# AWS-p2.xlarge

## 创建p2.xlarge

在aws控制台中点击启动示例https://us-west-2.console.aws.amazon.com/ec2/v2/home?region=us-west-2#Instances:sort=instanceState

搜索fastai，在社区AMI，找到这个ami：fastAI (ami-951609ec)

选择实例类型`p2.xlarge`

添加存储里设置存储大小

接下来审核和启动

到EC2-网络与安全-弹性IP中分配一个新的公网IP，绑定到刚才的实例上
https://us-west-2.console.aws.amazon.com/ec2/v2/home?region=us-west-2#Addresses:sort=PublicIp

ssh连接到实例就好了

## 配置环境

见`install_env.sh`

注意：这个是我手动一条条执行的，后面有空的话研究下怎么做成脚本

## 创建快捷命令

执行脚本`source aws-alias.sh`，这样就创建了一些快捷命令

注意：所有的命令都需要先执行`aws-get-p2`把实例ID生成出来
