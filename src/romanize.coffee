((exports) ->

	exports.Deromanize = (x) ->
		re = /^M{0,3}(CM|CD|D?C{0,3})(XC|XL|L?X{0,3})(IX|IV|V?I{0,3})$/
		return 0 unless (typeof x is 'string' and re.test x)

		numerals = {
			'M':1000,'D':500,'C':100,'L':50,'X':10,'V':5,'I':1
		}

		chars = x.split('').reverse()
		max = total = 0
		for ch in chars
			total += if numerals[ch] >= max then numerals[ch] else -numerals[ch]
			max = Math.max max, numerals[ch]
		total

	exports.Romanize = (x) ->
		return '' unless (+x and 0 <= x <= 3999)

		numerals = {
			'M':1000,'CM':900,'D':500,'CD':400,'C':100,'XC':90,'L':50,'XL':40,
			'X':10,'IX':9,'V':5,'IV':4,'I':1
		}

		result = ''
		while x >= 1
			for key of numerals
				continue if numerals[key] > x
				x -= numerals[key]
				result += key
				break
		result

)(if typeof exports is 'undefined' then this['romanize'] = {} else exports)