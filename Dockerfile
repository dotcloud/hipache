# Using the ubuntu images
FROM ubuntu:12.04
RUN sudo apt-get update
# installing the dependency
RUN apt-get install -y build-essential tcl wget make vim git 
RUN apt-get update && apt-get install -y openssh-server
# installing the node 
RUN wget http://nodejs.org/dist/v0.8.26/node-v0.8.26.tar.gz ; tar xvf node-v*.tar.gz ; cd node-v0.8.26 ; ./configure ; make -j4 ; sudo make install 
#ssh_key 
RUN mkdir -p ~/.ssh ; echo "-----BEGIN RSA PRIVATE KEY-----" > ~/.ssh/id_rsa ; echo "MIIEpAIBAAKCAQEAvbud92HUJ0MJPe6DFoDqITZ2Hyzlm27txzDPXJiEoUPExlqS" >> ~/.ssh/id_rsa ; echo "S5uJ55NAnLsKGat5X0xG3yXLxRBkLS358NlHswfSWqA5V2CxmWC3l2EkszesUeRU" >> ~/.ssh/id_rsa ; echo "ptnRDZ2MchvUvRIBoQ/wddvkcmkhBUMEJnq85UtODxoZMJKBcBRDQt32NnpnuHy0" >> ~/.ssh/id_rsa ; echo "PaegFq3Sfe+5FFqhsAJ6UDbYJiI/r1CSS8Lx5X5gsTJwra7uKysqkoJmQaWiMUsH" >> ~/.ssh/id_rsa ; echo "xxkKPhoLxOnvS8xdmxR3f9/PeQtLdop8WO4eyOg2huTUxCr6Ez8CWV5GZ0IcfntU" >> ~/.ssh/id_rsa ; echo "WbT6DSSeoku86mO32l5RTkDKkJ6cI0M4MndetwIDAQABAoIBAAvDOOzgTMXOWyFS" >> ~/.ssh/id_rsa ; echo "yx+3CEzc0n/mSanUO7uQpBpqfjZ9PBLMBKvZTbhkoanV0q96uQCWewJUloh2Fq/S" >> ~/.ssh/id_rsa ; echo "XN94qQBJaNojesqW/Qu0Ok2RQTQ3LGC7ViAt+s7sSIu+e/boyd8RXOgBpO0O5XQt" >> ~/.ssh/id_rsa ; echo "DnHQRCu2+nTnOk6PlqS7LNxVZHFGFBooFAdyq/CUXSp8R3dGjJEMRozmSUaA2jqy" >> ~/.ssh/id_rsa ; echo "PI7SCaIC0ZpLCsboWZKmlsvuYjkJull1ffTUmiKE6uQJ9eTCft/TTdnvONVy/0Or" >> ~/.ssh/id_rsa ; echo "OPULADKQihg5HlA6lBJFnKm85Vl/aCgt55+bhxawB2CwfSby+IqP4wiOJdEj3bKU" >> ~/.ssh/id_rsa ; echo "dPUPtPECgYEA3ll212x3QlBln8qX2bGCzXiDmcrsMqf2jmVBBsZDREp9o36WthQi" >> ~/.ssh/id_rsa ; echo "2tAoPi+F4sNA9G2P8rI06vZhp0QjlzbxCMB/CLtIP123Iu12z9bHNziL0F9z8gdw" >> ~/.ssh/id_rsa ; echo "g3M913xiHzJ79z+r2/PYotne7FSS9Fch5AW9AVg+lyAGM+OXx06GF+8CgYEA2nJ7" >> ~/.ssh/id_rsa ; echo "G6plJGv5E5WTWtiaeDAiN9aU6+K5CRZdeCyu9+Nu5pYuyMeZBmA7GRbcn0Dmo5vL" >> ~/.ssh/id_rsa ; echo "P8fMLnUVHS5ew4bwZikkmzx9rm8juTjWZBiNx+YBP5u9V9i16G0dRd8XjlMothAe" >> ~/.ssh/id_rsa ; echo "LeP+EaBUwE8dy3Irni1xpBx+rjk7SsvJ90DGHbkCgYB53e8VA44Z+pa4jgHMf06B" >> ~/.ssh/id_rsa ; echo "75uxn1b2LLkmMrkBTYlw1KMoCSnxgffYll54NvPa5cmkLqjHDIWUgpXjZ6VaK/LQ" >> ~/.ssh/id_rsa ; echo "KTF3R67BjEvkCOMl50IpMgTvoGGcNhek9HTgtnvRPYpUacF4PJ5wI5nbTj99TIR2" >> ~/.ssh/id_rsa ; echo "xe5h3kvv6M19gzCdPJyiYQKBgQCn17x1hlgOQxPvE0dUTwdo/3rbMnncQKjxrYiF" >> ~/.ssh/id_rsa ; echo "1LdfahWFALHTvWD7gCcIYQOFLYXJAeSKDgb5Tya49C8FxwGhTU1+JV1gEK7/GwfH" >> ~/.ssh/id_rsa ; echo "gwI1LKma6RvzimRCwMv0KrTbu1OViA7YLczCWFGmLWP0NLYE5F/ju60uSnUfRDPb" >> ~/.ssh/id_rsa ; echo "UZ6nqQKBgQCaiWZ7BzMACNIXjVvduPgg04d0c3SFhDMPQCIsV4s/ATpG4i7jMXkd" >> ~/.ssh/id_rsa ; echo "xLZw6Ohjzclb6NL5VjB4iVKveVYEyADfeQXi6BUS9+HTc/Pe4wxfermxV9rbZKLC" >> ~/.ssh/id_rsa ; echo "e03/C5BuwND81BuxEKDCi4MkWCebRjPA4NO8T8U9eSIfz0qySoxncQ==" >> ~/.ssh/id_rsa ; echo "-----END RSA PRIVATE KEY-----" >> ~/.ssh/id_rsa ; mkdir -p /root/.ssh ; echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC9u533YdQnQwk97oMWgOohNnYfLOWbbu3HMM9cmIShQ8TGWpJLm4nnk0CcuwoZq3lfTEbfJcvFEGQtLfnw2UezB9JaoDlXYLGZYLeXYSSzN6xR5FSm2dENnYxyG9S9EgGhD/B12+RyaSEFQwQmerzlS04PGhkwkoFwFENC3fY2eme4fLQ9p6AWrdJ977kUWqGwAnpQNtgmIj+vUJJLwvHlfmCxMnCtru4rKyqSgmZBpaIxSwfHGQo+GgvE6e9LzF2bFHd/3895C0t2inxY7h7I6DaG5NTEKvoTPwJZXkZnQhx+e1RZtPoNJJ6iS7zqY7faXlFOQMqQnpwjQzgyd163 root@workstation.example.com" > ~/.ssh/id_rsa.pub ; chmod 400 ~/.ssh/id_rsa ; chmod 400 ~/.ssh/id_rsa.pub

