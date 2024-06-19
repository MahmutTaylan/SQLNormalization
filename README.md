# SQLNormalization
Banka dekontunu örnek alarak bir veri tabanı oluşturmak

BOOST Proje: SQL Normalizasyon

Aşağıda paylaştığım banka dekontunu örnek alarak bir veri tabanı oluşturmak istiyoruz. Bu proje 3 kısımdan oluşacak.

1. Örnekteki tabloyu sınıfta yaptığımız gibi Normalizasyon kurallarına uygun bölün. Her Normalizasyon aşamasın bitirince ayrı bir dosyaya kaydedin. Böylece projenin ilk kısmını tamamladığınızda elinizde 3 Excel dosyası olsun. Bu dosyaları NF1, NF2, NF3 olarak adlandırın. Bu dosyaları projeyi teslim ederken paylaşın.

2. Ardından ilgili tabloları oluşturacak DDL kodunu yazın ve “CreateTables.sql” olarak adlandıracağınız tek dosya olarak kaydedin. DDL kodu hazırlarken tablo tanımları, anahtarları ve kısıtlamaları tanımlamayı unutmayın. Veri tabanı kullanıcıları ve haklarını tanıtmanıza gerek YOK.

3. Son olarak veriler girildiğinde aşağıdaki görüntüyü getirecek bir View tanımı yazın ve “CreateViews.sql” olarak adlandırın.

Tüm dosyaları hazırladıktan sonra adlarınız ile tanımlanmış bir rar dosyasında birleştirip teslim edin.

Hesap No Müşteri Şube Hesap İşlem Tarih

74 100 10 100 – Ali KARA 74 Bartın 10 TL Hesabı 100001-ATMden 400 TL Para Yatırma 100002-ATMden 200 TL Para Çekme 100003-Internetten 89 TL Fatura Ödeme 2/01 25/01 20/01

67 100 11 67 Zonguldak 11 EURO Hesabı 100025-Şubeden 200 EURO Para Yatırma 15/1

78 101 12 101 – Ayşe SARI 78 Karabük 12 USD Hesabı 100058-ATMden 100 USD Para Çekme 2/2

74 101 10 74 Bartın 10 TL Hesabı 101005-Şubeden 200 TL Para Yatırma 101048-Internetten 115 TL Fatura Ödeme 20/01 20/01
