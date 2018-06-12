# tasks directory

The tasks directory is structured into 3 mains sections

 1. /bootstrap/*
 2. /main.yml , /install/main.yml and /install/*
 3. /opt/*

## /bootstrap

**It's unlikely that you will need to make changes in this folder.**
This is a collection of tasks files that facilitate bootstrapping a minimal set of packages necessary to run useful ansible modules on a set of popular distributions. In general these [lime pepper](http://limepepper.co.uk) ansible roles are designed to work with each other and assume that things like EPEL, and the python packages required for ansible mysql, selinux, firewalld, etc are required. Therefore running these roles might pull in some packages that are not strictly necessary. However if you are looking for an absolute bare minimal installation, then roles from this collection are probably not suitable for your purpose.


## /main.yml , /install/main.yml

These tasks file represent the entry point to the role. In general including or importing the role something like this;

    - name: configure this role
      import_role:
        name: limepepper.rolename

 1. Will call /main.yml which in turn will boot strap the node using /bootstrap/main.yml
 2. will look for a distro specific vars file
 3. will call /install/main.yml
 4. which in turn will look for a distro specific installer file, or fall back to /install/Linux.yml

So for example, a file /install/CentOS-7.yml will be used if the target OS is CentOS 7


## /opt/*

These files represent optional components for a package. An example would be for something like collectd or zabbix where it makes sense to have a choice to install either the server or client components.

These features follow a similar pattern to /install, in that if you wish to do distro specific tasks for install a feature, then you can provide something like this;

    tasks/opt/agent/main.yml
    tasks/opt/agent/Linux.yml
    tasks/opt/agent/Fedora.yml

And this can be used like so;

    - name: configure Zabbix
      import_role:
        name: limepepper.zabbix
      vars:
        zabbix_features:
          - selinux
          - agent

And then the role will use the `Fedora.yml` tasks file to install the optional component if the underlying OS is fedora.



