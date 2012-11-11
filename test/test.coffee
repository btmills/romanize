romanize = require '../lib/romanize'
assert = require 'assert'

describe 'Romanize', ->
	it 'should only allow numbers between 1 and 3999, inclusive', ->
		assert.equal romanize.Romanize(),''
		assert.equal romanize.Romanize("abc"), ''
		assert.equal romanize.Romanize(-1), ''
		assert.equal romanize.Romanize(.9), ''
		assert.equal romanize.Romanize(3999.1), ''

	it 'should use single numerals where possible', ->
		assert.equal romanize.Romanize(1), 'I'
		assert.equal romanize.Romanize(5), 'V'
		assert.equal romanize.Romanize(10), 'X'
		assert.equal romanize.Romanize(50), 'L'
		assert.equal romanize.Romanize(100), 'C'
		assert.equal romanize.Romanize(500), 'D'
		assert.equal romanize.Romanize(1000), 'M'

	it 'should never use more than three consecutive same numerals', ->
		assert.equal romanize.Romanize(4), 'IV'
		assert.equal romanize.Romanize(9), 'IX'
		assert.equal romanize.Romanize(40), 'XL'
		assert.equal romanize.Romanize(90), 'XC'
		assert.equal romanize.Romanize(400), 'CD'
		assert.equal romanize.Romanize(900), 'CM'

	it 'should not subtract more than one numeral at a time', ->
		assert.equal romanize.Romanize(3), 'III'
		assert.equal romanize.Romanize(8), 'VIII'
		assert.equal romanize.Romanize(14), 'XIV'
		assert.equal romanize.Romanize(39), 'XXXIX'
		assert.equal romanize.Romanize(44), 'XLIV'

describe 'Deromanize', ->
	it 'should only accept valid strings', ->
		assert.equal romanize.Deromanize(42), 0
		assert.notEqual romanize.Deromanize('I'), 0
		assert.equal romanize.Deromanize('IIII'), 0
		assert.equal romanize.Deromanize('IL'), 0
		assert.equal romanize.Deromanize('IVI'), 0

	it 'should subtract lesser numerals from larger numerals', ->
		assert.equal romanize.Deromanize('IV'), 4
		assert.equal romanize.Deromanize('IX'), 9
		assert.equal romanize.Deromanize('XL'), 40
		assert.equal romanize.Deromanize('XC'), 90
		assert.equal romanize.Deromanize('CD'), 400
		assert.equal romanize.Deromanize('CM'), 900

	it 'should have correct values for each unit', ->
		assert.equal romanize.Deromanize('M'), 1000
		assert.equal romanize.Deromanize('D'), 500
		assert.equal romanize.Deromanize('C'), 100
		assert.equal romanize.Deromanize('L'), 50
		assert.equal romanize.Deromanize('X'), 10
		assert.equal romanize.Deromanize('V'), 5
		assert.equal romanize.Deromanize('I'), 1