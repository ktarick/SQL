print 'Before IF Statement'
if 1 != 1 and 2 != 2 or 3 > 2
	BEGIN
		print 'True, 1 equals 1';
		print 'This line is part of the True-statement-block.';
	END
else
	BEGIN
		print 'False Statement';
		print 'This line is part of the False-statement-block.';
	END
print 'After IF Statement'