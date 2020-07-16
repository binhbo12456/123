Create database sinhvien;
Use sinhvien;
create table ThongTinSV
(
    Id        int unique  not null auto_increment,
    Ten       varchar(50) not null,
    Mssv      int         not null,
    TruongHoc varchar(50) not null,
    LopHoc    varchar(50) not null,

    primary key (Id)
);

Create table TheUuDai
(
    Id int unique not null auto_increment,
    theuudai varchar(50),
    foreign key (Id) references ThongTinSV(Id) on DELETE CASCADE
);

