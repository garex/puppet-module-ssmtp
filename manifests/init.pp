class ssmtp (
  $mailhub,

  $root         = undef,

  $rewriteDomain= undef,
  # Auth part
  $authUser     = undef,
  $authPass     = undef,
  $authMethod   = 'login',    # login, cram-md5
  $useOldAUTH   = false,
  $useTLS       = false,
  $useSTARTTLS  = false,
  $useTLSCert   = false,
  $tlsCert      = '/dev/null' # <path to your cert>
) {

  package {"Installing sSMTP package":
    name      => "ssmtp",
    ensure    => "present"
  }

  file {
    "Main sSMTP config":
      require => Package["Installing sSMTP package"],
      ensure  => "present",
      path    => "/etc/ssmtp/ssmtp.conf",
      content => template("ssmtp/ssmtp.conf.erb")
  }

}
