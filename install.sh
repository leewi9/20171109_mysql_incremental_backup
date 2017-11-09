sudo wget https://repo.percona.com/apt/percona-release_0.1-4.$(lsb_release -sc)_all.deb
sudo dpkg -i percona-release_0.1-4.$(lsb_release -sc)_all.deb
sudo apt-get update
sudo apt-get -y install percona-xtrabackup-24

sudo apt-get -y install qpress

# 制作密钥
printf '%s' "$(openssl rand -base64 24)" | sudo tee /data/backups/mysql_incremental_backup/encryption_key && echo

#
sudo chmod +x backup-mysql.sh
sudo chmod +x extract-mysql.sh
sudo chmod +x prepare-mysql.sh
