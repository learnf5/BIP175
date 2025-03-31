for i in {1..12}; do [ "$(sudo ssh root@192.168.1.31 cat /var/prompt/ps1)" = "ModuleNotLicensed::LICENSE INOPERATIVE" ] && break; sleep 5; done
sudo ssh 192.168.1.31 tmsh load sys config default
 
# grab a reg key from GitHub, disable debugging for curl so token isn't saved in log file
labdir=/home/student/Desktop/Lab_Files
mkdir $labdir
filename=$(date +ltm-reg-key-%Y-%m.txt)
set +x
curl --silent --output $labdir/ltm-reg-key.txt -H "Authorization: token $TOKEN" https://raw.githubusercontent.com/learnf5/eval-reg-keys/main/$filename
echo curl --silent --output $labdir/ltm-reg-key.txt -H "Authorization: token XXXXXXXXXXXXXXXXXX" https://raw.githubusercontent.com/learnf5/eval-reg-keys/main/$filename
