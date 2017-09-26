# hubot-source

[![Greenkeeper badge](https://badges.greenkeeper.io/strugee/hubot-source.svg)](https://greenkeeper.io/)

"hubot: where's the source?"

See [`src/source.coffee`](src/source.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-source --save`

Then add **hubot-source** to your `external-scripts.json`:

```json
[
  "hubot-source"
]
```

## Configuration

hubot-source expects one environment variable, `HUBOT_SOURCE_URL`. This is the URL that will be sent back when a user requests the source code.

## Sample Interaction

```
user1>> hubot where's the source?
hubot>> http://example.com/
```

## License

LGPL 3.0+

## Author

AJ Jordan <alex@strugee.net>

Originally extracted from the [pump.io](http://pump.io) project's [pumabot](https://github.com/pump-io/pumabot).
