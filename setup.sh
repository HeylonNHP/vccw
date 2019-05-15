#This is needed to update the Windows hosts file
vagrant plugin install vagrant-hostsupdater
#Delete .git folder for vccw install - it's not needed anymore
rm -f -r .git
#Run it baby!
vagrant up
#Cloning the project repo
cd wordpress
rm -f -r wp-content
git clone https://github.com/cp3402-students/a2-cp3402-2019-team22.git wp-content
#Generate SSH key to use with server
vagrant ssh
cat /dev/zero | ssh-keygen -q -N ""
cd ~/.ssh
echo -e "\x1B[96m Here is the SSH key for your vccw box - please copy and paste this into our Slack channel: \x1B[0m"
cat id_rsa.pub
exit