#!/bin/bash

# $1 = Name
# $2 = Url
# $3 = Number of test cases
# $4 = Pascal case name

echo 'Creating new kata'

echo 'name: '$1''
echo 'url: '$2''
echo 'number of test cases: '$3''
echo 'pascal case name: '$4''

# Create new kata

mkdir ./kata/$4/

echo '// '$1'' >> ./kata/$4/$4.js
echo '// '$2'' >> ./kata/$4/$4.js
echo '' >> ./kata/$4/$4.js
echo '' >> ./kata/$4/$4.js
echo '' >> ./kata/$4/$4.js
echo 'module.exports = ' >> ./kata/$4/$4.js

# Create new kata test

mkdir ./kata/$4/__tests__/

echo "const  = require('../$4.js')" >> ./kata/$4/__tests__/$4.test.js
echo '' >> ./kata/$4/__tests__/$4.test.js
echo 'describe("'$4'", () => {' >> ./kata/$4/__tests__/$4.test.js
echo '	it.each([' >> ./kata/$4/__tests__/$4.test.js

for (( i=1; i <= $3; i++ ))
do  
	echo '		{ input: [], output:  },' >> ./kata/$4/__tests__/$4.test.js
done

echo '	])(' >> ./kata/$4/__tests__/$4.test.js
echo "		'should return \$output for \$input'," >> ./kata/$4/__tests__/$4.test.js
echo '		({ input, output }) => {' >> ./kata/$4/__tests__/$4.test.js
echo '			expect((...input)).toBe(output)' >> ./kata/$4/__tests__/$4.test.js
echo '		}' >> ./kata/$4/__tests__/$4.test.js
echo '	)' >> ./kata/$4/__tests__/$4.test.js
echo '})' >> ./kata/$4/__tests__/$4.test.js
