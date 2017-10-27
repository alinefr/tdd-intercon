# Test-driven development na infraestrutura

## Requisitos
1. [ChefDK](https://downloads.chef.io/chefdk)
1. [Vagrant](https://www.vagrantup.com)
1. [Virtualbox](https://www.virtualbox.org)

## Comandos

### Criar cookbook com nome de meetup
```bash
chef generate cookbook meetup
```

### Criar arquivo (cria um arquivo vazio que pode ser usado no recipe com cookbook_file resource).
O arquivo é criado em `files/default`.

```bash
chef generate file docker-compose.yml
chef generate file index.html
```

### Este comando cria uma VM, instala o chef-client e converge o conteúdo do recipe.
```bash
kithen converge
```

### Este comando executa os testes smoke ou integration. Por padrão smoke apenas.
```
kitchen verify
```

### Este comando destrói qualquer VM existente, converge, executa os testes e por fim destrói a ou as VMs utilizadas.
```bash
kitchen test
```

## Mais infos:
1. [Comando kitchen](https://docs.chef.io/ctl_kitchen.html)
1. [Comando chef](https://docs.chef.io/ctl_chef.html)
1. [Inspec](https://www.inspec.io/docs/reference/resources/)
1. [Overview of Test Driven Infrastructure with Chef](https://blog.chef.io/2015/04/21/overview-of-test-driven-infrastructure-with-chef/)
1. [Test Driven Infrastructure](https://spin.atomicobject.com/2014/10/28/test-driven-infrastructure-tdi/)
