# BlueGreenDeployment Boilerplate

**WARNING:** Under construction. Contributions are welcome.

BlueGreenDeployment Boilerplate is a configurations template to run a web production environment using Docker with zero downtime when run deploy.

See more about BlueGreenDeployment in [https://martinfowler.com/bliki/BlueGreenDeployment.html](https://martinfowler.com/bliki/BlueGreenDeployment.html)


## Getting started

The first step to get the sample application running is start the Traefik application.

```bash
cd traefik
docker-compose up -d
```
> NOTE: The above command will start Traefik on port 80, which needs to be open.

The next step is run the `first-deploy` command.

```bash
make first-deploy
```

The next step is add the `myproject.local` domain to your `/etc/hosts` file.

```bash

echo "127.0.1.1 myproject.local" | sudo tee --append /etc/hosts
```

Right now you can access the example application on you web browser at http://myproject.local/

![Magic](https://media3.giphy.com/media/12NUbkX6p4xOO4/giphy.gif)
