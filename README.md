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

(The MIT License)

Copyright (c) 2012 Brandon Mills

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.