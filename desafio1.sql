DROP SCHEMA IF EXISTS SpotifyClone;
CREATE SCHEMA SpotifyClone;

CREATE TABLE SpotifyClone.Plan(
	plan_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    plan_name VARCHAR(255) NOT NULL,
    plan_value DOUBLE NOT NULL
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.Artist(
	artist_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    artist_name VARCHAR(255) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.Albums(
	album_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    album_name VARCHAR(255) NOT NULL,
    release_year YEAR NOT NULL,
    artist_id INT NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES Artist(artist_id)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.Songs(
	song_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    song_name VARCHAR(255) NOT NULL,
    song_duration INT NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES Albums(album_id)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.User(
	user_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(255) NOT NULL,
    user_age INT NOT NULL,
    subscription_date DATE NOT NULL,
    plan_id INT NOT NULL,
    FOREIGN KEY (plan_id) REFERENCES Plan(plan_id)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.History(
	reproduction_id INT NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    reproduction_date DATETIME NOT NULL,
    song_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES User(user_id),
    FOREIGN KEY (song_id) REFERENCES Songs(song_id),
    PRIMARY KEY (reproduction_id, user_id, reproduction_date, song_id)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.Follow(
    user_id INT NOT NULL,
    artist_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY(user_id, artist_id),
    FOREIGN KEY (user_id) REFERENCES User(user_id),
    FOREIGN KEY (artist_id) REFERENCES Artist(artist_id)
) ENGINE = InnoDB;

INSERT INTO SpotifyClone.Plan (plan_name, plan_value) VALUES
	('gratuito', 0),
    ('familiar', 7.99),
    ('universitário', 5.99),
    ('pessoal', 6.99);
    
INSERT INTO SpotifyClone.Artist (artist_name) VALUES
	('Walter Phoenix'),
    ('Peter Strong'),
    ('Lance Day'),
    ('Freedie Shannon'),
    ('Tyler Isle'),
    ('Fog');
    
INSERT INTO SpotifyClone.Albums (album_name, release_year, artist_id) VALUES
	('Envious', 1990, 1),
    ('Exuberant', 1993, 1),
    ('Hallowed Steam', 1995, 2),
    ('Incandescent', 1998, 3),
    ('Temporary Culture', 2001, 4),
    ('Library of liberty', 2003, 4),
    ('Chained Down', 2007, 5),
    ('Cabinet of fools', 2012, 5),
    ('No guarantees', 2015, 5),
    ('Apparatus', 2015, 6);
    
INSERT INTO SpotifyClone.Songs (song_name, song_duration, album_id) VALUES
	('Soul For Us', 200, 1),
    ('Reflections Of Magic', 163, 1),
	('Dance With Her Own', 116, 1),
    ('Troubles Of My Inner Fire', 203, 2),
    ('Time Fireworks', 152, 2),
    ('Magic Circus', 105, 3),
    ('Honey, So Do I', 207, 3),
    ('Sweetie, Let\'s Go Wild', 139, 3),
    ('She Knows', 244, 3),
    ('Fantasy For Me', 100, 4),
    ('Celebration Of More', 146, 4),
    ('Rock His Everything', 223, 4),
    ('Home Forever', 231, 4),
    ('Diamond Power', 241, 4),
    ('Let\'s Be Silly', 132, 4),
    ('Thang Of Thunder', 240, 5),
    ('Words Of Her Life', 185, 5),
    ('Without My Streets', 176, 5),
    ('Need Of The Evening', 190, 6),
    ('History Of My Roses', 222, 6),
    ('Without My Love', 111, 6),
    ('Walking And Game', 123, 6),
    ('Young And Father', 197, 6),
    ('Finding My Traditions', 179, 7),
    ('Walking And Man', 229, 7),
    ('Hard And Time', 135, 7),
    ('Honey, I\'m A Lone Wolf', 150, 7),
    ('She Thinks I Won\'t Stay Tonight', 166, 8),
    ('He Heard You\'re Bad For Me', 154, 8),
    ('He Hopes We Can\'t Stay', 210, 8),
    ('I Know I Know', 117, 8),
    ('He\'s Walking Away', 117, 9),
    ('He\'s Trouble', 117, 9),
    ('I Heard I Want To Bo Alone', 117, 9),
    ('I Ride Alone', 117, 9),
    ('Honey', 79, 10),
    ('You Cheated On Me', 95, 10),
    ('Wouldn\'t It Be Nice', 213, 10),
    ('Baby', 136, 10),
    ('You Make Me Feel So..', 83, 10);
    
INSERT INTO SpotifyClone.User (user_name, user_age, subscription_date, plan_id) VALUES
	('Thati', 23, '2019-10-20', 1),
    ('Cintia', 35, '2017-12-30', 2),
    ('Bill', 20, '2019-06-05', 3),
    ('Roger', 45, '2020-05-13', 4),
    ('Norman', 58, '2017-02-17', 4),
    ('Patrick', 33, '2017-01-06', 2),
    ('Vivian', 26, '2018-01-05', 3),
    ('Carol', 19, '2018-02-14', 3),
    ('Angelina', 42, '2018-04-29', 2),
    ('Paul', 46, '2017-01-17', 2);
    
INSERT INTO SpotifyClone.History (user_id, reproduction_date, song_id) VALUES
	(
    1, 
    '2020-02-28 10:45:55', 
    (SELECT song_id FROM SpotifyClone.Songs WHERE song_name = 'Honey')
    ),
    (
    1, 
    '2020-05-02 05:30:35', 
    (SELECT song_id FROM SpotifyClone.Songs WHERE song_name = 'Walking And Man')
    ),
    (
    1, 
    '2020-03-06 11:22:33', 
    (SELECT song_id FROM SpotifyClone.Songs WHERE song_name = 'Young And Father')
    ),
    (
    1, 
    '2020-08-05 08:05:17', 
    (SELECT song_id FROM SpotifyClone.Songs WHERE song_name = 'Diamond Power')
    ),
    (
    1, 
    '2020-09-14 16:32:22', 
    (SELECT song_id FROM SpotifyClone.Songs WHERE song_name = 'Let\'s Be Silly')
    ),
    (
    2, 
    '2020-01-02 07:40:33', 
    (SELECT song_id FROM SpotifyClone.Songs WHERE song_name = 'I Heard I Want To Bo Alone')
    ),
    (
    2, 
    '2020-05-16 06:16:22', 
    (SELECT song_id FROM SpotifyClone.Songs WHERE song_name = 'Finding My Traditions')
    ),
    (
    2, 
    '2020-10-09 12:27:48', 
    (SELECT song_id FROM SpotifyClone.Songs WHERE song_name = 'Without My Love')
    ),
    (
    2, 
    '2020-09-21 13:14:46', 
    (SELECT song_id FROM SpotifyClone.Songs WHERE song_name = 'Baby')
    ),
    (
    3, 
    '2020-11-13 16:55:13', 
    (SELECT song_id FROM SpotifyClone.Songs WHERE song_name = 'Magic Circus')
    ),
    (
    3, 
    '2020-12-05 18:38:30', 
    (SELECT song_id FROM SpotifyClone.Songs WHERE song_name = 'Dance With Her Own')
    ),
    (
    3, 
    '2020-07-30 10:00:00', 
    (SELECT song_id FROM SpotifyClone.Songs WHERE song_name = 'Hard And Time')
    ),
    (
    4, 
    '2021-08-15 17:10:10', 
    (SELECT song_id FROM SpotifyClone.Songs WHERE song_name = 'Reflections Of Magic')
    ),
    (
    4, 
    '2021-07-10 15:20:30', 
    (SELECT song_id FROM SpotifyClone.Songs WHERE song_name = 'I Ride Alone')
    ),
    (
    4, 
    '2021-01-09 01:44:33', 
    (SELECT song_id FROM SpotifyClone.Songs WHERE song_name = 'Honey, I\'m A Lone Wolf')
    ),
    (
    5, 
    '2020-07-03 19:33:28', 
    (SELECT song_id FROM SpotifyClone.Songs WHERE song_name = 'Honey, So Do I')
    ),
    (
    5, 
    '2017-02-24 21:14:22', 
    (SELECT song_id FROM SpotifyClone.Songs WHERE song_name = 'Rock His Everything')
    ),
    (
    5, 
    '2020-08-06 15:23:43', 
    (SELECT song_id FROM SpotifyClone.Songs WHERE song_name = 'Diamond Power')
    ),
    (
    5, 
    '2020-11-10 13:52:27', 
    (SELECT song_id FROM SpotifyClone.Songs WHERE song_name = 'Soul For Us')
    ),
    (
    6, 
    '2019-02-07 20:33:48', 
    (SELECT song_id FROM SpotifyClone.Songs WHERE song_name = 'Wouldn\'t It Be Nice')
    ),
    (
    6, 
    '2017-01-24 00:31:17', 
    (SELECT song_id FROM SpotifyClone.Songs WHERE song_name = 'He Heard You\'re Bad For Me')
    ),
    (
    6, 
    '2017-10-12 12:35:20', 
    (SELECT song_id FROM SpotifyClone.Songs WHERE song_name = 'He Hopes We Can\'t Stay')
    ),
    (
    6, 
    '2018-05-29 14:56:41', 
    (SELECT song_id FROM SpotifyClone.Songs WHERE song_name = 'Walking And Game')
    ),
    (
    7, 
    '2018-05-09 22:30:49', 
    (SELECT song_id FROM SpotifyClone.Songs WHERE song_name = 'Time Fireworks')
    ),
    (
    7, 
    '2020-07-27 12:52:58', 
    (SELECT song_id FROM SpotifyClone.Songs WHERE song_name = 'Troubles Of My Inner Fire')
    ),
    (
    7, 
    '2018-01-16 18:40:43', 
    (SELECT song_id FROM SpotifyClone.Songs WHERE song_name = 'Celebration Of More')
    ),
    (
    8, 
    '2018-03-21 16:56:40', 
    (SELECT song_id FROM SpotifyClone.Songs WHERE song_name = 'Baby')
    ),
    (
    8, 
    '2020-10-18 13:38:05', 
    (SELECT song_id FROM SpotifyClone.Songs WHERE song_name = 'You Make Me Feel So..')
    ),
    (
    8, 
    '2019-05-25 08:14:03', 
    (SELECT song_id FROM SpotifyClone.Songs WHERE song_name = 'He\'s Walking Away')
    ),
    (
    8, 
    '2021-08-15 21:37:09', 
    (SELECT song_id FROM SpotifyClone.Songs WHERE song_name = 'He\'s Trouble')
    ),
    (
    9, 
    '2021-05-24 17:23:45', 
    (SELECT song_id FROM SpotifyClone.Songs WHERE song_name = 'Thang Of Thunder')
    ),
    (
    9, 
    '2018-12-07 22:48:52', 
    (SELECT song_id FROM SpotifyClone.Songs WHERE song_name = 'Words Of Her Life')
    ),
    (
    9, 
    '2021-03-14 06:14:26', 
    (SELECT song_id FROM SpotifyClone.Songs WHERE song_name = 'Sweetie, Let\'s Go Wild')
    ),
    (
    9, 
    '2020-04-01 03:36:00', 
    (SELECT song_id FROM SpotifyClone.Songs WHERE song_name = 'She Knows')
    ),
    (
    10, 
    '2017-02-06 08:21:34', 
    (SELECT song_id FROM SpotifyClone.Songs WHERE song_name = 'History Of My Roses')
    ),
    (
    10, 
    '2017-12-04 05:33:43', 
    (SELECT song_id FROM SpotifyClone.Songs WHERE song_name = 'Without My Love')
    ),
    (
    10, 
    '2017-07-27 05:24:49', 
    (SELECT song_id FROM SpotifyClone.Songs WHERE song_name = 'Rock His Everything')
    ),
    (
    10, 
    '2017-12-25 01:03:57', 
    (SELECT song_id FROM SpotifyClone.Songs WHERE song_name = 'Home Forever')
    );
    
INSERT INTO SpotifyClone.Follow (user_id, artist_id) VALUES
	(1, 1),
    (1, 3),
    (1, 4),
    (2, 1),
    (2, 3),
    (3, 1),
    (3, 2),
    (4, 4),
    (5, 5),
    (5, 6),
    (6, 1),
    (6, 3),
    (6, 6),
    (7, 2),
    (7, 5),
    (8, 1),
    (8, 5),
    (9, 3),
    (9, 4),
    (9, 6),
    (10, 2),
    (10, 6);