CREATE TABLE uye (
  uye_id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  email  VARCHAR(96) NOT NULL,
  sifre  VARCHAR(40) NOT NULL,
  ad     VARCHAr(32) NOT NULL,
  durum  INT(1) NOT NULL DEFAULT '2',
  UNIQUE KEY email (email)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO uye(email, sifre, ad, durum) VALUES 
('test1@test.com', MD5('1234'), 'Nesibe Özkan', '1'), 
('test2@test.com', MD5('1234'), 'Ayda Akçay', '2');


CREATE TABLE blog(
  blog_id  int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  baslik   varchar(300) NOT NULL,
  yazi     LONGTEXT NOT NULL,
  tarih    timestamp DEFAULT CURRENT_TIMESTAMP,
  uye_id   int NOT NULL,
  FOREIGN KEY (uye_id) REFERENCES uye(uye_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO blog(baslik, yazi, uye_id)
VALUES('ilk blog başlığım', 'Bu birinci içerik yazım', 1),
      ('ikinci blog başlığım', 'Bu ikinci içerik yazım', 1),
      ('Üçüncü blog başlığım', 'Bu üçüncü içerik yazım', 1);

CREATE TABLE yorum(
  yorum_id  int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  mesaj     text NOT NULL,
  yazan     varchar(80) DEFAULT 'anonim',
  tarih     timestamp DEFAULT CURRENT_TIMESTAMP,
  blog_id   int NOT NULL,
  FOREIGN KEY (blog_id) REFERENCES blog(blog_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO yorum(mesaj, blog_id) VALUES('ilk mesajı yaptık', 1);
