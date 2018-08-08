class dovecot::pop3 (
  $mail_plugins     = '$mail_plugins',
  $pop3_uidl_format = undef
) {
  include dovecot

  dovecot::config::dovecotcfmulti { 'pop3':
    config_file => 'conf.d/20-pop3.conf',
    changes     => [
      "set protocol[ . = \"pop3\"]/mail_plugins \"${mail_plugins} zlib\"",
      "set pop3_uidl_format ${pop3_uidl_format}"
      ],
  }
}
