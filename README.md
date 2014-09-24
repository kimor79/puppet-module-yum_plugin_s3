Install yum-s3-iam
==================

#### Table of Contents

1. [Overview](#overview)
1. [Setup - The basics of getting started with yum_plugin_s3](#setup)
    * [What yum_plugin_s3 affects](#what-yum_plugin_s3-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with yum_plugin_s3](#beginning-with-yum_plugin_s3)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Overview

This module installs the [yum-s3-iam](https://github.com/seporaitis/yum-s3-iam) plugin with the [explicit AWS credentials patch](https://github.com/seporaitis/yum-s3-iam/pull/23).

## Setup

### What yum_plugin_s3 affects

* /usr/lib/yum-plugins/s3.py
* /etc/yum/pluginconf.d/s3.conf - With s3 enabled

## Usage

```
class { '::yum_plugin_s3': }
```

### Configuration

  * conf_dir: The directory where plugin configs are kept. Default is `/etc/yum/pluginconf.d`.
  * plugin_dir: The directory where plugin scripts are kept. Default is `/usr/lib/yum-plugins`.
  * plugin_enabled: Set to `false` to disable the plugin. Default is `true`.

## Limitations

Primarily meant for RedHat family of OSes.

## Development

Patches welcome.
