class ssmtp (
  $mailhub,

  # Auth with login/password
  $authUser     = undef,
  $authPass     = undef,
  $authMethod   = 'login',    # login, cram-md5
  $useOldAUTH   = false,
  $useTLS       = false,
  $useSTARTTLS  = false,
  $useTLSCert   = false,
  $TLSCert      = '/dev/null' # <path to your cert>
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