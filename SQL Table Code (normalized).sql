/*
 * Create tables and relations
 */
CREATE TABLE msPerusahaan (
    id_perusahaan INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nama_perusahaan VARCHAR(255) NOT NULL,
    alamat_perusahaan VARCHAR(255) NOT NULL,
    no_telp_perusahaan VARCHAR(16) NOT NULL,
    alamat_web_perusahaan VARCHAR(255) NOT NULL,
    disetujui_oleh VARCHAR(255) NOT NULL
);

CREATE TABLE trKendaraan (
    nopol_kendaraan VARCHAR(9) PRIMARY KEY NOT NULL
    CHECK (nopol_kendaraan REGEXP '^[A-Z]{1,2} [0-9]{1,4} [A-Z]{1,3}$'),
    id_perusahaan INT NOT NULL,
    kilometer INT NOT NULL,
    model_kendaraan VARCHAR(255) NOT NULL,
    tahun_pembuatan INT NOT NULL,
    pemohon VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_perusahaan) REFERENCES msPerusahaan (id_perusahaan)
    
);

CREATE TABLE msPekerjaan (
    id_pekerjaan INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    perbaikan VARCHAR(255) NOT NULL,
    sp CHAR(1) NOT NULL,
    rekomendasi_bengkel VARCHAR(255) NOT NULL
);

CREATE TABLE trPermohonan (
    id_permohonan CHAR(5) PRIMARY KEY NOT NULL
    CHECK (id_permohonan REGEXP '^PR[0-9]{3}$'),
    nopol_kendaraan VARCHAR(9) NOT NULL,
    id_pekerjaan INT NOT NULL,
    tanggal_sp DATE NOT NULL,
    kilometer_sp INT NOT NULL,
    perkiraan_biaya INT NOT NULL,
    FOREIGN KEY (nopol_kendaraan) REFERENCES trKendaraan (nopol_kendaraan),
    FOREIGN KEY (id_pekerjaan) REFERENCES msPekerjaan (id_pekerjaan)
    
);

/*
 * Insert data
 */
INSERT INTO msPerusahaan (
    nama_perusahaan,
    alamat_perusahaan,
    no_telp_perusahaan,
    alamat_web_perusahaan,
    disetujui_oleh
) VALUES
    ('PT Kreasi Digital Nusantara', 'Gedung Graha Teknologi, Lantai 10, Jl. Jenderal Sudirman Kav 52, Jakarta Selatan 12190, DKI Jakarta, Indonesia', '+628172635582', 'https://kreasidigital.id/', 'ARIQ'),
    ('PT Inovasi Masa Depan', 'Kompleks Perkantoran BSD City, Blok AA-1, Tangerang Selatan 15335, Banten, Indonesia', '+628376152435', 'https://inovasimasa.com/', 'NIZAR'),
    ('PT Transformasi Bisnis Indonesia', 'Menara Astra, Jl. Jenderal Sudirman Kav. 45, Jakarta Selatan 12190, DKI Jakarta, Indonesia', '+628472651242', 'https://transformasibisnis.id/', 'RAKA'),
    ('PT Mitra Teknologi Global', 'Kawasan Industri Jababeka, Cikarang, Bekasi 17530, Jawa Barat, Indonesia', '+625341762836', 'https://mitrateknologi.com/', 'ZAKI'),
    ('PT Harmoni Bumi Nusantara', 'Jl. Raya Kuta, Badung, Bali 80361, Indonesia', '628472615243', 'https://harmonibumi.com/', 'YUSUF'),
    ('PT Lestari Alam Indonesia', 'Jl. Diponegoro No. 100, Yogyakarta 55122, Daerah Istimewa Yogyakarta, Indonesia', '+628673514234', 'https://lestarialam.id/', 'IRFAN'),
    ('PT Karya Anak Bangsa', 'Gedung Sentra Bisnis, Jl. Ahmad Yani, Surabaya 60235, Jawa Timur, Indonesia', '+626351425374', 'https://karyabangsa.com/', 'BAGAS'),
    ('PT Warisan Budaya Indonesia', 'Kompleks Candi Prambanan, Sleman, Yogyakarta 55571, Daerah Istimewa Yogyakarta, Indonesia', '+628560372635', 'https://warisanbudaya.id/', 'HAFIZ'),
    ('PT Nusantara Jaya', 'Menara BCA, Jl. MH Thamrin No. 1, Jakarta Pusat 10310, DKI Jakarta, Indonesia', '+628172635582', 'https://nusantarajaya.com/', 'REZA'),
    ('PT Solusi Cerdas Indonesia', 'Ruko Taman Palem Lestari Blok A No. 12, Cengkareng, Jakarta Barat 11730, DKI Jakarta, Indonesia', '+628476517365', 'https://solusicerdas.id/', 'GILANG');

