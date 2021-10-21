USE BakMovie
INSERT INTO [User] VALUES
	('USR492','Viona','Viona Apriyanka','vinvin85@gmail.com','Bogor','Apriyanto'),
	('USR135','David','David Gunawan','david02@gmail.com','Bandung','Gunawan'),
	('USR524','Jenni','Jenni Pink','jenpin0@gmail.com','Malang','Pink'),
	('USR289','Nammy ','Nammy Rosmalia','namros4@gmail.com','Bekasi','Rosmalia'),
	('USR837','Fauzi','Fauzi Wahyuni','fauz9@gmail.com','Surabaya','Wahyuni'),
	('USR065','Geraldin','Geraldin Rafles','raf27@gmail.com','Palembang','Rafles'),
	('USR234','Mirza','Mirza Cansan','cansanmir8@gmail.com','Jakarta','Cansan'),
	('USR465','Aulia','Aulia Yati','aulaulaja@gmail.com','Tangerang','Yati'),
	('USR876','Nicho','Nicho Fajri','nichofajri@gmail.com','Aceh','Fajri'),
	('USR037','Lintang','Lintang Atarita','lintarta@gmail.com','Bali','Atarita')

INSERT INTO Genre VALUES
	('GEN815','Action'),
	('GEN896','Drama'),
	('GEN013','Horor'),
	('GEN241','Comedy'),
	('GEN523','Romantic'),
	('GEN072','Musical'),
	('GEN788','Action'),
	('GEN985','Drama'),
	('GEN184','Horor'),
	('GEN687','Comedy')

INSERT INTO Director VALUES
	('DIR492','Chistoper','chris04@gmail.com','Bogor', 'Jl.Kursi No.83', '083167158745'),
	('DIR135','Nolan','nolnolan@gmail.com','Bandung', 'Jl. Meja No.01', '088145719875'),
	('DIR524','Russo','ru792@gmail.com','Malang', 'Jl. Kasur No.97', '0874517858721'),
	('DIR289','Brothers','bro00@gmail.com','Bekasi', 'Jl. Pintu No.12', '088462069602'),
	('DIR837','Bong','b0ng@gmail.com','Surabaya', 'Jl. Tas No.24', '089576502961'),
	('DIR065','Joon','j00n@gmail.com','Palembang', 'Jl. Roda No.06', '08418643754'),
	('DIR234','James','jms62@gmail.com','Jakarta', 'Jl. Jendela No.99', '082451435423'),
	('DIR465','Cameron','cmrn948@gmail.com','Tanggerang', 'Jl. Lemari No.32', '08998908909'),
	('DIR876','Quentin','quent1n@gmail.com','Aceh', 'Jl. Botol No.55', '089809244324'),
	('DIR037','Tarantino','tarantin0@gmail.com','Bali', 'Jl. Laci No.85', '083424201989')

INSERT INTO Publisher VALUES
	('PUB492','Ulya','ulu1@gmail.com','Bogor', 'Jalan Apel Merah No.83', '083169478745'),
	('PUB135','Laksita','lakkk@gmail.com','Bandung', 'Jalan Mochi Nangka No.01', '08812449875'),
	('PUB524','Zagustina','zazagust@gmail.com','Malang', 'Jalan Beras Merah No.97', '087455468721'),
	('PUB289','Ynamaga','ynana@gmail.com','Bekasi', 'Jalan Pizza Domino No.12', '088462069574'),
	('PUB837','Bayu','babay35@gmail.com','Surabaya', 'Jalan Kunci Emas No.24', '089513522961'),
	('PUB065','Hadi','hadi394@gmail.com','Palembang', 'Jalan Blue Bird No.06', '08418612154'),
	('PUB234','Mario','mari0@gmail.com','Jakarta', 'Jalan Mandarin Orange No.99', '084531435423'),
	('PUB465','Anisa','anis4@gmail.com','Tangerang', 'Jalan Burung Dara No.32', '08998908132'),
	('PUB876','Retno','r3tn0@gmail.com','Aceh', 'Jalan Selimut Tetangga No.55', '089342244324'),
	('PUB037','Wulandari','wul4nd4r1@gmail.com','Bali', 'Jalan Bolu Kukus No.85', '083424201493')

