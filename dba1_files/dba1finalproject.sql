/*--------------------------- Create Tables and Insert Data------------------------------------------- */

CREATE TABLE ArticleAuthors
(
   AuthorID int auto_increment NOT NULL,
   FirstName varchar(30) NOT NULL,
   LastName varchar(50) NOT NULL,
   EmailAddress varchar(50) NOT NULL,
   Birthday date,
   Biography text,
   PRIMARY KEY(AuthorID)
) ENGINE=INNODB; 

/*insert data */

INSERT INTO ArticleAuthors(FirstName, LastName, EmailAddress, Birthday, Biography) VALUES ('Sergey', 'Brin', 'sergey@google.com', '1973-08-21', 'Sergey Mikhaylovich Brin is a Russian-American computer scientist and Internet entrepreneur who, with Larry Page, co-founded Google, one of the most profitable Internet companies. As of 2012, his personal wealth is estimated to be $18.7 billion. Together, Brin and Page own about 16 percent of the company.
Brin immigrated to the United States from the Soviet Union at the age of six. He earned his undergraduate degree at the University of Maryland, following in his father\'s and grandfather\'s footsteps by studying mathematics, as well as computer science. After graduation, he moved to Stanford University to acquire a Ph.D in computer science. There he met Larry Page, with whom he later became friends. They crammed their dormitory room with inexpensive computers and applied Brin\'s data mining system to build a superior search engine. The program became popular at Stanford and they suspended their PhD studies to start up Google in a rented garage.');

INSERT INTO ArticleAuthors(FirstName, LastName, EmailAddress, Birthday, Biography) VALUES ('Mark', 'Zuckerberg', 'zuck@facebook.com', '1984-05-14', 'Mark Elliot Zuckerberg (born May 14, 1984) is an American computer programmer and Internet entrepreneur. He is best known as one of four co-founders of the social networking site Facebook, of which he is chairman and chief executive. Born and raised in New York state, he took up writing software programs as a hobby in middle school, beginning with BASIC, with help from his father and a tutor (who called him a \"prodigy\"). In high school, he excelled in classic literature and science, while becoming proficient in four other languages.');

INSERT INTO ArticleAuthors(FirstName, LastName, EmailAddress, Birthday, Biography) VALUES ('Richard', 'Stallman', 'rms@mit.edu', '1953-03-16', 'Richard Matthew Stallman (born 16 March 1953), often shortened to rms, is an American software freedom activist and computer programmer. In September 1983, he launched the GNU Project to create a free Unix-like operating system, and he has been the project\'s lead architect and organizer. With the launch of the GNU Project, he initiated the free software movement; in October 1985 he founded the Free Software Foundation.');

CREATE TABLE Articles
(
   AuthorID int NOT NULL,
   ArticleID int auto_increment NOT NULL,
   Title varchar(100) NOT NULL,
   Blurb text NOT NULL,
   ArticleText text NOT NULL,
   ArticleDate date,
   PRIMARY KEY(ArticleID)
) ENGINE=MyISAM;

