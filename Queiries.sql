-- Examples of SQL functions
SELECT ASCII('A');           -- Returns ASCII value
SELECT BIN(5);               -- Binary representation
SELECT BIT_LENGTH('abc');    -- Bit length
SELECT CHAR(65);             -- Character from ASCII
SELECT CHAR_LENGTH('hello'); -- Character count
SELECT CONCAT('a', 'b');     -- Concatenate strings
SELECT CONCAT_WS('-', 'a', 'b'); -- Concatenate with separator
SELECT ELT(2, 'a', 'b', 'c');-- Returns 2nd element
SELECT EXPORT_SET(5, 'Y', 'N', ',', 4); -- Bit set representation
SELECT FIELD('b', 'a', 'b', 'c'); -- Position of value
SELECT FIND_IN_SET('b', 'a,b,c'); -- Position in comma list
SELECT FORMAT(1234.5678, 2); -- Format number
SELECT FROM_BASE64('aGVsbG8='); -- Decode Base64
SELECT HEX('abc');           -- Hex representation
SELECT INSTR('hello', 'e');  -- Position of substring
SELECT LEFT('hello', 2);     -- Left substring
SELECT LENGTH('hello');      -- Byte length
SELECT 'pattern' LIKE 'patt%'; -- Pattern matching using LIKE
SELECT LOAD_FILE('/path/to/file'); -- Loads file content as string (requires secure file access)
SELECT LOCATE('sub', 'string'); -- Finds position of substring
SELECT LOWER('TEXT'); -- Converts text to lowercase
SELECT LPAD('text', 10, '*'); -- Pads text on the left to length 10
SELECT LTRIM('   text'); -- Removes leading spaces
SELECT MAKE_SET(1, 'a', 'b', 'c'); -- Returns set based on bits
SELECT MATCH(column) AGAINST('keyword'); -- Full-text search (requires full-text index)
SELECT OCT(8); -- Converts number to octal
SELECT ORD('A'); -- Returns ASCII value of first character
SELECT REPEAT('Hi', 3); -- Repeats string 3 times
SELECT REPLACE('abc', 'b', 'x'); -- Replaces substring
SELECT REVERSE('abc'); -- Reverses string
SELECT RIGHT('abcdef', 3); -- Returns last 3 characters
SELECT RPAD('text', 10, '*'); -- Pads text on the right to length 10
SELECT SPACE(5); -- Returns string of 5 spaces
SELECT SUBSTRING('abcdef', 2, 3); -- Extracts substring from position 2, length 3
SELECT MID('abcdef', 2, 3); -- Same as SUBSTRING
SELECT UPPER('text'); -- Converts text to uppercase
SELECT UCASE('text'); -- Same as UPPER
SELECT WEIGHT_STRING('abc'); -- Returns string weight for sorting (collation-based)