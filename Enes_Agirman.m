% Enes AĞIRMAN

vergisizFiyat=input('Lutfen Vergisiz fiyatı giriniz: '); %kullanıcıdan veri girişi almak için input komutu kullanıyoruz.

%kullanıcıdan girilen fiyata göre mevcut sistemde aşağıdaki if,elseif,else 
%yapılarından hangisinin içine gireceğini belirliyoruz.
mevcutSistemOtvOrani = 0;

if vergisizFiyat>0 && vergisizFiyat<120000 %girilen değer 0-120000 arası ise if'e girecek.
    mevcutSistemOtvOrani=45;
    mevcutSistemOtvTutari=vergisizFiyat*(45/100);
    mevcutSistemOtvliFiyat=vergisizFiyat+mevcutSistemOtvTutari;
    mevcutSistemKdvTutari=mevcutSistemOtvliFiyat*(18/100);
    mevcutSistemToplamFiyat=mevcutSistemOtvliFiyat+mevcutSistemKdvTutari;
  
elseif vergisizFiyat>=120000 && vergisizFiyat<150000 %girilen değer 120000-150000 arası ise bu elseif'e girecek.
    mevcutSistemOtvOrani=50;
    mevcutSistemOtvTutari=vergisizFiyat*(50/100);
    mevcutSistemOtvliFiyat=vergisizFiyat+mevcutSistemOtvTutari;
    mevcutSistemKdvTutari=mevcutSistemOtvliFiyat*(18/100);
    mevcutSistemToplamFiyat=mevcutSistemOtvliFiyat+mevcutSistemKdvTutari;
   
elseif vergisizFiyat>=150000 && vergisizFiyat<175000 %girilen değer 150000-175000 arası ise bu elseif'e girecek.
    mevcutSistemOtvOrani=60;
    mevcutSistemOtvTutari=vergisizFiyat*(60/100);
    mevcutSistemOtvliFiyat=vergisizFiyat+mevcutSistemOtvTutari;
    mevcutSistemKdvTutari=mevcutSistemOtvliFiyat*(18/100);
    mevcutSistemToplamFiyat=mevcutSistemOtvliFiyat+mevcutSistemKdvTutari;
  
elseif vergisizFiyat>=175000 && vergisizFiyat<200000 %girilen değer 175000-200000 arası ise bu elseif'e girecek.
    mevcutSistemOtvOrani=70;
    mevcutSistemOtvTutari=vergisizFiyat*(70/100);
    mevcutSistemOtvliFiyat=vergisizFiyat+mevcutSistemOtvTutari;
    mevcutSistemKdvTutari=mevcutSistemOtvliFiyat*(18/100);
    mevcutSistemToplamFiyat=mevcutSistemOtvliFiyat+mevcutSistemKdvTutari;
  
elseif vergisizFiyat>=200000 %girilen değer 200000 den büyük ise bu elseif'e girecek.
    mevcutSistemOtvOrani=80;
    mevcutSistemOtvTutari=vergisizFiyat*(80/100);
    mevcutSistemOtvliFiyat=vergisizFiyat+mevcutSistemOtvTutari;
    mevcutSistemKdvTutari=mevcutSistemOtvliFiyat*(18/100);
    mevcutSistemToplamFiyat=mevcutSistemOtvliFiyat+mevcutSistemKdvTutari;
   
else %girilen değer negatif sayı ise bu else'e girip uyarı yazdırılacak.
    disp('Lutfen Geçerli Bir Tutar Giriniz!');
end
%end değimi ile 1.if yapısını sonlandırıyoruz.Blok içerisinde ötv,kdv ve
%toplam tutar hesaplıyoruz.

%Tekrardan if,elseif,else yapıları ile bu sefer Kademeli Sistem için girilen
%fiyata göre blok içlerinde ötv,kdv ve toplam tutar hesaplarını her blok 
%için ayrı ayrı hesaplıyoruz.
kademeliSistemOtvOrani='';


if vergisizFiyat>0 && vergisizFiyat<120000 %girilen değer 0-120000 arası ise if'e girecek.
    kademeliSistemOtvOrani='45';
    kademeliSistemOtvTutari=vergisizFiyat*(45/100);
    kademeliSistemOtvliFiyat=vergisizFiyat+kademeliSistemOtvTutari;
    kademeliSistemKdvTutari=kademeliSistemOtvliFiyat*(18/100);
    kademeliSistemToplamFiyat=kademeliSistemOtvliFiyat+kademeliSistemKdvTutari;
elseif vergisizFiyat>=120000 && vergisizFiyat<150000 %girilen değer 120000-150000 arası ise bu elseif'e girecek.
    kademeliSistemOtvOrani='45,50';
    kademeliSistemOtvTutari=(120000*(45/100))+((vergisizFiyat-120000)*(50/100));
    kademeliSistemOtvliFiyat=vergisizFiyat+kademeliSistemOtvTutari;
    kademeliSistemKdvTutari=kademeliSistemOtvliFiyat*(18/100);
    kademeliSistemToplamFiyat=kademeliSistemOtvliFiyat+kademeliSistemKdvTutari;