INSERT INTO trKendaraan (
    nopol_kendaraan,
    id_perusahaan,
    kilometer,
    model_kendaraan,
    tahun_pembuatan,
    pemohon
) VALUES
    ('B 444 GUS', 1, 85000, 'HONDA CIVIC', 2020, 'RAFIF'),
    ('B 1234 ABC', 2, 120000, 'TOYOYA AVANZA', 2018, 'FAHRI'),
    ('D 3283 ADL', 3, 65000, 'HYUNDAI IONIQ 5', 2022, 'ALIF'),
    ('BK 5392 EIA', 4, 45000, 'MITSUBISHI XPANDER', 2020, 'FADIL'),
    ('L 2458 HUK', 5, 60000, 'SUZUKI ERTIGA', 2017, 'ILHAM'),
    ('D 4822 KLM', 6, 30000, 'NISSAN LEAF', 2020, 'FADIL'),
    ('BK 2222 QWE', 7, 100000, 'HONDA BRIO', 2019, 'FAKHRU'),
    ('DD 1933 WJG', 8, 15000, 'BYD SEAL', 2023, 'RAMZI'),
    ('B 277 KNN', 9, 20000, 'BMW 320i', 2022, 'ARIEF'),
    ('DD 2222 FAR', 10, 140000, 'TOYOTA INNOVA', 2016, 'ALWAN');

INSERT INTO msPekerjaan (
    perbaikan,
    sp,
    rekomendasi_bengkel
) VALUES
    ('PERBAIKAN REM', 'P', 'BENGKEL AMAN REM'),
    ('TUNE-UP MESIN', 'P', 'BENGKEL TUNEMAX'),
    ('SERVICE RUTIN', 'S', 'BENGKEL MITRA JAYA'),
    ('GANTI OLI', 'S', 'BENGKEL OLI PRO'),
    ('GANTI AKI', 'S', 'BENGKEL PRIMA AKI'),
    ('GANTI BAN', 'P', 'BENGKEL SAPUTRA BAN'),
    ('SERVICE AC', 'S', 'BENGKEL DINGIN SEJATI'),
    ('PERBAIKAN SUSPENSI', 'P', 'BENGKEL KAKI-KAKI JAYA'),
    ('PERBAIKAN TRANSMISI', 'P', 'BENGKEL TRANS AUTO'),
    ('GANTI KAMPAS KOPLING', 'P', 'BENGKEL KOPLING HEBAT');

INSERT INTO trPermohonan (
    id_permohonan,
    nopol_kendaraan,
    id_pekerjaan,
    tanggal_sp,
    kilometer_sp,
    perkiraan_biaya
) VALUES
    ('PR001', 'B 444 GUS', 1, '2024-01-10', 75000, 1200000),
    ('PR002', 'B 444 GUS', 2, '2024-01-10', 75000, 900000),
    ('PR003', 'B 1234 ABC', 3, '2024-07-01', 110000, 500000),
    ('PR004', 'B 1234 ABC', 4, '2024-03-01', 110000, 500000),
    ('PR005', 'D 3283 ADL', 5, '2024-10-20', 60000, 1000000),
    ('PR006', 'BK 5392 EIA', 5, '2024-06-15', 40000, 900000),
    ('PR007', 'L 2458 HUK', 6, '2023-12-12', 55000, 2400000),
    ('PR008', 'L 2458 HUK', 7, '2023-06-20', 50000, 700000),
    ('PR009', 'D 4822 KLM', 8, '2024-05-25', 90000, 1800000),
    ('PR010', 'BK 2222 QWE', 3, '2024-01-02', 95000, 1000000),
    ('PR011', 'BK 2222 QWE', 2, '2023-08-01', 85000, 800000),
    ('PR012', 'DD 1933 WJG', 3, '2024-10-10', 10000, 500000),
    ('PR013', 'B 277 KNN', 4, '2024-03-18', 15000, 500000),
    ('PR014', 'B 277 KNN', 3, '2024-03-18', 15000, 800000),
    ('PR015', 'DD 2222 FAR', 9, '2024-07-05', 130000, 3500000),
    ('PR016', 'DD 2222 FAR', 10, '2024-01-02', 120000, 2000000);
