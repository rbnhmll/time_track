# time_track
A time tracking app for small business

## Functionality
* Oracle Time sucks, and I think I can do one better.
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
* Organization
	* has_many :users
	- Name
	- Address
	- website

* User
	* has_one :profile
	* has_many :timecards
	* belongs_to :department
	* belongs_to :organization
	- password (to be set randomly if by approver)

* Profile
	* belongs_to :user
	- first_name
	- last_name
	- department
	- Approver(?)
	- Employee number (optional)
	- company

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
	- Approved by (user)

* User_Invite
	* belongs_to :user
	- Invite Token
	- Temp password
	- Approver

* Reminders
	* belongs_to :user
	- Message
	- Send date
	- Email to send to

## Controllers

## Views