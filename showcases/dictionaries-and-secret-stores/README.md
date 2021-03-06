# Dictionaries and Secret Stores

## Introduction

This blueprint showcases the use of dictionaries and external secret stores to house your sensitive passwords.

It has several different possible outcomes, depending on the answers you give. The basics are:

1. A dictionary for passwords,
2. **or** a secret store for passwords. Two products are supported:
   1. [CyberArk Conjur](https://www.conjur.org/)
   2. [HashiCorp Vault](https://www.vaultproject.io/)
3. You can choose whether to use your existing secret store or generate Docker files to spin one up locally.
4. Lastly, you can choose whether to connect to your existing instances of XL Deploy and XL Release or generate Docker files to spin them up locally.

In the interests of security, the blueprint will not prompt you for the following values. You will need to capture them manually or make sure they exist in your external secret store:

* `azure.clientsecret`
* `azure.ospassword`
* `azure.resourcegroup`

There will be instructions on where and when to fill in these values in the generated `USAGE` files.

## Before you get started

If you're new to XebiaLabs blueprints, check out:

* [Get started with DevOps as Code](https://docs.xebialabs.com/xl-release/concept/get-started-with-devops-as-code.html)
* [Get started with blueprints](https://docs.xebialabs.com/xl-release/concept/get-started-with-blueprints.html)

## Prerequisites

* XebiaLabs Release Orchestration and Deployment Automation up and running
* Azure credentials that allow creating the infrastructure
* CyberArk Conjur or HashiCorp Vault up and running
* Docker (Linux) or Docker Desktop (Mac, Windows)

## Usage

To use this blueprint, run `xl blueprint` in an empty directory and select:

```plain
showcases/dictionaries-and-secret-stores
```

## Tools and technologies

This blueprint includes the following tools and technologies:

* Azure
* Terraform
* HashiCorp Vault
* CyberArk Conjur
* XL Deploy
* XL Release

## Minimum required versions

This blueprint version requires at least the following versions of the specified tools to work properly:

* XL Deploy: Version 9.5.0
* XL Release: Version 9.5.0
* XL CLI: Version 9.5.0

## Information required

* Client ID
* Client Secret
* Subscription ID
* Tenant ID

## Output

* Release templates
* Docker files to run XL Deploy and XL Release (optional)
* Docker files to run a secret store (optional)
* CIs to create a VM in Azure

## Labels

* Azure
* Terraform
* HashiCorp Vault
* CyberArk Conjur

