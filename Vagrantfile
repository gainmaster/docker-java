# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.require_version ">= 1.6.0"

ENV['VAGRANT_DEFAULT_PROVIDER'] = 'docker'

Vagrant.configure("2") do |config|

  config.vm.define "docker-jdk7-openjdk", autostart: false do |v|
    v.vm.provider "docker" do |d|
      # Docker image properties
      d.build_dir       = "./jdk7-openjdk"
      d.remains_running = false

      # Docker run configuration
      d.cmd     = ["/usr/bin/bash"] 
      d.volumes = ["/home/core/share/docker-java:/opt/shared:rw"]

      # Vagrant host configuration
      d.force_host_vm       = true
      d.vagrant_vagrantfile = "../coreos-vagrant/Vagrantfile"
      d.vagrant_machine     = "coreos-01"
    end
  end

  config.vm.define "docker-jre7-openjdk", autostart: false do |v|
    v.vm.provider "docker" do |d|
      # Docker image properties
      d.build_dir       = "./jre7-openjdk"
      d.remains_running = false

      # Docker run configuration
      d.cmd     = ["/usr/bin/bash"] 
      d.volumes = ["/home/core/share/docker-java:/opt/shared:rw"]

      # Vagrant host configuration
      d.force_host_vm       = true
      d.vagrant_vagrantfile = "../coreos-vagrant/Vagrantfile"
      d.vagrant_machine     = "coreos-01"
    end
  end

  config.vm.define "docker-jdk8-openjdk", autostart: false do |v|
    v.vm.provider "docker" do |d|
      # Docker image properties
      d.build_dir       = "./jdk8-openjdk"
      d.remains_running = false

      # Docker run configuration
      d.cmd     = ["/usr/bin/bash"] 
      d.volumes = ["/home/core/share/docker-java:/opt/shared:rw"]

      # Vagrant host configuration
      d.force_host_vm       = true
      d.vagrant_vagrantfile = "../coreos-vagrant/Vagrantfile"
      d.vagrant_machine     = "coreos-01"
    end
  end

  config.vm.define "docker-jre8-openjdk" do |v|
    v.vm.provider "docker" do |d|
      # Docker image properties
      d.build_dir       = "./jre8-openjdk"
      d.remains_running = false

      # Docker run configuration
      d.cmd     = ["/usr/bin/bash"] 
      d.volumes = ["/home/core/share/docker-java:/opt/shared:rw"]

      # Vagrant host configuration
      d.force_host_vm       = true
      d.vagrant_vagrantfile = "../coreos-vagrant/Vagrantfile"
      d.vagrant_machine     = "coreos-01"
    end
  end
end