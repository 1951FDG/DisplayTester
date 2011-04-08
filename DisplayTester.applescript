-- DisplayTester.applescript
-- DisplayTester

--  Created by administrator on 24-03-11.
--  Copyright 2011 __MyCompanyName__. All rights reserved.

on awake from nib theObject
	set level of window 1 to item 3 of {0, 3, 8}
	set background color of window 1 to {0, 0, 0}
	tell application "Finder"
		get bounds of window of desktop
	end tell
	set bounds of window 1 to result
end awake from nib

on activated theObject
	set visible of window 1 to true
end activated

on choose menu item theObject
	set background color of window 1 to choose color
end choose menu item

on update menu item theObject
	return true
end update menu item
