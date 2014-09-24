# == Class: yum_plugin_s3
#
# This manages the yum-s3-iam plugin
#
# === Parameters
#
# [*conf_dir*]
#   The location of the yum plugin config. Default is /etc/yum/pluginconf.d.
#
# [*plugin_dir*]
#   The location of the yum plugin scripts. Default is /usr/lib/yum-plugins.
#
# [*plugin_enabled*]
#   Set to false to disable the yum-s3-iam plugin. Default is true.
#
# === Examples
#
#  class { yum_plugin_s3: }
#
# === Authors
#
# Kimo Rosenbaum <kimor79@yahoo.com>
#
# === Copyright
#
# Copyright 2014 Kimo Rosenbaum and contributors
#
class yum_plugin_s3 (
  $conf_dir       = $yum_plugin_s3::params::conf_dir,
  $plugin_dir     = $yum_plugin_s3::params::plugin_dir,
  $plugin_enabled = $yum_plugin_s3::params::plugin_enabled,
) inherits yum_plugin_s3::params {

  include yum_plugin_s3::install
  include yum_plugin_s3::config
}
