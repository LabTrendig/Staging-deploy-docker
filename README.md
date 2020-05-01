
# Provision

desntro de la capeta ***src*** se encunetra el provosion para el servidor:
el ***user*** es, si es aws es ubuntu, si es digitalocean es root.


        [STAGING]
        # Server name LUX
        <IP> hostname=<hostname> ansible_ssh_user=<user>
        
        [all:vars]
        user = <user>
        ansible_ssh_user = <user>


![alt text](staging.png?raw=true "deploy")

para agregar un contenedor nuevo. como ejemplo tenemso el dominio ***labtrendig.com***, ***www.labtrendig.com***


        version: "3.7"

        services:
          web:
            image: datawire/hello-world
            environment:
              VIRTUAL_PORT: "8000"
              VIRTUAL_HOST: "labtrendig.com,www.labtrendig.com"
              LETSENCRYPT_HOST: "labtrendig.com,www.labtrendig.com"
              LETSENCRYPT_EMAIL: "josuedjh456@gmail.com"
            ports:
              - "8000:8000"
        
        networks:
          default:
            external:
              name: dev_staging_net
            
debes agregar a la red ***dev_staging_net*** los nuevos contenedores
