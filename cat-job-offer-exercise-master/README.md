# Ingram Micro Job Offer Exercise

The aim of this exercise is to see how easy you adapt to new tools, and at the same time give you an impression of the cool things we do at Ingram Micro.

The exercise is split up in two parts: 
  - Minimum setup
  - "Show us what you got" setup

The minimum setup is what we expect you should be able to do after having read, learned and tinkered with the different tools.
The "show us what you got" setup is optional and is something you can complete if you want to show off your skills and impress us.


## Part 1: Minimum setup

We want you to create a Chef cookbook that is able to bring up a Prestashop Docker container on a Ubuntu 18.04 server. 

To be able to do this we want you to leverage the following cookbook:

  - Docker : https://github.com/chef-cookbooks/docker

 To complete this part, you will have to:

  - setup a correct environment for the development of chef cookbooks
  - create your chef cookbook

To help you get started, consider the following workflow in your cookbook:

1. Install Docker in the machine with Chef-Docker cookbook resources mentioned earlier
2. Download the Prestashop container using Chef-Docker resources
3. Run the Prestashop container using Chef-Docker resources

Please bear in mind that 50% of the exercise is to set up correctly the environment. It is recommended that you do it in Linux as it will simplify quite a lot the process. Instead of giving you the process of how to install this environment, we will give you references to the tools involved and you are in charge of learning how to use them for the task. The reason is pretty simple: we want you to interact with the system and learn a little bit of system administration. So please install the following in this order.

  - Git: [Github](https://desktop.github.com/)
  - Chef Toolkit: [ChefDK](https://downloads.chef.io/chefdk)
  - Virtual Machine Software: [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
  - VM automation Software: [Vagrant](https://www.vagrantup.com/downloads.html)

**[Clone](https://help.github.com/en/articles/cloning-a-repository) this repository and do all your work on it. Please commit periodically so we can follow you progress.**

There is extensive information on these tools out there and how to use them. A big part of this exercise is to do that.

Tip: Use Kitchen (comes bundled with ChefDK) to execute your cookbook in a contained environment:

1. **kitchen create** to create an ubuntu 18.04 virtual machine
2. **kitchen converge** to run your chef cookbook in the virtual machine
3. **kitchen destroy** to remove ubuntu 18.04 virtual machine

## (optional) Part 2: "Show us what you got" setup

When writing many cookbooks, tests become a crucial part as they will allow you to detect problems in your cookbook early on and save time.

This part of the exercise consists in writing the following smoke tests for your cookbook:

  - check whether Docker daemon is running
  - check whether Prestashop container is running
  - check whether Prestashop is listening on port 80

To do this, you will need to rely on a framework specifically created to build integration tests: InSpec + Kitchen.
Rely on the information you can find in below references.


## Reference Documentation
1. [Chef Resources](https://docs.chef.io/resource_reference.html]) contains information of the Chef DSL
2. [Kitchen CI](https://kitchen.ci/docs/getting-started) contains documentation of how to use kitchen and program a simple cookbook
3. [Docker Resources](https://github.com/chef-cookbooks/docker) contains information of Docker Chef DSL
4. [Attached slides](https://raw.githubusercontent.com/ingrammicro/cat-job-offer-exercise/master/chef-tutorial.pdf) in the current repository
5. [Inspec](https://www.inspec.io/) contains information on how to write smoke tests

