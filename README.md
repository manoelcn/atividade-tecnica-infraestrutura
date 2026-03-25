# Atividade Técnica - Infraestrutura

Este repositório contém a solução para a atividade prática do processo seletivo para a vaga de Estágio em Infraestrutura no ESIG Group. O projeto foca na automação de rotinas de banco de dados PostgreSQL e no monitoramento de instâncias de serviços JBoss e Tomcat.

---

## 📋 Índice
 
- [Sobre o Projeto](#sobre-o-projeto)
- [Pré-requisitos](#pré-requisitos)
- [Estrutura do Repositório](#estrutura-do-repositório)
- [Configuração do Ambiente](#configuração-do-ambiente)
- [Como Rodar os Scripts](#como-rodar-os-scripts)
  - [1. Configurar o Banco de Dados](#1-configurar-o-banco-de-dados)
  - [2. Dump do Banco de Dados](#2-dump-do-banco-de-dados)
  - [3. Restore do Banco de Dados](#3-restore-do-banco-de-dados)
  - [4. Verificação de Instâncias JBoss e Tomcat](#4-verificação-de-instâncias-jboss-e-tomcat)
- [Saída Esperada](#saída-esperada)
 
---

## 📖 Sobre o Projeto

A atividade consiste em demonstrar habilidades práticas em administração de sistemas Linux e banco de dados. Os requisitos atendidos são:

- ✅ Criação de banco de dados PostgreSQL com tabela de exemplo.

- ✅ Script para realizar o dump do banco de dados.

- ✅ Script para realizar o restore do banco a partir do dump.

- ✅ Script de verificação de status das instâncias JBoss e Tomcat.

- ✅ Exibição do tempo de atividade (uptime) das instâncias ativas.

--- 

## 📂 Estrutura do Repositório

O projeto está organizado da seguinte forma:

```
atividade-tecnica-infraestrutura/
├── db/
│   ├── setup.sql      # Script SQL para criação da estrutura e dados iniciais
│   ├── dump.sh       # Script Bash para exportação do banco
│   └── restore.sh    # Script Bash para importação do banco
├── services/
│   └── check_services.sh # Script para monitoramento de processos
└── README.md
```

---

## ⚙️ Pré-requisitos

- Sistema Operacional: Linux (Ambiente de teste).

- PostgreSQL: Instalado e configurado.

- Bash: Para execução dos scripts .sh.

- Serviços: Instâncias de jboss e tomcat (para teste do monitoramento).

---

## 🚀 Configuração do Ambiente

1. Clone o repositório:

```bash
git clone https://github.com/manoelcn/atividade-tecnica-infraestrutura.git
cd atividade-tecnica-infraestrutura
```

2. Permissões de execução:

Garanta que os scripts possam ser executados pelo sistema:

```bash
chmod +x db/*.sh services/*.sh
```

---

## 🛠️ Como Rodar os Scripts

1. Configurar o Banco de Dados

O script setup.sql cria o banco db, a tabela colaboradores e insere 5 registros. Execute:

```bash
sudo -u postgres psql -f db/setup.sql
```

2. Dump do Banco

O script dump.sh utiliza o pg_dump para gerar um arquivo db_dump.sql.

```bash
./db/dump.sh
```

3. Restore do Banco

O script restore.sh cria o banco novamente e restaura os dados do arquivo gerado no passo anterior.

>Atenção: o script cria um novo banco chamado db. Certifique-se de que ele não existe antes de rodar, ou remova-o manualmente.

```bash
./db/restore.sh
```

4. Verificação de Serviços

O script check_services.sh monitora os processos jboss e tomcat via pgrep e ps.

```bash
./services/check_services.sh
```

