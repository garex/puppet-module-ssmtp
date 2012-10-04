class ssmtp {

  package {"Installing sSMTP package":
    name    => "ssmtp",
    ensure  => "present"
  }

}