INSERT INTO Movie VALUES
	('MOV001','DIR492','GEN815','PUB492','Start Up','Menceritakan Seo Dalmi ingin menjadi CEO terkenal seperti Steve Jobs','2020',99000),
	('MOV002','DIR135','GEN896','PUB135','Imperfect','Menceritakan isu permasalahan body shamming pada perempuan','2013',70000),
	('MOV003','DIR524','GEN013','PUB524','VIP','Kisah laki-laki anak dari guru di sekolah berkualitas yang menjadi pembunuh berantai ','2020',99000),
	('MOV004','DIR289','GEN241','PUB289','Spiderman','Seorang pria yang mendapatkan superpower dari gigitan laba-laba','2015',55000),
	('MOV005','DIR837','GEN523','PUB837','Mariposa','Kisah si ambisius yang mengejar hati si cuek','2012',55000),
	('MOV006','DIR065','GEN072','PUB065','Milea','Diangkat dari novel Suara dari Dilan yang merupakan lanjutan dari film Dilan','2016',70000),
	('MOV007','DIR234','GEN788','PUB234','Dilan','Mengisahkan 2 sejoli yang bertemu dan menjalin kisah cinta pertama kalinya','2006',70000),
	('MOV008','DIR465','GEN985','PUB465','Dignitate','Menceritakan pentingnya hubungan komunikasi di dalam keluarga','2004',55000),
	('MOV009','DIR876','GEN184','PUB876','NKCTHI','Terdapat rahasia di salah satu keluarga yang makin lama makin terbongkar','2014',70000),
	('MOV010','DIR037','GEN687','PUB037','Pretty Boys','Menceritakan ketika musisi bahas dunia TV','2007',55000),
	('MOV011','DIR100','GEN010','PUB001','Little Women','4 kakak beradik yang berjuang untuk mencari jalan hidupnya','2010',55000),
	('MOV012','DIR200','GEN020','PUB002','Bloodshot','Mengisahkan Vin Diesel yang hidup kembali dari kematian','2002',35000),
	('MOV013','DIR300','GEN030','PUB003','A Quite Place','Keluarga yang hidup secara keheningan dan monster','2019',55000),
	('MOV014','DIR400','GEN040','PUB004','Bad Boys for Life','Kisah persahabatan laki-laki yang kembali menuntas kejahatan setelah sekian lama','2018',55000),
	('MOV015','DIR500','GEN050','PUB005','Dotlittle','Petualangan mencarikan obat untuk sang Ratu','2012',55000)

INSERT INTO Review VALUES
	('USR492','MOV001','Recommended','Great','19-09-2018'),
	('USR135','MOV002','Recommended','Best','06-02-2016'),
	('USR524','MOV003','Recommended','Good','22-09-2020'),
	('USR289','MOV004','Recommended','Excellent','23-05-2019'),
	('USR837','MOV005','Not Recommended','Bad','11-04-2018'),
	('USR065','MOV006','Not Recommended','Average','17-01-2016'),
	('USR234','MOV007','Recommended','Great','29-12-2019'),
	('USR465','MOV008','Not Recommended','Bad','01-03-2020'),
	('USR876','MOV009','Recommended','Excellent','15-06-2018'),
	('USR037','MOV010','Recommended','Good','25-11-2019'),
	('USR281','MOV011','Recommended','Great','10-10-2016'),
	('USR001','MOV012','Not Recommended','Average','12-12-2018'),
	('USR322','MOV013','Recommended','Best','03-09-2020'),
	('USR101','MOV014','Recommended','Great','20-10-2019'),
	('USR300','MOV015','Not Recommended','Bad','28-01-2016')