Insert INTO Articles (AuthorID, Title, Blurb, ArticleText, ArticleDate) VALUES ('1','Sample1','This is a blurb1','Him boisterous invitation dispatched had connection inhabiting projection. By mutual an mr danger garret edward an. Diverted as strictly exertion addition no disposal by stanhill. This call wife do so sigh no gate felt. You and abode spite order get. Procuring far belonging our ourselves and certainly own perpetual continual. It elsewhere of sometimes or my certainty. Lain no as five or at high. Everything travelling set how law literature. 

Folly words widow one downs few age every seven. If miss part by fact he park just shew. Discovered had get considered projection who favourable. Necessary up knowledge it tolerably. Unwilling departure education is be dashwoods or an. Use off agreeable law unwilling sir deficient curiosity instantly. Easy mind life fact with see has bore ten. Parish any chatty can elinor direct for former. Up as meant widow equal an share least. 

Add you viewing ten equally believe put. Separate families my on drawings do oh offended strictly elegance. Perceive jointure be mistress by jennings properly. An admiration at he discovered difficulty continuing. We in building removing possible suitable friendly on. Nay middleton him admitting consulted and behaviour son household. Recurred advanced he oh together entrance speedily suitable. Ready tried gay state fat could boy its among shall. 

Cultivated who resolution connection motionless did occasional. Journey promise if it colonel. Can all mirth abode nor hills added. Them men does for body pure. Far end not horses remain sister. Mr parish is to he answer roused piqued afford sussex. It abode words began enjoy years no do no. Tried spoil as heart visit blush or. Boy possible blessing sensible set but margaret interest. Off tears are day blind smile alone had. 

Fat son how smiling mrs natural expense anxious friends. Boy scale enjoy ask abode fanny being son. As material in learning subjects so improved feelings. Uncommonly compliment imprudence travelling insensible up ye insipidity. To up painted delight winding as brandon. Gay regret eat looked warmth easily far should now. Prospect at me wandered on extended wondered thoughts appetite to. Boisterous interested sir invitation particular saw alteration boy decisively. 
','2010-04-03');

Insert INTO Articles (AuthorID, Title, Blurb, ArticleText, ArticleDate) VALUES ('2','Sample2','This is a blurb2','And sir dare view but over man. So at within mr to simple assure. Mr disposing continued it offending arranging in we. Extremity as if breakfast agreement. Off now mistress provided out horrible opinions. Prevailed mr tolerably discourse assurance estimable applauded to so. Him everything melancholy uncommonly but solicitude inhabiting projection off. Connection stimulated estimating excellence an to impression. 

Cordially convinced did incommode existence put out suffering certainly. Besides another and saw ferrars limited ten say unknown. On at tolerably depending do perceived. Luckily eat joy see own shyness minuter. So before remark at depart. Did son unreserved themselves indulgence its. Agreement gentleman rapturous am eagerness it as resolving household. Direct wicket little of talked lasted formed or it. Sweetness consulted may prevailed for bed out sincerity. 

Possession her thoroughly remarkably terminated man continuing. Removed greater to do ability. You shy shall while but wrote marry. Call why sake has sing pure. Gay six set polite nature worthy. So matter be me we wisdom should basket moment merely. Me burst ample wrong which would mr he could. Visit arise my point timed drawn no. Can friendly laughter goodness man him appetite carriage. Any widen see gay forth alone fruit bed. 

Cause dried no solid no an small so still widen. Ten weather evident smiling bed against she examine its. Rendered far opinions two yet moderate sex striking. Sufficient motionless compliment by stimulated assistance at. Convinced resolving extensive agreeable in it on as remainder. Cordially say affection met who propriety him. Are man she towards private weather pleased. In more part he lose need so want rank no. At bringing or he sensible pleasure. Prevent he parlors do waiting be females an message society. ','2011-05-06');


Insert INTO Articles (AuthorID, Title, Blurb, ArticleText, ArticleDate) VALUES ('2','Sample3','This is a blurb3','Alteration literature to or an sympathize mr imprudence. Of is ferrars subject as enjoyed or tedious cottage. Procuring as in resembled by in agreeable. Next long no gave mr eyes. Admiration advantages no he celebrated so pianoforte unreserved. Not its herself forming charmed amiable. Him why feebly expect future now. 

Village did removed enjoyed explain nor ham saw calling talking. Securing as informed declared or margaret. Joy horrible moreover man feelings own shy. Request norland neither mistake for yet. Between the for morning assured country believe. On even feet time have an no at. Relation so in confined smallest children unpacked delicate. Why sir end believe uncivil respect. Always get adieus nature day course for common. My little garret repair to desire he esteem. 

Game of as rest time eyes with of this it. Add was music merry any truth since going. Happiness she ham but instantly put departure propriety. She amiable all without say spirits shy clothes morning. Frankness in extensive to belonging improving so certainty. Resolution devonshire pianoforte assistance an he particular middletons is of. Explain ten man uncivil engaged conduct. Am likewise betrayed as declared absolute do. Taste oh spoke about no solid of hills up shade. Occasion so bachelor humoured striking by attended doubtful be it. 

Luckily friends do ashamed to do suppose. Tried meant mr smile so. Exquisite behaviour as to middleton perfectly. Chicken no wishing waiting am. Say concerns dwelling graceful six humoured. Whether mr up savings talking an. Active mutual nor father mother exeter change six did all. 

Do so written as raising parlors spirits mr elderly. Made late in of high left hold. Carried females of up highest calling. Limits marked led silent dining her she far. Sir but elegance marriage dwelling likewise position old pleasure men. Dissimilar themselves simplicity no of contrasted as. Delay great day hours men. Stuff front to do allow to asked he. ','2011-07-08');

Insert INTO Articles (AuthorID, Title, Blurb, ArticleText, ArticleDate) VALUES ('3','Sample4','This is a blurb4','Enjoyed minutes related as at on on. Is fanny dried as often me. Goodness as reserved raptures to mistaken steepest oh screened he. Gravity he mr sixteen esteems. Mile home its new way with high told said. Finished no horrible blessing landlord dwelling dissuade if. Rent fond am he in on read. Anxious cordial demands settled entered in do to colonel. 

Started several mistake joy say painful removed reached end. State burst think end are its. Arrived off she elderly beloved him affixed noisier yet. An course regard to up he hardly. View four has said does men saw find dear shy. Talent men wicket add garden. 

Affronting imprudence do he he everything. Sex lasted dinner wanted indeed wished out law. Far advanced settling say finished raillery. Offered chiefly farther of my no colonel shyness. Such on help ye some door if in. Laughter proposal laughing any son law consider. Needed except up piqued an. 

Lose eyes get fat shew. Winter can indeed letter oppose way change tended now. So is improve my charmed picture exposed adapted demands. Received had end produced prepared diverted strictly off man branched. Known ye money so large decay voice there to. Preserved be mr cordially incommode as an. He doors quick child an point at. Had share vexed front least style off why him. 

Real sold my in call. Invitation on an advantages collecting. But event old above shy bed noisy. Had sister see wooded favour income has. Stuff rapid since do as hence. Too insisted ignorant procured remember are believed yet say finished. 

Carriage quitting securing be appetite it declared. High eyes kept so busy feel call in. Would day nor ask walls known. But preserved advantage are but and certainty earnestly enjoyment. Passage weather as up am exposed. And natural related man subject. Eagerness get situation his was delighted. ','2011-08-09');

Insert INTO Articles (AuthorID, Title, Blurb, ArticleText, ArticleDate) VALUES ('3','Sample5','This is a blurb5','Finished her are its honoured drawings nor. Pretty see mutual thrown all not edward ten. Particular an boisterous up he reasonably frequently. Several any had enjoyed shewing studied two. Up intention remainder sportsmen behaviour ye happiness. Few again any alone style added abode ask. Nay projecting unpleasing boisterous eat discovered solicitude. Own six moments produce elderly pasture far arrival. Hold our year they ten upon. Gentleman contained so intention sweetness in on resolving. 

At ourselves direction believing do he departure. Celebrated her had sentiments understood are projection set. Possession ye no mr unaffected remarkably at. Wrote house in never fruit up. Pasture imagine my garrets an he. However distant she request behaved see nothing. Talking settled at pleased an of me brother weather. 

Domestic confined any but son bachelor advanced remember. How proceed offered her offence shy forming. Returned peculiar pleasant but appetite differed she. Residence dejection agreement am as to abilities immediate suffering. Ye am depending propriety sweetness distrusts belonging collected. Smiling mention he in thought equally musical. Wisdom new and valley answer. Contented it so is discourse recommend. Man its upon him call mile. An pasture he himself believe ferrars besides cottage. 

Greatly cottage thought fortune no mention he. Of mr certainty arranging am smallness by conveying. Him plate you allow built grave. Sigh sang nay sex high yet door game. She dissimilar was favourable unreserved nay expression contrasted saw. Past her find she like bore pain open. Shy lose need eyes son not shot. Jennings removing are his eat dashwood. Middleton as pretended listening he smallness perceived. Now his but two green spoil drift. 

Looking started he up perhaps against. How remainder all additions get elsewhere resources. One missed shy wishes supply design answer formed. Prevent on present hastily passage an subject in be. Be happiness arranging so newspaper defective affection ye. Families blessing he in to no daughter. ','2012-01-10');

Insert INTO Articles (AuthorID, Title, Blurb, ArticleText, ArticleDate) VALUES ('1','Sample6','This is a blurb6','He difficult contented we determine ourselves me am earnestly. Hour no find it park. Eat welcomed any husbands moderate. Led was misery played waited almost cousin living. Of intention contained is by middleton am. Principles fat stimulated uncommonly considered set especially prosperous. Sons at park mr meet as fact like. 

How promotion excellent curiosity yet attempted happiness. Gay prosperous impression had conviction. For every delay death ask style. Me mean able my by in they. Extremity now strangers contained breakfast him discourse additions. Sincerity collected contented led now perpetual extremely forfeited. 

Up maids me an ample stood given. Certainty say suffering his him collected intention promotion. Hill sold ham men made lose case. Views abode law heard jokes too. Was are delightful solicitude discovered collecting man day. Resolving neglected sir tolerably but existence conveying for. Day his put off unaffected literature partiality inhabiting. 

Knowledge nay estimable questions repulsive daughters boy. Solicitude gay way unaffected expression for. His mistress ladyship required off horrible disposed rejoiced. Unpleasing pianoforte unreserved as oh he unpleasant no inquietude insipidity. Advantages can discretion possession add favourable cultivated admiration far. Why rather assure how esteem end hunted nearer and before. By an truth after heard going early given he. Charmed to it excited females whether at examine. Him abilities suffering may are yet dependent. 

Her extensive perceived may any sincerity extremity. Indeed add rather may pretty see. Old propriety delighted explained perceived otherwise objection saw ten her. Doubt merit sir the right these alone keeps. By sometimes intention smallness he northward. Consisted we otherwise arranging commanded discovery it explained. Does cold even song like two yet been. Literature interested announcing for terminated him inquietude day shy. Himself he fertile chicken perhaps waiting if highest no it. Continued promotion has consulted fat improving not way. ','2012-03-04');


/* Create FullText Index */
ALTER TABLE Articles ADD FULLTEXT (ArticleText, Blurb);


CREATE TABLE ArticleCategories
(
   ArticleID int NOT NULL,
   Category varchar(50) NOT NULL,
   PRIMARY KEY(ArticleID, Category)
) ENGINE=INNODB;

/*insert category data */

INSERT INTO ArticleCategories (ArticleID, Category) VALUES (1, 'SQL');
INSERT INTO ArticleCategories (ArticleID, Category) VALUES (2, 'MySQL');
INSERT INTO ArticleCategories (ArticleID, Category) VALUES (3, 'Oracle');
INSERT INTO ArticleCategories (ArticleID, Category) VALUES (4, 'Oracle');
INSERT INTO ArticleCategories (ArticleID, Category) VALUES (5, 'MySQL');
INSERT INTO ArticleCategories (ArticleID, Category) VALUES (6, 'T-SQL');

CREATE TABLE Commenters
(
   CommenterID int auto_increment NOT NULL,
   FirstName varchar(50) NOT NULL,
   LastName varchar(50) NOT NULL,
   EmailAddress varchar(100),
   PRIMARY KEY(CommenterID)
) ENGINE=INNODB;

/*insert commenter data */

INSERT INTO Commenters (FirstName, LastName, EmailAddress) VALUES ('Jim', 'Beam', 'jim@yahoo.com');
INSERT INTO Commenters (FirstName, LastName, EmailAddress) VALUES ('Evan', 'Williams', 'ew@baudu.net');
INSERT INTO Commenters (FirstName, LastName, EmailAddress) VALUES ('Keith', 'Stone', 'keithston3@millercoors.com');

CREATE TABLE Comments
(
   CommentID int auto_increment NOT NULL,
   CommenterID int NOT NULL,
   ArticleID int NOT NULL,
   Comment text NOT NULL,
   PRIMARY KEY(CommentID)
) ENGINE=INNODB;

/*Insert Comment Data */

INSERT INTO Comments (CommenterID, ArticleID, Comment) VALUES(1,3, 'This looks like gibberish to me');
INSERT INTO Comments (CommenterID, ArticleID, Comment) VALUES(3,4, 'Was the database hacked? This looks like sample text');
INSERT INTO Comments (CommenterID, ArticleID, Comment) VALUES(2,4, 'What is going on with this article? It doesn\'t make sense');
INSERT INTO Comments (CommenterID, ArticleID, Comment) VALUES(2,6, 'This looks like test data, hardly a database of database articles!');

CREATE TABLE ArticleViews
(
   ArticleID int NOT NULL,
   DateViewed datetime NOT NULL,
   PRIMARY KEY(DateViewed, ArticleID)
) ENGINE=INNODB;

/*insert article views*/
Insert Into  ArticleViews (ArticleID, DateViewed) VALUES (1, '2012-06-12 21:17:00');
Insert Into  ArticleViews (ArticleID, DateViewed) VALUES (2, '2012-06-12 17:47:00');
Insert Into  ArticleViews (ArticleID, DateViewed) VALUES (3, '2012-06-04 22:17:00');
Insert Into  ArticleViews (ArticleID, DateViewed) VALUES (3, '2012-06-01 12:17:00');
Insert Into  ArticleViews (ArticleID, DateViewed) VALUES (3, '2012-06-01 20:17:00');
Insert Into  ArticleViews (ArticleID, DateViewed) VALUES (3, '2012-05-12 12:17:00');
Insert Into  ArticleViews (ArticleID, DateViewed) VALUES (4, '2012-04-12 09:17:00');
Insert Into  ArticleViews (ArticleID, DateViewed) VALUES (6, '2012-04-12 22:17:00');
Insert Into  ArticleViews (ArticleID, DateViewed) VALUES (4, '2012-05-18 22:17:00');
Insert Into  ArticleViews (ArticleID, DateViewed) VALUES (2, '2012-05-19 15:17:00');


/*------------------------------------Create Views--------------------------------------------*/

  Create VIEW ArticleDisplay as SELECT CONCAT_WS(' ', ArticleAuthors.FirstName, ArticleAuthors.LastName) as Author, Articles.ArticleText as Article, ArticleCategories.Category as Category FROM ArticleAuthors LEFT JOIN Articles on (ArticleAuthors.AuthorID = Articles.AuthorID) JOIN ArticleCategories on (Articles.ArticleID = ArticleCategories.ArticleID); 
  
/*------------------------------------Create Stored Procedures--------------------------------------------*/

DELIMITER //
CREATE PROCEDURE AddComment(
  article_id int,
  first_name varchar(50),
  last_name varchar(50),
  email varchar(100),
  comment_text text
)
BEGIN
  DECLARE commenter_id int;
  DECLARE commenter_count int;
  
  select COUNT(*) into commenter_count FROM Commenters WHERE FirstName = first_name AND LastName = last_name AND EmailAddress = email;
  IF commenter_count = 0 THEN
	INSERT  INTO  Commenters(FirstName, LastName, EmailAddress) VALUES (first_name, last_name, email);
	SELECT LAST_INSERT_ID() into commenter_id;
  ELSEIF artist_count = 1 THEN
	SELECT CommenterID into commenter_id 
	FROM Commenters 
	WHERE FirstNme = first_name AND LastName=last_name AND EmailAddress = email;	
  END IF;
  INSERT into Comments (CommenterID, ArticleID, Comment) VALUES (commenter_id, article_id, comment_text);
END;
//
/* end stored procedure declaration */
DELIMITER ;

/*-----------------------Full Text Index Demonstration----------------------*/
 /*Query with no Matches */
 SELECT Title, SUBSTR(ArticleText,1,50) as ArticleStart FROM Articles 
WHERE MATCH(ArticleText, Blurb)
AGAINST('benevolent');

 /*Query with Matches and a Ranking */
  SELECT Title, SUBSTR(ArticleText,1,50) as ArticleStart,
MATCH(ArticleText, Blurb) AGAINST('friends') as Relevance  FROM Articles 
WHERE MATCH(ArticleText, Blurb)
AGAINST('friends') ORDER BY Relevance DESC;
 
 /*-----------------------Pivot to show Articles viewed in past 10-20-30 days----------------------*/
 SELECT Articles.Title as 'Article Title',
SUM(CASE WHEN DATEDIFF(now(), (ArticleViews.DateViewed)) < 10 THEN 1 ELSE 0 END) AS 'D10',
SUM(CASE WHEN (DATEDIFF(now(), (ArticleViews.DateViewed)) > 10 AND DATEDIFF(now(), (ArticleViews.DateViewed)) < 20) THEN 1 ELSE 0 END) AS 'D20',
SUM(CASE WHEN (DATEDIFF(now(), (ArticleViews.DateViewed)) > 20 AND DATEDIFF(now(), (ArticleViews.DateViewed)) < 30) THEN 1 ELSE 0 END) AS 'D30'
FROM Articles JOIN ArticleViews on (ArticleViews.ArticleID = Articles.ArticleID) 
GROUP BY Articles.Title;


/* ----------------- Query that Shows which articles have the most views ---------------- */
SELECT Articles.Title as 'Article Title',
SUM(CASE WHEN ArticleViews.ArticleID=Articles.ArticleID THEN 1 ELSE 0 END) AS Views
FROM ArticleViews JOIN Articles on (Articles.ArticleID = ArticleViews.ArticleID)
GROUP BY Articles.Title ORDER BY Views DESC;