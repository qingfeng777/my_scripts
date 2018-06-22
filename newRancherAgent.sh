#!/bin/sh
# to rm and reRegister rancher agetn

echo "hello,start rm container"
docker stop $(docker ps -aq)
docker rm -f $(docker ps -qa)
rm -rf /var/lib/etcd /var/lib/cni /var/run/calico
rm -rf /etc/kubernetes/ssl /etc/kubernetes/.tmp/
rm -rf /opt/cni


# echo "start new agent"

# sudo docker run -d --privileged --restart=unless-stopped --net=host -v /etc/kubernetes:/etc/kubernetes -v /var/run:/var/run rancher/rancher-agent:v2.0.2 --server https://192.168.131.28 --token xmtcfbnlmj5qgk7sgnrdf75fb9hrt7tfkxfbhxc7zll2x6245wkfdt --ca-checksum 03d3548f4653da1b4eafcd58285600cf684fe76aa55ca3384d4e1d1333c4cd2d --etcd --controlplane --worker

ehco "complete!"