elseif vergisizFiyat>=150000 && vergisizFiyat<175000 %girilen değer 150000-175000 arası ise bu elseif'e girecek.
    kademeliSistemOtvOrani='45,50,60';
    kademeliSistemOtvTutari=(120000*(45/100))+(30000*(50/100))+((vergisizFiyat-150000)*(60/100));
    kademeliSistemOtvliFiyat=vergisizFiyat+kademeliSistemOtvTutari;
    kademeliSistemKdvTutari=kademeliSistemOtvliFiyat*(18/100);
    kademeliSistemToplamFiyat=kademeliSistemOtvliFiyat+kademeliSistemKdvTutari;
elseif vergisizFiyat>=175000 && vergisizFiyat<200000 %girilen değer 175000-200000 arası ise bu elseif'e girecek.
    kademeliSistemOtvOrani='45,50,60,70';
    kademeliSistemOtvTutari=(120000*(45/100))+(30000*(50/100))+(25000*(60/100))+((vergisizFiyat-175000)*(70/100));
    kademeliSistemOtvliFiyat=vergisizFiyat+kademeliSistemOtvTutari;
    kademeliSistemKdvTutari=kademeliSistemOtvliFiyat*(18/100);
    kademeliSistemToplamFiyat=kademeliSistemOtvliFiyat+kademeliSistemKdvTutari; 
elseif vergisizFiyat>=200000  %girilen değer 200000 den büyük ise bu elseif'e girecek.
    kademeliSistemOtvOrani='45,50,60,70,80';
    kademeliSistemOtvTutari=(120000*(45/100))+(30000*(50/100))+(25000*(60/100))+(25000*(70/100))+((vergisizFiyat-200000)*(80/100));
    kademeliSistemOtvliFiyat=vergisizFiyat+kademeliSistemOtvTutari;
    kademeliSistemKdvTutari=kademeliSistemOtvliFiyat*(18/100);
    kademeliSistemToplamFiyat=kademeliSistemOtvliFiyat+kademeliSistemKdvTutari;
   
else %girilen değer negatif sayı ise bu else'e girip uyarı yazdırılacak.
     disp('Lutfen Geçerli Bir Tutar Giriniz!');
end

%2.end değimimiz ile Kademeli Sistemin if yapısını bitiriyoruz.

fprintf('\nİstenenler                           Mevcut Sistem               Kademeli Sistem               Fark      \n'); 
fprintf('---------------------------------------------------------------------------------------------------------\n');
fprintf('ÖTV Matrahı(TL)\t\t\t\t\t\t\t');
fprintf('%d\t\t\t\t\t\t',vergisizFiyat,vergisizFiyat,vergisizFiyat-vergisizFiyat);
fprintf('\n---------------------------------------------------------------------------------------------------------\n');
fprintf('ÖTV Oranı(%%)\t\t\t\t\t\t\t');
fprintf('%g\t\t\t\t\t\t\t%s',mevcutSistemOtvOrani,kademeliSistemOtvOrani);
fprintf('\n---------------------------------------------------------------------------------------------------------\n');
fprintf('ÖTV Tutarı(TL)\t\t\t\t\t\t\t');
fprintf('%g\t\t\t\t\t\t',mevcutSistemOtvTutari,kademeliSistemOtvTutari,mevcutSistemOtvTutari-kademeliSistemOtvTutari);
fprintf('\n---------------------------------------------------------------------------------------------------------\n');
fprintf('ÖTV Matrahı+ÖTV Tutarı(TL)\t\t\t\t');
fprintf('%2.f\t\t\t\t\t\t',mevcutSistemOtvliFiyat,kademeliSistemOtvliFiyat,mevcutSistemOtvliFiyat-kademeliSistemOtvliFiyat);
fprintf('\n---------------------------------------------------------------------------------------------------------\n');
fprintf('KDV Tutarı(TL)\t\t\t\t\t\t\t');
fprintf('%g\t\t\t\t\t\t',mevcutSistemKdvTutari,kademeliSistemKdvTutari,mevcutSistemKdvTutari-kademeliSistemKdvTutari);
fprintf('\n---------------------------------------------------------------------------------------------------------\n');
fprintf('Toplam Vergi(TL)\t\t\t\t\t\t');
fprintf('%2.f\t\t\t\t\t\t',mevcutSistemOtvTutari+mevcutSistemKdvTutari,kademeliSistemOtvTutari+kademeliSistemKdvTutari,(mevcutSistemOtvTutari+mevcutSistemKdvTutari)-(kademeliSistemOtvTutari+kademeliSistemKdvTutari));
fprintf('\n---------------------------------------------------------------------------------------------------------\n');
fprintf('Araç Satış Fiyatı(TL)\t\t\t\t\t');
fprintf('%2.f\t\t\t\t\t\t',mevcutSistemToplamFiyat,kademeliSistemToplamFiyat,mevcutSistemToplamFiyat-kademeliSistemToplamFiyat);
%Yukarıdaki fprintf yapıları ile ekran çıktısını ödevdeki 2.tablonun aynısı
%olacak şekilde ayarlıyoruz.İlk fprintf yapısı ile istenen tablo başlığını 
%yazdırıyoruz aralara boşluk koyarak mesafe bırakıyoruz..Ardından gelen 
%diğer fprintfler ile istenen değerlere gelecek değerleri bastırtıyoruz ve 
%\t ifadesi ile araladaki boşlukları tab değerleri ile belirliyoruz.
%Satır satır görünüş elde etmek için aralara - ile oluşan fprintfleri bastırıyoruz.
%ödevimizi burada tamamlamış oluyoruz ve kullanıcılar rahatlıkla ekran çıktılarını görebilirler 