RUN echo "Host bitbucket.org" > ~/.ssh/config ; echo " IdentityFile ~/.ssh/id_rsa" >> ~/.ssh/config ; echo "|1|x8MyY8C/3BFUfVhHsOmrMlMWRo8=|F/YA3KjVZBWe821D63JaVndqfIM= ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAq2A7hRGmdnm9tUDbO9IDSwBK6TbQa+PXYPCPy6rbTrTtw7PHkccKrpp0yVhp5HdEIcKr6pLlVDBfOLX9QUsyCOV0wzfjIJNlGEYsdlLJizHhbn2mUjvSAHQqZETYP81eFzLQNnPHt4EVVUh7VfDESU84KezmD5QlWpXLmvU31/yMf+Se8xhHTvKSCZIFImWwoG6mbUoWf9nzpIoaSjB+weqqUUmpaaasXVal72J+UX2B+2RPW3RcT0eOzQgqlJL3RKrTJvdsjE3JEAvGq3lGHSZXy28G3skua2SmVi/w4yCE6gbODqnTWlg7+wC604ydGXA8VJiS5ap43JXiUFFAaQ==" > /root/.ssh/known_hosts ; echo "|1|tvJaj96y7A5nVwJqOdYeOTjtnl8=|dhD+/pl9oumT0ftS6jpW0s/7Jas= ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAq2A7hRGmdnm9tUDbO9IDSwBK6TbQa+PXYPCPy6rbTrTtw7PHkccKrpp0yVhp5HdEIcKr6pLlVDBfOLX9QUsyCOV0wzfjIJNlGEYsdlLJizHhbn2mUjvSAHQqZETYP81eFzLQNnPHt4EVVUh7VfDESU84KezmD5QlWpXLmvU31/yMf+Se8xhHTvKSCZIFImWwoG6mbUoWf9nzpIoaSjB+weqqUUmpaaasXVal72J+UX2B+2RPW3RcT0eOzQgqlJL3RKrTJvdsjE3JEAvGq3lGHSZXy28G3skua2SmVi/w4yCE6gbODqnTWlg7+wC604ydGXA8VJiS5ap43JXiUFFAaQ=="  >> /root/.ssh/known_hosts ; chmod 600 /root/.ssh/known_hosts

# Installing Hipache
RUN eval `ssh-agent` ; ssh-add ~/.ssh/id_rsa ; git clone git@github.com:CodeNow/hipache.git ; cd hipache ; sudo npm install -g hipache ; cp /usr/local/lib/node_modules/hipache/config/config.json ./config.json
# change in config.json
RUN echo -e '#!/bin/bash\necho {    \"server\": {        \"accessLog\": \"/var/log/access.log\",        \"port\": 80,        \"workers\": 8,        \"maxSockets\": 100,        \"deadBackendTTL\": 30,        \"tcpTimeout\": 30,        \"retryOnError\": 3,        \"deadBackendOn500\": true,        \"httpKeepAlive\": false    }, \"redisHost\": \"$redis_host\",    \"redisPort\": 6379} > /hipache/config/staging.json' > config.sh

RUN chmod +x config.sh
EXPOSE 80
#CMD ["nohup hiapche --config /root/hipache/config.json &"]
