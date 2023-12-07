# Projeto - Infraestrutura na Azure com Terraform

Este repositório contém o código Terraform usado para provisionar a infraestrutura na Azure para o projeto. Este projeto tem como objetivo  implementar uma infraestrutura na Microsoft Azure utilizando o Terraform. O foco principal é provisionar e orquestrar recursos-chave para suportar a aplicação, incluindo um cluster Kubernetes para a orquestração de contêineres, um gateway NAT para gerenciar a comunicação com redes externas, e uma Virtual Network para isolar os recursos e proporcionar uma arquitetura segura e escalável.

Este projeto visa facilitar a implantação, dimensionamento e manutenção da infraestrutura necessária para a aplicação na nuvem da Azure, seguindo as melhores práticas de infraestrutura como código (IaC) com o Terraform. O uso do Terraform permite uma abordagem declarativa, proporcionando consistência e controle na gestão da infraestrutura ao longo do tempo.

Através deste projeto, buscamos otimizar a operacionalidade da aplicação, promover a flexibilidade na configuração da infraestrutura e garantir uma base sólida para futuras expansões e melhorias. A automação proporcionada pelo Terraform simplifica o ciclo de vida da infraestrutura, permitindo uma resposta ágil às necessidades do negócio e reduzindo possíveis fontes de erro manual..

## Visão Geral

O projeto utiliza o Terraform para provisionar os seguintes recursos na Azure:
- **Azure Kubernetes Service (AKS):** Cluster Kubernetes para orquestração de contêineres.
- **Gateway NAT:** Para centralizar a saída de tráfego.
- **Virtual Network (VNet):** Rede virtual para isolar os recursos.
