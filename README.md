# Puppet module for simplest mail transport agent: sSMTP

Manage sSMTP instance: install & setup. See http://packages.debian.org/stable/mail/ssmtp for details.

## Usage

### Simplest case

When you have server, where all things are setted up by ISP or admin.

```ruby

    class {"ssmtp":
      mailhub     => "mail.yourcoolserver.com"    # For non-standard port use ":"
                                                  # For example "smtp.nonstandard.com:2525"

      root        => "your@email.com"             # It's not required, but good to have here your real email
                                                  # Then all system messages will go there
    }

```

### Use your gmail account as SMTP

```ruby

    class {"ssmtp":
      mailhub     => "smtp.gmail.com:587",
      authUser    => "your.login@gmail.com",
      authPass    => "yourpassword",
      useTLS      => true,
      useSTARTTLS => true,
      root        => "your@email.com"
    }

```
