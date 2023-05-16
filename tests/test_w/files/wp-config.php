<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'sben-chi' );

/** Database password */
define( 'DB_PASSWORD', ' ' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'v7) JZ!J%^{usPyt(kXacxRz:;CSB;<SAw:$rto^}{>t)!_GT4c9R;gM+H7321iN');
define('SECURE_AUTH_KEY',  '*~S#[jE<`65<b;D-X[2PI>L|G}F_ Yq+d-EOLJ76tVMEhUcU+l)BcOmbj$%Slc3O');
define('LOGGED_IN_KEY',    'ICgR;N2[yWwm3cUH5T[m a%+Q3W;2-,RRjQ  )F*tmn6U+j D!dY0R|2{+pL<.FH');
define('NONCE_KEY',        'W[8EW8Qb&cdt,?~%-w)^BpvByLwuA~qx~;v!Cp#IX||!bil:r$(5M.r^x&~HjIXp');
define('AUTH_SALT',        '6UoP{^@~qMWHqV`w+oKEij3#:cZNM{loe SUUU*>b(5PuS>qYP1{2q7Pf89VsWU/');
define('SECURE_AUTH_SALT', 'oZ@Vc3h|6WS{|mFEFYeb~eNyy]/kCYnTzw[P:(gQ*TE+IAq.bMI:?.FuZ.C-gZ,p');
define('LOGGED_IN_SALT',   'Sx{v:3UX]~9z J!tKVVd|.jA0WX,Xo2 ^/Kgey,ScS?2h;5gk?}8g6|gPz{wJl2f');
define('NONCE_SALT',       'lJ6*V&LeWr$T>oo|&ak)O3dM<l6tt$He+PvdG|O/XV&zn^gJy30-H+9:|bB>LtpU');

/**#@-*/

/**
 * WordPress database table prefix.
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
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';