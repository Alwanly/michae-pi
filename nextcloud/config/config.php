<?php
$CONFIG = array (
  'trusted_proxies' =>
  array (
    0 => '127.0.0.1',
    1 => '::1',
    2 => '192.168.117.3',  // Add the IP address of your NGINX container
  ),
  'overwritehost' => 'localhost',
  'overwriteprotocol' => 'http',
  'overwritewebroot' => '/nextcloud',
  'overwrite.cli.url' => 'http://localhost/nextcloud',
  'htaccess.RewriteBase' => '/nextcloud',
  'memcache.local' => '\\OC\\Memcache\\APCu',
  'apps_paths' =>
  array (
    0 =>
    array (
      'path' => '/var/www/html/apps',
      'url' => '/apps',
      'writable' => false,
    ),
    1 =>
    array (
      'path' => '/var/www/html/custom_apps',
      'url' => '/custom_apps',
      'writable' => true,
    ),
  ),
  'upgrade.disable-web' => true,
  'instanceid' => 'ockn1elq9gmq',
);
