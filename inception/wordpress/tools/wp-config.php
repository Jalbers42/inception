<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'example' );

/** MySQL database username */
define( 'DB_USER', 'example' );

/** MySQL database password */
define( 'DB_PASSWORD', 'example' );

/** MySQL hostname */
define( 'DB_HOST', 'mariadb' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

define( 'WP_ALLOW_REPAIR', true );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'RTDaEqt~|3;@__bKWKBrMWTNvQIX$9e|dYx*H5|xMAE)KRGh&%j)rpSb$-jxGVTe');
define('SECURE_AUTH_KEY',  'fguPn^7 r;2|K7i_nxOAy<])66lM0i<?PqY0U<^3}?(pDf#37mqI;0Pwllpjp/$B');
define('LOGGED_IN_KEY',    'Yn#ka|?;k[H<]4i7]Jz 0|^V(L|f{w?9^i4Bf)HMx{o)/g<I1#T!&wgkLV4!ts?M');
define('NONCE_KEY',        'l9And044}`hQPYx}b;|iB zwn.>KwHo#,:yzoA<szBDk~=]nhq#+a|#KYVUH,uA[');
define('AUTH_SALT',        'C65j$Qj|t_W55n=o8L1&eZshqfyNFsp|>V[*K-8OpH<GX*:z+z~F!dX;S*74s,Nl');
define('SECURE_AUTH_SALT', ')Wf&ZR.tbCyT#!!$ afH,}@4a8X`n.aV|>*>Mn[YhN2sl>0V|_BW)=JoRi^vK9z|');
define('LOGGED_IN_SALT',   'w$HN=/MeaxH=6?bc*3FgpK;?_wzBZ:nec}PT^6sVDTt;v><:Z:9)|IgOaPjz;{p0');
define('NONCE_SALT',       '9-v_^AT][&-Bjr{adH.9,(:+x(p>8^&q:E{<.pd~-v1N{.&fqG~9TdlO+o[R%Urw');

define( 'WP_REDIS_HOST', 'redis' );
define( 'WP_REDIS_PORT', 6379 );     


define('WP_CACHE', true);

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', true );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
?>
