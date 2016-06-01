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
* Orginization
	* has_many :departments
	- Origination name

* Department
	* belongs_to :organization
	* Has many Users
	- Department name

* User
	* has_many :timecards
	* belongs_to :department
	- Name
	- password
	- Approver(?)

* Timecard
	* belongs_to :user
	- Period start
	- Period end
	- Status
	- Project
	- Project Type
	- hours per day, individually
	- Total hours
	- Date submitted
	- Approved by

* InviteUser
	* belongs_to :user
	- Invite token
	- Temp password

## Controllers

## Views