# Private install class
class yum_plugin_s3::install (
  $plugin_dir = $yum_plugin_s3::plugin_dir,
) inherits yum_plugin_s3 {

  if ! defined(File[$plugin_dir]) {
    file { $plugin_dir:
      ensure => directory,
    }
  }

  file { "${plugin_dir}/s3.py":
    ensure => file,
    group  => root,
    owner  => root,
    source => 'puppet:///modules/yum_plugin_s3/s3.py',
  }
}
