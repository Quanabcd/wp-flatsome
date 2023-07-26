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
define( 'DB_NAME', 'tamcocgarden' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

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
define( 'AUTH_KEY',         '#nB!M=g;`w]7UvpBLmgY>g?7s_I`Cj+ [(Kt;O[h`tJ$h-i^4e;=ssA$!zEF%X2G' );
define( 'SECURE_AUTH_KEY',  'XXg4s8,<X#Af_~pfm>}xWs!N&PfoS)V5ql[/UfS|1@_~VJoeH=D5^%iUE;=G6<KL' );
define( 'LOGGED_IN_KEY',    'u_KVHv5:4h6kjX-}f:>X?Vq&S(B;BG_y)0uB*8N&B)ckply7v)1AM1sV7$4j)uAT' );
define( 'NONCE_KEY',        '^nG?Usuw#pMjN1C#r|Uj?ytGW.iJ{b@p37nE?_ l+w[bRmv7fh2zF]L5e,ssFaq^' );
define( 'AUTH_SALT',        '|cSqM>%7}W;.]JS~]:KI;wkAFkt|KQu#DR3)~hcKByB~{m[zL?1GRW!M7A(8PW6S' );
define( 'SECURE_AUTH_SALT', 'JOVx}N)<1v,K0Zh_,28|pWfn&thyA)@CHReOZ+#`ziy&Ghm;yba)`z6Gg@OI:I*d' );
define( 'LOGGED_IN_SALT',   ';</`<`AL;3x9 bie-b1Dgk>{v@]F~c.I`l_ HX%zr5V.dccul(,9dtk?`5b>v:7*' );
define( 'NONCE_SALT',       'SE`45,b3SjmdLn.gC|m718k2u<.])XXDL%a0@OHQG))xwG)h&]QIc*$${DZ]r51N' );

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
