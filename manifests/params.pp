# Private class
class yum_plugins_s3::params (
  $conf_dir       = '/etc/yum/pluginconf.d',
  $plugin_dir     = '/usr/lib/yum-plugins',
  $plugin_enabled = true,
) {

  validate_string($conf_dir)
  validate_string($plugin_dir)
  validate_bool($plugin_enabled)
}
