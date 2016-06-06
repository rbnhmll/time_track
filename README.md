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

## User flow
* Administrator creates a User account
* Administrator creates a profile
	- Indicates in their profile that they are an Admin
	- This gives privileges to create/destroy organizations, invite users, and approve timecards
* Invites are send to employees
	- Option to send out multiple invites at once, using only emails.
	- New User is created, and a temporary password is generated. Password is included in the invite email.
* Invite includes a randomized token, which associates with the invite.
* Invitee already has a User created. Needs to reset password, create a profile. Invited users do not have admin privileges unless indicated in the invite.
	- On first login, invite is destroyed and is no longer valid.
	- Invited users cannot set up organizations, approve timecards or invite others.
* User can create timecards, and select start date. Each additional timecard increments after that.
* At end of week, user submits timecard, and email is sent to Admin for approval.
* Admin can see all timecards awaiting approval in approval dashboard (index).
* Once timecard is approved, User receives email.

## Models
* Organization (built)
	* has_many :users
	- Name
	- Address
	- website

* User (built)
	* has_one :profile
	* has_many :timecards
	* belongs_to :department
	* belongs_to :organization
	- password (to be set randomly if by approver)

* Profile (built)
	* belongs_to :user
	- first_name
	- last_name
	- department
	- Approver(?)
	- Employee number (optional)
	- company

* Timecard (built)
	* belongs_to :user
	* has_many :dailycounts
	- user_id
	- Period start
	- Period end
	- Status
	- Project
	- Project Type
	- hours per day, individually
	- Total hours
	- Date submitted
	- Approved by (user)

* hour_count (built)
	* belongs_to :timecard
	- timecard_id
	- day:date
	- hours:integer

* Invite (built)
	* belongs_to :user
	- email
	- Sender_id
	- Recipient_id
	- Token
	- organization_id

* Reminders
	* belongs_to :user
	- Message
	- Send date
	- Email to send to

## Controllers

## Views