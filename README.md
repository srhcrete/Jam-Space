# myTour

myTour is a site where musicians can manage their own tours by booking services through providers along tour routes. Bands can source jam spaces, crash spaces, gear, vehicles, experienced drivers, backline technicians, and merchandise sellers. myTour puts the musician in control.

## MVP User Stories

#### As a Provider I can...
* create my own profile and upload images.


#### As a Band I can...
* create my own profile and upload images.


## Booking Features
* When a booking has been approved and scheduled, the status will update to booked.
* When the scheduled date has passed, the booking status will update to completed.


## Future Features
* Post open Bookings with location, images, and tags.
* Edit and Reschedule bookings and Delete completed bookings.
* Request bookings from the open bookings list.
* Book a service and pay the provider.
* Band and providers can leave ratings/reviews for each other.
* A service for messages or automatic email between bands and providers.
* PayPal or other payment handler.
* Maps with markers for available or scheduled bookings.
* Tour route mapping service.

Set Up
$ git clone this repository
$ cd myTour
$ bundle
$ rake db:create
$ rake db:migrate
$ rake db:test:prepare (for testing environment)
$ rake db:seed
$ rake db:reset (to perform database create, migrate, & seed in single command)
$ rails s to start the server, then navigate to localhost:3000 in your browser.

