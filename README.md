
[![N|Solid](http://www.nexthop.net.br/static/images/logo.png)](http://www.nexthop.net.br)

# NextHop Servidor TFTP em Container 

Container Docker para servidor tftp.



### Criando e inicializando o container:


```sh
docker run \
  --restart always \
  -itd \
  -p 69:69 \
  -v tftpd_data:/var/lib/tftpboot 
  --name nexthop-tftpd 
  --hostname nexthop-tftpd \
  nexthopsolutions/tftpd
```


Para verificar o status:

```sh
$ docker ps
```
 

Dúvidas ou informações: <elizandro@nexthop.net.br>
