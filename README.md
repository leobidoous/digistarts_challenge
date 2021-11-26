# Aplicativo `Desafio` da empresa Digistarts.

* You have to do an application with flutter and build an App and Web.

* Your application must be a list requested with API:
https://api.brasil.io/v1/dataset/covid19/caso/data/?search=&date=&state=&pla ce_type=state&is_last=&city_ibge_code

* Use this token in your Header Authorization: Token 8b34c604f8c467c5950550f6870bde20dc5229fb

* Your application need a simple login page.

* Feel free to use any lib that what.

# Para executar o aplicativo

* Criar e atualizar o arquivo `.env`, de acordo com o `.env.example`:

``` dart
BASE_URL = base_url
PROD_BASE_URL = prod_base_url
HOMOL_BASE_URL = homol_base_url
DEV_BASE_URL = dev_base_url
API = api
TIMEOUT = 0
```

* Instalar o versionador de versão do `Flutter`:

``` https
https://github.com/leoafarias/fvm
```

* Após instalar o `FVM`, configurar a versão do flutter utilizada:

```
fvm flutter use 2.5.3 --force
```
PS.: Verificar as configurações de cada IDE para utilizar o `FVM` fora da linha de comando.

* No diratório do aplicativo específico, atualizar as dependências do mesmo:

```
fvm flutter pub get
```

# Contato

Para mais informações, entrar em contato.

```
leobidoous@icloud.com
```