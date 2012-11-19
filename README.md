# Romanize

Converts numbers to and from Roman numerals.

Uses rules as defined in the [relevant Wikipedia article](http://en.wikipedia.org/wiki/Roman_numerals#Reading_Roman_numerals).

## Usage

### Node.js

```JavaScript
var romanize = require('romanize');
romanize.Romanize(42); // Returns 'XLII'
romanize.Deromanize('XLII'); // Returns 42
```

### Browser

Include romanize.js in your HTML:

```HTML
<script src="romanize.js"></script>
```

Then in a script:

```JavaScript
romanize.Romanize(42); // Returns 'XLII'
romanize.Deromanize('XLII'); // Returns 42
```
	
## Developing

Build with `cake build`.

To test, run `cake test`.

## License

Use this however you like.