# serverspec-demo
serverspec-demoは、Serverspecを使用して対象となるAWSのEC2インスタンス上でテストを自動で行います。  
# 使用技術
- ServerSpec
  - Ruby
- AWS
  - VPC
  - EC2
  - RDS
# 構成図
- 
# 特徴
- テスト内容は、以下の通りです。
  - 22番ポートがListenしているか
  - 80番ポートがListenしているか
  - Nginxがインストールされているか
  - Gitがインストールされているか
  - Ruby2.6.3がインストールされているか
  - Nginxが起動しているか
  - /etc/nginx/nginx.confが存在するか
  - /var/log/nginxが存在するか
