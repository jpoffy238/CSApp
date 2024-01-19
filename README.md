# CSApp

A web based App to document settings, stage settings, and registrations for Casio Keyboards.

## Purpose:

	As an amateur  musician, playing in various bands with a variety of songs all with different settings,
	 it was becoming apparent that a app to track the songs, notes, settings and registrations used to 
	 perform the song would be an helpful to search and recall these settings without having to 
	 recreate the wheel.  
	 
	 Later releases will include support for other keyboards since no two manufactures are the same.

* Songs
	+ Chord charts
		- mp 3
 		- midi, 
        - Dates played and settings used
        - settings used
        - notes
    + Stage or Registration Settings 
		-  Individual tones or layers
		- Controller settings
		- Tone sample sound
    
## Basic Requirements

1. Searchable Song by:
	+ Date Performed 
	+ Artist
	+ settings
	+ Title
2. 	Basic Song Meta data
	+ Date
	+ Chord chart
	+ Key signature
	+ Time signature
	+ Tempo
	+ Tags
3. Basic Layer (tone) Data
	+ Blob data
	+ Name
	+ category
		- piano
		- string
		- organ
		- reed
		- brass
		- synth
		- percussion
		- General Midi
		- Hex layer
	+ Date create
	+ notes
	+ tags
4. Registrations
 
 A registration contains information about each layer used and various controller settings.
 
	
## Basic Theory of Operation

The app will be split into two apps.  The first is the web front end using the Angular framework. The second is the basic restful API to support the requirements above.  This division will also allow either a mobile app or browser app to work seamlessly with the back end. The back end code will be a spring boot app running in a docker container in the cloud with a PostgreSQL database. 

### User authorization 

A login is required based on Amazon Cognito. 

### Db table Structure

#### Bands
+ Band Id
+ Band Name
+ License
#### Users
+ user_id
+ user_email
+ Band Id

#### Songs
+ Band Id
+ Song Id
+ Song Name
+ Song Key signature
+ Song time signature
+ Song Artist

#### Performance
+ Performance Id
+ Band ID
+ Date
+ Notes

#### Set list
+ Performance Id
+ Song Id


 	

 