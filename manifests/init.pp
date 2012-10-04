class ssmtp (
  $mailhub
) {

  package {"Installing sSMTP package":
    name    => "ssmtp",
    ensure  => "present"
  }

  file {
    "Main sSMTP config":
      require => Package["Installing sSMTP package"],
      ensure  => "present",
      path    => "/etc/ssmtp/ssmtp.conf",
      content => template("ssmtp/ssmtp.conf.erb")
  }

}