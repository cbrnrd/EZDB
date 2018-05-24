![ezdb-logo](https://i.imgur.com/v1VghNcl.png)
# ezdb
[![Donations Badge](https://yourdonation.rocks/images/badge.svg)](http://carterbrainerd.me/donations/)
[![Build Status](https://travis-ci.org/cbrnrd/ezdb.svg?branch=master)](https://travis-ci.org/cbrnrd/ezdb)

Welcome to ezdb! ezdb is a small and simple in-memory NoSQL database. This repo is the original project. More languages are going to come in the future.

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  ezdb:
    github: cbrnrd/ezdb
```

or clone the repo and run the install script:

```
git clone https://github.com/cbrnrd/ezdb
cd ezdb
./install.sh
```

## Usage

```crystal
require "ezdb"
```

## Starting the daemon

After running the install script, run: `service ezdb start` or `systemctl start ezdb`

#### Adding service to startup
Run: `systemctl enable ezdb`

## Contributing

1. Fork it ( https://github.com/cbrnrd/ezdb/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [cbrnrd](https://github.com/cbrnrd) cbrnrd - creator, maintainer
