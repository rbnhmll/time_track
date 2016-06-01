# time_track
A time tracking app for small business

## Functionality
* OTL by Oracle sucks, and I think I can do one better.
* User can manually mark down how many hours they have worked per day.
* Total weekly hours are tabulated, and saved.
* Hours can be sent off to manager to be approved
	- An email is send on submit.
	- Email links back to the timecard in aprover view, and can be approved.
		- Timecard can be denied, with message on how to fix. Unlocks timecard.
	- Once approved it is no longer editable
	- Once approved, user receives an email.
* Can decide when the work week starts, based on pay period

## Models
* User
	- Name
	- password

* Timecard
	- Start day
	- Date range

## Controllers

## Views