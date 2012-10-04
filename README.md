# Puppet module for simplest mail transport agent: sSMTP

Manage sSMTP instance: install & setup. See http://packages.debian.org/stable/mail/ssmtp for details.

## Usage

### Simplest case

When you have server, where all things are setted up by ISP or admin.

```ruby

    class {"ssmtp":
      mailhub     => "mail.yourcoolserver.com"
    }

```

### Non-standard SMTP port

```ruby

    class {"ssmtp":
      mailhub     => "mail.yourcoolserver.com:2525"
    }

```
