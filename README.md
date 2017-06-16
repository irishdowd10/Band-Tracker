#### _DATE: 6-16-17_

#### By _**John Dowd**_

## Description

This program gives the user the opportunity to add venues to bands and bands to venues. The user has the ability to see all venues list and which bands played at each venue. The user can view a  band and see which venues the band played. The user will have the ability to update and delete for both venue and band.


## Specifications
|Behavior| User Input| Output |
|---|---|---|
|Program will return empty database for band. |" "| " "|
|Program will create and return a band. |"Widespread Panic"| "Widespread Panic"|
|Program will return all bands. | [List Bands Button] | "Names of all bands"|
|Program will create a venue under band. |"Fox"| "Widespread Panic"|
|Program will delete band |"Phish"| " "|
|Program will return edited band info. |"Widespread Panic"| "WSP"|
|Program will return empty database for venue. |" "| " "|
|Program will return all venues. | [List Venues Button] | "Names of all Venues"|
|Program will create and return a venue. |"Red Rocks"| "Red Rocks"|
|Program will create a band under venue. |"Widespread Panic"| "Fox"|
|Program will delete venue. |"Red Rocks"| " "|
|Program will return edited venue info. |"Red Rocks"| "Red Socks"|


### Link
https://github.com/irishdowd10/Band-Tracker.git

## Setup

* Clone the project files from link in your powershell > run dnu restore >and then run dnu kestrel > then type localhost:5004


* In SQLCMD: > CREATE DATABASE band_tracker; > GO > USE band_tracker; > GO > CREATE TABLE bands (id INT IDENTITY(1,1), name VARCHAR(255)); > CREATE TABLE venues (id INT IDENTITY(1,1), name VARCHAR(255)); > GO



## Known Bugs


## Support and contact details

_John Dowd - john.dowd@inspectall.com_

## Technologies Used

_HTML Bootstrap, Nancy, Razor, C#, xUnit, SQL, MMSS_

### License

*Open source applies to all. Use at your own risk*

### Notes

Copyright (c) 2017 **_John Dowd - Epicodus_**
