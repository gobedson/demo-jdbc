SET @teaser = '<p>Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les années 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n''a pas fait que survivre cinq siècles, mais s''est aussi adapté à la bureautique informatique, sans que son contenu n''en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.</p>';
SET @body= '<p>Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les années 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n''a pas fait que survivre cinq siècles, mais s''est aussi adapté à la bureautique informatique, sans que son contenu n''en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.</p>';

insert into author(id,first_name,last_name,email) values(1,'Godson','Yebadokpo','gobedson1@gmail.com');
insert into author(id,first_name,last_name,email) values(2,'Halim','Badirou','halim.badirou@gmail.com');

insert into post(id,title,slug,teaser,body,author_id,posted_on)values(1,'Spring Boot is Awesome!','Blog Post Content...',@teaser,@body,1,CURRENT_TIMESTAMP);
insert into post(id,title,slug,teaser,body,author_id,posted_on)values(2,'Spring Data Rocks!','Blog Post Content...',@teaser,@body,1,CURRENT_TIMESTAMP);

insert into post(id,title,slug,teaser,body,author_id,posted_on)values(3,'Godson YEBADOKPO Post 1','godson-yebadokpo-post-content-1',@teaser,@body,2,CURRENT_TIMESTAMP);
insert into post(id,title,slug,teaser,body,author_id,posted_on)values(4,'Godson YEBADOKPO Post 2','godson-yebadokpo-post-content-2',@teaser,@body,2,CURRENT_TIMESTAMP);

insert into post(id,title,slug,teaser,body,author_id,posted_on)values(5,'Godson YEBADOKPO Post 3','godson-yebadokpo-post-content-3',@teaser,@body,2,CURRENT_TIMESTAMP);
insert into post(id,title,slug,teaser,body,author_id,posted_on)values(6,'Refractoring our Spring data project','refractoring-spring-data-project-content',@teaser,@body,2,CURRENT_TIMESTAMP);
