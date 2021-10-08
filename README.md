# DevOps: AWS com Terraform Automatizando sua infraestrutura

**Requisitos:**

[AWS](https://aws.amazon.com/account/sign-up)

[Terraform](https://www.terraform.io/downloads.html)

**Opcional:**

[AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)

## Comandos básicos:

  ```terraform init``` (Prepare your working directory for other commands)

  ```terraform validate``` (Check whether the configuration is valid)

  ```terraform plan``` (Show changes required by the current configuration)

  ```terraform apply``` (Create or update infrastructure)

  ```terraform destroy``` (Destroy previously-created infrastructure)

OBS: O Comando ```terraform init``` deve ser executado ao se executar este projeto a primeira vez e 

a cada recurso novo adicionado, para que as dependências sejam baixadas.

Preview de infra para dev:

```
terraform plan
```

Preview de infra para prod:

```
terraform plan -var-file="prod.tfvars"
```

Criar a infraestrutura na AWS (para dev, basta não passar o var file como parâmetro):

```
terraform apply -var-file="prod.tfvars" -auto-approve
```