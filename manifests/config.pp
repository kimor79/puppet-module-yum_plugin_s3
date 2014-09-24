# Private config class
class yum_plugin_s3::config (
  $conf_dir       = $yum_plugin_s3::conf_dir,
  $plugin_enabled = $yum_plugin_s3::plugin_enabled,
) inherits yum_plugin_s3 {

  if ! defined(File[$conf_dir]) {
    file { $conf_dir:
      ensure => directory,
    }
  }

  file { "${conf_dir}/s3.conf":
    ensure  => file,
    content => template('yum_plugin_s3/s3.conf.rb'),
  }
}
