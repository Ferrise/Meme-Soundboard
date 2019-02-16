--Database Tables

--Table of sound files stored
CREATE TABLE soundFiles (
	fileName VARCHAR(32),
	filePath VARCHAR(64),
	userMade VARCHAR(16),
	PRIMARY KEY(filePath));

--account information
CREATE TABLE users (
	userName VARCHAR(16),
	pass VARCHAR(16),
	PRIMARY KEY(userName));

--playlists, collections of soundFiles made by users
CREATE TABLE playlists (
	filePath VARCHAR(64),
	userName VARCHAR(16),
	playName VARCHAR(32),
	PRIMARY KEY(filePath, userName),
	FOREIGN KEY (filePath) REFERENCES soundFiles(filePath),
	FOREIGN KEY (userName) REFERENCES users(userName));

--list of rooms currently made, with users in that room
CREATE TABLE rooms (
	userName VARCHAR(16),
	roomName VARCHAR(16),
	PRIMARY KEY(userName, roomName),
	FOREIGN KEY (username) REFERENCES users(userName));