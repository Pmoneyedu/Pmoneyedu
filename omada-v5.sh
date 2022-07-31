##install Omada Software Controller V5
##get latest version url: https://www.tp-link.com/pl/support/download/omada-software-controller/ and change OMADAURL variable

sudo su -
apt update -y && apt full-upgrade -y && apt autoremove -y && apt clean -y && apt autoclean -y
apt-get install openjdk-8-jre-headless mongodb net-tools -y
update-alternatives --config java
#select OpenJDK-8 option
apt-get install jsvc wget -y
OMADAURL=https://static.tp-link.com/software/2021/202107/20210701/Omada_SDN_Controller_v4.4.3_linux_x64.tar.gz
wget $OMADAURL
cd /tmp
mkdir /tmp/Omada_SDN_Controller
tar zxvf ${OMADAURL##*/} -C /tmp/Omada_SDN_Controller
/tmp/Omada_SDN_Controller/install.sh -y
rm -rf /tmp/Omada_SDN_Controller
rm ${OMADAURL##*/}


##install Omada Software Controller V5 from deb
##get latest version url: https://www.tp-link.com/pl/support/download/omada-software-controller/ and change OMADAURL variable

sudo su -
apt update -y && apt full-upgrade -y && apt autoremove -y && apt clean -y && apt autoclean -y
apt-get install openjdk-8-jre-headless mongodb net-tools -y
update-alternatives --config java
#select OpenJDK-8 option
apt-get install jsvc wget -y
OMADAURL=https://static.tp-link.com/upload/software/2022/202207/20220729/Omada_SDN_Controller_v5.4.6_Linux_x64.deb
wget $OMADAURL
cd /tmp
dpkg -i ${OMADAURL##*/}
rm ${OMADAURL##*/}


##upgrade Omada Software Controller v5
##get latest version url: https://www.tp-link.com/pl/support/download/omada-software-controller/ and change OMADAURL variable
## before procedure backup the configuration from GUI

sudo su -
apt update -y && apt full-upgrade -y && apt autoremove -y && apt clean -y && apt autoclean -y
cd /tmp
OMADAURL=https://static.tp-link.com/upload/software/2022/202207/20220729/Omada_SDN_Controller_v5.4.6_Linux_x64.tar.gz
wget $OMADAURL
mkdir /tmp/Omada_SDN_Controller
tar zxvf ${OMADAURL##*/} -C /tmp/Omada_SDN_Controller
/tmp/Omada_SDN_Controller/install.sh -y
# type y to approve upgrade
rm -rf /tmp/Omada_SDN_Controller
rm ${OMADAURL##*/}