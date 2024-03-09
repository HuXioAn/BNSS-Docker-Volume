<?php
$CONFIG = array (
  'htaccess.RewriteBase' => '/',
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
  'instanceid' => 'ocav5cnpakim',
  'passwordsalt' => 'y8yY4aXx3IvblOV1JQMoMrHGjWLqAY',
  'secret' => 'NOqnK3ZNmOh93Vgf4zkfpPqex/iiQFsyrqzHkv0p8ONGv1RJ',
  'trusted_domains' => 
  array (
    0 => 'nextcloud.acmeg8.com',
  ),
  'overwriteprotocol' => 'https',
'overwritehost' => 'nextcloud.acmeg8.com',
  'datadirectory' => '/var/www/html/data',
  'dbtype' => 'sqlite3',
  'version' => '28.0.3.2',
  'overwrite.cli.url' => 'http://172.17.0.5',
  'installed' => true,
);
