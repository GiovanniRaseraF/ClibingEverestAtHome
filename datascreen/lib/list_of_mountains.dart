import 'dart:convert';

String infoJsonstr = """
[{"name":"Mount Everest","met":8848,"inf":"Himalayas","loc":"Geography of Nepal","loc1":"Nepal/China","loc2":"","loc3":"","loc4":""},{"name":"K2","met":8611,"inf":"Karakoram","loc":"Pakistan/China","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Kangchenjunga","met":8586,"inf":"Himalayas","loc":"Nepal/India","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Lhotse","met":8516,"inf":"Himalayas","loc":"Nepal","loc1":"Climbers ascend Lhotse Face in climbing Everest","loc2":"","loc3":"","loc4":""},{"name":"Makalu","met":8485,"inf":"Himalayas","loc":"Nepal","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Cho Oyu","met":8188,"inf":"Himalayas","loc":"Nepal","loc1":"Considered easiest eight-thousander","loc2":"","loc3":"","loc4":""},{"name":"Dhaulagiri","met":8167,"inf":"Himalayas","loc":"Nepal","loc1":"Presumed world's highest from 1808-1838","loc2":"","loc3":"","loc4":""},{"name":"Manaslu","met":8163,"inf":"Himalayas","loc":"Nepal","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Nanga Parbat","met":8126,"inf":"Himalayas","loc":"Pakistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Annapurna","met":8091,"inf":"Himalayas","loc":"Nepal","loc1":"First eight-thousander to be climbed (1950)","loc2":"","loc3":"","loc4":""},{"name":"Gasherbrum I (Hidden peak","met":"K5)","inf":8080,"loc":"Karakoram","loc1":"Pakistan/China","loc2":"Originally named K5","loc3":"","loc4":""},{"name":"Broad Peak","met":8051,"inf":"Karakoram","loc":"Pakistan/China","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Gasherbrum II (K4)","met":8035,"inf":"Karakoram","loc":"Pakistan/China","loc1":"Originally named K4","loc2":"","loc3":"","loc4":""},{"name":"Shishapangma","met":8027,"inf":"Himalayas","loc":"China","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Gasherbrum III","met":7952,"inf":"Karakoram","loc":"Geography of Pakistan","loc1":"Pakistan","loc2":"","loc3":"","loc4":""},{"name":"Gyachung Kang","met":7952,"inf":"Himalayas","loc":"Geography of Nepal","loc1":"Nepal (Khumbu)/Geography of China","loc2":"China","loc3":"","loc4":""},{"name":"Annapurna","met":"Annapurna II","inf":7937,"loc":"Himalayas","loc1":"Nepal","loc2":"","loc3":"","loc4":""},{"name":"Gasherbrum IV (K3)","met":7932,"inf":"Karakoram","loc":"Pakistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Himalchuli","met":7893,"inf":"Himalayas","loc":"Manaslu, Nepal","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Distaghil Sar","met":7885,"inf":"Karakoram","loc":"Pakistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Ngadi Chuli","met":7871,"inf":"Himalayas","loc":"Manaslu, Nepal","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Nuptse","met":7861,"inf":"Himalayas","loc":"Everest Massif, Nepal","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Khunyang Chhish","met":7852,"inf":"Karakoram","loc":"Pakistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Masherbrum (K1)","met":7821,"inf":"Karakoram","loc":"Pakistan","loc1":"Originally named K1","loc2":"","loc3":"","loc4":""},{"name":"Nanda Devi","met":7816,"inf":"Himalayas","loc":"India (Uttarakhand)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Chomo Lonzo","met":7804,"inf":"Himalayas","loc":"Makalu Massiff, Nepal/China","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Batura Sar","met":7795,"inf":"Karakoram","loc":"Pakistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Kanjut Sar","met":7790,"inf":"Karakoram","loc":"Pakistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Rakaposhi","met":7788,"inf":"Karakoram","loc":"Pakistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Namcha Barwa","met":7782,"inf":"Himalayas","loc":"China","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Batura II","met":7762,"inf":"Karakoram","loc":"Pakistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Kamet","met":7756,"inf":"Himalayas","loc":"India (Uttarakhand)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Saltoro Kangri","met":7742,"inf":"Karakoram","loc":"India (Ladakh)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Batura III","met":7729,"inf":"Karakoram","loc":"Pakistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Jannu","met":7710,"inf":"Himalayas","loc":"Kangchenjunga, Nepal","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Tirich Mir","met":7708,"inf":"Hindu Kush","loc":"Pakistan","loc1":"#1 in Hindu Kush","loc2":"","loc3":"","loc4":""},{"name":"Molamenqing","met":7703,"inf":"Himalayas","loc":"Shishapangma group, China","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Gurla Mandhata","met":7694,"inf":"Himalayas (Nalakankar Himal","loc":"Nalakankar)","loc1":"China","loc2":"","loc3":"","loc4":""},{"name":"Saser Kangri","met":7672,"inf":"Karakoram","loc":"India (Ladakh)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Chogolisa","met":7665,"inf":"Karakoram","loc":"Pakistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Kongur Tagh","met":7649,"inf":"Pamir or Kunlun Mountains","loc":"China","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Shispare","met":7611,"inf":"Karakoram","loc":"Pakistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Silberzacken","met":7597,"inf":"Himalaya","loc":"Pakistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Changtse","met":7583,"inf":"Himalayas","loc":"Everest Massif, China","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Trivor","met":7577,"inf":"Karakoram","loc":"Karakoram","loc1":"Pakistan","loc2":"","loc3":"","loc4":""},{"name":"Gangkhar Puensum","met":7570,"inf":"Himalayas","loc":"Bhutan/China","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Gongga Shan","met":7556,"inf":"Daxue Mountains","loc":"Daxue Shan","loc1":"Sichuan, China","loc2":"","loc3":"","loc4":""},{"name":"Annapurna","met":"Annapurna III","inf":7555,"loc":"Himalayas","loc1":"Nepal","loc2":"","loc3":"","loc4":""},{"name":"Kula Kangri","met":7554,"inf":"Himalayas","loc":"China  (possibly also Bhutan)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Skyang Kangri","met":7545,"inf":"Karakoram","loc":"Pakistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Liankang Kangri","met":7535,"inf":"Himalayas","loc":"Bhutan/China","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Yukshin Gardan Sar","met":7530,"inf":"Karakoram","loc":"Pakistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Annapurna","met":"Annapurna IV","inf":7525,"loc":"Himalayas","loc1":"Nepal","loc2":"","loc3":"","loc4":""},{"name":"Saser Kangri II","met":7518,"inf":"Karakoram","loc":"India (Ladakh)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mamostong Kangri","met":7516,"inf":"Karakoram","loc":"India (Ladakh)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Muztagh Ata","met":7509,"inf":"Pamir or Kunlun Mountains","loc":"China (Xinjiang)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Ismoil Somoni Peak","met":7495,"inf":"Pamir Mountains","loc":"Geography of Tajikistan","loc1":"Tajikistan","loc2":"","loc3":"","loc4":""},{"name":"Saser Kangri III","met":7495,"inf":"Karakoram","loc":"India (Ladakh)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Noshaq","met":7492,"inf":"Hindu Kush","loc":"Pakistan/Afghanistan","loc1":"#1 in Afghanistan","loc2":"","loc3":"","loc4":""},{"name":"Pumari Chhish","met":7492,"inf":"Karakoram","loc":"Pakistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Passu Sar","met":7476,"inf":"Karakoram","loc":"Pakistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Jongsong Peak","met":7462,"inf":"Himalayas","loc":"India/Nepal/China","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Malubiting","met":7458,"inf":"Karakoram","loc":"Pakistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Gangapurna","met":7455,"inf":"Annapurna","loc":"Annapurna Himalaya","loc1":"Nepal","loc2":"","loc3":"","loc4":""},{"name":"Muchu Chhish","met":"Muchu Chhish (Batura V)","inf":7453,"loc":"Karakoram","loc1":"Pakistan","loc2":"","loc3":"","loc4":""},{"name":"Jengish Chokusu","met":7439,"inf":"Tian Shan","loc":"China/Geography of Kyrgyzstan","loc1":"Kyrgyzstan","loc2":"#1 in Tian Shan","loc3":"","loc4":""},{"name":"K12 (mountain)","met":"K12","inf":7428,"loc":"Karakoram","loc1":"India/Pakistan","loc2":"","loc3":"","loc4":""},{"name":"Sia Kangri","met":7422,"inf":"Karakoram","loc":"Pakistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Momhil Sar","met":7414,"inf":"Karakoram","loc":"Pakistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Istor-o-Nal","met":7403,"inf":"Hindu Kush","loc":"Pakistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Ghent Kangri","met":7401,"inf":"Karakoram","loc":"India  (Ladakh)/Pakistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Haramosh Peak","met":7397,"inf":"Karakoram","loc":"Pakistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Kabru","met":7394,"inf":"Himalayas","loc":"Kanchenjunga, India (Sikkim)/Nepal","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Ultar","met":7388,"inf":"Karakoram","loc":"Pakistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Rimo I","met":7385,"inf":"Karakoram","loc":"India (Ladakh)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Sherpi Kangri","met":7380,"inf":"Karakoram","loc":"Pakistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Churen Himal","met":7371,"inf":"Himalayas","loc":"Nepal","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Labuche Kang","met":7367,"inf":"Himalayas","loc":"near Cho Oyu, Nepal/China","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Kirat Chuli","met":7365,"inf":"Himalayas","loc":"Nepal/India (Sikkim) border","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Skil Brum","met":7360,"inf":"Karakoram","loc":"Pakistan","loc1":"May also be given as 7,410&nbsp","loc2":"m","loc3":"","loc4":""},{"name":"Abi Gamin","met":7355,"inf":"Himalayas","loc":"India","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Gimmigela Chuli","met":7350,"inf":"Himalayas","loc":"Nepal/India (Sikkim) border","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Saraghrar","met":7340,"inf":"Hindu Kush","loc":"Pakistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Bojohagur Duanasir","met":7329,"inf":"Karakoram","loc":"Pakistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Chamlang","met":7319,"inf":"Himalayas","loc":"Khumbu, Nepal","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Chongtar Kangri","met":7315,"inf":"Karakoram","loc":"Pakistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Jomolhari","met":"Jomolhari / Chomolhari","inf":7314,"loc":"Himalayas","loc1":"Geography of Bhutan","loc2":"Bhutan/China","loc3":"","loc4":""},{"name":"Baltoro Kangri","met":7312,"inf":"Karakoram","loc":"Pakistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Siguang Ri","met":7308,"inf":"Himalayas","loc":"China","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Summa Ri","met":7302,"inf":"Himalayas","loc":"Pakistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"The Crown (mountain)","met":"The Crown","inf":7295,"loc":"Karakoram","loc1":"China (Xinjiang)","loc2":"","loc3":"","loc4":""},{"name":"Gyala Peri","met":7294,"inf":"Himalayas","loc":"China","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Porong Ri","met":7292,"inf":"Himalayas","loc":"China","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Baintha Brakk","met":7285,"inf":"Karakoram","loc":"Pakistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Yutmaru Sar","met":7283,"inf":"Karakoram","loc":"Pakistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"K6 (mountain)","met":"K6","inf":7282,"loc":"Karakoram","loc1":"Pakistan","loc2":"Also known as Baltistan Peak","loc3":"","loc4":""},{"name":"Kangpenqing","met":7281,"inf":"Himalayas","loc":"China","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Kamet","met":"Mana Peak","inf":7272,"loc":"Himalayas","loc1":"India (Uttarakhand)","loc2":"SSE of Kamet","loc3":"","loc4":""},{"name":"Muztagh Tower","met":7273,"inf":"Karakoram","loc":"Pakistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Diran","met":7257,"inf":"Karakoram","loc":"Pakistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Apsarasas Kangri","met":7245,"inf":"Karakoram","loc":"China/Pakistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Langtang Lirung","met":7227,"inf":"Himalayas","loc":"Nepal","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Karjiang","met":7221,"inf":"Himalayas","loc":"China","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Annapurna","met":"Annapurna South","inf":7219,"loc":"Himalayas","loc1":"Nepal","loc2":"","loc3":"","loc4":""},{"name":"Khartaphu","met":7213,"inf":"Himalayas","loc":"China","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Tongshanjiabu","met":7207,"inf":"Himalayas","loc":"Bhutan/China","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Langtang Ri","met":7205,"inf":"Himalayas","loc":"Nepal/China","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Kangphu Kang","met":7204,"inf":"Himalayas","loc":"Bhutan/China","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Singhi Kangri","met":7202,"inf":"Himalayas","loc":"India/China","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Lupghar Sar","met":7200,"inf":"Karakoram","loc":"Pakistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Gurja Himal","met":7193,"inf":"Himalayas","loc":"Nepal","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Melungtse","met":7181,"inf":"Rolwaling Himal","loc":"Rolwaling Himalayas","loc1":"China","loc2":"","loc3":"","loc4":""},{"name":"Liushi Shan","met":7167,"inf":"Kunlun","loc":"China","loc1":"#1 in Kunlun","loc2":"","loc3":"","loc4":""},{"name":"Baruntse","met":7162,"inf":"Himalayas","loc":"Khumbu, Nepal","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pumori","met":7161,"inf":"Himalayas","loc":"Khumbu, Nepal","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Hardeol","met":7151,"inf":"Himalayas","loc":"India (Uttarakhand)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Gasherbrum V","met":7147,"inf":"Karakoram","loc":"Pakistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Latok","met":"Latok I","inf":7145,"loc":"Karakoram","loc1":"Pakistan","loc2":"","loc3":"","loc4":""},{"name":"Nemjung","met":7140,"inf":"Himalayas","loc":"Nepal","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Udren Zom","met":7140,"inf":"Hindu Kush","loc":"Pakistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Chaukhamba","met":7138,"inf":"Himalayas","loc":"India (Uttarakhand)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Nun Kun","met":7135,"inf":"Karakoram","loc":"India(Jammu and Kashmir, Ladakh)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Tilicho Peak","met":7134,"inf":"Himalayas","loc":"Annapurna Himal, Nepal","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Gauri Sankar","met":7134,"inf":"Rolwaling Himal","loc":"Rolwaling Himalayas","loc1":"Nepal/China","loc2":"","loc3":"","loc4":""},{"name":"Lenin Peak","met":7134,"inf":"Pamir Mountains","loc":"Geography of Tajikistan","loc1":"Tajikistan-Geography of Kyrgyzstan","loc2":"Kyrgyzstan","loc3":"#2 in Pamirs","loc4":""},{"name":"Bularung Sar","met":7134,"inf":"Karakoram","loc":"Pakistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Api (mountain)","met":"Api","inf":7132,"loc":"Himalayas","loc1":"Nepal","loc2":"","loc3":"","loc4":""},{"name":"Teri Kang","met":7124,"inf":"Himalayas","loc":"Bhutan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pauhunri","met":7128,"inf":"Himalayas","loc":"India (Sikkim)/China","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Trisul","met":7120,"inf":"Himalayas","loc":"India (Uttarakhand)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Peak Korzhenevskaya","met":"Korzhenevskaya","inf":7105,"loc":"Pamir Mountains","loc1":"Tajikistan","loc2":"#3 in Pamirs","loc3":"","loc4":""},{"name":"Lunpo Gangri","met":7095,"inf":"Himalayas (Gangdise)","loc":"China","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Satopanth","met":7075,"inf":"Himalayas","loc":"India (Uttarakhand)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Tirsuli","met":7074,"inf":"Himalayas","loc":"India (Uttarakhand)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Dunagiri (mountain)","met":"Dunagiri","inf":7066,"loc":"Himalayas","loc1":"India (Uttarakhand)","loc2":"","loc3":"","loc4":""},{"name":"Kangto","met":7060,"inf":"Himalayas","loc":"India (Arunachal Pradesh)/China","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Nyegyi Kansang","met":7047,"inf":"Himalayas","loc":"India (Arunachal Pradesh)/China","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Chomolhari Kang","met":7046,"inf":"Himalayas","loc":"Bhutan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Salasungo","met":7043,"inf":"Himalayas","loc":"Nepal/China","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Link Sar","met":7041,"inf":"Karakoram","loc":"Pakistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Kezhen Peak","met":7038,"inf":"Karakoram","loc":"China (Xinjiang)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Shah Dhar","met":7038,"inf":"Hindu Kush","loc":"Pakistan/Afghanistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Saipal","met":7031,"inf":"Himalayas","loc":"Nepal","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Padmanabh","met":7030,"inf":"Himalayas","loc":"India","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Spantik","met":7027,"inf":"Karakoram","loc":"Pakistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Khan Tengri","met":7010,"inf":"Tian Shan","loc":"Kyrgyzstan-Kazakhstan-China","loc1":"#2 in Tian Shan","loc2":"","loc3":"","loc4":""},{"name":"Machapuchare","met":6993,"inf":"Annapurna","loc":"Annapurna Himalaya, Geography of Nepal","loc1":"Nepal","loc2":"Officially unclimbed (attempts not allowed)","loc3":"","loc4":""},{"name":"Laila Peak (Haramosh Valley)","met":6985,"inf":"Karakoram, Pakistan","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Kang Guru","met":6981,"inf":"Manaslu","loc":"Manaslu Himalaya, Nepal","loc1":"2005 avalanche kills 18","loc2":"","loc3":"","loc4":""},{"name":"Gasherbrum VI","met":6979,"inf":"Karakoram, Pakistan","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Karun Kuh","met":6977,"inf":"Karakoram, Pakistan","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Avicenna Peak","met":6974,"inf":"Pamir Mountains, Geography of Tajikistan","loc":"Tajikistan","loc1":"#3 in Pamirs","loc2":"","loc3":"","loc4":""},{"name":"Ulugh Muztagh","met":6973,"inf":"Kunlun Mountains, Often misquoted as 7,723&nbsp","loc":"m","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Aconcagua","met":6961,"inf":"Andes, Argentina","loc":"Highest in both the Western Hemisphere","loc1":"Western and Southern Hemispheres, highest outside Asia","loc2":"","loc3":"","loc4":""},{"name":"Sangemarmar Sar","met":6949,"inf":"Karakoram, Pakistan","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Kedarnath (mountain)","met":6940,"inf":"Uttarakhand","loc":"Himalayas, India","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"K7 (mountain)","met":"K7","inf":6934,"loc":"Karakoram","loc1":"Pakistan","loc2":"","loc3":"","loc4":""},{"name":"Panchchuli","met":6904,"inf":"Uttarakhand","loc":"Himalayas, India","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Thalay Sagar","met":6904,"inf":"Uttarakhand","loc":"Himalayas, India","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Lunkho e Dosare","met":6901,"inf":"Hindu Kush, Afghanistan-Pakistan","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Lunag Ri","met":6895,"inf":"Himalaya, Nepal-China","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Ojos del Salado","met":6891,"inf":"Andes, Argentina-Chile","loc":"Highest volcano on Earth","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Siniolchu","met":6888,"inf":"Kangchenjunga","loc":"Kangchenjunga Himalaya, Geography of India","loc1":"India (Sikkim)","loc2":"","loc3":"","loc4":""},{"name":"Kanjiroba","met":6883,"inf":"Himalayas, Nepal","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Bairiga","met":6882,"inf":"Kangri Garpo","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Koyo Zom","met":6872,"inf":"Hindu Kush, Pakistan","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Nanda Kot","met":6861,"inf":"Geography of Uttarakhand","loc":"Himalayas, India (Uttarakhand)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Kubi Gangri","met":6859,"inf":"Himalayas, Nepal/China","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Angel Sar","met":6858,"inf":"Karakoram, Pakistan","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Bhagirathi Parbat I","met":6856,"inf":"Himalayas, India (Uttarakhand)","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Jethi Bahurani","met":6850,"inf":"Himalayas, Nepal","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Chongra Peak","met":6830,"inf":"Nanga Parbat","loc":"Nanga Parbat Himalaya, Pakistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Chomo Yummo","met":6829,"inf":"Sikkim, India/China","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Reo Purgyil","met":6816,"inf":"Western Himalaya, India border","loc":"Highest in Himachal Pradesh","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Ama Dablam","met":6812,"inf":"Himalayas, Nepal (Khumbu)","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Monte Pissis","met":6795,"inf":"Andes, Argentina","loc":"Third highest in Western Hemisphere","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Kangtega","met":6782,"inf":"Himalayas, Nepal","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Biarchedi","met":6781,"inf":"Karakoram, Pakistan","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Huascarán","met":"Huascarán Sur","inf":6768,"loc":"Andes, Geography of Peru","loc1":"Peru","loc2":"Highest","loc3":"","loc4":""},{"name":"Cerro Bonete","met":6759,"inf":"Andes, Geography of Argentina","loc":"Argentina","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Nevado Tres Cruces","met":6749,"inf":"Andes, Geography of Argentina","loc":"Argentina/Geography of Chile","loc1":"Chile","loc2":"","loc3":"","loc4":""},{"name":"Kawagarbo","met":6740,"inf":"Hengduan Mountains, China (Yunnan/Tibet)","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Llullaillaco","met":6739,"inf":"Andes, Argentina/Chile","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Cho Polu","met":6735,"inf":"Himalayas, Nepal (Khumbu)","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Kangju Kangri","met":6725,"inf":"Karakoram, India (Ladakh)","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Changla","met":6721,"inf":"Himalayas, Nepal/China","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mercedario","met":6720,"inf":"Andes, Geography of Argentina","loc":"Argentina","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Pandim","met":6691,"inf":"Himalayas, India (Sikkim)","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Num Ri","met":6677,"inf":"Himalayas, Nepal (Khumbu)","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Lungser Kangri","met":6666,"inf":"Ladakh, Himalayas, India (Ladakh)","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Meru Peak","met":6660,"inf":"Uttarakhand","loc":"Himalayas, India","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Gul Lasht Zom","met":6657,"inf":"Hindu Kush, Pakistan","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Huascarán","met":"Huascarán Norte","inf":6655,"loc":"Andes, Geography of Peru","loc1":"Peru","loc2":"","loc3":"","loc4":""},{"name":"Khumbutse","met":6640,"inf":"Himalayas, Nepal (Khumbu)/China","loc":"First peak west of Everest","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Kailash","met":6638,"inf":"Transhimalaya, western China","loc":"Officially unclimbed (attempts not allowed)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Yerupajá","met":6635,"inf":"Andes, Peru","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Nevado Tres Cruces Central","met":6629,"inf":"Andes, Chile","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Thamserku","met":6623,"inf":"Himalayas, Nepal (Khumbu)","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Geladaindong Peak","met":6621,"inf":"Tanggula, China (Qinghai)","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Incahuasi","met":6621,"inf":"Andes, Argentina/Chile","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pangpoche","met":6620,"inf":"Himalayas, Nepal","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Manirang","met":6597,"inf":"Himalayas, India (Himachal Pradesh)","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Nilkantha (mountain)","met":"Nilkantha","inf":6596,"loc":"Geography of Uttarakhand","loc1":"Himalayas, India (Uttarakhand)","loc2":"","loc3":"","loc4":""},{"name":"Phuparash Peak","met":6574,"inf":"Karakoram, Pakistan","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Sickle Moon Peak","met":6574,"inf":"Himalayas, India (Geography of Jammu and Kashmir","loc":"Jammu and Kashmir)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Tupungato","met":6570,"inf":"Andes, Argentina/Chile","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Buni Zom","met":6542,"inf":"Hindu Raj, Pakistan","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Nevado Sajama","met":6542,"inf":"Andes, Geography of Bolivia","loc":"Bolivia","loc1":"Highest","loc2":"","loc3":"","loc4":""},{"name":"Ghamubar Zom","met":6518,"inf":"Hindu Kush, Pakistan","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Singu Chuli","met":6501,"inf":"Annapurna Himalayas, Nepal","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Taboche","met":6501,"inf":"Himalayas, Nepal (Khumbu)","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Cerro El Muerto","met":6488,"inf":"Andes, Argentina/Chile","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mera Peak","met":6476,"inf":"Himalayas, Nepal (Khumbu)","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Hiunchuli","met":6441,"inf":"Annapurna","loc":"Annapurna Himalaya, Nepal","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Cholatse","met":6440,"inf":"Himalayas, Nepal (Khumbu)","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Illimani","met":6438,"inf":"Andes, Bolivia","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Ancohuma","met":6427,"inf":"Andes, Bolivia","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Coropuna","met":6425,"inf":"Andes, Peru","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Antofalla","met":6409,"inf":"Andes, Argentina","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Kang Yatze","met":6400,"inf":"Himalayas, India (Ladakh)","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Huandoy","met":6395,"inf":"Andes, Peru","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Ausangate","met":6384,"inf":"Andes, Peru","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Chapaev Peak","met":6371,"inf":"Tian Shan, Kyrgyzstan","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Illampu","met":6368,"inf":"Andes, Bolivia","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Kusum Kangguru","met":6367,"inf":"Himalayas, Nepal (Khumbu)","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Kinnaur Kailash","met":6349,"inf":"Himalayas, Kinnaur, India (Geography of Himachal Pradesh","loc":"Himachal Pradesh)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Parinacota Volcano","met":"Parinaquta","inf":6348,"loc":"Andes, Bolivia/Chile","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Siula Grande","met":6344,"inf":"Andes, Geography of Peru","loc":"Peru","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Bamba Dhura","met":6334,"inf":"Geography of Uttarakhand","loc":"Himalayas, India (Uttarakhand)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Chinchey","met":6309,"inf":"Andes, Peru","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Ampato","met":6288,"inf":"Andes, Peru","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Amne Machin","met":6282,"inf":"Kunlun Mountains, China (Qinghai)","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pomerape","met":6282,"inf":"Andes, Bolivia/Chile","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Palcaraju","met":6274,"inf":"Andes, Peru","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Salcantay","met":6271,"inf":"Andes, Peru","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Chimborazo (volcano)","met":"Chimborazo","inf":6267,"loc":"Andes, Ecuador","loc1":"Furthest point from Earth's center","loc2":"","loc3":"","loc4":""},{"name":"Mount Siguniang","met":6250,"inf":"Qionglai Mountains, China (Sichuan)","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Grid Nie Mountain","met":6224,"inf":"Hengduan Mountains, China (Sichuan)","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Yuzhu Peak","met":6224,"inf":"Kunlun Mountains, China (Qinghai)","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Genyen Massif","met":6204,"inf":"Shaluli Range, China (Sichuan)","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Kongde Ri","met":6187,"inf":"Himalayas, Nepal (Khumbu)","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Aucanquilcha","met":6176,"inf":"Andes, Chile","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Imja Tse","met":6189,"inf":"Himalayas, Nepal (Khumbu)","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Denali (Mount McKinley)","met":6190,"inf":"Alaska Range, United States (Alaska)","loc":"Highest in North America","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Stok Kangri","met":6137,"inf":"Himalayas, India (Ladakh)","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Lobuche","met":6119,"inf":"Himalayas, Nepal (Khumbu)","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Marmolejo","met":6108,"inf":"Andes, Argentina/Chile","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Laila Peak (Hushe Valley)","met":6096,"inf":"Karakoram, Pakistan","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pisang Peak","met":6091,"inf":"Annapurna","loc":"Annapurna Himalaya, Nepal","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Huayna Potosí","met":6088,"inf":"Andes, Bolivia","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Aracar","met":6082,"inf":"Andes, Argentina","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Chachakumani","met":6074,"inf":"Andes, Bolivia","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Chachani","met":6057,"inf":"Andes, Peru","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mianzimu","met":6054,"inf":"Yunnan, China","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Acotango","met":6052,"inf":"Andes, Bolivia/Chile","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Socompa","met":6051,"inf":"Andes, Argentina/Chile","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Minglik Sar","met":6050,"inf":"Karakoram, Pakistan","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Acamarachi","met":6046,"inf":"Andes, Chile","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Tocllaraju","met":6034,"inf":"Andes, Peru","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Shayaz","met":6026,"inf":"Hindu Kush, Pakistan","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Hualca Hualca","met":6025,"inf":"Andes, Peru","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Uturunku","met":6020,"inf":"Andes, Bolivia","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mitre Peak, Pakistan","met":"Mitre Peak","inf":6010,"loc":"Karakoram, Pakistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Laila Peak (Rupal Valley)","met":"Laila Peak","inf":5971,"loc":"Himalaya","loc1":"Pakistan","loc2":"","loc3":"","loc4":""},{"name":"Mount Logan","met":5959,"inf":"Saint Elias Mountains","loc":"Geography of Yukon","loc1":"Yukon, Geography of Canada","loc2":"Canada","loc3":"Highest in Canada","loc4":""},{"name":"Alpamayo","met":5947,"inf":"Andes","loc":"Geography of Peru","loc1":"Peru","loc2":"","loc3":"","loc4":""},{"name":"Cerro Lípez","met":5929,"inf":"Andes","loc":"Geography of Bolivia","loc1":"Bolivia","loc2":"","loc3":"","loc4":""},{"name":"Licancabur","met":5920,"inf":"Andes","loc":"Geography of Bolivia","loc1":"Bolivia/Geography of Chile","loc2":"Chile","loc3":"","loc4":""},{"name":"Falak Sar (Swat)","met":"Falak Sar","inf":5918,"loc":"Hindu Kush","loc1":"Pakistan","loc2":"","loc3":"","loc4":""},{"name":"Cotopaxi","met":5897,"inf":"Andes","loc":"Geography of Ecuador","loc1":"Ecuador","loc2":"Second highest in Ecuador","loc3":"","loc4":""},{"name":"Mount Kilimanjaro","met":5895,"inf":"Eastern Rift Mountains","loc":"Geography of Tanzania","loc1":"Tanzania","loc2":"Highest in Africa","loc3":"","loc4":""},{"name":"Hkakabo Razi","met":5881,"inf":"Himalayas","loc":"Geography of Myanmar","loc1":"Myanmar","loc2":"Highest in Myanmar and Southeast Asia","loc3":"","loc4":""},{"name":"San José (volcano)","met":"San José","inf":5856,"loc":"Andes","loc1":"Geography of Chile","loc2":"Chile","loc3":"","loc4":""},{"name":"Nevado Mariposa","met":5842,"inf":"Andes","loc":"Geography of Peru","loc1":"Peru","loc2":"","loc3":"","loc4":""},{"name":"El Misti","met":5822,"inf":"Andes","loc":"Geography of Peru","loc1":"Peru","loc2":"","loc3":"","loc4":""},{"name":"Altun Shan","met":5798,"inf":"Altyn-Tagh","loc":"Gansu, Geography of China","loc1":"China","loc2":"","loc3":"","loc4":""},{"name":"Cayambe (volcano)","met":"Cayambe","inf":5790,"loc":"Andes","loc1":"Geography of Ecuador","loc2":"Ecuador","loc3":"Third highest in Ecuador","loc4":""},{"name":"Pico Cristóbal Colón","met":5776,"inf":"Sierra Nevada de Santa Marta","loc":"Geography of Colombia","loc1":"Colombia","loc2":"Highest coastal mountain","loc3":"","loc4":""},{"name":"Antisana","met":5753,"inf":"Andes","loc":"Geography of Ecuador","loc1":"Ecuador","loc2":"","loc3":"","loc4":""},{"name":"Nevado Pisco","met":5752,"inf":"Andes","loc":"Geography of Peru","loc1":"Peru","loc2":"","loc3":"","loc4":""},{"name":"Nevado Anallajsi","met":5750,"inf":"Andes","loc":"Geography of Bolivia","loc1":"Bolivia","loc2":"","loc3":"","loc4":""},{"name":"Pokalde","met":5745,"inf":"Khumbu Himalayas","loc":"Geography of Nepal","loc1":"Nepal","loc2":"7 km SW of Everest","loc3":"","loc4":""},{"name":"Ubinas","met":5672,"inf":"Andes","loc":"Geography of Peru","loc1":"Peru","loc2":"Active volcano (2006)","loc3":"","loc4":""},{"name":"Pichu Pichu","met":5664,"inf":"Andes","loc":"Geography of Peru","loc1":"Peru","loc2":"","loc3":"","loc4":""},{"name":"Mount Elbrus","met":5642,"inf":"Caucasus Mountains","loc":"North Caucasus, Geography of Russia","loc1":"Russia","loc2":"Highest in Caucasus","loc3":"","loc4":""},{"name":"Mehrbani Peak","met":5639,"inf":"Karakoram","loc":"Pakistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pico de Orizaba","met":5636,"inf":"Trans-Mexican Volcanic Belt","loc":"Geography of Mexico","loc1":"Mexico","loc2":"Highest in Mexico","loc3":"","loc4":""},{"name":"Mount Damavand","met":5610,"inf":"Alborz","loc":"Geography of Iran","loc1":"Iran","loc2":"Highest in Iran and ME, highest volcano in Asia","loc3":"","loc4":""},{"name":"Nevado Mismi","met":5597,"inf":"Andes","loc":"Geography of Peru","loc1":"Peru","loc2":"Glacial source of the Amazon River","loc3":"","loc4":""},{"name":"Jade Dragon Snow Mountain","met":5596,"inf":"Hengduan Mountains","loc":"Yunnan, Geography of China","loc1":"China","loc2":"","loc3":"","loc4":""},{"name":"Lascar Volcano","met":5592,"inf":"Andes","loc":"Geography of Chile","loc1":"Chile","loc2":"","loc3":"","loc4":""},{"name":"Mount Xuebaoding","met":5588,"inf":"Min Mountains","loc":"Sichuan, China","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Kala Patthar","met":5545,"inf":"Khumbu Himalayas","loc":"Geography of Nepal","loc1":"Nepal","loc2":"Popular trekking peak","loc3":"","loc4":""},{"name":"Mount Saint Elias","met":5489,"inf":"Saint Elias Mountains","loc":"Geography of Yukon","loc1":"Yukon, Geography of Canada","loc2":"Canada/Geography of Alaska","loc3":"Alaska, Geography of United States","loc4":"US"},{"name":"Concord Peak","met":5469,"inf":"Pamir Mountains","loc":"Geography of Afghanistan","loc1":"Afghanistan–Geography of Tajikistan","loc2":"Tajikistan","loc3":"","loc4":""},{"name":"Dindaw Razi","met":5464,"inf":"Himalayas","loc":"Myanmar","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Machoi Peak","met":5458,"inf":"Himalaya","loc":"India (Geography of Jammu and Kashmir","loc1":"Jammu and Kashmir)","loc2":"","loc3":"","loc4":""},{"name":"El Plomo","met":5450,"inf":"Andes","loc":"Chile","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Bogda Feng","met":5445,"inf":"Tien Shan","loc":"Xinjiang, Geography of China","loc1":"China","loc2":"","loc3":"","loc4":""},{"name":"Mount Little Xuebaoding","met":5443,"inf":"Min Mountains","loc":"Sichuan, China","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Cerro El Plomo","met":5434,"inf":"Andes","loc":"Geography of Chile","loc1":"Chile","loc2":"Largest peak visible from Santiago on clear days","loc3":"","loc4":""},{"name":"Popocatépetl","met":5426,"inf":"Trans-Mexican Volcanic Belt","loc":"Geography of Mexico","loc1":"Mexico","loc2":"Second highest in Mexico","loc3":"","loc4":""},{"name":"Kolahoi Peak","met":5425,"inf":"Himalaya","loc":"India (Jammu and Kashmir)","loc1":"Highest in Kashmir Valley","loc2":"","loc3":"","loc4":""},{"name":"Chacaltaya","met":5421,"inf":"Andes","loc":"Geography of Bolivia","loc1":"Bolivia","loc2":"","loc3":"","loc4":""},{"name":"Mount Pomiu","met":5413,"inf":"Qionglai Mountains","loc":"Qionglai Range","loc1":"Sichuan, China","loc2":"","loc3":"","loc4":""},{"name":"Ritacuba Blanco","met":5410,"inf":"Andes","loc":"Geography of Colombia","loc1":"Colombia","loc2":"","loc3":"","loc4":""},{"name":"Haba Xueshan","met":5396,"inf":"Himalaya","loc":"Yunnan, China","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Nevado del Ruiz","met":5389,"inf":"Andes","loc":"Geography of Colombia","loc1":"Colombia","loc2":"23,000 people died in 1985 eruption","loc3":"","loc4":""},{"name":"Nevado del Huila","met":5364,"inf":"Andes","loc":"Geography of Colombia","loc1":"Colombia","loc2":"","loc3":"","loc4":""},{"name":"El Altar","met":5320,"inf":"Andes","loc":"Geography of Ecuador","loc1":"Ecuador","loc2":"","loc3":"","loc4":""},{"name":"Mount Foraker","met":5304,"inf":"Alaska Range","loc":"Geography of Alaska","loc1":"Alaska, Geography of United States","loc2":"US","loc3":"","loc4":""},{"name":"Mount Haramukh","met":5300,"inf":"Himalaya","loc":"India (Jammu and Kashmir)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Nevado del Tolima","met":5276,"inf":"Andes","loc":"Colombia","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Maipo (volcano)","met":"Maipo","inf":5264,"loc":"Andes","loc1":"Geography of Argentina","loc2":"Argentina/Geography of Chile","loc3":"Chile","loc4":""},{"name":"Illiniza","met":5248,"inf":"Andes","loc":"Geography of Ecuador","loc1":"Ecuador","loc2":"","loc3":"","loc4":""},{"name":"Point 5240","met":5240,"inf":"Himalaya","loc":"Ladakh, India","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Sirbal Peak","met":5236,"inf":"Himalaya","loc":"Kashmir Valley, India (Jammu and Kashmir)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Sangay","met":5230,"inf":"Andes","loc":"Geography of Ecuador","loc1":"Ecuador","loc2":"","loc3":"","loc4":""},{"name":"Iztaccíhuatl","met":5230,"inf":"Trans-Mexican Volcanic Belt","loc":"Geography of Mexico","loc1":"Mexico","loc2":"Third highest in Mexico","loc3":"","loc4":""},{"name":"Mount Lucania","met":5226,"inf":"Saint Elias Mountains","loc":"Geography of Yukon","loc1":"Yukon, Geography of Canada","loc2":"Canada","loc3":"Third highest in Canada","loc4":""},{"name":"Karakol Peak","met":5216,"inf":"Tian Shan","loc":"Geography of Kyrgyzstan","loc1":"Kyrgyzstan","loc2":"","loc3":"","loc4":""},{"name":"Dykh-Tau","met":5205,"inf":"Caucasus Mountains","loc":"North Caucasus, Geography of Russia","loc1":"Russia","loc2":"Second highest in the Caucasus","loc3":"","loc4":""},{"name":"Shkhara","met":5201,"inf":"Caucasus Mountains","loc":"Geography of Georgia (country)","loc1":"Georgia","loc2":"Highest in Georgia","loc3":"","loc4":""},{"name":"Mount Kenya","met":5199,"inf":"","loc":"Geography of Kenya","loc1":"Kenya","loc2":"Highest in Kenya, Second highest in Africa","loc3":"","loc4":""},{"name":"Malika Parbat","met":5190,"inf":"Himalaya","loc":"Kaghan Valley, Pakistan","loc1":"Highest in Kaghan Valley of Pakistan","loc2":"","loc3":"","loc4":""},{"name":"Amarnath Peak","met":5186,"inf":"Himalaya","loc":"Kashmir Valley, India (Jammu and Kashmir)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Laram Q'awa (Charaña)","met":5182,"inf":"Andes","loc":"Geography of Bolivia","loc1":"Bolivia","loc2":"","loc3":"","loc4":""},{"name":"King Peak (Yukon)","met":"King Peak","inf":5173,"loc":"Saint Elias Mountains","loc1":"Geography of Yukon","loc2":"Yukon, Geography of Canada","loc3":"Canada","loc4":"Fourth highest in Canada"},{"name":"Boris Yeltsin Peak","met":5168,"inf":"Teskey Ala-Too","loc":"Geography of Kyrgyzstan","loc1":"Kyrgyzstan","loc2":"","loc3":"","loc4":""},{"name":"Koshtan-Tau","met":5150,"inf":"Caucasus Mountains","loc":"North Caucasus, Geography of Russia","loc1":"Russia","loc2":"","loc3":"","loc4":""},{"name":"Mount Ararat","met":5137,"inf":"","loc":"Geography of Turkey","loc1":"Turkey","loc2":"Highest in Turkey","loc3":"","loc4":""},{"name":"Mount Stanley","met":5109,"inf":"Ruwenzori Mountains","loc":"Geography of the Democratic Republic of the Congo","loc1":"Democratic Republic of the Congo/Geography of Uganda","loc2":"Uganda","loc3":"Third highest in Africa","loc4":""},{"name":"Tami Razi","met":5101,"inf":"Himalayas","loc":"Myanmar","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Steele","met":5073,"inf":"Saint Elias Mountains","loc":"Geography of Yukon","loc1":"Yukon, Geography of Canada","loc2":"Canada","loc3":"Fifth highest in Canada","loc4":""},{"name":"Dzhangi-Tau","met":"Janga","inf":5051,"loc":"Caucasus Mountains","loc1":"Geography of Georgia (country)","loc2":"Georgia / North Caucasus, Geography of Russia","loc3":"Russia","loc4":"Second highest in Georgia"},{"name":"Mount Kazbek","met":5047,"inf":"Caucasus Mountains","loc":"Geography of Georgia (country)","loc1":"Georgia","loc2":"Third highest in the country","loc3":"","loc4":""},{"name":"Tungurahua","met":5023,"inf":"Andes","loc":"Geography of Ecuador","loc1":"Ecuador","loc2":"Active volcano","loc3":"","loc4":""},{"name":"Carihuairazo","met":5018,"inf":"Andes","loc":"Geography of Ecuador","loc1":"Ecuador","loc2":"","loc3":"","loc4":""},{"name":"Mount Bona","met":5005,"inf":"Saint Elias Mountains","loc":"Geography of Alaska","loc1":"Alaska, Geography of United States","loc2":"US","loc3":"Also given as 5,030 m or 5,045m","loc4":""},{"name":"Mount Blackburn","met":4996,"inf":"Wrangell Mountains","loc":"Wrangell Mtns., Geography of Alaska","loc1":"Alaska, Geography of United States","loc2":"US (also given 5036 m)","loc3":"","loc4":""},{"name":"Pico Bolívar","met":4981,"inf":"Sierra Nevada de Mérida, Andes, Geography of Venezuela","loc":"Venezuela","loc1":"Highest in Venezuela","loc2":"","loc3":"","loc4":""},{"name":"Talgar Peak","met":4979,"inf":"Tian Shan, Geography of Kazakhstan","loc":"Kazakhstan","loc1":"Highest in northern Tian Shan","loc2":"","loc3":"","loc4":""},{"name":"Shota Rustaveli Peak","met":4960,"inf":"Caucasus Mountains, Svaneti, Geography of Georgia (country)","loc":"Georgia/North Caucasus, Geography of Russia","loc1":"Russia","loc2":"","loc3":"","loc4":""},{"name":"Mount Sanford (Alaska)","met":"Mount Sanford","inf":4949,"loc":"Wrangell Mountains","loc1":"Wrangell Mtns., Geography of Alaska","loc2":"Alaska, Geography of United States","loc3":"US","loc4":""},{"name":"Pico Humboldt","met":4940,"inf":"Sierra Nevada de Mérida, Andes, Geography of Venezuela","loc":"Venezuela","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pin Bhaba Pass","met":4930,"inf":"Pin Valley National Park","loc":"Pin Valley/Spiti Valley, Himalayas, Himachal Pradesh","loc1":"India","loc2":"","loc3":"","loc4":""},{"name":"Vinson Massif","met":4892,"inf":"Sentinel Range, Ellsworth Mountains, Geography of Antarctica","loc":"Antarctica","loc1":"Highest in Antarctica","loc2":"","loc3":"","loc4":""},{"name":"Pico Bonpland","met":4890,"inf":"Sierra Nevada de Mérida, Andes, Geography of Venezuela","loc":"Venezuela","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Puncak Jaya","met":4884,"inf":"Sudirman Range, Papua (province)","loc":"Papua, Geography of Indonesia","loc1":"Indonesia","loc2":"Highest in Indonesia","loc3":"","loc4":""},{"name":"Pico La Concha","met":4870,"inf":"Sierra Nevada de Mérida, Andes, Geography of Venezuela","loc":"Venezuela","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Gistola","met":4860,"inf":"Caucasus Mountains, Svaneti, Geography of Georgia (country)","loc":"Georgia","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Tetnuldi","met":4858,"inf":"Caucasus Mountains, Svaneti, Geography of Georgia (country)","loc":"Georgia","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Tyree","met":4852,"inf":"Sentinel Range, Ellsworth Mountains, Geography of Antarctica","loc":"Antarctica","loc1":"Second highest in Antarctica","loc2":"","loc3":"","loc4":""},{"name":"Huaynaputina","met":4850,"inf":"Andes, Geography of Peru","loc":"Peru","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Alam Kuh","met":4850,"inf":"Alborz, Geography of Iran","loc":"Iran","loc1":"Second highest in Iran","loc2":"","loc3":"","loc4":""},{"name":"Mount Wood (Yukon)","met":"Mount Wood","inf":4842,"loc":"Saint Elias Mountains, Geography of Yukon","loc1":"Yukon, Geography of Canada","loc2":"Canada","loc3":"","loc4":""},{"name":"Mount Vancouver","met":4812,"inf":"Saint Elias Mountains, Geography of Yukon","loc":"Yukon, Geography of Canada","loc1":"Canada","loc2":"","loc3":"","loc4":""},{"name":"Sabalan","met":4811,"inf":"Geography of Iran","loc":"Iran","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mont Blanc","met":4810,"inf":"Mont Blanc massif, Geography of France","loc":"France/Geography of Italy","loc1":"Italy","loc2":"Highest in Alps","loc3":"","loc4":""},{"name":"Corazón (volcano)","met":"Corazón","inf":4790,"loc":"Andes, Geography of Ecuador","loc1":"Ecuador","loc2":"","loc3":"","loc4":""},{"name":"Pichincha (volcano)","met":"Pichincha","inf":4784,"loc":"Andes, Geography of Ecuador","loc1":"Ecuador","loc2":"","loc3":"","loc4":""},{"name":"Mount Jimara","met":"Jimara","inf":4780,"loc":"Khokh Range, Caucasus Mountains, Geography of Georgia (country)","loc1":"Georgia","loc2":"","loc3":"","loc4":""},{"name":"Mount Churchill","met":4766,"inf":"Saint Elias Mountains, Geography of Alaska","loc":"Alaska, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Puncak Mandala","met":4760,"inf":"Papua, Geography of Indonesia","loc":"Indonesia","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Klyuchevskaya Sopka","met":4750,"inf":"Kamchatka Peninsula","loc":"Kamchatka, Geography of Russia","loc1":"Russia","loc2":"","loc3":"","loc4":""},{"name":"Puncak Trikora","met":4750,"inf":"Papua, Geography of Indonesia","loc":"Indonesia","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mont Blanc de Courmayeur","met":4748,"inf":"Mont Blanc massif, Geography of France","loc":"France/Geography of Italy","loc1":"Italy","loc2":"","loc3":"","loc4":""},{"name":"Sunset Peak (Jammu and Kashmir)","met":"Sunset Peak","inf":4745,"loc":"Himalaya, Kashmir Valley, India (Geography of Jammu and Kashmir","loc1":"Jammu and Kashmir)","loc2":"","loc3":"","loc4":""},{"name":"Mount Slaggard","met":4742,"inf":"Saint Elias Mountains, Geography of Canada","loc":"Canada","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pico Piedras Blancas","met":4740,"inf":"Sierra de la Culata, Andes, Geography of Venezuela","loc":"Venezuela","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pico El Toro","met":4730,"inf":"Andes, Geography of Venezuela","loc":"Venezuela","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Tatakooti Peak","met":4725,"inf":"Himalaya, Kashmir Valley, India (Jammu and Kashmir)","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Rumiñahui (volcano)","met":"Rumiñahui","inf":4721,"loc":"Andes, Geography of Ecuador","loc1":"Ecuador","loc2":"","loc3":"","loc4":""},{"name":"Pico El Leon","met":4720,"inf":"Andes, Geography of Venezuela","loc":"Venezuela","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Ushba","met":4710,"inf":"Caucasus Mountains, Svaneti, Geography of Georgia (country)","loc":"Georgia","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Domuyo","met":"Volcán Domuyo","inf":4709,"loc":"Andes, Geography of Argentina","loc1":"Argentina","loc2":"","loc3":"","loc4":""},{"name":"Pico Pan de Azucar","met":4680,"inf":"Sierra de la Culata, Andes, Geography of Venezuela","loc":"Venezuela","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Naltar Peak","met":4678,"inf":"Geography of Pakistan","loc":"Pakistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Fairweather","met":4663,"inf":"Fairweather Range, Geography of Alaska","loc":"Alaska, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Pico Mucuñuque","met":4660,"inf":"Andes, Geography of Venezuela","loc":"Venezuela","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Khazret Sultan","met":4643,"inf":"Gissar Range, Geography of Uzbekistan","loc":"Uzbekistan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Sierra Negra","met":4640,"inf":"Geography of Mexico","loc":"Mexico","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Dufourspitze (Monte Rosa)","met":4634,"inf":"Pennine Alps, Geography of Switzerland","loc":"Switzerland","loc1":"Highest point in Switzerland","loc2":"","loc3":"","loc4":""},{"name":"Dunantspitze (Monte Rosa)","met":4632,"inf":"Pennine Alps, Geography of Switzerland","loc":"Switzerland","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Nordend (Monte Rosa)","met":4609,"inf":"Pennine Alps, Geography of Switzerland","loc":"Switzerland-Geography of Italy","loc1":"Italy","loc2":"","loc3":"","loc4":""},{"name":"Mount Hubbard","met":4577,"inf":"Saint Elias Mountains","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Nevado de Toluca","met":4577,"inf":"Geography of Mexico","loc":"Mexico","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Meru (Tanzania)","met":"Mount Meru","inf":4566,"loc":"Geography of Tanzania","loc1":"Tanzania","loc2":"","loc3":"","loc4":""},{"name":"Zumsteinspitze (Monte Rosa)","met":4563,"inf":"Pennine Alps, Geography of Switzerland","loc":"Switzerland-Geography of Italy","loc1":"Italy","loc2":"","loc3":"","loc4":""},{"name":"Signalkuppe (Monte Rosa)","met":4554,"inf":"Pennine Alps, Geography of Switzerland","loc":"Switzerland-Geography of Italy","loc1":"Italy","loc2":"","loc3":"","loc4":""},{"name":"Dom (Mischabel)","met":"Dom","inf":4545,"loc":"Pennine Alps, Geography of Switzerland","loc1":"Switzerland","loc2":"","loc3":"","loc4":""},{"name":"Ras Dashen","met":4533,"inf":"Geography of Ethiopia","loc":"Ethiopia","loc1":"Highest point in Ethiopia","loc2":"","loc3":"","loc4":""},{"name":"Eastern Liskamm (Lyskamm)","met":4533,"inf":"Pennine Alps, Geography of Switzerland","loc":"Switzerland-Geography of Italy","loc1":"Italy","loc2":"","loc3":"","loc4":""},{"name":"Mount Bear","met":4521,"inf":"Saint Elias Mountains, Geography of Alaska","loc":"Alaska, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Mount Wilhelm","met":4509,"inf":"Bismarck Range, Geography of Papua New Guinea","loc":"Papua New Guinea","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Karisimbi","met":4507,"inf":"Virunga Mountains, Geography of Rwanda","loc":"Rwanda/Geography of DRC","loc1":"DRC","loc2":"","loc3":"","loc4":""},{"name":"Mount Walsh","met":4507,"inf":"Saint Elias Mountains, Geography of Canada","loc":"Canada","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Belukha Mountain","met":4506,"inf":"Altay Mountains, Geography of Russia","loc":"Russia","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Weisshorn","met":4506,"inf":"Pennine Alps, Geography of Switzerland","loc":"Switzerland","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Tebulosmta","met":4493,"inf":"Caucasus Mountains, Geography of Georgia (country)","loc":"Georgia/Chechnya, Geography of Russia","loc1":"Russia","loc2":"","loc3":"","loc4":""},{"name":"Täschhorn","met":4491,"inf":"Pennine Alps, Geography of Switzerland","loc":"Switzerland","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Bazarduzu Dagi","met":4485,"inf":"Geography of Azerbaijan","loc":"Azerbaijan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Matterhorn","met":4478,"inf":"Pennine Alps, Geography of Switzerland","loc":"Switzerland/Geography of Italy","loc1":"Italy","loc2":"","loc3":"","loc4":""},{"name":"Mount Rutford","met":4477,"inf":"Sentinel Range, Ellsworth Mountains, Geography of Antarctica","loc":"Antarctica","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mont Maudit","met":4465,"inf":"Mont Blanc massif, Geography of France","loc":"France/Geography of Italy","loc1":"Italy","loc2":"","loc3":"","loc4":""},{"name":"Donguzorun","met":4454,"inf":"Caucasus Mountains, Geography of Georgia (country)","loc":"Georgia/Geography of Russia","loc1":"Russia","loc2":"","loc3":"","loc4":""},{"name":"Mount Shani","met":4451,"inf":"Caucasus Mountains, Geography of Georgia (country)","loc":"Georgia/Geography of Russia","loc1":"Russia","loc2":"","loc3":"","loc4":""},{"name":"Dena","met":4448,"inf":"Zagros Mountains, Iran","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Vladimir Putin Peak","met":4446,"inf":"Kyrgyz Alatau, Kyrgyzstan","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Hunter (Alaska)","met":"Mount Hunter","inf":4442,"loc":"Alaska Range, Geography of Alaska","loc1":"Alaska, Geography of United States","loc2":"US","loc3":"","loc4":""},{"name":"Parrotspitze (Monte Rosa)","met":4432,"inf":"Pennine Alps, Geography of Switzerland","loc":"Switzerland-Geography of Italy","loc1":"Italy","loc2":"","loc3":"","loc4":""},{"name":"Malinche (volcano)","met":"La Malinche","inf":4430,"loc":"Cordillera Neovolcanica, Geography of Mexico","loc1":"Mexico","loc2":"","loc3":"","loc4":""},{"name":"Mount Whitney","met":4421,"inf":"Sierra Nevada (U.S.)","loc":"Sierra Nevada, Geography of California","loc1":"California, Geography of United States","loc2":"US","loc3":"","loc4":""},{"name":"Mount Alverstone","met":4420,"inf":"Saint Elias Mountains, Geography of Alaska","loc":"Alaska, Geography of United States","loc1":"US/Geography of Yukon","loc2":"Yukon, Geography of Canada","loc3":"Canada","loc4":""},{"name":"University Peak (Alaska)","met":"University Peak","inf":4411,"loc":"Saint Elias Mountains, Geography of Alaska","loc1":"Alaska, Geography of United States","loc2":"US","loc3":"","loc4":""},{"name":"Aello Peak","met":4403,"inf":"Saint Elias Mountains, Geography of Alaska","loc":"Alaska, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Mount Elbert","met":4402,"inf":"Sawatch Range, Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Mount Massive","met":4395,"inf":"Sawatch Range, Geography of Colorado","loc":"Colorado, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Harvard","met":4395,"inf":"Sawatch Range, Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Mount Rainier","met":4392,"inf":"Cascade Range","loc":"Cascades, Geography of Washington (state)","loc1":"Washington, Geography of United States","loc2":"US","loc3":"","loc4":""},{"name":"Apharwat Peak","met":4390,"inf":"Gulmarg, India (Geography of Jammu and Kashmir","loc":"Jammu and Kashmir)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Kholeno","met":4387,"inf":"Alborz, Iran","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Williamson","met":4382,"inf":"Sierra Nevada, Geography of California","loc":"California, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Tavan Bogd Uul","met":4374,"inf":"Bayan-Ölgii Province, Mongolia","loc":"Highest point in Mongolia","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Blanca Peak","met":4374,"inf":"Rocky Mountains, Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"La Plata Peak","met":4372,"inf":"Sawatch Range, Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Mount Giluwe","met":4368,"inf":"Papua New Guinea","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Burchula","met":4364,"inf":"Caucasus Mountains, Georgia (country)","loc":"Georgia","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Uncompahgre Peak","met":4361,"inf":"San Juan Mountains, Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Dent Blanche","met":4357,"inf":"Pennine Alps, Geography of Switzerland","loc":"Switzerland","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Crestone Peak","met":4357,"inf":"Sangre de Cristo Range, Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Mount Lincoln (Colorado)","met":"Mount Lincoln","inf":4354,"loc":"Mosquito Range, Geography of Colorado","loc1":"Colorado, Geography of United States","loc2":"US","loc3":"","loc4":""},{"name":"Azad Kuh","met":4355,"inf":"Alborz, Iran","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Grays Peak","met":4350,"inf":"Front Range, Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Mount Blue Sky","met":4350,"inf":"Front Range, Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Quandary Peak","met":4350,"inf":"Tenmile Range, Geography of Colorado","loc":"Colorado, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Lalveri","met":4350,"inf":"Caucasus Mountains, Svaneti, Geography of Georgia (country)","loc":"Georgia","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Antero","met":4349,"inf":"Sawatch Range, Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Torreys Peak","met":4349,"inf":"Front Range, Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Castle Peak (Colorado)","met":"Castle Peak","inf":4348,"loc":"Elk Mountains, Geography of Colorado","loc1":"Colorado, Geography of United States","loc2":"US","loc3":"","loc4":""},{"name":"Longs Peak","met":4346,"inf":"Front Range, Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"McArthur Peak","met":4344,"inf":"Saint Elias Mountains, Geography of Yukon","loc":"Yukon","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Wilson (Colorado)","met":"Mount Wilsion","inf":4342,"loc":"San Juan Mountains, Geography of Colorado","loc1":"Colorado, Geography of United States","loc2":"US","loc3":"","loc4":""},{"name":"White Mountain Peak","met":4342,"inf":"White Mountains, Geography of California","loc":"California, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"North Palisade","met":4341,"inf":"Sierra Nevada, Geography of California","loc":"California, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Ludwigshöhe (mountain)","met":"Ludwigshöhe (Monte Rosa)","inf":4341,"loc":"Pennine Alps, Geography of Switzerland","loc1":"Switzerland-Geography of Italy","loc2":"Italy","loc3":"","loc4":""},{"name":"Mount Shavano","met":4337,"inf":"Sawatch Range, Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Colima (volcano)","met":"Colima","inf":4330,"loc":"Mexico","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Crestone Needle","met":4327,"inf":"Sangre de Cristo Range, Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Mount Belford","met":4327,"inf":"Sawatch Range, Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Mount Princeton","met":4327,"inf":"Sawatch Range, Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Mount Shasta","met":4322,"inf":"Geography of California","loc":"California, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Mount Elgon","met":4321,"inf":"Uganda-Kenya","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Bross","met":4320,"inf":"Mosquito Range, Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Kit Carson Mountain","met":4318,"inf":"Sangre de Cristo Range, Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Mount Wrangell","met":4317,"inf":"Alaska, Geography of United States","loc":"US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Maroon Peak","met":4315,"inf":"Elk Mountains, Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Tabeguache Peak","met":4315,"inf":"Sawatch Range, Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"El Diente Peak","met":4315,"inf":"San Juan Mountains, Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Mount Sill","met":4314,"inf":"Sierra Nevada, Geography of California","loc":"California, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Grand Combin","met":4313,"inf":"Pennine Alps, Geography of Switzerland","loc":"Switzerland","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Oxford (Colorado)","met":4313,"inf":"Sawatch Range, Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Mount Sneffels","met":4312,"inf":"San Juan Mountains, Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Mount Democrat","met":4312,"inf":"Mosquito Range, Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Capitol Peak (Colorado)","met":"Capitol Peak","inf":4307,"loc":"Elk Mountains, Geography of Colorado","loc1":"Colorado, Geography of United States","loc2":"US","loc3":"","loc4":""},{"name":"Pikes Peak","met":4302,"inf":"Front Range, Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Mount Russell (California)","met":"Mount Russell","inf":4296,"loc":"Sierra Nevada, Geography of California","loc1":"California, Geography of United States","loc2":"US","loc3":"","loc4":""},{"name":"Snowmass Mountain","met":4295,"inf":"Elk Mountains, Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Lenzspitze","met":4294,"inf":"Pennine Alps, Geography of Switzerland","loc":"Switzerland","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Eolus","met":4292,"inf":"San Juan Mountains, Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Windom Peak","met":4292,"inf":"San Juan Mountains, Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Challenger Point","met":4292,"inf":"Sangre de Cristo Range, Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Mount Columbia (Colorado)","met":"Mount Columbia","inf":4291,"loc":"Sawatch Range, Geography of Colorado","loc1":"Colorado, Geography of United States","loc2":"US","loc3":"","loc4":""},{"name":"Mount Adishi","met":4290,"inf":"Caucasus Mountains, Svaneti, Georgia (country)","loc":"Georgia","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Augusta","met":4290,"inf":"Saint Elias Mountains, Geography of Alaska","loc":"Alaska, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Humboldt Peak (Colorado)","met":4287,"inf":"Sangre de Cristo Range, Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Split Mountain (California)","met":"Split Mountain","inf":4287,"loc":"Sierra Nevada, Geography of California","loc1":"California, Geography of United States","loc2":"US","loc3":"","loc4":""},{"name":"Mount Bierstadt","met":4286,"inf":"Front Range, Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Diklosmta","met":4285,"inf":"Caucasus Mountains, Tusheti, Geography of Georgia (country)","loc":"Georgia","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Sunlight Peak","met":4285,"inf":"San Juan Mountains, Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Mount Sidley","met":4285,"inf":"Volcanic Seven Summits, Geography of Antarctica","loc":"Antarctica","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Missouri Mountain","met":4282,"inf":"Sawatch Range, Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Culebra Peak","met":4282,"inf":"Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Handies Peak","met":4281,"inf":"San Juan Mountains, Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Ellingwood Point","met":4280,"inf":"Sangre de Cristo Range, Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Mount Lindsey","met":4280,"inf":"Sangre de Cristo Range, Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Little Bear Peak","met":4279,"inf":"Sangre de Cristo Range, Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Mount Sherman","met":4278,"inf":"Mosquito Range, Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Redcloud Peak","met":4277,"inf":"San Juan Mountains, Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Galeras","met":4276,"inf":"Andes, Geography of Colombia","loc":"Columbia","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Langley","met":4275,"inf":"Sierra Nevada, Geography of California","loc":"California, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Finsteraarhorn","met":4274,"inf":"Bernese Alps, Geography of Switzerland","loc":"Switzerland","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pyramid Peak (Colorado)","met":"Pyramid Peak","inf":4273,"loc":"Elk Mountains, Geography of Colorado","loc1":"Colorado, Geography of United States","loc2":"US","loc3":"","loc4":""},{"name":"Mount Tyndall","met":4273,"inf":"Sierra Nevada, Geography of California","loc":"California, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Wilson Peak","met":4272,"inf":"San Juan Mountains, Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Mount Muir","met":4272,"inf":"Sierra Nevada, Geography of California","loc":"California, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"San Luis Peak","met":4271,"inf":"San Juan Mountains, Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Wetterhorn Peak","met":4271,"inf":"San Juan Mountains, Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Middle Palisade","met":4271,"inf":"Sierra Nevada, Geography of California","loc":"California, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Huron Peak","met":4269,"inf":"Sawatch Range, Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Mount of the Holy Cross","met":4269,"inf":"Sawatch Range, Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Thunderbolt Peak","met":4268,"inf":"Sierra Nevada, Geography of California","loc":"California, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Sunshine Peak","met":4268,"inf":"San Juan Mountains, Geography of Colorado","loc":"Colorado, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Strickland","met":4260,"inf":"Saint Elias Mountains, Geography of Yukon","loc":"Yukon, Geography of Canada","loc1":"Canada","loc2":"","loc3":"","loc4":""},{"name":"Pigeon Peak","met":4259,"inf":"San Juan Mountains, Geography of Colorado","loc":"Colorado, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Mount Kennedy","met":4250,"inf":"Saint Elias Mountains, Geography of Yukon","loc":"Yukon, Geography of Canada","loc1":"Canada","loc2":"","loc3":"","loc4":""},{"name":"Pointe Bayeux","met":4258,"inf":"Graian Alps, Mont Blanc massif, Geography of France","loc":"France","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mont Blanc du Tacul","met":4248,"inf":"Graian Alps, Mont Blanc massif, Geography of France","loc":"France","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Stecknadelhorn","met":4241,"inf":"Pennine Alps, Geography of Switzerland","loc":"Switzerland","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Avalanche Peak (Yukon)","met":"Avalanche Peak","inf":4228,"loc":"Saint Elias Mountains, Geography of Yukon","loc1":"Yukon, Geography of Canada","loc2":"Canada","loc3":"","loc4":""},{"name":"Castor (mountain)","met":"Castor","inf":4223,"loc":"Pennine Alps, Geography of Switzerland","loc1":"Switzerland","loc2":"","loc3":"","loc4":""},{"name":"Zinalrothorn","met":4221,"inf":"Pennine Alps, Geography of Switzerland","loc":"Switzerland","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Volcán Tajumulco","met":4220,"inf":"Geography of Guatemala","loc":"Guatemala","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Hohberghorn","met":4219,"inf":"Pennine Alps, Geography of Switzerland","loc":"Switzerland","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Turret Peak (Colorado)","met":"Turret Peak","inf":4217,"loc":"Needle Mountains, Geography of Colorado","loc1":"Colorado, Geography of United States","loc2":"US","loc3":"","loc4":""},{"name":"Mount Darwin (California)","met":"Mount Darwin","inf":4216,"loc":"Sierra Nevada, Geography of California","loc1":"California, Geography of United States","loc2":"US","loc3":"","loc4":""},{"name":"Mount Hayes","met":4216,"inf":"Geography of Alaska","loc":"Alaska, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Sacabaya","met":4215,"inf":"Geography of Bolivia","loc":"Bolivia","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Grandes Jorasses","met":4208,"inf":"Mont Blanc massif, Geography of France","loc":"France/Geography of Italy","loc1":"Italy","loc2":"","loc3":"","loc4":""},{"name":"Gannett Peak","met":4208,"inf":"Wind River Range, Geography of Wyoming","loc":"Wyoming, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Mauna Kea","met":4207,"inf":"Geography of Hawaii","loc":"Hawaii, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Alphubel","met":4206,"inf":"Pennine Alps, Geography of Switzerland","loc":"Switzerland","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Cofre de Perote","met":4201,"inf":"Geography of Mexico","loc":"Mexico","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Zard-Kuh","met":4200,"inf":"Zagros Mountains, Iran","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Shah Alborz","met":4200,"inf":"Alborz, Iran","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Rimpfischhorn","met":4199,"inf":"Pennine Alps, Geography of Switzerland","loc":"Switzerland","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Grand Teton","met":4199,"inf":"Teton Range, Geography of Wyoming","loc":"Wyoming, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Mount Cook (Saint Elias Mountains)","met":"Mount Cook","inf":4196,"loc":"Saint Elias Mountains, Geography of Canada","loc1":"Canada/Geography of United States","loc2":"US","loc3":"","loc4":""},{"name":"Aletschhorn","met":4192,"inf":"Bernese Alps, Geography of Switzerland","loc":"Switzerland","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Strahlhorn","met":4190,"inf":"Pennine Alps, Geography of Switzerland","loc":"Switzerland","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Fremont Peak (Wyoming)","met":"Fremont Peak","inf":4189,"loc":"Wind River Range, Geography of Wyoming","loc1":"Wyoming, Geography of United States","loc2":"US","loc3":"","loc4":""},{"name":"Mount Warren","met":4182,"inf":"Wind River Range, Geography of Wyoming","loc":"Wyoming, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Mount Sidley","met":4181,"inf":"Geography of Antarctica","loc":"Antarctica","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Abbot","met":4180,"inf":"California, Geography of United States","loc":"US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Dent d'Hérens","met":4171,"inf":"Pennine Alps, Geography of Switzerland","loc":"Switzerland","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mauna Loa","met":4171,"inf":"Geography of Hawaii","loc":"Hawaii, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Jbel Toubkal","met":4167,"inf":"Atlas Mountains, Geography of Morocco","loc":"Morocco","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Minto (Antarctica)","met":"Mount Minto","inf":4165,"loc":"Geography of Antarctica","loc1":"Antarctica","loc2":"","loc3":"","loc4":""},{"name":"Breithorn (Western Summit)","met":4164,"inf":"Pennine Alps, Geography of Switzerland","loc":"Switzerland/Geography of Italy","loc1":"Italy","loc2":"","loc3":"","loc4":""},{"name":"Jungfrau","met":4158,"inf":"Bernese Alps, Geography of Switzerland","loc":"Switzerland","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Bishorn","met":4153,"inf":"Pennine Alps, Geography of Switzerland","loc":"Switzerland","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Helen (Wyoming)","met":"Mount Helen","inf":4151,"loc":"Wind River Range, Geography of Wyoming","loc1":"Wyoming, Geography of United States","loc2":"US","loc3":"","loc4":""},{"name":"El Mela","met":4150,"inf":"Andes, Geography of Argentina","loc":"Argentina","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Quincy Adams (Fairweather Range)","met":"Mount Quincy Adams","inf":4150,"loc":"Fairweather Range, Geography of Canada","loc1":"Canada/Geography of United States","loc2":"US","loc3":"","loc4":""},{"name":"Doublet Peak","met":4145,"inf":"Wind River Range, Geography of Wyoming","loc":"Wyoming, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Turret Peak (Wyoming)","met":"Turret Peak","inf":4145,"loc":"Wind River Range, Geography of Wyoming","loc1":"Wyoming, Geography of United States","loc2":"US","loc3":"","loc4":""},{"name":"Mount Parnassus (Colorado)","met":4137,"inf":"Front Range, Rocky Mountains, Colorado, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Sacagawea","met":4136,"inf":"Wind River Range, Geography of Wyoming","loc":"Wyoming, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Mount Dubois","met":4135,"inf":"White Mountains, Geography of California","loc":"California, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Mount Muhabura","met":4127,"inf":"Virunga Mountains, Musanze, Rwanda","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Kings Peak (Utah)","met":"Kings Peak","inf":4125,"loc":"Uinta Range, Geography of Utah","loc1":"Utah, Geography of United States","loc2":"US","loc3":"","loc4":""},{"name":"Aiguille Verte","met":4122,"inf":"Mont Blanc massif, Geography of France","loc":"France","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Bangeta","met":4121,"inf":"Papua New Guinea","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Dickerson","met":4120,"inf":"Queen Alexandra Range, Geography of Antarctica","loc":"Antarctica","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Jackson Peak (Fremont County, Wyoming)","met":"Jackson Peak","inf":4120,"loc":"Wind River Range, Geography of Wyoming","loc1":"Wyoming, Geography of United States","loc2":"US","loc3":"","loc4":""},{"name":"Cilo Dağı","met":4116,"inf":"Cilo Range, Taurus Mountains","loc":"Eastern Taurus, Geography of Turkey","loc1":"Turkey","loc2":"","loc3":"","loc4":""},{"name":"Mount Woodrow Wilson","met":4115,"inf":"Wind River Range, Geography of Wyoming","loc":"Wyoming, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Aiguilles du Diable","met":4114,"inf":"Graian Alps, Mont Blanc massif, Geography of France","loc":"France","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Bastion Peak","met":4113,"inf":"Wind River Range, Geography of Wyoming","loc":"Wyoming","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Aiguille Blanche de Peuterey","met":4112,"inf":"Mont Blanc massif, Geography of Italy","loc":"Italy","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mönch","met":4107,"inf":"Bernese Alps, Geography of Switzerland","loc":"Switzerland","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Febbas","met":4105,"inf":"Wind River Range, Geography of Wyoming","loc":"Wyoming, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Barre des Écrins","met":4102,"inf":"Dauphiné Alps, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Aragats","met":4095,"inf":"Geography of Armenia","loc":"Armenia","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Cameroon","met":4095,"inf":"Geography of Cameroon","loc":"Cameroon","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Kinabalu","met":4095,"inf":"Sabah, Geography of Malaysia","loc":"Malaysia","loc1":"Highest in Malaysia","loc2":"","loc3":"","loc4":""},{"name":"Grizzly Peak (Summit County, Colorado)","met":"Grizzly Peak D","inf":4093,"loc":"Front Range, Rocky Mountains, Colorado, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pollux (mountain)","met":"Pollux","inf":4092,"loc":"Pennine Alps, Geography of Switzerland","loc1":"Switzerland","loc2":"","loc3":"","loc4":""},{"name":"Mount Wade","met":4085,"inf":"Prince Olav Mountains, Geography of Antarctica","loc":"Antarctica","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Nairamdal Peak","met":4082,"inf":"Altai Mountains, Geography of Mongolia","loc":"Mongolia","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Victoria, Papua New Guinea","met":"Mount Victoria","inf":4072,"loc":"Papua New Guinea","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Centennial Peak (Antarctica)","met":"Centennial Peak","inf":4070,"loc":"Prince Olav Mountains, Geography of Antarctica","loc1":"Antarctica","loc2":"","loc3":"","loc4":""},{"name":"Gran Paradiso","met":4061,"inf":"Graian Alps, Geography of Italy","loc":"Italy","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Ober Gabelhorn","met":4053,"inf":"Pennine Alps, Geography of Switzerland","loc":"Switzerland","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Piz Bernina","met":4049,"inf":"Bernina Alps, Geography of Switzerland","loc":"Switzerland","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Fiescherhorn","met":4049,"inf":"Bernese Alps, Geography of Switzerland","loc":"Switzerland","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Grünhorn","met":4043,"inf":"Bernese Alps, Geography of Switzerland","loc":"Switzerland","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Lauteraarhorn","met":4042,"inf":"Bernese Alps, Geography of Switzerland","loc":"Switzerland","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Aiguille du Géant","met":4035,"inf":"Graian Alps, Mont Blanc massif, Geography of France","loc":"France","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Silverthrone (Alaska)","met":"Mount Silverthrone","inf":4030,"loc":"Alaska Range, Alaska, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Sniktau","met":4034,"inf":"Front Range, Rocky Mountains, Colorado, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Azufral","met":4030,"inf":"Colombia","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Allalinhorn","met":4027,"inf":"Pennine Alps, Geography of Switzerland","loc":"Switzerland","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Wind River Peak","met":4021,"inf":"Wind River Range, Geography of Wyoming","loc":"Wyoming, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Latsga","met":4019,"inf":"Caucasus Mountains, Svaneti, Geography of Georgia (country)","loc":"Georgia","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Weissmies","met":4017,"inf":"Pennine Alps, Geography of Switzerland","loc":"Switzerland","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Waddington","met":4016,"inf":"British Columbia, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Marcus Baker","met":4016,"inf":"Chugach Range, Alaska, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Conejos Peak","met":4015,"inf":"San Juan Mountains, Colorado, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Dent du Géant","met":4013,"inf":"Mont Blanc massif, France/Italy","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Red Slate Mountain","met":4013,"inf":"Sierra Nevada, California, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Cloud Peak","met":4013,"inf":"Big Horn Mountains, Wyoming, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Wheeler Peak (New Mexico)","met":"Wheeler Peak","inf":4012,"loc":"Sangre de Cristo Mountains, New Mexico, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Lagginhorn","met":4010,"inf":"Pennine Alps, Switzerland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Twilight Peak","met":4010,"inf":"San Juan Mountains, Colorado, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Francs Peak","met":4009,"inf":"Absaroka Range, Wyoming, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Lahili","met":4009,"inf":"Svaneti Range, Svaneti, Georgia","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Walter (New Mexico)","met":"Mount Walter","inf":4005,"loc":"New Mexico, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Les Droites","met":4000,"inf":"Mont Blanc massif, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Piz Zupò","met":3995,"inf":"Bernina Range, Switzerland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Truchas Peak","met":3994,"inf":"Sangre de Cristo Mountains, New Mexico","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Fletschhorn","met":3993,"inf":"Pennine Alps, Switzerland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Albert Edward, Papua New Guinea","met":"Mount Albert Edward","inf":3990,"loc":"Papua New Guinea","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Meije","met":"La Meije","inf":3987,"loc":"Dauphiné Alps, France","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Wheeler Peak (Nevada)","met":"Wheeler Peak","inf":3982,"loc":"Snake Range, Nevada","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Dana","met":3981,"inf":"California","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Acatenango","met":3976,"inf":"Guatemala","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Piz Roseg","met":3973,"inf":"Bernina Range, Switzerland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Piz Scerscen","met":3971,"inf":"Bernina Range, Switzerland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Eiger","met":3967,"inf":"Bernese Oberland, Switzerland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Tochal","met":"Mount Tochal","inf":3964,"loc":"Alborz, Iran","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Black Tooth Mountain","met":3964,"inf":"Bighorn Mountains, Wyoming","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Grand Cornier","met":3962,"inf":"Pennine Alps, Switzerland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Owen (Wyoming)","met":"Mount Owen","inf":3957,"loc":"Teton Range, Wyoming","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Ailefroide","met":3954,"inf":"Dauphiné Alps, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Robson","met":3954,"inf":"Highest point in the Canadian Rockies","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Descabezado Grande","met":3953,"inf":"Chile","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Yu Shan","met":"Yu Shan (Mount Jade)","inf":3952,"loc":"Highest point in Taiwan and East Asia","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mont Pelvoux","met":3946,"inf":"Dauphiné Alps, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Julian (Colorado)","met":"Mount Julian","inf":3940,"loc":"Geography of Colorado","loc1":"Colorado, United States","loc2":"","loc3":"","loc4":""},{"name":"Mount Khalatsa","met":3938,"inf":"Disputed, South Ossetia or Georgia (country)","loc":"Georgia","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Ajusco","met":3930,"inf":"Mexico","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Erciyes","met":3916,"inf":"Central Anatolia, Turkey","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Bomber Mountain","met":3914,"inf":"Bighorn Range, Geography of Wyoming","loc":"Wyoming, United States","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pic Sans Nom","met":3919,"inf":"Dauphiné Alps, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Ortler","met":3905,"inf":"Italy South Tyrol","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Piz Palü","met":3905,"inf":"Bernina Range, Switzerland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Middle Teton","met":3903,"inf":"Teton Range, Wyoming","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Aiguille d'Argentière","met":3902,"inf":"Mont Blanc massif, France/Switzerland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Granite Peak (Montana)","met":"Granite Peak","inf":3901,"loc":"Montana, US","loc1":"Highest point","loc2":"","loc3":"","loc4":""},{"name":"Mount Gibbs","met":3893,"inf":"Sierra Nevada, California, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Crillon","met":3879,"inf":"Fairweather Range, Alaska, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mont Blanc de Cheilon","met":3870,"inf":"Pennine Alps, Switzerland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Aiguille du Goûter","met":3863,"inf":"Graian Alps, Mont Blanc massif, Geography of France","loc":"France","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Borah Peak","met":3861,"inf":"Idaho, US","loc":"Highest point","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Grande Casse","met":3855,"inf":"Vanoise Massif, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Humphreys Peak","met":3852,"inf":"Arizona, US","loc":"Highest point","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Santa Fe Baldy","met":3847,"inf":"Sangre de Cristo Mountains, New Mexico","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Baldwin (California)","met":"Mount Baldwin","inf":3845,"loc":"Sierra Nevada, California, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Aiguille du Midi","met":3842,"inf":"Graian Alps, Mont Blanc Massif, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Moran","met":3842,"inf":"Wyoming, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Monte Viso","met":3841,"inf":"Italian Alps","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Sauyr Zhotasy","met":3840,"inf":"Kazakhstan","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Saramati","met":3826,"inf":"Patkai Range, Nagaland, India","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Nesthorn","met":3822,"inf":"Bernese Alps, Switzerland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Cerro Chirripó","met":3820,"inf":"Highest in Costa Rica","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Aiguille des Glaciers","met":3816,"inf":"Mont Blanc massif, France/Italy","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"South Teton","met":3814,"inf":"Teton Range, Wyoming","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Kerinci","met":3800,"inf":"Highest volcano in Indonesia","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Grossglockner","met":3798,"inf":"Austria","loc":"Highest point","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pigne d'Arolla","met":3796,"inf":"Pennine Alps, Switzerland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Erebus","met":3794,"inf":"Antarctica","loc":"Southernmost active volcano","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mont Pourri","met":3779,"inf":"Vanoise Massif, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Fuji","met":3776,"inf":"Japan","loc":"Highest in Japan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Wildspitze","met":3774,"inf":"Austria","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Greenhorn Mountain","met":3763,"inf":"Wet Mountains, Colorado, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Volcán de Fuego","met":3763,"inf":"Guatemala","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Villard","met":3760,"inf":"Montana, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Teewinot Mountain","met":3757,"inf":"Teton Range, Wyoming, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Aiguille du Dru","met":3754,"inf":"Graian Alps, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Aoraki / Mount Cook","met":3754,"inf":"New Zealand","loc":"Highest point in New Zealand","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pointe de Charbonnel","met":3752,"inf":"Graian Alps, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Piz Morteratsch","met":3751,"inf":"Bernina Range, Switzerland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Sawtooth Mountain","met":3750,"inf":"Front Range, Colorado, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Davis (California)","met":"Mount Davis","inf":3750,"loc":"California, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Morrison (California)","met":"Mount Morrison","inf":3750,"loc":"California, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Taibai","met":3750,"inf":"Qin Mountains, China","loc":"Highest point east of Tibetan massif","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Aiguille de la Grande Sassière","met":3747,"inf":"Graian Alps, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Lanín","met":3747,"inf":"Andes, Chile/Argentina","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Adams (Washington)","met":"Mount Adams","inf":3743,"loc":"Cascade Range, Washington, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Columbia (Canada)","met":"Mount Columbia","inf":3747,"loc":"Canadian Rockies","loc1":"Highest in Alberta","loc2":"","loc3":"","loc4":""},{"name":"Mount Adams (Washington)","met":"Mount Adams","inf":3743,"loc":"Washington, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Teepe Pillar","met":3739,"inf":"Teton Range, Wyoming, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Weißkugel","met":3739,"inf":"Alps, Austria/Italy","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Minarets (California)","met":"Minarets","inf":3735,"loc":"Sierra Nevada, California","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Huntington (Alaska)","met":"Mount Huntington","inf":3731,"loc":"Alaska Range, Alaska, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Rinjani","met":3726,"inf":"Indonesia","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Cerro del Potosí","met":3721,"inf":"Mexico","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Diamond Peak (Idaho)","met":"Diamond Peak","inf":3719,"loc":"Idaho, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Teide","met":3718,"inf":"Canary Islands","loc":"Highest in Spain","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Asperity Mountain","met":3716,"inf":"Waddington Range","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Cerro de la Viga","met":3712,"inf":"Mexico","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Delano Peak","met":3711,"inf":"Utah, US - Highest peak in the Tushar Mountains","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Sahand","met":3707,"inf":"East Azerbaijan, Iran","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Monte San Lorenzo","met":3706,"inf":"Patagonia, Argentina-Chile","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Wetterhorn","met":3701,"inf":"Bernese Alps, Switzerland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Valhalla (Alaska)","met":"Mount Valhalla","inf":3699,"loc":"Alaska, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Dent Parrachée","met":3697,"inf":"Vanoise massif, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Gunnbjørn","met":3694,"inf":"highest in Greenland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"North Twin Peak","met":3684,"inf":"Canadian Rockies","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Monte Disgrazia","met":3678,"inf":"Bregaglia, Switzerland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Semeru","met":3676,"inf":"Java, Indonesia","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Les Bans","met":3669,"inf":"Ecrins, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Cloudveil Dome","met":3666,"inf":"Teton Range, Wyoming, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Thor Peak (Wyoming)","met":"Thor Peak","inf":3666,"loc":"Teton Range, Wyoming, United States","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Medicine Bow Peak","met":3661,"inf":"Wyoming, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Hyndman Peak","met":3660,"inf":"Idaho, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Clemenceau","met":3658,"inf":"Canadian Rockies","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Frakes","met":3654,"inf":"Crary Mountains, Antarctica","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Grande Motte","met":3653,"inf":"Vanoise Massif, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Sierra Blanca (New Mexico)","met":"Sierra Blanca","inf":3652,"loc":"Sacramento Mountains (New Mexico)","loc1":"Sacramento Mountains, New Mexico","loc2":"","loc3":"","loc4":""},{"name":"Pointe de la Fournache","met":3642,"inf":"Vanoise massif, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Buck Mountain (Wyoming)","met":"Buck Mountain","inf":3639,"loc":"Teton Range, Wyoming","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Nebo (Utah)","met":"Mount Nebo","inf":3636,"loc":"Utah, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Charleston","met":3632,"inf":"Nevada, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Hintere Schwärze","met":3628,"inf":"Ötztal Alps, Austria/Italy","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Nez Perce Peak","met":3627,"inf":"Teton Range, Wyoming, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Alberta","met":3619,"inf":"Canadian Rockies","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Assiniboine","met":3618,"inf":"Canadian Rockies","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Tödi","met":3614,"inf":"Swiss Alps","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Forbes","met":3612,"inf":"Canadian Rockies","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Lautaro (volcano)","met":"Lautaro","inf":3607,"loc":"Patagonia, Chile","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Dôme de la Sache","met":3601,"inf":"Vanoise massif, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Castle Peak (Idaho)","met":"Castle Peak","inf":3601,"loc":"Idaho, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Dôme de l'Arpont","met":3601,"inf":"Vanoise massif, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Dôme de Chasseforêt","met":3586,"inf":"Vanoise massif, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Makra Peak","met":3586,"inf":"Pakistan","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Sierra Velluda","met":3585,"inf":"Chile","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Grand Roc Noir","met":3582,"inf":"Vanoise massif, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Timpanogos","met":3582,"inf":"Utah, United States","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Alvand","met":3580,"inf":"Hamedan, Iran","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Dôme des Nants","met":3570,"inf":"Vanoise massif, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Ryan Peak (Idaho)","met":"Ryan Peak","inf":3570,"loc":"Idaho, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"South Twin Peak","met":3566,"inf":"Canadian Rockies","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Olan (mountain)","met":"Olan","inf":3564,"loc":"Ecrins, France","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Aiguille de Péclet","met":3561,"inf":"Vanoise massif, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Presanella","met":3558,"inf":"Adamello-Presanella, Italy","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Steere","met":3558,"inf":"Antarctica","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Monarch Mountain","met":3555,"inf":"Pacific Ranges, British Columbia, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Monte Leone","met":3552,"inf":"Lepontine Alps, Switzerland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mont Turia","met":3550,"inf":"Vanoise massif, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Temple (Alberta)","met":"Mount Temple","inf":3543,"loc":"Canadian Rockies","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Disappointment Peak (Wyoming)","met":"Disappointment Peak","inf":3541,"loc":"Teton Range, Wyoming","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Woodring","met":3533,"inf":"Teton Range, Wyoming","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Aiguille de Polset","met":3531,"inf":"Vanoise Massif, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Snow Dome (Canada)","met":"Snow Dome","inf":3520,"loc":"Canadian Rockies","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Aiguilles d'Arves","met":3515,"inf":"Arve Massif, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Ellen (Utah)","met":3513,"inf":"Henry Mountains, Utah, US","loc":"Last surveyed mountain range in US lower 48 states","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mont de Gébroulaz","met":3511,"inf":"Vanoise massif, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount San Gorgonio","met":3505,"inf":"California, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Kitchener","met":3505,"inf":"Canadian Rockies","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Zuckerhütl","met":3505,"inf":"Stubai Alps, Austria","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Wister","met":3502,"inf":"Teton Range, Wyoming","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Saskatchewan (Yukon)","met":"Mount Saskatchewan","inf":3500,"loc":"Yukon, Canada","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Tasman","met":3497,"inf":"Southern Alps, New Zealand","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Hungabee","met":3492,"inf":"Canadian Rockies","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Athabasca","met":3491,"inf":"Canadian Rockies","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Tronador","met":3491,"inf":"Chile/Argentina","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Saint John","met":3484,"inf":"Teton Range, Wyoming","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Thabana Ntlenyana","met":3482,"inf":"Drakensberg, Africa","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pointes du Châtelard","met":3479,"inf":"Vanoise massif, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mulhacén","met":3479,"inf":"Spain","loc":"Highest in continental Spain","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Berlin","met":3478,"inf":"Flood Range, Antarctica","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Pennell","met":3478,"inf":"Henry Mountains, Utah, US.","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Volcán Barú","met":3475,"inf":"Chiriquí, Panama","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Roc des Saints Pères","met":3470,"inf":"Vanoise massif, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Brazeau","met":3470,"inf":"Canadian Rockies","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Nyiragongo","met":3470,"inf":"Virunga Mountains, DRC","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Ruby Dome","met":3470,"inf":"Ruby Mountains, Nevada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Roche de la Muzelle","met":3465,"inf":"Dauphine Alps, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Victoria (Bow Range)","met":"Mount Victoria","inf":3464,"loc":"Canadian Rockies","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Abajo Peak","met":3463,"inf":"Abajo Mountains, Utah","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Eagle Peak (Wyoming)","met":"Eagle Peak","inf":3462,"loc":"Absaroka Range, Wyoming, United States","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Doane Peak","met":3461,"inf":"Teton Range, Wyoming, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Ranger Peak (Wyoming)","met":"Ranger Peak","inf":3461,"loc":"Teton range, Wyoming, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Takahe","met":3460,"inf":"Antarctica","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Cerro de la Muerte","met":3451,"inf":"Second highest in Costa Rica","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Furgghorn","met":3451,"inf":"Pennine Alps, Switzerland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mafadi","met":3450,"inf":"Drakensberg, South Africa","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Andromeda (Alberta)","met":"Mount Andromeda","inf":3450,"loc":"Canadian Rockies","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Boulder Mountain (Utah)","met":"Boulder Mountain","inf":3449,"loc":"Utah, US. Highest timbered plateau in N America","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Joffre","met":3449,"inf":"Canadian Rockies","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Hilgard Peak, Montana","met":"Hilgard Peak","inf":3449,"loc":"Madison Range, Montana, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Static Peak","met":3445,"inf":"Teton Range, Wyoming, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Thousand Lake Mountain","met":3444,"inf":"Utah, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pointe de la Sana","met":3436,"inf":"Vanoise massif, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Eagles Rest Peak","met":3431,"inf":"Teton Range, Wyoming, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Irazú Volcano","met":3431,"inf":"Costa Rica","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Hood","met":3429,"inf":"Cascade Range, Oregon, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Verpeilspitze","met":3425,"inf":"Austria","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Deltaform Mountain","met":3424,"inf":"Canadian Rockies","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Lefroy","met":3423,"inf":"Canadian Rockies","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pointe de l'Échelle","met":3422,"inf":"Vanoise massif, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pointe du Bouchet","met":3420,"inf":"Vanoise massif, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Fitzgerald (Nevada)","met":"Mount Fitzgerald","inf":3418,"loc":"Ruby Mountains, Nevada, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Bellecôte","met":3417,"inf":"Vanoise massif, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Crazy Peak","met":3417,"inf":"Montana, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Emi Koussi","met":3415,"inf":"Tibesti Mountains, Chad","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Piz Linard","met":3410,"inf":"Switzerland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Woolley","met":3405,"inf":"Canadian Rockies","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Aneto","met":3404,"inf":"Pyrenees, Spain","loc":"Highest in Pyrenees","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Lone Mountain (Montana)","met":"Lone Mountain","inf":3404,"loc":"Madison Range, Montana, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Fluchthorn","met":3399,"inf":"Silvretta, Austria-Switzerland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Grand Bec","met":3398,"inf":"Vanoise massif, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Rockchuck Peak","met":3397,"inf":"Teton Range, Wyoming","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Veleta (Sierra Nevada)","met":"Pico Veleta","inf":3396,"loc":"Sierra Nevada, Spain","loc1":"Location of the highest road in Europe","loc2":"","loc3":"","loc4":""},{"name":"Mount Hector (Alberta)","met":"Mount Hector","inf":3394,"loc":"Canadian Rockies","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Piz Platta","met":3392,"inf":"Swiss Alps","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Telescope Peak","met":3392,"inf":"Death Valley","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Champagne Castle","met":3377,"inf":"Drakensberg, South Africa","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Cerro Chaltén","met":3375,"inf":"Patagonia, Argentina-Chile","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Spurr","met":3374,"inf":"Alaska","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pointe du Vallonnet","met":3372,"inf":"Vanoise massif, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mammoth Mountain","met":3371,"inf":"California","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Fründenhorn","met":3369,"inf":"Bernese Alps, Switzerland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pointe Renod","met":3368,"inf":"Vanoise massif, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Traverse Peak","met":3368,"inf":"Teton Range, Wyoming","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Edith Cavell","met":3363,"inf":"Canadian Rockies","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Dôme des Sonnailles","met":3361,"inf":"Vanoise massif, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Valvelspitze","met":3360,"inf":"Austria","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Etna","met":3357,"inf":"Metropolitan City of Catania, Italy","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Agepsta","met":3357,"inf":"Gagra Range, Abkhazia, Georgia","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Munday","met":3356,"inf":"Pacific Ranges, B.C., Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pointe de Claret","met":3355,"inf":"Vanoise massif, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Monte Perdido","met":3355,"inf":"Pyrenees","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Electric Peak","met":3343,"inf":"Gallatin Range, Montana","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Marmolada","met":3343,"inf":"Dolomites, Italy","loc":"Highest mountain of the Dolomites","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Saskatchewan (Alberta)","met":"Mount Saskatchewan","inf":3342,"loc":"Canadian Rockies","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Cerro Fábrega","met":3335,"inf":"Bocas Del Toro, Panama","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Ward Mountain (Nevada)","met":"Ward Mountain","inf":3333,"loc":"Nevada, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pointe de Méan Martin","met":3330,"inf":"Vanoise massif, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Dôme de Polset","met":3326,"inf":"Vanoise massif, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Cathedral Peak (California)","met":"Cathedral Peak","inf":3326,"loc":"California, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Raynolds Peak","met":3325,"inf":"Teton Range, Wyoming","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Rolling Thunder Mountain","met":3324,"inf":"Teton Range, Wyoming","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Hampton","met":3323,"inf":"Antarctica","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Dôme des Pichères","met":3319,"inf":"Vanoise massif, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Grand Roc","met":3316,"inf":"Vanoise massif, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Giant's Castle","met":3315,"inf":"Drakensberg, South Africa","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Sunwapta Peak","met":3315,"inf":"Canadian Rockies","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Piz Buin","met":3312,"inf":"Silvretta, Austria-Switzerland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Ball","met":3311,"inf":"Canadian Rockies","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Piz Badile","met":3308,"inf":"Bregaglia, Switzerland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Ağ Dağ","met":3306,"inf":"Mount Bozgush","loc":"Bozgush mountain range, East Azerbaijan Province","loc1":"East Azerbaijan, Iran","loc2":"","loc3":"","loc4":""},{"name":"San Jacinto Peak","met":3302,"inf":"California, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Didi Abuli","met":3301,"inf":"Georgia","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Silberhorn (New Zealand)","met":"Silberhorn","inf":3300,"loc":"Southern Alps, New Zealand","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Bivouac Peak","met":3299,"inf":"Teton Range, Wyoming","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Wilbur (Alaska)","met":"Mount Wilbur","inf":3298,"loc":"Fairweather Range, Alaska, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Monte Argentera","met":3297,"inf":"Maritime Alps, Italy","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Rose (Nevada)","met":3287,"inf":"Carson Range, Nevada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Samsari","met":3285,"inf":"Abul-Samsari Range, Georgia","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Roche Chevrière","met":3281,"inf":"Vanoise massif, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Habicht","met":3277,"inf":"Stubai Alps, Austria","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Thompson Peak (Idaho)","met":"Thompson Peak","inf":3277,"loc":"Idaho, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Chephren","met":3266,"inf":"Canadian Rockies","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pointe de Thorens","met":3266,"inf":"Vanoise massif, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Cramer","met":3266,"inf":"Idaho, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Toussidé","met":3265,"inf":"Tibesti Mountains, Chad-Libya","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Antelao","met":3264,"inf":"Dolomites, Italy","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mont Pelve","met":3261,"inf":"Vanoise massif, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Stanley Baldwin","met":3256,"inf":"Columbia Mountains, B.C., Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Sandia Mountains","met":"Sandia Crest","inf":3255,"loc":"New Mexico, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Épaule du Bouchet","met":3250,"inf":"Vanoise massif, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Smythe (Alberta)","met":"Mount Smythe","inf":3246,"loc":"Canadian Rockies","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Wildstrubel","met":3243,"inf":"Bernese Alps, Switzerland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Williams Peak (Idaho)","met":"Williams Peak","inf":3242,"loc":"Idaho, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Hope (Eternity Range)","met":"Mount Hope","inf":3239,"loc":"Highest British mountain, British Antarctic Territory","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Titlis","met":3238,"inf":"Bernese Alps, Switzerland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Owl Peak","met":3235,"inf":"Teton Range, Wyoming","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Mackenzie King","met":3234,"inf":"Cariboo Mountains, B.C., Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pointe des Buffettes","met":3233,"inf":"Vanoise massif, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Lisenser Spitze","met":3230,"inf":"Stubai Alps, Austria","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Terror (Antarctica)","met":"Mount Terror","inf":3230,"loc":"Antarctica","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Aiguille Rouge","met":3227,"inf":"Vanoise massif, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Monte Civetta","met":3220,"inf":"Dolomites, Italy","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Symmetry Spire","met":3219,"inf":"Teton Range, Wyoming","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Glacier Peak","met":3213,"inf":"Washington, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pointe du Dard","met":3212,"inf":"Vanoise massif, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Binalud","met":3211,"inf":"Alborz, Iran","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pointe de la Réchasse","met":3206,"inf":"Vanoise massif, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Jefferson (Madison County, Montana)","met":"Mount Jefferson","inf":3204,"loc":"Montana, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Jefferson (Oregon)","met":"Mount Jefferson","inf":3199,"loc":"Cascade Range, Oregon, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Dreiländerspitze","met":3197,"inf":"Silvretta, Austria-Switzerland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Kita","met":3193,"inf":"Akaishi Mountains, Japan","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Hotaka (Nagano, Gifu)","met":"Mount Hotaka","inf":3190,"loc":"Hida Mountains, Japan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Cleveland (Montana)","met":"Mount Cleveland","inf":3190,"loc":"Montana, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Ainodake","met":3189,"inf":"Akaishi Mountains, Japan","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Lassen Peak","met":3189,"inf":"California, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Galatea","met":3185,"inf":"Kananaskis Range, Alberta, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Rendezvous Mountain","met":3185,"inf":"Teton Range, Wyoming, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Saviers Peak","met":3182,"inf":"Idaho, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Yari","met":3180,"inf":"Hida Mountains, Japan","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Kendrick Peak","met":3178,"inf":"San Francisco Peaks, USA","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Kendrick Peak","met":3178,"inf":"San Francisco Peaks, USA","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Parícutin","met":3170,"inf":"Mexico","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Aylmer","met":3162,"inf":"Canadian Rockies","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Three Sisters (Oregon)","met":"South Sister","inf":3157,"loc":"Cascade Range, Oregon, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Stanley Peak (Ball Range)","met":"Stanley Peak","inf":3155,"loc":"Ball Range, Canadian Rockies","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Jøkulkyrkja","met":3148,"inf":"Antarctica","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pica d'Estats","met":3143,"inf":"Spanish–French border, Pyrenees","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Phan Xi Păng","met":3143,"inf":"Sa pa, Vietnam","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Warusawa","met":"Mount Arakawa","inf":3141,"loc":"Akaishi Mountains, Japan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Gray Peak (Wyoming)","met":"Gray Peak","inf":3140,"loc":"Yellowstone National Park, Wyoming, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Heyburn","met":3139,"inf":"Idaho, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Washburn","met":3122,"inf":"Yellowstone National Park, Wyoming, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Collie","met":3116,"inf":"Canadian Rockies","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Siple","met":3110,"inf":"Antarctica","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pirchinassi","met":3110,"inf":"Muzaffarabad Azad Kashmir","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Redoubt (Alaska)","met":"Mount Redoubt","inf":3108,"loc":"Alaska, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Babel (Alberta)","met":"Mount Babel","inf":3101,"loc":"Bow Range, Alberta, Canada","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Emei","met":3099,"inf":"China","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pico Duarte","met":3098,"inf":"Dominican Republic","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Picacho del Diablo (Baja California)","met":"Picacho del Diablo","inf":3096,"loc":"Baja California, Mexico","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Trapper Peak (Montana)","met":"Trapper Peak","inf":3096,"loc":"Montana, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Storm Mountain (Misty Range)","met":"Storm Mountain","inf":3095,"loc":"Canadian Rockies","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Blackmore","met":3094,"inf":"Montana, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Stimson","met":3091,"inf":"Montana, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mol Len","met":3088,"inf":"Patkai Range, Nagaland-India/Burma<http://www.peaklist.org/WWlists/ultras/burma.html>","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Qurnat as Sawdā’","met":3088,"inf":"Lebanon","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Richardson (Alberta)","met":"Mount Richardson","inf":3086,"loc":"Canadian Rockies","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Kintla Peak","met":3079,"inf":"Livingston Range, Montana, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Moulton","met":3078,"inf":"Antarctica","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Smoky Dome","met":3077,"inf":"Idaho, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Three Sisters (Oregon)","met":"North Sister","inf":3074,"loc":"Cascade Range, Oregon, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Piton des Neiges","met":3069,"inf":"Réunion, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount San Antonio","met":3068,"inf":"San Gabriel Mountains, California, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Ontake","met":3067,"inf":"Japan","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Jackson (Montana)","met":"Mount Jackson","inf":3064,"loc":"Lewis Range, Montana, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Three Sisters (Oregon)","met":"Middle Sister","inf":3062,"loc":"Cascade Range, Oregon, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Wutai","met":3061,"inf":"Shanxi, China","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Nyamuragira","met":3058,"inf":"Democratic Republic of the Congo","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Haleakala","met":3057,"inf":"Hawaii, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Crowfoot Mountain (Alberta)","met":"Crowfoot Mountain","inf":3055,"loc":"Canadian Rockies","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Chester","met":3054,"inf":"Canadian Rockies","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Siyeh","met":3052,"inf":"Montana, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Merritt","met":3049,"inf":"Montana, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Cerro de Coxóm","met":3045,"inf":"Guatemala","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Parseierspitze","met":3036,"inf":"Austria","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Senjō (Akaishi)","met":"Mount Senjō","inf":3033,"loc":"Akaishi Mountains, Japan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Aspiring/Tititea","met":3033,"inf":"New Zealand","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Kinnerly Peak","met":3031,"inf":"Montana, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Agung","met":3031,"inf":"Bali, Indonesia","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount McArthur (British Columbia)","met":"Mount McArthur","inf":3021,"loc":"Canadian Rockies","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Norikura","met":3026,"inf":"Hida Mountains, Japan","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Tsiteli Khati","met":3026,"inf":"Kharuli Range, Georgia","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Tate","met":3015,"inf":"Hida Mountains, Japan","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Tahat","met":3003,"inf":"Algeria","loc":"Highest","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Sapitwa","met":3002,"inf":"Mulanje Massif, Malawi","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Ben Macdhui (South Africa)","met":"Ben Macdhui","inf":3001,"loc":"Eastern Cape, South Africa","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"The Fortress (Alberta)","met":"The Fortress","inf":3000,"loc":"Canadian Rockies","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Tre Cime di Lavaredo","met":2999,"inf":"Province of Belluno, Italy","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pizzo Centrale","met":2999,"inf":"Switzerland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Cascade Mountain (Alberta)","met":"Cascade Mountain","inf":2998,"loc":"Vermilion Range, Canadian Rockies, Canada","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Copahue","met":2997,"inf":"Andes, Argentina/Chile","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Girouard","met":2985,"inf":"Fairholme Range, Canadian Rockies, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pico da Neblina","met":2994,"inf":"Serra do Imeri, Amazonas, Brazil","loc":"Highest","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Whyte","met":2983,"inf":"Bow Range, Canadian Rockies, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Miranjani","met":2980,"inf":"Pakistan","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Forellen Peak","met":2979,"inf":"Teton Range, Wyoming, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Andrus","met":2978,"inf":"Ames Range, Antarctica","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Niblock","met":2976,"inf":"Bow Range, Canadian Rockies, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pico 31 de Março","met":2973,"inf":"Serra do Imeri, Amazonas, Brazil","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Keele Peak","met":2972,"inf":"Mackenzie Mountains, Yukon, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Odin (British Columbia)","met":"Mount Odin","inf":2970,"loc":"Monashee Mountains, B.C., Canada","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Schilthorn","met":2970,"inf":"Bernese Alps, Switzerland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Tallac","met":2968,"inf":"Sierra Nevada, California, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Steens Mountain","met":2968,"inf":"Isolated peak in Southeastern Oregon","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Inglismaldie","met":2964,"inf":"Fairholme Range, Canadian Rockies, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Ramelau","met":2963,"inf":"Highest in East Timor","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Zugspitze","met":2962,"inf":"Germany","loc":"Highest","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Slide Mountain (Nevada)","met":2957,"inf":"Carson Range, Nevada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Little Alberta","met":2956,"inf":"Sir Winston Churchill Range, Canadian Rockies, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Arfak","met":2955,"inf":"Arfak Mountains, West Papua (province)","loc":"West Papua, Indonesia","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Iron Mountain (Idaho)","met":"Iron Mountain","inf":2955,"loc":"Soldier Mountains, Idaho, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Apo","met":"Apo","inf":2954,"loc":"Philippines","loc1":"Highest","loc2":"","loc3":"","loc4":""},{"name":"Fossil Mountain (Alberta)","met":"Fossil Mountain","inf":2946,"loc":"Banff NP, Alberta, Canada","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Coma Pedrosa","met":2942,"inf":"Pyrenees, Andorra","loc":"Highest","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Going to the Sun Mountain","met":2939,"inf":"Lewis Range, Montana, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Fishers Peak","met":2936,"inf":"Raton Mesas, Colorado-New Mexico, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pilot Mountain (Alberta)","met":"Pilot Mountain","inf":2935,"loc":"Massive Range, Canadian Rockies, Canada","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Uri Rotstock","met":2928,"inf":"Switzerland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Musala","met":2925,"inf":"Rila Mountain, Bulgaria","loc":"Highest","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Pulag","met":2926,"inf":"Philippines","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Olympus","met":2917,"inf":"Thessaly/Macedonia, Greece","loc":"Highest","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Vihren","met":2914,"inf":"Pirin Mountain, Bulgaria","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Gould (Montana)","met":"Mount Gould","inf":2912,"loc":"Montana, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Corno Grande","met":2912,"inf":"Abruzzo, Italy","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Blakiston","met":2910,"inf":"Flathead Range, Canadian Rockies, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Puigmal","met":2909,"inf":"Spanish–French border, Pyrenees","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Kutelo","met":2908,"inf":"Pirin Mountain, Bulgaria","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Chutine Peak","met":2903,"inf":"Coast Range, British Columbia, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Malka Musala","met":2902,"inf":"Rila Mountain, Bulgaria","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Rising Wolf Mountain","met":2900,"inf":"Lewis Range, Montana, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Bonanza Peak (Washington)","met":"Bonanza Peak","inf":2899,"loc":"Cascade Range, Washington, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount McLoughlin","met":2894,"inf":"Mount McLoughlin, Oregon, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pic de Sanfonts","met":2894,"inf":"Pyrenees, Andorra","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pico da Bandeira","met":2892,"inf":"Serra do Caparaó, Minas Gerais/Espírito Santo, Brazil","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Collarada","met":2886,"inf":"Pyrenees, Spain","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Banski Suhodol","met":2884,"inf":"Pirin Mountain, Bulgaria","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Boardman Peak","met":2882,"inf":"Soldier Mountains, Idaho, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Wrightson","met":2882,"inf":"Santa Rita Mountains, Arizona, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Lembert Dome","met":2880,"inf":"California, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Sacajawea Peak","met":2876,"inf":"Wallowa Mountains, Oregon, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Stuart","met":2869,"inf":"Cascades, Washington, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Fisht","met":2867,"inf":"Adygea, Russia","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Silverthrone","met":2865,"inf":"British Columbia, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Baden-Powell","met":2864.75,"inf":"San Gabriel Mountain, California, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Triglav","met":2864,"inf":"Slovenia","loc":"Highest","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Saint Nicholas","met":2858,"inf":"Montana, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Irechek","met":2852,"inf":"Rila Mountain, Bulgaria","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Polezhan","met":2851,"inf":"Pirin Mountain, Bulgaria","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Tabayoc","met":2842,"inf":"Cordillera Range, Benguet, Philippines","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Wilbur (Montana)","met":"Mount Wilbur","inf":2841,"loc":"Montana, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pico do Fogo","met":2829,"inf":"Cape Verde","loc":"Highest","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Kamenitsa Peak (Pirin)","met":"Kamenitsa","inf":2822,"loc":"Pirin Mountain, Bulgaria","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Fernow","met":2819,"inf":"Washington, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Hermon","met":2814,"inf":"Syria and Lebanon","loc":"a subpeak on its southern slopes is within the Israeli-occupied Golan Heights region","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Deakin","met":2810,"inf":"Antarctica","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Cory (Alberta)","met":"Mount Cory","inf":2802,"loc":"Alberta, Canada","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Thielsen","met":2799,"inf":"Cascades, Oregon, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pedra da Mina","met":2798,"inf":"Serra da Mantiqueira, Minas Gerais/São Paulo, Brazil","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Ruapehu","met":2797,"inf":"Tongariro National Park, North Island, New Zealand","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Copper Mountain (Alberta)","met":"Copper Mountain","inf":2795,"loc":"Alberta, Canada","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Lemmon","met":2795,"inf":"Santa Catalina Mountains, Arizona, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Maiella","met":2793,"inf":"Abruzzo, Italy","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pico das Agulhas Negras","met":2792,"inf":"Serra do Itatiaia, Minas Gerais/Rio de Janeiro, Brazil","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Deno (Rila)","met":"Deno","inf":2790,"loc":"Rila Mountain, Bulgaria","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Hayes Volcano","met":2788,"inf":"Alaska, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Edziza","met":2787,"inf":"British Columbia, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Canigou","met":2784,"inf":"Pyrenees, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Weaver","met":2780,"inf":"Antarctica","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Buckner Mountain","met":2778,"inf":"Washington, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Longonot","met":2776,"inf":"Great Rift Valley, Kenya","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Seven Fingered Jack","met":2774,"inf":"Washington, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Nirvana","met":2773,"inf":"Northwest Territories, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Chief Mountain","met":2768,"inf":"Montana, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Lincoln Peak (Washington)","met":"Lincoln Peak","inf":2768,"loc":"Washington, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Castle Mountain","met":2766,"inf":"Canadian Rockies, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pyramid Mountain (Alberta)","met":"Pyramid Mountain","inf":2766,"loc":"Canadian Rockies, Canada","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"El_Ávila_National_Park","met":"Pico Naiguata (Avila)","inf":2765,"loc":"Caracas, Venezuela","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Bachelor","met":2764,"inf":"Formerly Bachelor Butte, Cascade Mountains, Oregon, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Korab","met":2764,"inf":"North Macedonia & Albania","loc":"Highest","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Yalovarnika","met":2763,"inf":"Pirin Mountain, Bulgaria","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Gazey","met":2761,"inf":"Pirin Mountain, Bulgaria","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Sir James MacBrien","met":2759,"inf":"Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Kaymakchal","met":2753,"inf":"Pirin Mountain, Bulgaria","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Olympus (Utah)","met":"Mount Olympus","inf":2751,"loc":"Utah, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Todorka","met":2746,"inf":"Pirin Mountain, Bulgaria","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mawson Peak","met":2745,"inf":"Highest in Australian Antarctic Territory","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Fairview Mountain (Alberta)","met":"Fairview Mountain","inf":2744,"loc":"Bow Range, Canadian Rockies, Canada","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Baekdu","met":2744,"inf":"North Korea/China Highest in North Korea","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Škrlatica","met":2740,"inf":"Julian Alps, Slovenia","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Monte Roraima","met":2739,"inf":"Serra de Pacaraima, Roraima, Brazil","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Heavens Peak","met":2739,"inf":"Montana, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Spickard","met":2737,"inf":"North Cascades, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Banderishki Chukar","met":2732,"inf":"Pirin Mountain, Bulgaria","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Melbourne","met":2732,"inf":"Antarctica","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Cerro El Pital","met":2730,"inf":"El Salvador","loc":"Highest","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Redoubt (Washington)","met":"Mount Redoubt","inf":2730,"loc":"Washington, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Dzhengal","met":2730,"inf":"Pirin Mountain, Bulgaria","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Malyovitsa","met":2729,"inf":"Rila Mountain, Bulgaria","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pizzo di Claro","met":2727,"inf":"Ticino, Switzerland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Morning","met":2723,"inf":"Antarctica","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Phu Xai Lai Leng","met":2720,"inf":"Laos","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Serles","met":2718,"inf":"Stubai Alps, Austria","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Watzmann","met":2713,"inf":"Bavarian Alps, Germany","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Boston Peak","met":2711,"inf":"Washington, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Schiahorn","met":2709,"inf":"Switzerland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Grotto Mountain","met":2706,"inf":"Canadian Rockies, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Haku","met":2702,"inf":"Ryōhaku Mountains, Japan","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Eldorado Peak","met":2701,"inf":"Washington, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Anamudi","met":"Anaimudi","inf":2695,"loc":"Kerala, India","loc1":"Highest in Western ghats","loc2":"Western Ghats, India","loc3":"","loc4":""},{"name":"Maja Jezerce","met":2694,"inf":"Highest in Dinaric Alps, Albania","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Half Dome","met":2693,"inf":"Sierra Nevada, California, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Louis","met":2682,"inf":"Alberta, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Discovery","met":2681,"inf":"Antarctica","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pic de la Selle","met":2680,"inf":"Haiti","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Garibaldi","met":2678,"inf":"British Columbia, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Bashliyski Chukar","met":2670,"inf":"Pirin Mountain, Bulgaria","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pedra do Sino","met":2670,"inf":"Serra dos Órgãos, Rio de Janeiro, Brazil","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Guadalupe Peak","met":2667,"inf":"Guadalupe Mountains, Texas","loc":"Highest in Texas","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Gjeravica","met":2656,"inf":"Accursed Mountains, Kosovo","loc":"Highest in Kosovo","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Großer Krottenkopf","met":2656,"inf":"Allgäu Alps, Tyrol, Austria","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pic del Port Vell","met":2655,"inf":"Pyrenees, Andorra","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Gerlachov Peak","met":2655,"inf":"High Tatras, Slovakia","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Michelson (Chugach Mountains)","met":"Mount Michelson","inf":2652,"loc":"Chugach Mountains, Alaska, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Torre Cerredo","met":2650,"inf":"Picos de Europa, Spain","loc":"Highest in Picos de Europa","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount St. Piran","met":2649,"inf":"Bow Range, Alberta, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Meager (British Columbia)","met":"Mount Meager","inf":2645,"loc":"British Columbia, Canada","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Trus Madi","met":2642,"inf":"Trus Madi Range, Sabah, Malaysia","loc":"No. 2 in Malaysia","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Meesapulimala","met":2640,"inf":"Tamil Nadu/Kerela, India","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Doddabetta","met":2637,"inf":"Tamil Nadu, India","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Piton de la Fournaise","met":2631,"inf":"Réunion","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Crean","met":2630,"inf":"Victoria Land","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Cardinal Peak","met":2618,"inf":"Washington, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Barbeau Peak","met":2616,"inf":"Nunavut, Canada","loc":"Highest in Nunavut","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Baba Mountain (North Macedonia)","met":"Pelister Peak","inf":2601,"loc":"North Macedonia","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Abao","met":2596,"inf":"Philippines","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pico Almanzor","met":2592,"inf":"Spain","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Currie (British Columbia)","met":"Mount Currie","inf":2591,"loc":"BC, Canada","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pizzo Molare","met":2585,"inf":"Ticino, Switzerland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Tavkvetili","met":2583,"inf":"Georgia","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Tambuyukon","met":2579,"inf":"Sabah, Malaysia","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Argonaut Peak","met":2576,"inf":"Washington, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Doi Inthanon","met":2565,"inf":"Thailand","loc":"Highest in Thailand","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pic dels Aspres","met":2562,"inf":"Pyrenees, Andorra","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Ledyanaya","met":2562,"inf":"Russia","loc":"Highest of the Koryak Mountains","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Aguja Saint Exupery","met":2558,"inf":"Argentina","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount St. Helens","met":2550,"inf":"Washington, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Big Hatchet Peak","met":2547,"inf":"New Mexico, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Moldoveanu Peak","met":2544,"inf":"Romania","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Vineuo","met":2536,"inf":"Papua New Guinea","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Negoiu Peak","met":2535,"inf":"Romania","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Vistea Mare","met":2527,"inf":"Romania","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pidurutalagala","met":2524,"inf":"Sri Lanka","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Norquay","met":2522,"inf":"Canadian Rockies, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Hualalai","met":2521,"inf":"Hawaii, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Yesenin","met":2520,"inf":"Antarctica","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Parangu Mare","met":2519,"inf":"Romania","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Taranaki/Egmont","met":2518,"inf":"New Zealand","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Garfield Peak (Wyoming)","met":"Garfield Peak","inf":2512,"loc":"Wyoming, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Joern","met":2510,"inf":"Antarctica","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Veniaminof","met":2507,"inf":"Alaska, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Omu Peak","met":2505,"inf":"Romania","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Rysy","met":2503,"inf":"Tatra Mountains","loc":"Tatras, Poland/Slovakia","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Tymfi","met":2497,"inf":"Pindus, Greece","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Monte Velino","met":2487,"inf":"Abruzzo Italy","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Monte Vettore","met":2476,"inf":"Abruzzo Italy","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Špik","met":2472,"inf":"Julian Alps, Slovenia","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Luna Peak (British Columbia)","met":"Luna Peak","inf":2470,"loc":"British Columbia, Canada","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Galdhøpiggen","met":2469,"inf":"Norway","loc":"Highest","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Kanlaon","met":2465,"inf":"Negros Occidental and Negros Oriental, Philippines","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Glittertind","met":2464,"inf":"Norway","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"El Capitan (Texas)","met":"El Capitan","inf":2464,"loc":"Texas, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Shimbiris","met":2464,"inf":"Somalia","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mayon","met":2463,"inf":"Albay, Philippines","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Monte Gorzano","met":2458,"inf":"Abruzzo Italy","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Ida (Crete)","met":"Mount Psiloritis","inf":2456,"loc":"Crete, Greece","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Lefka Ori","met":"Mount Pachnes (Lefka Ori)","inf":2453,"loc":"Crete, Greece","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Sulphur Mountain (Alberta)","met":"Sulphur Mountain","inf":2451,"loc":"Canadian Rockies, Canada","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Sunset Crater","met":2451,"inf":"Arizona, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Cima del Redentore (Sibillini Mountains)","met":2448,"inf":"Marche–Umbria, Italy","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Triple Divide Peak (Montana)","met":"Triple Divide Peak","inf":2444,"loc":"Montana, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Blackcomb Peak","met":2436,"inf":"Whistler BC, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Monte Binga","met":2436,"inf":"Manica, Mozambique","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Olympus (Washington)","met":"Mount Olympus","inf":2432,"loc":"Washington, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Peñalara","met":2430,"inf":"Spain","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mesa de los Tres Reyes","met":2428,"inf":"Navarre, Spain","loc":"Highest point in Navarre","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Roque de los Muchachos","met":2426,"inf":"La Palma, Spain","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Daniel","met":2426,"inf":"Washington, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Murud","met":2423,"inf":"Kelabit Highlands, Sarawak, Malaysia","loc":"Highest mountain in Sarawak","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mocho-Choshuenco","met":"Mocho","inf":2422,"loc":"Los Ríos Region, Chile","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mocho-Choshuenco","met":"Choshuenco","inf":2415,"loc":"Los Ríos Region, Chile","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Ha Ling Peak","met":2408,"inf":"Canadian Rockies, Alberta, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Store Skagastølstind","met":2405,"inf":"Norway","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Hajla","met":2403,"inf":"Kosovo","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Le Tabor","met":2389,"inf":"Dauphine Alps, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Kirigalpottha","met":2388,"inf":"Sri Lanka","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Maglić (mountain)","met":"Maglić","inf":2386,"loc":"Bosnia and Herzegovina","loc1":"Highest in Bosnia and Herzegovina","loc2":"","loc3":"","loc4":""},{"name":"Emory Peak","met":2385,"inf":"Texas, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Cayley","met":2385,"inf":"British Columbia, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Galwey","met":2377,"inf":"Canadian Rockies, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Botev Peak","met":2376,"inf":"Balkan Mountain, Bulgaria","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Mulu","met":2376,"inf":"Gunung Mulu National Park, Sarawak, Malaysia","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Deception (Washington)","met":"Mount Deception","inf":2374,"loc":"Washington, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Aix","met":2367,"inf":"Washington, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Karthala","met":2361,"inf":"Comoros, Indian Ocean","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Signal Mountain (Wyoming)","met":"Signal Mountain","inf":2353,"loc":"Wyoming, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Pico","met":2351,"inf":"Azores, Portugal","loc":"Highest in Portugal","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Grimming","met":2351,"inf":"Styria, Austria","loc":"Highest monolith in Europe","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Monte Sirente","met":2347,"inf":"Abruzzo, Italy","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Blum","met":2340,"inf":"North Cascades, Washington State, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Popomanaseu","met":2335,"inf":"Guadalcanal, Solomon Islands","loc":"Highest in Solomon Islands","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Monte Priora","met":2333,"inf":"Marche Italy","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Prophet","met":2330,"inf":"North Cascades","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Griggs","met":2317,"inf":"Alaska, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Makarakomburu","met":2310,"inf":"Guadalcanal, Solomon Islands","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Lalla Khedidja","met":2308,"inf":"Djurdjura Mountains, Algeria","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Lavender Peak (British Columbia)","met":"Lavender Peak","inf":2306,"loc":"British Columbia, Canada","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Sir Allan MacNab","met":2297,"inf":"Premier Range, British Columbia, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Murree","met":2291,"inf":"Rawalpindi, Pakistan","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Cherni Vrah","met":2290,"inf":"Vitosha Mountain, Bulgaria","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Druesberg","met":2282,"inf":"Alps, Switzerland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Ineu Peak","met":2279,"inf":"Rodnei Mountains, Romanian Carpathian Mountains, Romania","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Huye","met":2278,"inf":"Rwanda","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Bikku Bitti","met":2267,"inf":"Libya","loc":"Second highest in country","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Blue Mountains (Jamaica)","met":"Blue Mountains","inf":2256,"loc":"Jamaica","loc1":"Highest in Country","loc2":"","loc3":"","loc4":""},{"name":"Mount Dietz","met":2250,"inf":"Antarctica","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Adam's Peak","met":"Sri Pada Mountain","inf":2243,"loc":"Sri Lanka","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount John Laurie","met":2240,"inf":"Canadian Rockies, Alberta, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Red Butte","met":2232,"inf":"Arizona, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Čvrsnica","met":2228,"inf":"Herzegovina, BiH","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Kosciuszko","met":2228,"inf":"Snowy Mountains, New South Wales, Australia","loc":"Highest on mainland","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Camoghe","met":2228,"inf":"Ticino, Switzerland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Commonwealth Mountain","met":2225,"inf":"Nunavut, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Chiginagak","met":2221,"inf":"Alaska, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Monte Terminillo","met":2217,"inf":"Lazio, Italy","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Slavyanka (mountain)","met":"Slavyanka","inf":2212,"loc":"Pirin Mountain, Bulgaria","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Oxford (Nunavut)","met":2210,"inf":"Nunavut, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Townsend (Snowy Mountains)","met":"Mount Townsend","inf":2209,"loc":"Snowy Mountains, New South Wales, Australia","loc1":"Second-highest on mainland","loc2":"","loc3":"","loc4":""},{"name":"Black Elk Peak","met":2207,"inf":"South Dakota, US","loc":"Highest in state","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Golden Hinde (British Columbia)","met":"Golden Hinde","inf":2198,"loc":"#1 on Vancouver Island, British Columbia, Canada","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Twynam","met":2196,"inf":"Snowy Mountains, New South Wales, Australia","loc":"Third-highest on mainland","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Elkhorn Mountain","met":2195,"inf":"Vancouver Island, British Columbia, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Baldy (Alberta)","met":"Mount Baldy","inf":2192,"loc":"Alberta, Canada","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Golyam Perelik","met":2191,"inf":"Rhodope Mountains, Bulgaria","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Shiprock","met":2188,"inf":"New Mexico, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Tahan","met":2187,"inf":"Tahan Range, Pahang, Malaysia","loc":"Highest in Peninsular Malaysia","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Korbu","met":2183,"inf":"Titiwangsa Mountains, Perak, Malaysia","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Yong Belar","met":2180,"inf":"Perak, Malaysia","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Doi Chiang Dao","met":2175,"inf":"Thailand","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Galunggung","met":2168,"inf":"Java","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Levski Peak (Bulgaria)","met":"Levski Peak","inf":2166,"loc":"Balkan Mountain, Bulgaria","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Monte Cimone","met":2165,"inf":"Emilia-Romagna, Italy","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Hua","met":2155,"inf":"Shaanxi, China","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Zulia","met":2149,"inf":"Uganda","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Carruthers Peak","met":2145,"inf":"Snowy Mountains, New South Wales, Australia","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Crna Glava","met":2139,"inf":"Bjelasica, Montenegro","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Colonel Foster","met":2135,"inf":"Vancouver Island, British Columbia, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Roche à Perdrix","met":2135,"inf":"Fiddle Range, Canadian Rockies, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Kodaikanal","met":2133,"inf":"Tamil Nadu, India","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pilatus (mountain)","met":"Pilatus","inf":2132,"loc":"Switzerland","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Strmenica","met":2122,"inf":"Bjelasica, Montenegro","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Phu Soi Dao","met":2120,"inf":"Thailand/Laos","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Eagle Peak (Alaska)","met":"Eagle Peak","inf":2119,"loc":"Alaska, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Öræfajökull","met":2110,"inf":"Iceland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Benum","met":2107,"inf":"Malaysia","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mogotón","met":2107,"inf":"Nicaragua","loc":"Highest in Nicaragua","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Kebnekaise","met":2106,"inf":"Sweden","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Rambler Peak","met":2092,"inf":"Vancouver Island, British Columbia, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount McBride","met":2083,"inf":"Vancouver Island, British Columbia, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Phou Khe","met":2079,"inf":"Thailand/Laos","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Schneeberg (Alps)","met":"Schneeberg","inf":2076,"loc":"Northern Limestone Alps, Austria","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Tate (New South Wales)","met":"Mount Tate","inf":2068,"loc":"Snowy Mountains, New South Wales, Australia","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Bjelašnica","met":2067,"inf":"Sarajevo Canton, Bosnia and Herzegovina","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Kings Peak (British Columbia)","met":"Kings Peak","inf":2065,"loc":"Vancouver Island, British Columbia, Canada","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Hoverla","met":2061,"inf":"Ukraine","loc":"Highest","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Monte Miletto","met":2050,"inf":"Molise, Italy","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Lytton Mountain","met":2049,"inf":"British Columbia, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Katmai","met":2047,"inf":"Alaska, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Dimlang","met":2042,"inf":"Adamawa, Nigeria","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Celeste","met":2041,"inf":"Vancouver Island, British Columbia, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Mitchell","met":2037,"inf":"Yancey County, North Carolina, US<br>Highest peak of the Appalachian Mountains<br>Highest peak in mainland eastern North America","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Namunukula","met":2035,"inf":"Sri Lanka","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pico do Barbado","met":2033,"inf":"Bahia, Brazil","loc":"Highest point in Bahia","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Batu Brinchang","met":2032,"inf":"Cameron Highlands, Pahang/Perak, Malaysia","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Doi Mae Tho","met":2031,"inf":"Thailand","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Clingmans Dome","met":2025,"inf":"Great Smoky Mountains, Tennessee, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Heng (Shanxi)","met":2017,"inf":"Shanxi, China","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Kopaonik","met":2017,"inf":"Pančić's Peak, Serbia","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Alpe di Succiso","met":2017,"inf":"Province of Reggio Emilia Italy","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Kom Peak","met":"Kom","inf":2016,"loc":"Balkan Mountain, Bulgaria","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Polar Bear Peak","met":2016,"inf":"Chugach Mountains, Alaska, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Asgard","met":2015,"inf":"Baffin Mountains, Nunavut, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Le Conte (Tennessee)","met":"Mount Le Conte","inf":2010,"loc":"Great Smoky Mountains, Tennessee, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Serra da Estrela","met":1993,"inf":"Portugal","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Bogong","met":1986,"inf":"Australia","loc":"Highest in Victoria","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Ishizuchi","met":1982,"inf":"Japan","loc":"Tallest in Western Japan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Doi Phu Kha","met":1980,"inf":"Luang Prabang Range, Thailand","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pizzo Carbonara","met":1979,"inf":"Province of Palermo Sicily","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Topo de Coroa","met":1979,"inf":"Cape Verde","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Tongariro","met":1978,"inf":"New Zealand","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Iceberg Peak","met":1977,"inf":"Vancouver Island, British Columbia, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pico Turquino","met":1975,"inf":"Cuba","loc":"Highest point","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"El Piveto Mountain","met":1969,"inf":"Vancouver Island, British Columbia, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Qiajivik Mountain","met":1963,"inf":"Baffin Island, Nunavut, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Monte Tamaro","met":1962,"inf":"Ticino, Switzerland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Montalto (Aspromonte)","met":1955,"inf":"Calabria, Italy","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Ciucas Peak","met":1954,"inf":"Romania","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Chionistra","met":1952,"inf":"Cyprus","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Hallasan","met":1950,"inf":"Jejudo, South Korea","loc":"Highest mountain in South Korea","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pico de las Nieves","met":1949,"inf":"Gran Canaria. Spain","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Jabal Bil Ays","met":1934,"inf":"Oman","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mullayanagiri","met":1930,"inf":"Chikmagalur, Karnataka, India","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Helvetia Tinde","met":1929,"inf":"Roosevelt Range","loc":"Highest peak in Peary Land, Northern Greenland","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Botte Donato","met":1928,"inf":"Sila Mountains, Calabria, Italy","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Kirigamine","met":1925,"inf":"Japan","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Washington (New Hampshire)","met":"Mount Washington","inf":1917,"loc":"Presidential Range, White Mountains (New Hampshire)","loc1":"White Mtns., Appalachian Mountains, Geography of United States","loc2":"US","loc3":"Highest in American Northeast","loc4":""},{"name":"Mount Jiri","met":1915,"inf":"South Korea","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Troglav (Bosnia and Herzegovina)","met":"Troglav","inf":1913,"loc":"Highest peak of mountain Dinara, Bosnia and Herzegovina","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mont Ventoux","met":1909,"inf":"France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Vesper Peak","met":1896,"inf":"Washington, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Baba Budangiri","met":1895,"inf":"Chikmagalur, Karnataka, India","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Narodnaya","met":1895,"inf":"Subpolar Urals, Russia","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Kudremukh","met":1894,"inf":"Chikmagalur, Karnataka, India","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Orjen","met":1894,"inf":"Montenegro, Bosnia and Herzegovina","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Iskhodnaya","met":1887,"inf":"Russia","loc":"Highest of the Chukotka Mountains","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount George V","met":1883,"inf":"Vancouver Island, British Columbia, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Rugged Mountain","met":1875,"inf":"Vancouver Island, British Columbia, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Agastya Mala","met":1868,"inf":"Tamil Nadu/Kerala, India","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Trident Volcano","met":1864,"inf":"Alaska, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Martin (Alaska)","met":"Mount Martin","inf":1863,"loc":"Alaska, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Knuckles Mountain Range","met":"Knuckles","inf":1862,"loc":"Sri Lanka","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pico Ruivo","met":1861,"inf":"Madeira, Portugal","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pico das Torres","met":1853,"inf":"Madeira, Portugal","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mont Ross","met":1850,"inf":"Gallieni Massif, Kerguelen Islands","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Cucurbata Mare","met":1849,"inf":"Romania","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Crown Mountain (Vancouver Island, British Columbia)","met":"Crown Mountain","inf":1846,"loc":"Vancouver Island, British Columbia, Canada","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Loser (mountain)","met":"Loser","inf":1838,"loc":"Austria","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Punta La Marmora","met":1834,"inf":"Sardinia","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Cerro La Campana","met":1828,"inf":"Olmue, Chile","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Gora Nevskaya","met":1828,"inf":"Magadan Oblast, Russia","loc":"Highest of the Kolyma Mountains","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Cerro de la Silla","met":1820,"inf":"Mexico","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pico do Arieiro","met":1818,"inf":"Madeira, Portugal","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Roque Nublo","met":1813,"inf":"Gran Canaria, Spain","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Biligiriranga Hills","met":1800,"inf":"Chamarajanagar, Karnataka, India","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Monte Maggiorasca","met":1799,"inf":"liguria - Emilia-Romagna Italy","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Rigi","met":1797,"inf":"Swiss Alps","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Goru","met":1784,"inf":"Romania","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Blokhin Peak","met":1779,"inf":"Chukotka Autonomous Okrug","loc":"Chukotka, Russian Federation","loc1":"Highest in Anyuy Range","loc2":"","loc3":"","loc4":""},{"name":"Velliangiri Mountains","met":1778,"inf":"Coimbatore, Tamil Nadu, India","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Penteleu","met":1772,"inf":"Romania","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Veve","met":1768,"inf":"Kolombangara, Solomon Islands","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Adams (New Hampshire)","met":"Mount Adams","inf":1766,"loc":"New Hampshire, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pik Sovetskoy Gvardii","met":1759,"inf":"Chukotka Autonomous Okrug","loc":"Chukotka, Russian Federation","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Api","met":1750,"inf":"Gunung Mulu National Park, Sarawak, Malaysia","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Lovćen","met":1749,"inf":"Montenegro","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Tadiandamol","met":1748,"inf":"Kodagu, Karnataka, India","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Rogers (Virginia)","met":"Mount Rogers","inf":1746,"loc":"Virginia, US","loc1":"Highest point in state","loc2":"","loc3":"","loc4":""},{"name":"Doi Phi Pan Nam","met":1745,"inf":"Luang Prabang Range, Thailand","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Wilson (California)","met":"Mount Wilson","inf":1742,"loc":"California, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Jefferson (New Hampshire)","met":"Mount Jefferson","inf":1741,"loc":"New Hampshire, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Monte Amiata","met":1738,"inf":"Province of Grosseto Italy","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Daisen (mountain)","met":"Daisen","inf":1729,"loc":"Japan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"The Horn (Mount Buffalo)","met":1723,"inf":"Victoria, Australia","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Batur","met":1717,"inf":"Bali, Indonesia","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Kumara Parvata","met":1712,"inf":"Dakshina Kannada, Karnataka, India","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pushpagiri, Karnataka","met":"Pushpagiri","inf":1712,"loc":"Pushpagiri Wildlife Sanctuary, Karnataka, India","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Lowe (California)","met":"Mount Lowe","inf":1707,"loc":"San Gabriel Mountains, California, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Boulder Peak (Washington)","met":"Boulder Peak","inf":1707,"loc":"Olympic Mountains, Washington, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Doi Luang, Phi Pan Nam Range","met":"Doi Luang","inf":1694,"loc":"Thailand","loc1":"Highest in the Phi Pan Nam Range","loc2":"","loc3":"","loc4":""},{"name":"Mitre Peak (New Zealand)","met":"Mitre Peak","inf":1692,"loc":"New Zealand","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Arma Konda","met":1680,"inf":"India","loc":"Highest in Andhra Pradesh","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Deomali (mountain)","met":"Deomali","inf":1672,"loc":"India","loc1":"Highest in Odisha","loc2":"","loc3":"","loc4":""},{"name":"Mount Caubvick","met":1652,"inf":"Torngat Mountains, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Kalsubai","met":1646,"inf":"India","loc":"Highest in Maharashtra State","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Peak 5390","met":1643,"inf":"Alaska, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Yamantau","met":1640,"inf":"Southern Urals, Russia","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Monroe","met":1637,"inf":"New Hampshire, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Madison","met":1636,"inf":"New Hampshire, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Krebs","met":1630,"inf":"Antarctica","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Marcy (New York)","met":"Mount Marcy","inf":1629,"loc":"New York, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Trebević","met":1627,"inf":"Bosnia and Herzegovina","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Bartle Frere","met":1622,"inf":"Queensland, Australia","loc":"Highest in QLD=","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Rocca Busambra","met":1613,"inf":"Province of Palermo Sicily","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Velky Rozsutec","met":1610,"inf":"Mala Fatra, Slovakia","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Brahmagiri (hill)","met":"Brahmagiri","inf":1608,"loc":"Kodagu, Karnataka, India","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Katahdin","met":1606,"inf":"Maine, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Sněžka","met":1602,"inf":"Krkonoše, Czech Republic","loc":"Highest in Czech Republic","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Sirumalai","met":1600,"inf":"Tamil Nadu India","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Lafayette","met":1600,"inf":"New Hampshire, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Washington (British Columbia)","met":1590,"inf":"Vancouver Island, British Columbia, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Benarat","met":1585,"inf":"Gunung Mulu National Park, Sarawak, Malaysia","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Wai'ale'ale","met":1569,"inf":"Kauai, Hawaii, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Salher","met":1567,"inf":"Maharashtra, India","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Cirque Mountain","met":1567,"inf":"Labrador, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Algonquin Peak","met":1559,"inf":"New York, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Lincoln (New Hampshire)","met":"Mount Lincoln","inf":1551,"loc":"New Hampshire, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Superstition Mountain","met":1542,"inf":"Arizona, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Tai","met":1532,"inf":"Shandong, China","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Jabel Yibir","met":1527,"inf":"United Arab Emirates","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Madikeri","met":1525,"inf":"Kodagu, Karnataka, India","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Popa","met":1518,"inf":"Myanmar","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Askja","met":1516,"inf":"Iceland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Monte Boglia","met":1516,"inf":"Ticino, Switzerland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Song","met":"Song Shan","inf":1512,"loc":"Henan, China","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Haystack","met":1512,"inf":"New York, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pico de Malpaso","met":1501,"inf":"El Hierro, Spain","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Skylight","met":1501,"inf":"New York, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Javaleon","met":1494,"inf":"Spain","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Nuang","met":1491,"inf":"Titiwangsa Mountains, Malaysia","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Hekla","met":1491,"inf":"Iceland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Alto de Garanjonay","met":1487,"inf":"La Gomera, Spain","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Pinatubo","met":1486,"inf":"Luzon, Philippines","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Whiteface Mountain","met":1483.462,"inf":"New York, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Spruce Knob","met":1482,"inf":"West Virginia, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Dix Mountain","met":1480,"inf":"New York, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Gray Peak (New York)","met":1475,"inf":"New York, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Iroquois Peak","met":1475,"inf":"New York, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Lyaskovets Peak","met":1473,"inf":"Antarctica","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Olympus (Tasmania)","met":"Mount Olympus","inf":1471,"loc":"Tasmania, Australia","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Basin Mountain (New York)","met":1471,"inf":"New York, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"La Grande Soufrière","met":1467,"inf":"Guadeloupe, France","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Monte Penice","met":1460,"inf":"Lombardy – Emilia-Romagna, Italy","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Seymour","met":1455,"inf":"British Columbia, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Himavad Gopalaswamy Betta","met":1450,"inf":"Chamarajanagar, Karnataka, India","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Snæfellsjökull","met":1446,"inf":"Iceland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Gothics","met":1444,"inf":"New York, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Colden","met":1436.8,"inf":"New York, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Kalourat","met":1435,"inf":"Malaita, Solomon Islands","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Ngarutjaranya","met":1435,"inf":"Australia","loc":"Highest in South Australia","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Cypress Mountain","met":1432,"inf":"British Columbia, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Taramati","met":1431,"inf":"Maharashtra, India","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Harishchandragad","met":1427,"inf":"Maharashtra, India","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Tukgahgo Mountain","met":1425,"inf":"Alaska, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Giant Mountain","met":1410.3,"inf":"New York, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Nippletop","met":1408.2,"inf":"New York, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pikui","met":1408,"inf":"Ukraine","loc":"Highest point in Lviv Oblast","loc1":"Lvivshchyna","loc2":"","loc3":"","loc4":""},{"name":"Santanoni Peak","met":1404.2,"inf":"New York, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Redfield","met":1403.9,"inf":"New York, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Raireshwar","met":1398,"inf":"Maharashtra, India","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Wright Peak","met":1396,"inf":"New York, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Taburno Camposauro","met":1393,"inf":"Campania Italy","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Saddleback Mountain","met":1376.2,"inf":"New York, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Parasnath","met":1366,"inf":"India","loc":"Highest in Jharkhand State","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Panther Peak","met":1354,"inf":"New York, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Dhupgarh","met":1350,"inf":"India","loc":"Highest in Madhya Pradesh","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Table Top Mountain","met":1349.4,"inf":"New York, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Rocky Peak Ridge","met":1347.2,"inf":"New York, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Ben Nevis","met":1345,"inf":"Scotland, United Kingdom","loc":"Highest in the United Kingdom","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Kodachadri","met":1343,"inf":"Shimoga, Karnataka, India","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Macomb Mountain","met":1342.6,"inf":"New York, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Jiuhua","met":1342,"inf":"Anhui, China","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Armstrong Mountain","met":1341.1,"inf":"New York, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Hough Peak","met":1341.1,"inf":"New York, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Aniakchak","met":1341,"inf":"Alaska, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Mansfield","met":1339,"inf":"Green Mountains, Vermont, US","loc":"Highest in Vermont","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Cerro de Punta","met":1338,"inf":"Jayuya, Puerto Rico","loc":"Highest in Puerto Rico","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Seward Mountain (New York)","met":1329.2,"inf":"New York, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Marshall","met":1329,"inf":"New York, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Allen Mountain (New York)","met":1332.8,"inf":"New York, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Bassie","met":1311,"inf":"Alaska, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Ben Macdui","met":1309,"inf":"Scotland, United Kingdom","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Kanaga","met":1307,"inf":"Alaska, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Sinhagad","met":1303,"inf":"Maharashtra, India","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Heng (Hunan)","met":1300,"inf":"Hunan, China","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Braeriach","met":1296,"inf":"Scotland, United Kingdom","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Big Slide Mountain","met":1292.4,"inf":"New York, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Esther Mountain","met":1292.4,"inf":"New York, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Rajabasa","met":1281,"inf":"Sumatra, Indonesia","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Vesuvius","met":1281,"inf":"Italy","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Upper Wolfjaw","met":1275.6,"inf":"New York","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Ophir","met":1276,"inf":"Titiwangsa Mountains, Johor, Malaysia","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Bailadila","met":1276,"inf":"India","loc":"Highest in Chhattisgarh State","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Lower Wolfjaw","met":1272.5,"inf":"New York, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Wellington (Tasmania)","met":"Mount Wellington","inf":1271,"loc":"Tasmania, Australia","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Si","met":1270,"inf":"Washington, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Street Mountain","met":1269.8,"inf":"New York, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Phelps Mountain","met":1268.3,"inf":"New York, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Qingcheng","met":1260,"inf":"Sichuan, China","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Detunata","met":1258,"inf":"Romania","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Donna Buang","met":1250,"inf":"Victoria, Australia","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Kīlauea","met":1247,"inf":"Geography of Hawaii","loc":"Hawaii, Geography of United States","loc1":"US","loc2":"","loc3":"","loc4":""},{"name":"Camel's Hump (Vermont)","met":"Camel's Hump","inf":1244,"loc":"Vermont, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Cannon Mountain (New Hampshire)","met":"Cannon Mountain","inf":1240,"loc":"New Hampshire, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"The Priest (mountain)","met":"The Priest","inf":1238,"loc":"Blue Ridge Mountains, Virginia, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Aonach Beag","met":1234,"inf":"Scotland, United Kingdom","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Grouse Mountain","met":1231,"inf":"British Columbia, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Kaʻala","met":1220,"inf":"Oahu, Hawaii, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Jerai","met":1217,"inf":"Titiwangsa Mountains, Kedah, Malaysia","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Gozaisho","met":1212,"inf":"Suzuka Mountains, Mie Prefecture, Japan","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Meron","met":1208,"inf":"Galilee, Israel","loc":"Highest in Israel (inside the '67 borders)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Fromme","met":1185,"inf":"British Columbia, Canada","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Doi Ian","met":1174,"inf":"Phi Pan Nam Range, Thailand","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Diablo","met":1173,"inf":"California, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Hombori","met":1155,"inf":"Mali","loc":"Highest in Mali","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Lochnagar","met":1155,"inf":"Scotland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Bidean nam Bian","met":1150,"inf":"Scotland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Monte Musinè","met":1150,"inf":"Piedmont, Italy","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Brocken","met":1141,"inf":"Saxony-Anhalt, Germany","loc":"Highest mountain in the Harz","loc1":"highest in Saxony-Anhalt","loc2":"","loc3":"","loc4":""},{"name":"Victoria Peak (Belize)","met":"Victoria Peak","inf":1120,"loc":"Belize","loc1":"2nd highest mountain in Belize","loc2":"","loc3":"","loc4":""},{"name":"Gora Sovetskaya","met":1096,"inf":"Wrangel Island, Chukotka, Russian Federation","loc":"Highest in Wrangel Island","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Kayser Mountain","met":1094,"inf":"Greenland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Juneau","met":1090,"inf":"Alaska, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Roxy Ann Peak","met":1090,"inf":"Oregon, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Snowdon","met":1085,"inf":"Gwynedd, Wales, United Kingdom","loc":"Highest in Wales","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Table Mountain","met":1085,"inf":"South Africa","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Flattop Mountain (Alaska)","met":"Flattop Mountain","inf":1070,"loc":"Alaska, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Uummannaq (mountain)","met":"Uummannaq","inf":1070,"loc":"Greenland","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"White Butte","met":1069,"inf":"North Dakota, US","loc":"Highest in state","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Hogback Mountain (Shenandoah National Park, Virginia)","met":"Hogback Mountain","inf":1059,"loc":"Virginia, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Liathach","met":1055,"inf":"Torridon, Scotland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Saka Haphong","met":1052,"inf":"Bandarban, Bangladesh","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Corrán Tuathail","met":1038,"inf":"County Kerry, Ireland","loc":"Highest mountain in Ireland","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Ramon","met":1037,"inf":"Negev, Palestine","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Girnar","met":1031,"inf":"Gujarat, India","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Zagora","met":1030,"inf":"Morocco","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Nabi Yunis","met":1030,"inf":"Hebron, Palestine","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Buachaille Etive Mor","met":1022,"inf":"Glen Etive, Scotland","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Munboksan","met":1015,"inf":"South Korea","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Kékes","met":1014,"inf":"Hungary","loc":"Highest mountain in Hungary","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Belumut","met":1010,"inf":"Johor, Malaysia","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Old Rag Mountain","met":1001,"inf":"Virginia, US","loc":"","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Devil's Peak (Cape Town)","met":"Devil's Peak","inf":1000,"loc":"Cape Town, South Africa","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Sgurr Dearg","met":986,"inf":"Cuillin","loc":"Scotland","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Sizer","met":980,"inf":"Diablo Range","loc":"US (California)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Valin","met":980,"inf":"Saguenay Lac St-Jean","loc":"Canada (Québec)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Hyangnosan","met":979,"inf":"","loc":"Gyeongnam Province, South Korea","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Scafell Pike","met":978,"inf":"Southern Fells","loc":"England (Cumbria)","loc1":"Highest in England","loc2":"","loc3":"","loc4":""},{"name":"Mount Edgecumbe (Alaska)","met":"Mount Edgecumbe","inf":976,"loc":"&nbsp","loc1":"","loc2":"US (Alaska)","loc3":"","loc4":""},{"name":"Grand Bonhomme","met":973,"inf":"","loc":"Saint Vincent and the Grenadines","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"North Mountain (Catskills)","met":969,"inf":"Catskill Escarpment","loc":"US (New York)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Doli Gutta","met":965,"inf":"Deccan Plateau","loc":"India","loc1":"Highest in Telangana State","loc2":"","loc3":"","loc4":""},{"name":"Mount Monadnock","met":965,"inf":"","loc":"US (New Hampshire)","loc1":"One of the most frequently climbed in the world","loc2":"","loc3":"","loc4":""},{"name":"Mount Pirongia","met":959,"inf":"Hakarimata Range","loc":"New Zealand","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Tai Mo Shan","met":957,"inf":"","loc":"Hong Kong","loc1":"Highest in Hong Kong","loc2":"","loc3":"","loc4":""},{"name":"Bays Mountain","met":"Chimneytop","inf":950.1,"loc":"Bays Mountain Range","loc1":"Tennessee, US","loc2":"","loc3":"","loc4":""},{"name":"Helvellyn","met":950,"inf":"Eastern Fells","loc":"England (Cumbria)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Gimie","met":950,"inf":"","loc":"Saint Lucia","loc1":"Highest point","loc2":"","loc3":"","loc4":""},{"name":"El Cerro del Aripo","met":940,"inf":"Northern Range","loc":"Trinidad and Tobago","loc1":"Highest point","loc2":"","loc3":"","loc4":""},{"name":"El Tucuche","met":936,"inf":"Northern Range","loc":"Trinidad and Tobago","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Lantau Peak","met":934,"inf":"","loc":"Hong Kong","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Betlingchhip","met":930,"inf":"Jampui Hills","loc":"India","loc1":"Highest in Tripura","loc2":"","loc3":"","loc4":""},{"name":"Kaimondake volcano","met":924,"inf":"","loc":"Kagoshima, Japan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Monte San Salvatore","met":"San Salvatore","inf":912,"loc":"","loc1":"Ticino, Switzerland","loc2":"","loc3":"","loc4":""},{"name":"Mount Pantokrator","met":"Pantokrator","inf":906,"loc":"","loc1":"Greece (Corfu)","loc2":"","loc3":"","loc4":""},{"name":"Edinburgh Peak","met":904,"inf":"","loc":"Tristan Da Cunha, Atlantic Ocean","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Cadair Idris","met":893,"inf":"","loc":"Wales","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pen y Fan","met":886,"inf":"","loc":"Wales","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Baekunsan","met":885,"inf":"","loc":"Ulsan, South Korea","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Gerizim","met":881,"inf":"","loc":"West Bank","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Sunset Peak (Hong Kong)","met":"Sunset Peak","inf":869,"loc":"","loc1":"Hong Kong","loc2":"","loc3":"","loc4":""},{"name":"Mahuli","met":858,"inf":"","loc":"Thane District, Maharashtra, India","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Taylor (Australian Capital Territory)","met":"Mount Taylor","inf":856,"loc":"","loc1":"Canberra, Australia","loc2":"","loc3":"","loc4":""},{"name":"Slieve Donard","met":856,"inf":"Mourne Mountains","loc":"County Down, Northern Ireland","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Tinakula","met":851,"inf":"Tinakula","loc":"Solomon Islands","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Saint Catherine (Grenada)","met":"Mount Saint Catherine","inf":840,"loc":"","loc1":"Grenada","loc2":"Highest point","loc3":"","loc4":""},{"name":"Mount Magazine","met":839,"inf":"Ozark Mountains","loc":"Arkansas, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Hoemunsan","met":837,"inf":"","loc":"North Jeolla Province, South Korea","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Bukhansan (Baegundae Peak)","met":836.5,"inf":"","loc":"Seoul, South Korea","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Piton de la Petite Rivière Noire","met":828,"inf":"","loc":"Black River Mountain Range, Mauritius","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pieter Both (mountain)","met":820,"inf":"","loc":"Mauritius","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Carleton","met":817,"inf":"Appalachian Mountains","loc":"Canada (New Brunswick)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"The Cheviot","met":815,"inf":"Cheviot Hills","loc":"England (Northumberland)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Le Pouce","met":811,"inf":"","loc":"Mauritius","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Santubong","met":810,"inf":"","loc":"Malaysia (Sarawak)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pico de la Zarza","met":807,"inf":"","loc":"Spain (Fuerteventura)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Gros Morne, Newfoundland","met":"Gros Morne","inf":807,"loc":"","loc1":"Canada (Newfoundland)","loc2":"","loc3":"","loc4":""},{"name":"Clisham","met":799,"inf":"","loc":"Harris, Western Isles, Scotland","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Tamalpais","met":792,"inf":"California Coast Ranges","loc":"US (California)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mission Peak","met":790,"inf":"Diablo Range","loc":"US (California)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Gyemyeongsan","met":774,"inf":"","loc":"North Chungcheong Province, South Korea","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Boucherie","met":758,"inf":"","loc":"Canada (British Columbia)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Daeunsan","met":742,"inf":"","loc":"South Korea","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Dobong","met":740,"inf":"","loc":"South Korea","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Lofty","met":727,"inf":"","loc":"South Australia","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Ben Cleuch","met":721,"inf":"","loc":"Scotland","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Corps de Garde","met":720,"inf":"","loc":"Mauritius","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Gaseopsan","met":710,"inf":"","loc":"North Chungcheong Province, South Korea","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Dick","met":705,"inf":"","loc":"Auckland Islands, New Zealand","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pu‘u ‘Ō‘ō","met":698,"inf":"","loc":"US (Hawaii)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Signal de Botrange","met":694,"inf":"High Fens","loc":"Belgium (Liège)","loc1":"Highest in Belgium","loc2":"","loc3":"","loc4":""},{"name":"Ishpatina Ridge","met":690,"inf":"","loc":"Canada (Ontario)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Galgisan","met":685,"inf":"","loc":"Gyeonggi Province and Gangwon Province, South Korea","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Delphi","met":681,"inf":"","loc":"Greece (Skopelos)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Qalorujoorneq","met":676,"inf":"","loc":"Greenland","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Penas del Chache","met":672,"inf":"","loc":"Lanzarote, Spain","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Lion's Head (Cape Town)","met":"Lion's Head","inf":669,"loc":"","loc1":"Cape Town, South Africa","loc2":"","loc3":"","loc4":""},{"name":"Steling","met":658,"inf":"High Fens","loc":"Belgium","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Maple Mountain (Ontario)","met":"Maple Mountain","inf":642,"loc":"","loc1":"Canada (Ontario)","loc2":"","loc3":"","loc4":""},{"name":"Kinder Scout","met":636,"inf":"","loc":"Peak District, England","loc1":"Highest in Peak District","loc2":"","loc3":"","loc4":""},{"name":"Masaya Volcano","met":635,"inf":"","loc":"Nicaragua","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount D'Urville","met":630,"inf":"","loc":"Auckland Islands, New Zealand","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Moel Eilio","met":629,"inf":"","loc":"Snowdonia, Wales","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"High Willhays","met":621,"inf":"","loc":"England (Dartmoor)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Snaefell","met":621,"inf":"","loc":"Isle of Man, British Isles","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Beinn Mhòr (South Uist)","met":"Beinn Mhòr","inf":620,"loc":"","loc1":"South Uist, Scotland","loc2":"","loc3":"","loc4":""},{"name":"Mount Bibele","met":617,"inf":"","loc":"Italy","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Munsusan (Ulsan)","met":600,"inf":"","loc":"Ulsan, South Korea","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Takao","met":599,"inf":"","loc":"Tokyo, Japan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Sikjangsan","met":596,"inf":"","loc":"Daejeon, South Korea","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Forbordsfjellet","met":590,"inf":"","loc":"Nord-Trøndelag, Norway","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Gwanggyosan","met":582,"inf":"","loc":"Gyeonggi Province, South Korea","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Pond","met":576,"inf":"","loc":"South Shetland Islands","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Tabor","met":575,"inf":"","loc":"Galilee, Israel","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Monte Conero","met":572,"inf":"","loc":"Italy (Ancona)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Gyeryongsan (South Gyeongsang Province)","met":"Gyeryongsan","inf":566,"loc":"","loc1":"South Gyeongsang Province, South Korea","loc2":"","loc3":"","loc4":""},{"name":"Mount Honey","met":558,"inf":"","loc":"Campbell Islands, New Zealand","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Le Morne Brabant","met":555,"inf":"","loc":"Mauritius","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Rempart Mountain (Montagne du Rempart)","met":545,"inf":"","loc":"Mauritius","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Palasip Qaqqaa (Præstefjeldet)","met":544,"inf":"","loc":"Qeqqata, Greenland","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Namamsan","met":543,"inf":"","loc":"Ulsan, South Korea","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Taum Sauk Mountain","met":540,"inf":"","loc":"Missouri, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Great Mell Fell","met":537,"inf":"Eastern Fells","loc":"England (Cumbria)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Geomdansan (Seongnam)","met":534.7,"inf":"","loc":"Gyeonggi Province, South Korea","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Yeonhwasan (Ulsan)","met":"Yeonhwasan","inf":532,"loc":"","loc1":"Ulsan, South Korea","loc2":"","loc3":"","loc4":""},{"name":"Heukseongsan","met":519,"inf":"","loc":"North Chungcheong Province, South Korea","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Avala","met":511,"inf":"","loc":"Serbia","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Little Si","met":480,"inf":"Cascade Range","loc":"Washington, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Ramsay","met":475,"inf":"","loc":"Antarctica","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Keira","met":462,"inf":"","loc":"New South Wales, Australia - near the city of Wollongong","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Blue Mountain Formation","met":"Blue Mountain","inf":452,"loc":"","loc1":"Ontario, Canada","loc2":"","loc3":"","loc4":""},{"name":"Muryongsan (Ulsan)","met":452,"inf":"","loc":"Ulsan, South Korea","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Dongdaesan (Ulsan)","met":447,"inf":"","loc":"Ulsan, South Korea","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Diamond Hill (Ireland)","met":"Diamond Hill","inf":442,"loc":"Connemara National Park","loc1":"Ireland","loc2":"","loc3":"","loc4":""},{"name":"Gibraltar","met":426,"inf":"","loc":"Gibraltar","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pic Paradis","met":424,"inf":"","loc":"Collectivity of Saint Martin","loc1":"Saint Martin (France)","loc2":"Highest point","loc3":"","loc4":""},{"name":"Havsula","met":415,"inf":"","loc":"Svalbard, Norway","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Storm King Mountain (New York)","met":"Storm King Mountain","inf":408,"loc":"Hudson Highlands","loc1":"US (New York)","loc2":"","loc3":"","loc4":""},{"name":"Gyeyangsan","met":395,"inf":"","loc":"Incheon, South Korea","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Galloway","met":366,"inf":"","loc":"Antipode Islands, New Zealand","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Pawala Valley Ridge","met":347,"inf":"","loc":"Pitcairn Islands, Pacific Ocean","loc1":"Highest point","loc2":"","loc3":"","loc4":""},{"name":"Loughrigg Fell","met":335,"inf":"Central Fells","loc":"England (Cumbria)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Kinka (Gifu)","met":329,"inf":"","loc":"Gifu, Japan","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Vaalserberg","met":321,"inf":"","loc":"Netherlands (Limburg)","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Bates","met":319,"inf":"","loc":"Norfolk Island, Australia","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Suur Munamägi","met":318,"inf":"","loc":"Haanja, Estonia","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Gaiziņkalns","met":312,"inf":"","loc":"Latvia","loc1":"Highest point in Latvia","loc2":"","loc3":"","loc4":""},{"name":"Mutla Ridge","met":306,"inf":"","loc":"Kuwait","loc1":"Highest point","loc2":"","loc3":"","loc4":""},{"name":"Aukštojas Hill","met":"Aukštojas","inf":293,"loc":"","loc1":"Medininkai, Lithuania","loc2":"","loc3":"","loc4":""},{"name":"Kruopinė Hill","met":"Kruopinė","inf":293,"loc":"","loc1":"Vilnius, Lithuania","loc2":"","loc3":"","loc4":""},{"name":"Juozapinė Hill","met":"Juozapinė","inf":292,"loc":"","loc1":"Vilnius, Lithuania","loc2":"","loc3":"","loc4":""},{"name":"Morne du Vitet","met":286,"inf":"","loc":"Saint Barthélemy (France)","loc1":"Highest point","loc2":"","loc3":"","loc4":""},{"name":"Qixia Mountain","met":286,"inf":"","loc":"Nanjing, China","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Hwajangsan","met":285,"inf":"","loc":"Ulsan, South Korea","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Putuo","met":"Potolaka/Putuo Shan","inf":284,"loc":"","loc1":"Zhejiang, China","loc2":"","loc3":"","loc4":""},{"name":"Agujas Grandes","met":266,"inf":"","loc":"La Graciosa, Spain","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Jerimoth Hill","met":247,"inf":"","loc":"Rhode Island, US","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Mount Ngerchelchuus","met":242,"inf":"","loc":"Babeldaob, Palau","loc1":"Highest point","loc2":"","loc3":"","loc4":""},{"name":"Mount Royal","met":233,"inf":"","loc":"Quebec, Canada","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Diamond Head, Hawaii","met":"Diamond Head","inf":232,"loc":"","loc1":"US (Hawaii)","loc2":"","loc3":"","loc4":""},{"name":"Yeomposan","met":203,"inf":"","loc":"Ulsan, South Korea","loc1":"","loc2":"","loc3":"","loc4":""},{"name":"Hamwolsan","met":200,"inf":"","loc":"Ulsan, South Korea","loc1":"","loc2":"","loc3":"","loc4":""}]
""";

final mountainsJson = jsonDecode(infoJsonstr);


/**
 * https://en.wikipedia.org/wiki/List_of_mountains_by_elevation


Mount Everest;8848;Himalayas;Geography of Nepal;Nepal/China
K2;8611;Karakoram;Pakistan/China
Kangchenjunga;8586;Himalayas;Nepal/India
Lhotse;8516;Himalayas;Nepal;Climbers ascend Lhotse Face in climbing Everest
Makalu;8485;Himalayas;Nepal
Cho Oyu;8188;Himalayas;Nepal;Considered easiest eight-thousander
Dhaulagiri;8167;Himalayas;Nepal;Presumed world's highest from 1808-1838
Manaslu;8163;Himalayas;Nepal
Nanga Parbat;8126;Himalayas;Pakistan
Annapurna;8091;Himalayas;Nepal;First eight-thousander to be climbed (1950)
Gasherbrum I (Hidden peak; K5);8080;Karakoram;Pakistan/China;Originally named K5
Broad Peak;8051;Karakoram;Pakistan/China
Gasherbrum II (K4);8035;Karakoram;Pakistan/China;Originally named K4
Shishapangma;8027;Himalayas;China

Gasherbrum III;7952;Karakoram;Geography of Pakistan;Pakistan
Gyachung Kang;7952;Himalayas;Geography of Nepal;Nepal (Khumbu)/Geography of China;China
Annapurna;Annapurna II;7937;Himalayas;Nepal
Gasherbrum IV (K3);7932;Karakoram;Pakistan 
Himalchuli;7893;Himalayas;Manaslu, Nepal
Distaghil Sar;7885;Karakoram;Pakistan
Ngadi Chuli;7871;Himalayas;Manaslu, Nepal
Nuptse;7861;Himalayas;Everest Massif, Nepal
Khunyang Chhish;7852;Karakoram;Pakistan
Masherbrum (K1);7821;Karakoram;Pakistan;Originally named K1
Nanda Devi;7816;Himalayas;India (Uttarakhand)
Chomo Lonzo;7804;Himalayas;Makalu Massiff, Nepal/China
Batura Sar;7795;Karakoram;Pakistan
Kanjut Sar;7790;Karakoram;Pakistan
Rakaposhi;7788;Karakoram;Pakistan
Namcha Barwa;7782;Himalayas;China
Batura II;7762;Karakoram;Pakistan
Kamet;7756;Himalayas;India (Uttarakhand)
Saltoro Kangri;7742;Karakoram;India (Ladakh)
Batura III;7729;Karakoram;Pakistan
Jannu;7710;Himalayas;Kangchenjunga, Nepal
Tirich Mir;7708;Hindu Kush;Pakistan;#1 in Hindu Kush
Molamenqing;7703;Himalayas;Shishapangma group, China
Gurla Mandhata;7694;Himalayas (Nalakankar Himal;Nalakankar);China
Saser Kangri;7672;Karakoram;India (Ladakh)
Chogolisa;7665;Karakoram;Pakistan
Kongur Tagh;7649;Pamir or Kunlun Mountains;China
Shispare;7611;Karakoram;Pakistan
Silberzacken;7597;Himalaya;Pakistan
Changtse;7583;Himalayas;Everest Massif, China
Trivor;7577;Karakoram;Karakoram;Pakistan
Gangkhar Puensum;7570;Himalayas;Bhutan/China
Gongga Shan;7556;Daxue Mountains;Daxue Shan;Sichuan, China
Annapurna;Annapurna III;7555;Himalayas;Nepal
Kula Kangri;7554;Himalayas;China  (possibly also Bhutan)
Skyang Kangri;7545;Karakoram;Pakistan
Liankang Kangri;7535;Himalayas;Bhutan/China
Yukshin Gardan Sar;7530;Karakoram;Pakistan
Annapurna;Annapurna IV;7525;Himalayas;Nepal
Saser Kangri II;7518;Karakoram;India (Ladakh)
Mamostong Kangri;7516;Karakoram;India (Ladakh)
Muztagh Ata;7509;Pamir or Kunlun Mountains;China (Xinjiang)
Ismoil Somoni Peak;7495;Pamir Mountains;Geography of Tajikistan;Tajikistan
Saser Kangri III;7495;Karakoram;India (Ladakh)
Noshaq;7492;Hindu Kush;Pakistan/Afghanistan;#1 in Afghanistan
Pumari Chhish;7492;Karakoram;Pakistan
Passu Sar;7476;Karakoram;Pakistan
Jongsong Peak;7462;Himalayas;India/Nepal/China
Malubiting;7458;Karakoram;Pakistan
Gangapurna;7455;Annapurna;Annapurna Himalaya;Nepal
Muchu Chhish;Muchu Chhish (Batura V);7453;Karakoram;Pakistan
Jengish Chokusu;7439;Tian Shan;China/Geography of Kyrgyzstan;Kyrgyzstan;#1 in Tian Shan
K12 (mountain);K12;7428;Karakoram;India/Pakistan
Sia Kangri;7422;Karakoram;Pakistan
Momhil Sar;7414;Karakoram;Pakistan
Istor-o-Nal;7403;Hindu Kush;Pakistan
Ghent Kangri;7401;Karakoram;India  (Ladakh)/Pakistan
Haramosh Peak;7397;Karakoram;Pakistan
Kabru;7394;Himalayas;Kanchenjunga, India (Sikkim)/Nepal
Ultar;7388;Karakoram;Pakistan
Rimo I;7385;Karakoram;India (Ladakh)
Sherpi Kangri;7380;Karakoram;Pakistan
Churen Himal;7371;Himalayas;Nepal
Labuche Kang;7367;Himalayas;near Cho Oyu, Nepal/China
Kirat Chuli ;7365;Himalayas;Nepal/India (Sikkim) border
Skil Brum;7360;Karakoram;Pakistan;May also be given as 7,410&nbsp;m
Abi Gamin;7355;Himalayas;India
Gimmigela Chuli;7350;Himalayas;Nepal/India (Sikkim) border
Saraghrar;7340;Hindu Kush;Pakistan
Bojohagur Duanasir;7329;Karakoram;Pakistan
Chamlang;7319;Himalayas;Khumbu, Nepal
Chongtar Kangri;7315;Karakoram;Pakistan
Mount Jomolhari;Jomolhari / Chomolhari;7314;Himalayas;Geography of Bhutan;Bhutan/China
Baltoro Kangri;7312;Karakoram;Pakistan
Siguang Ri;7308;Himalayas;China
Summa Ri;7302;Himalayas;Pakistan
The Crown (mountain);The Crown;7295;Karakoram;China (Xinjiang)
Gyala Peri;7294;Himalayas;China
Porong Ri;7292;Himalayas;China
Baintha Brakk;7285;Karakoram;Pakistan
Yutmaru Sar;7283;Karakoram;Pakistan
K6 (mountain);K6;7282;Karakoram;Pakistan ;Also known as Baltistan Peak
Kangpenqing;7281;Himalayas;China
Kamet;Mana Peak;7272;Himalayas;India (Uttarakhand);SSE of Kamet
Muztagh Tower;7273;Karakoram;Pakistan
Diran;7257;Karakoram;Pakistan
Apsarasas Kangri;7245;Karakoram;China/Pakistan
Langtang Lirung;7227;Himalayas;Nepal
Karjiang;7221;Himalayas;China
Annapurna;Annapurna South;7219;Himalayas;Nepal
Khartaphu;7213;Himalayas;China
Tongshanjiabu;7207;Himalayas;Bhutan/China
Langtang Ri;7205;Himalayas;Nepal/China
Kangphu Kang;7204;Himalayas;Bhutan/China
Singhi Kangri;7202;Himalayas;India/China
Lupghar Sar;7200;Karakoram;Pakistan
Gurja Himal;7193;Himalayas;Nepal
Melungtse;7181;Rolwaling Himal;Rolwaling Himalayas;China
Liushi Shan;7167;Kunlun;China;#1 in Kunlun
Baruntse;7162;Himalayas;Khumbu, Nepal
Pumori;7161;Himalayas;Khumbu, Nepal
Hardeol;7151;Himalayas;India (Uttarakhand)
Gasherbrum V;7147;Karakoram;Pakistan
Latok;Latok I;7145;Karakoram;Pakistan
Nemjung;7140;Himalayas;Nepal
Udren Zom;7140;Hindu Kush;Pakistan
Chaukhamba;7138;Himalayas;India (Uttarakhand)
Nun Kun;7135;Karakoram;India(Jammu and Kashmir, Ladakh)
Tilicho Peak;7134;Himalayas;Annapurna Himal, Nepal
Gauri Sankar;7134;Rolwaling Himal;Rolwaling Himalayas;Nepal/China
Lenin Peak;7134;Pamir Mountains;Geography of Tajikistan;Tajikistan-Geography of Kyrgyzstan;Kyrgyzstan;#2 in Pamirs
Bularung Sar;7134;Karakoram;Pakistan
Api (mountain);Api;7132;Himalayas;Nepal
Teri Kang;7124;Himalayas;Bhutan
Pauhunri;7128;Himalayas;India (Sikkim)/China
Trisul;7120;Himalayas;India (Uttarakhand)
Peak Korzhenevskaya;Korzhenevskaya;7105;Pamir Mountains;Tajikistan;#3 in Pamirs
Lunpo Gangri;7095;Himalayas (Gangdise);China
Satopanth;7075;Himalayas;India (Uttarakhand)
Tirsuli;7074;Himalayas;India (Uttarakhand)
Dunagiri (mountain);Dunagiri;7066;Himalayas;India (Uttarakhand)
Kangto;7060;Himalayas;India (Arunachal Pradesh)/China
Nyegyi Kansang;7047;Himalayas;India (Arunachal Pradesh)/China
Chomolhari Kang;7046;Himalayas;Bhutan
Salasungo;7043;Himalayas;Nepal/China
Link Sar;7041;Karakoram;Pakistan
Kezhen Peak;7038;Karakoram;China (Xinjiang)
Shah Dhar;7038;Hindu Kush;Pakistan/Afghanistan
Saipal;7031;Himalayas;Nepal
Padmanabh;7030;Himalayas;India
Spantik;7027;Karakoram;Pakistan
Khan Tengri;7010;Tian Shan;Kyrgyzstan-Kazakhstan-China;#2 in Tian Shan

Machapuchare;6993;Annapurna;Annapurna Himalaya, Geography of Nepal;Nepal;Officially unclimbed (attempts not allowed)
Laila Peak (Haramosh Valley);6985;Karakoram, Pakistan
Kang Guru;6981;Manaslu;Manaslu Himalaya, Nepal;2005 avalanche kills 18
Gasherbrum VI;6979;Karakoram, Pakistan;
Karun Kuh;6977;Karakoram, Pakistan;
Avicenna Peak;6974;Pamir Mountains, Geography of Tajikistan;Tajikistan;#3 in Pamirs
Ulugh Muztagh;6973;Kunlun Mountains, Often misquoted as 7,723&nbsp;m
Aconcagua;6961;Andes, Argentina;Highest in both the Western Hemisphere;Western and Southern Hemispheres, highest outside Asia
Sangemarmar Sar;6949;Karakoram, Pakistan;
Kedarnath (mountain);6940;Uttarakhand;Himalayas, India
K7 (mountain);K7;6934;Karakoram;Pakistan
Panchchuli;6904;Uttarakhand;Himalayas, India
Thalay Sagar;6904;Uttarakhand;Himalayas, India
Lunkho e Dosare;6901;Hindu Kush, Afghanistan-Pakistan;
Lunag Ri;6895;Himalaya, Nepal-China;
Ojos del Salado;6891;Andes, Argentina-Chile;Highest volcano on Earth
Siniolchu;6888;Kangchenjunga;Kangchenjunga Himalaya, Geography of India;India (Sikkim)
Kanjiroba;6883;Himalayas, Nepal
Bairiga;6882;Kangri Garpo
Koyo Zom;6872;Hindu Kush, Pakistan
Nanda Kot;6861;Geography of Uttarakhand;Himalayas, India (Uttarakhand)
Kubi Gangri;6859;Himalayas, Nepal/China
Angel Sar;6858;Karakoram, Pakistan
Bhagirathi Parbat I;6856;Himalayas, India (Uttarakhand)
Jethi Bahurani;6850;Himalayas, Nepal
Chongra Peak;6830;Nanga Parbat;Nanga Parbat Himalaya, Pakistan
Chomo Yummo;6829;Sikkim, India/China
Reo Purgyil;6816;Western Himalaya, India border;Highest in Himachal Pradesh
Ama Dablam;6812;Himalayas, Nepal (Khumbu)
Monte Pissis;6795;Andes, Argentina;Third highest in Western Hemisphere
Kangtega;6782;Himalayas, Nepal 
Biarchedi;6781;Karakoram, Pakistan 
Huascarán;Huascarán Sur;6768;Andes, Geography of Peru;Peru;Highest
Cerro Bonete;6759;Andes, Geography of Argentina;Argentina
Nevado Tres Cruces;6749;Andes, Geography of Argentina;Argentina/Geography of Chile;Chile
Kawagarbo;6740;Hengduan Mountains, China (Yunnan/Tibet)
Llullaillaco;6739;Andes, Argentina/Chile
Cho Polu;6735;Himalayas, Nepal (Khumbu)
Kangju Kangri;6725;Karakoram, India (Ladakh)
Changla;6721;Himalayas, Nepal/China
Mercedario;6720;Andes, Geography of Argentina;Argentina
Mount Pandim;6691;Himalayas, India (Sikkim)
Num Ri;6677;Himalayas, Nepal (Khumbu)
Lungser Kangri;6666;Ladakh, Himalayas, India (Ladakh)
Meru Peak;6660;Uttarakhand;Himalayas, India
Gul Lasht Zom;6657;Hindu Kush, Pakistan
Huascarán;Huascarán Norte;6655;Andes, Geography of Peru;Peru
Khumbutse;6640;Himalayas, Nepal (Khumbu)/China;First peak west of Everest
Mount Kailash;6638;Transhimalaya, western China;Officially unclimbed (attempts not allowed)
Yerupajá;6635;Andes, Peru
Nevado Tres Cruces Central;6629;Andes, Chile
Thamserku;6623;Himalayas, Nepal (Khumbu)
Geladaindong Peak;6621;Tanggula, China (Qinghai)
Incahuasi;6621;Andes, Argentina/Chile
Pangpoche;6620;Himalayas, Nepal
Manirang;6597;Himalayas, India (Himachal Pradesh)
Nilkantha (mountain);Nilkantha;6596;Geography of Uttarakhand;Himalayas, India (Uttarakhand)
Phuparash Peak;6574;Karakoram, Pakistan
Sickle Moon Peak;6574;Himalayas, India (Geography of Jammu and Kashmir;Jammu and Kashmir)
Tupungato;6570;Andes, Argentina/Chile
Buni Zom;6542;Hindu Raj, Pakistan
Nevado Sajama;6542;Andes, Geography of Bolivia;Bolivia;Highest
Ghamubar Zom;6518;Hindu Kush, Pakistan
Singu Chuli;6501;Annapurna Himalayas, Nepal
Taboche;6501;Himalayas, Nepal (Khumbu)
Cerro El Muerto;6488;Andes, Argentina/Chile
Mera Peak;6476;Himalayas, Nepal (Khumbu)
Hiunchuli;6441;Annapurna;Annapurna Himalaya, Nepal
Cholatse;6440;Himalayas, Nepal (Khumbu)
Illimani;6438;Andes, Bolivia
Ancohuma;6427;Andes, Bolivia
Coropuna;6425;Andes, Peru
Antofalla;6409;Andes, Argentina
Kang Yatze;6400;Himalayas, India (Ladakh)
Huandoy;6395;Andes, Peru
Ausangate;6384;Andes, Peru
Chapaev Peak;6371;Tian Shan, Kyrgyzstan
Illampu;6368;Andes, Bolivia
Kusum Kangguru;6367;Himalayas, Nepal (Khumbu)
Kinnaur Kailash;6349;Himalayas, Kinnaur, India (Geography of Himachal Pradesh;Himachal Pradesh)
Parinacota Volcano;Parinaquta;6348;Andes, Bolivia/Chile
Siula Grande;6344;Andes, Geography of Peru;Peru
Bamba Dhura;6334;Geography of Uttarakhand;Himalayas, India (Uttarakhand)
Chinchey;6309;Andes, Peru
Ampato;6288;Andes, Peru
Amne Machin;6282;Kunlun Mountains, China (Qinghai)
Pomerape;6282;Andes, Bolivia/Chile
Palcaraju;6274;Andes, Peru
Salcantay;6271;Andes, Peru
Chimborazo (volcano);Chimborazo;6267;Andes, Ecuador;Furthest point from Earth's center
Mount Siguniang;6250;Qionglai Mountains, China (Sichuan)
Grid Nie Mountain;6224;Hengduan Mountains, China (Sichuan)
Yuzhu Peak;6224;Kunlun Mountains, China (Qinghai)
Genyen Massif;6204;Shaluli Range, China (Sichuan)
Kongde Ri;6187;Himalayas, Nepal (Khumbu)
Aucanquilcha;6176;Andes, Chile
Imja Tse;6189;Himalayas, Nepal (Khumbu)
Denali (Mount McKinley);6190;Alaska Range, United States (Alaska);Highest in North America
Stok Kangri;6137;Himalayas, India (Ladakh)
Lobuche;6119;Himalayas, Nepal (Khumbu)
Marmolejo;6108;Andes, Argentina/Chile
Laila Peak (Hushe Valley);6096;Karakoram, Pakistan
Pisang Peak;6091;Annapurna;Annapurna Himalaya, Nepal
Huayna Potosí;6088;Andes, Bolivia
Aracar;6082;Andes, Argentina
Chachakumani;6074;Andes, Bolivia
Chachani;6057;Andes, Peru
Mianzimu;6054;Yunnan, China
Acotango;6052;Andes, Bolivia/Chile
Socompa;6051;Andes, Argentina/Chile
Minglik Sar;6050;Karakoram, Pakistan
Acamarachi;6046;Andes, Chile
Tocllaraju;6034;Andes, Peru
Shayaz;6026;Hindu Kush, Pakistan
Hualca Hualca;6025;Andes, Peru
Uturunku;6020;Andes, Bolivia
Mitre Peak, Pakistan;Mitre Peak;6010;Karakoram, Pakistan

Laila Peak (Rupal Valley);Laila Peak;5971;Himalaya;Pakistan
Mount Logan;5959;Saint Elias Mountains;Geography of Yukon;Yukon, Geography of Canada;Canada;Highest in Canada
Alpamayo;5947;Andes;Geography of Peru;Peru;
Cerro Lípez;5929;Andes;Geography of Bolivia;Bolivia;
Licancabur;5920;Andes;Geography of Bolivia;Bolivia/Geography of Chile;Chile;
Falak Sar (Swat);Falak Sar;5918; Hindu Kush;Pakistan
Cotopaxi;5897;Andes;Geography of Ecuador;Ecuador;Second highest in Ecuador
Mount Kilimanjaro;5895;Eastern Rift Mountains;Geography of Tanzania;Tanzania;Highest in Africa
Hkakabo Razi;5881;Himalayas;Geography of Myanmar;Myanmar;Highest in Myanmar and Southeast Asia
San José (volcano);San José;5856;Andes;Geography of Chile;Chile;
Nevado Mariposa;5842;Andes;Geography of Peru;Peru;
El Misti;5822;Andes;Geography of Peru;Peru;
Altun Shan;5798;Altyn-Tagh;Gansu, Geography of China;China
Cayambe (volcano);Cayambe;5790;Andes;Geography of Ecuador;Ecuador;Third highest in Ecuador
Pico Cristóbal Colón;5776;Sierra Nevada de Santa Marta;Geography of Colombia;Colombia;Highest coastal mountain
Antisana;5753;Andes;Geography of Ecuador;Ecuador;
Nevado Pisco;5752;Andes;Geography of Peru;Peru;
Nevado Anallajsi;5750;Andes;Geography of Bolivia;Bolivia
Pokalde;5745;Khumbu Himalayas;Geography of Nepal;Nepal;7 km SW of Everest
Ubinas;5672;Andes;Geography of Peru;Peru;Active volcano (2006)
Pichu Pichu;5664;Andes;Geography of Peru;Peru;
Mount Elbrus;5642;Caucasus Mountains;North Caucasus, Geography of Russia;Russia;Highest in Caucasus
Mehrbani Peak;5639;Karakoram;Pakistan;
Pico de Orizaba;5636;Trans-Mexican Volcanic Belt;Geography of Mexico;Mexico;Highest in Mexico
Mount Damavand;5610;Alborz;Geography of Iran;Iran;Highest in Iran and ME, highest volcano in Asia
Nevado Mismi;5597;Andes;Geography of Peru;Peru;Glacial source of the Amazon River
Jade Dragon Snow Mountain;5596;Hengduan Mountains;Yunnan, Geography of China;China
Lascar Volcano;5592;Andes;Geography of Chile;Chile;
Mount Xuebaoding;5588;Min Mountains;Sichuan, China
Kala Patthar;5545;Khumbu Himalayas;Geography of Nepal;Nepal;Popular trekking peak
Mount Saint Elias;5489;Saint Elias Mountains;Geography of Yukon;Yukon, Geography of Canada;Canada/Geography of Alaska;Alaska, Geography of United States;US;Second highest in both countries
Concord Peak;5469;Pamir Mountains;Geography of Afghanistan;Afghanistan–Geography of Tajikistan;Tajikistan;
Dindaw Razi;5464;Himalayas;Myanmar
Machoi Peak;5458;Himalaya;India (Geography of Jammu and Kashmir;Jammu and Kashmir)
El Plomo;5450;Andes;Chile
Bogda Feng;5445;Tien Shan;Xinjiang, Geography of China;China
Mount Little Xuebaoding;5443;Min Mountains;Sichuan, China
Cerro El Plomo;5434;Andes;Geography of Chile;Chile;Largest peak visible from Santiago on clear days
Popocatépetl;5426;Trans-Mexican Volcanic Belt;Geography of Mexico;Mexico;Second highest in Mexico
Kolahoi Peak;5425;Himalaya;India (Jammu and Kashmir);Highest in Kashmir Valley
Chacaltaya;5421;Andes;Geography of Bolivia;Bolivia;
Mount Pomiu;5413;Qionglai Mountains;Qionglai Range;Sichuan, China
Ritacuba Blanco;5410;Andes;Geography of Colombia;Colombia
Haba Xueshan;5396;Himalaya;Yunnan, China;
Nevado del Ruiz;5389;Andes;Geography of Colombia;Colombia;23,000 people died in 1985 eruption
Nevado del Huila;5364;Andes;Geography of Colombia;Colombia
El Altar;5320;Andes;Geography of Ecuador;Ecuador
Mount Foraker;5304;Alaska Range;Geography of Alaska;Alaska, Geography of United States;US;
Mount Haramukh;5300;Himalaya;India (Jammu and Kashmir);
Nevado del Tolima;5276;Andes;Colombia;
Maipo (volcano);Maipo;5264;Andes;Geography of Argentina;Argentina/Geography of Chile;Chile
Illiniza;5248;Andes;Geography of Ecuador;Ecuador
Point 5240;5240;Himalaya;Ladakh, India
Sirbal Peak;5236;Himalaya;Kashmir Valley, India (Jammu and Kashmir)
Sangay;5230;Andes;Geography of Ecuador;Ecuador
Iztaccíhuatl;5230;Trans-Mexican Volcanic Belt;Geography of Mexico;Mexico;Third highest in Mexico
Mount Lucania;5226;Saint Elias Mountains;Geography of Yukon;Yukon, Geography of Canada;Canada;Third highest in Canada
Karakol Peak;5216;Tian Shan;Geography of Kyrgyzstan;Kyrgyzstan
Dykh-Tau;5205;Caucasus Mountains;North Caucasus, Geography of Russia;Russia;Second highest in the Caucasus
Shkhara;5201;Caucasus Mountains;Geography of Georgia (country);Georgia;Highest in Georgia
Mount Kenya;5199;;Geography of Kenya;Kenya;Highest in Kenya, Second highest in Africa
Malika Parbat;5190;Himalaya;Kaghan Valley, Pakistan;Highest in Kaghan Valley of Pakistan
Amarnath Peak;5186;Himalaya;Kashmir Valley, India (Jammu and Kashmir)
Laram Q'awa (Charaña);5182;Andes;Geography of Bolivia;Bolivia
King Peak (Yukon);King Peak;5173;Saint Elias Mountains;Geography of Yukon;Yukon, Geography of Canada;Canada;Fourth highest in Canada
Boris Yeltsin Peak;5168;Teskey Ala-Too;Geography of Kyrgyzstan;Kyrgyzstan;
Koshtan-Tau;5150;Caucasus Mountains;North Caucasus, Geography of Russia;Russia;
Mount Ararat;5137;;Geography of Turkey;Turkey;Highest in Turkey
Mount Stanley;5109;Ruwenzori Mountains;Geography of the Democratic Republic of the Congo;Democratic Republic of the Congo/Geography of Uganda;Uganda;Third highest in Africa
Tami Razi;5101;Himalayas;Myanmar
Mount Steele;5073;Saint Elias Mountains;Geography of Yukon;Yukon, Geography of Canada;Canada;Fifth highest in Canada
Dzhangi-Tau;Janga;5051;Caucasus Mountains;Geography of Georgia (country);Georgia / North Caucasus, Geography of Russia;Russia;Second highest in Georgia 
Mount Kazbek;5047;Caucasus Mountains;Geography of Georgia (country);Georgia;Third highest in the country
Tungurahua;5023;Andes;Geography of Ecuador;Ecuador;Active volcano
Carihuairazo;5018;Andes;Geography of Ecuador;Ecuador
Mount Bona;5005;Saint Elias Mountains;Geography of Alaska;Alaska, Geography of United States;US;Also given as 5,030 m or 5,045m

Mount Blackburn;4996;Wrangell Mountains;Wrangell Mtns., Geography of Alaska;Alaska, Geography of United States;US (also given 5036 m)
Pico Bolívar;4981;Sierra Nevada de Mérida, Andes, Geography of Venezuela;Venezuela;Highest in Venezuela
Talgar Peak;4979;Tian Shan, Geography of Kazakhstan;Kazakhstan;Highest in northern Tian Shan
Shota Rustaveli Peak;4960;Caucasus Mountains, Svaneti, Geography of Georgia (country);Georgia/North Caucasus, Geography of Russia;Russia
Mount Sanford (Alaska);Mount Sanford;4949;Wrangell Mountains;Wrangell Mtns., Geography of Alaska;Alaska, Geography of United States;US
Pico Humboldt;4940;Sierra Nevada de Mérida, Andes, Geography of Venezuela;Venezuela
Pin Bhaba Pass;4930;Pin Valley National Park;Pin Valley/Spiti Valley, Himalayas, Himachal Pradesh;India
Vinson Massif;4892;Sentinel Range, Ellsworth Mountains, Geography of Antarctica;Antarctica;Highest in Antarctica
Pico Bonpland;4890;Sierra Nevada de Mérida, Andes, Geography of Venezuela;Venezuela
Puncak Jaya;4884;Sudirman Range, Papua (province);Papua, Geography of Indonesia;Indonesia;Highest in Indonesia
Pico La Concha;4870;Sierra Nevada de Mérida, Andes, Geography of Venezuela;Venezuela
Gistola;4860;Caucasus Mountains, Svaneti, Geography of Georgia (country);Georgia
Tetnuldi;4858;Caucasus Mountains, Svaneti, Geography of Georgia (country);Georgia
Mount Tyree;4852;Sentinel Range, Ellsworth Mountains, Geography of Antarctica;Antarctica;Second highest in Antarctica
Huaynaputina;4850;Andes, Geography of Peru;Peru
Alam Kuh;4850;Alborz, Geography of Iran;Iran;Second highest in Iran
Mount Wood (Yukon);Mount Wood;4842;Saint Elias Mountains, Geography of Yukon;Yukon, Geography of Canada;Canada
Mount Vancouver;4812;Saint Elias Mountains, Geography of Yukon;Yukon, Geography of Canada;Canada
Sabalan;4811;Geography of Iran;Iran
Mont Blanc;4810;Mont Blanc massif, Geography of France;France/Geography of Italy;Italy;Highest in Alps
Corazón (volcano);Corazón;4790;Andes, Geography of Ecuador;Ecuador
Pichincha (volcano);Pichincha;4784;Andes, Geography of Ecuador;Ecuador
Mount Jimara;Jimara;4780;Khokh Range, Caucasus Mountains, Geography of Georgia (country);Georgia
Mount Churchill;4766;Saint Elias Mountains, Geography of Alaska;Alaska, Geography of United States;US
Puncak Mandala;4760;Papua, Geography of Indonesia;Indonesia
Klyuchevskaya Sopka;4750;Kamchatka Peninsula;Kamchatka, Geography of Russia;Russia
Puncak Trikora;4750;Papua, Geography of Indonesia;Indonesia
Mont Blanc de Courmayeur;4748;Mont Blanc massif, Geography of France;France/Geography of Italy;Italy
Sunset Peak (Jammu and Kashmir);Sunset Peak;4745;Himalaya, Kashmir Valley, India (Geography of Jammu and Kashmir;Jammu and Kashmir)
Mount Slaggard;4742;Saint Elias Mountains, Geography of Canada;Canada
Pico Piedras Blancas;4740;Sierra de la Culata, Andes, Geography of Venezuela;Venezuela
Pico El Toro;4730;Andes, Geography of Venezuela;Venezuela
Tatakooti Peak;4725;Himalaya, Kashmir Valley, India (Jammu and Kashmir)
Rumiñahui (volcano);Rumiñahui;4721;Andes, Geography of Ecuador;Ecuador
Pico El Leon;4720;Andes, Geography of Venezuela;Venezuela
Ushba;4710;Caucasus Mountains, Svaneti, Geography of Georgia (country);Georgia
Domuyo;Volcán Domuyo;4709;Andes, Geography of Argentina;Argentina
Pico Pan de Azucar;4680;Sierra de la Culata, Andes, Geography of Venezuela;Venezuela
Naltar Peak;4678;Geography of Pakistan;Pakistan
Mount Fairweather;4663;Fairweather Range, Geography of Alaska;Alaska, Geography of United States;US
Pico Mucuñuque;4660;Andes, Geography of Venezuela;Venezuela
Khazret Sultan;4643;Gissar Range, Geography of Uzbekistan;Uzbekistan
Sierra Negra;4640;Geography of Mexico;Mexico
Dufourspitze (Monte Rosa);4634;Pennine Alps, Geography of Switzerland;Switzerland;Highest point in Switzerland
Dunantspitze (Monte Rosa);4632;Pennine Alps, Geography of Switzerland;Switzerland
Nordend (Monte Rosa);4609;Pennine Alps, Geography of Switzerland;Switzerland-Geography of Italy;Italy
Mount Hubbard;4577;Saint Elias Mountains
Nevado de Toluca;4577;Geography of Mexico;Mexico
Mount Meru (Tanzania);Mount Meru;4566;Geography of Tanzania;Tanzania
Zumsteinspitze (Monte Rosa);4563;Pennine Alps, Geography of Switzerland;Switzerland-Geography of Italy;Italy
Signalkuppe (Monte Rosa);4554;Pennine Alps, Geography of Switzerland;Switzerland-Geography of Italy;Italy
Dom (Mischabel);Dom;4545;Pennine Alps, Geography of Switzerland;Switzerland
Ras Dashen;4533;Geography of Ethiopia;Ethiopia;Highest point in Ethiopia

Eastern Liskamm (Lyskamm);4533;Pennine Alps, Geography of Switzerland;Switzerland-Geography of Italy;Italy
Mount Bear;4521;Saint Elias Mountains, Geography of Alaska;Alaska, Geography of United States;US
Mount Wilhelm;4509;Bismarck Range, Geography of Papua New Guinea;Papua New Guinea
Mount Karisimbi;4507;Virunga Mountains, Geography of Rwanda;Rwanda/Geography of DRC;DRC
Mount Walsh;4507;Saint Elias Mountains, Geography of Canada;Canada
Belukha Mountain;4506;Altay Mountains, Geography of Russia;Russia
Weisshorn;4506;Pennine Alps, Geography of Switzerland;Switzerland
Tebulosmta;4493;Caucasus Mountains, Geography of Georgia (country);Georgia/Chechnya, Geography of Russia;Russia
Täschhorn;4491;Pennine Alps, Geography of Switzerland;Switzerland
Bazarduzu Dagi;4485;Geography of Azerbaijan;Azerbaijan
Matterhorn;4478;Pennine Alps, Geography of Switzerland;Switzerland/Geography of Italy;Italy
Mount Rutford;4477;Sentinel Range, Ellsworth Mountains, Geography of Antarctica;Antarctica
Mont Maudit;4465;Mont Blanc massif, Geography of France;France/Geography of Italy;Italy
Donguzorun;4454;Caucasus Mountains, Geography of Georgia (country);Georgia/Geography of Russia;Russia
Mount Shani;4451;Caucasus Mountains, Geography of Georgia (country);Georgia/Geography of Russia;Russia
Dena;4448;Zagros Mountains, Iran
Vladimir Putin Peak;4446;Kyrgyz Alatau, Kyrgyzstan
Mount Hunter (Alaska);Mount Hunter;4442;Alaska Range, Geography of Alaska;Alaska, Geography of United States;US
Parrotspitze (Monte Rosa);4432;Pennine Alps, Geography of Switzerland;Switzerland-Geography of Italy;Italy
Malinche (volcano);La Malinche;4430;Cordillera Neovolcanica, Geography of Mexico;Mexico
Mount Whitney;4421;Sierra Nevada (U.S.);Sierra Nevada, Geography of California;California, Geography of United States;US
Mount Alverstone;4420;Saint Elias Mountains, Geography of Alaska;Alaska, Geography of United States;US/Geography of Yukon;Yukon, Geography of Canada;Canada
University Peak (Alaska);University Peak;4411;Saint Elias Mountains, Geography of Alaska;Alaska, Geography of United States;US
Aello Peak;4403;Saint Elias Mountains, Geography of Alaska;Alaska, Geography of United States;US
Mount Elbert;4402;Sawatch Range, Geography of Colorado;Colorado, Geography of United States;US
Mount Massive;4395;Sawatch Range, Geography of Colorado;Colorado, US
Mount Harvard;4395;Sawatch Range, Geography of Colorado;Colorado, Geography of United States;US
Mount Rainier;4392;Cascade Range;Cascades, Geography of Washington (state);Washington, Geography of United States;US
Apharwat Peak;4390;Gulmarg, India (Geography of Jammu and Kashmir;Jammu and Kashmir)
Kholeno;4387;Alborz, Iran
Mount Williamson;4382;Sierra Nevada, Geography of California;California, Geography of United States;US
Tavan Bogd Uul;4374;Bayan-Ölgii Province, Mongolia;Highest point in Mongolia
Blanca Peak;4374;Rocky Mountains, Geography of Colorado;Colorado, Geography of United States;US
La Plata Peak;4372;Sawatch Range, Geography of Colorado;Colorado, Geography of United States;US
Mount Giluwe;4368;Papua New Guinea
Burchula;4364;Caucasus Mountains, Georgia (country);Georgia
Uncompahgre Peak;4361;San Juan Mountains, Geography of Colorado;Colorado, Geography of United States;US
Dent Blanche;4357;Pennine Alps, Geography of Switzerland;Switzerland
Crestone Peak;4357;Sangre de Cristo Range, Geography of Colorado;Colorado, Geography of United States;US
Mount Lincoln (Colorado);Mount Lincoln;4354;Mosquito Range, Geography of Colorado;Colorado, Geography of United States;US
Azad Kuh;4355;Alborz, Iran
Grays Peak;4350;Front Range, Geography of Colorado;Colorado, Geography of United States;US
Mount Blue Sky;4350;Front Range, Geography of Colorado;Colorado, Geography of United States;US
Quandary Peak;4350;Tenmile Range, Geography of Colorado;Colorado, US
Lalveri;4350;Caucasus Mountains, Svaneti, Geography of Georgia (country);Georgia
Mount Antero;4349;Sawatch Range, Geography of Colorado;Colorado, Geography of United States;US
Torreys Peak;4349;Front Range, Geography of Colorado;Colorado, Geography of United States;US
Castle Peak (Colorado);Castle Peak;4348;Elk Mountains, Geography of Colorado;Colorado, Geography of United States;US
Longs Peak;4346;Front Range, Geography of Colorado;Colorado, Geography of United States;US
McArthur Peak;4344;Saint Elias Mountains, Geography of Yukon;Yukon
Mount Wilson (Colorado);Mount Wilsion;4342;San Juan Mountains, Geography of Colorado;Colorado, Geography of United States;US
White Mountain Peak;4342;White Mountains, Geography of California;California, Geography of United States;US
North Palisade;4341;Sierra Nevada, Geography of California;California, Geography of United States;US
Ludwigshöhe (mountain);Ludwigshöhe (Monte Rosa);4341;Pennine Alps, Geography of Switzerland;Switzerland-Geography of Italy;Italy
Mount Shavano;4337;Sawatch Range, Geography of Colorado;Colorado, Geography of United States;US
Colima (volcano);Colima;4330;Mexico
Crestone Needle;4327;Sangre de Cristo Range, Geography of Colorado;Colorado, Geography of United States;US
Mount Belford;4327;Sawatch Range, Geography of Colorado;Colorado, Geography of United States;US
Mount Princeton;4327;Sawatch Range, Geography of Colorado;Colorado, Geography of United States;US
Mount Shasta;4322;Geography of California;California, Geography of United States;US
Mount Elgon;4321;Uganda-Kenya
Mount Bross;4320;Mosquito Range, Geography of Colorado;Colorado, Geography of United States;US
Kit Carson Mountain;4318;Sangre de Cristo Range, Geography of Colorado;Colorado, Geography of United States;US
Mount Wrangell;4317;Alaska, Geography of United States;US
Maroon Peak;4315;Elk Mountains, Geography of Colorado;Colorado, Geography of United States;US
Tabeguache Peak;4315;Sawatch Range, Geography of Colorado;Colorado, Geography of United States;US
El Diente Peak;4315;San Juan Mountains, Geography of Colorado;Colorado, Geography of United States;US
Mount Sill;4314;Sierra Nevada, Geography of California;California, Geography of United States;US
Grand Combin;4313;Pennine Alps, Geography of Switzerland;Switzerland
Mount Oxford (Colorado);4313;Sawatch Range, Geography of Colorado;Colorado, Geography of United States;US
Mount Sneffels;4312;San Juan Mountains, Geography of Colorado;Colorado, Geography of United States;US
Mount Democrat;4312;Mosquito Range, Geography of Colorado;Colorado, Geography of United States;US
Capitol Peak (Colorado);Capitol Peak;4307;Elk Mountains, Geography of Colorado;Colorado, Geography of United States;US
Pikes Peak;4302;Front Range, Geography of Colorado;Colorado, Geography of United States;US
Mount Russell (California);Mount Russell;4296;Sierra Nevada, Geography of California;California, Geography of United States;US
Snowmass Mountain;4295;Elk Mountains, Geography of Colorado;Colorado, Geography of United States;US
Lenzspitze;4294;Pennine Alps, Geography of Switzerland;Switzerland
Mount Eolus;4292;San Juan Mountains, Geography of Colorado;Colorado, Geography of United States;US
Windom Peak;4292;San Juan Mountains, Geography of Colorado;Colorado, Geography of United States;US
Challenger Point;4292;Sangre de Cristo Range, Geography of Colorado;Colorado, Geography of United States;US
Mount Columbia (Colorado);Mount Columbia;4291;Sawatch Range, Geography of Colorado;Colorado, Geography of United States;US
Mount Adishi;4290;Caucasus Mountains, Svaneti, Georgia (country);Georgia
Mount Augusta;4290;Saint Elias Mountains, Geography of Alaska;Alaska, Geography of United States;US
Humboldt Peak (Colorado);4287;Sangre de Cristo Range, Geography of Colorado;Colorado, Geography of United States;US
Split Mountain (California);Split Mountain;4287;Sierra Nevada, Geography of California;California, Geography of United States;US
Mount Bierstadt;4286;Front Range, Geography of Colorado;Colorado, Geography of United States;US
Diklosmta;4285;Caucasus Mountains, Tusheti, Geography of Georgia (country);Georgia
Sunlight Peak;4285;San Juan Mountains, Geography of Colorado;Colorado, Geography of United States;US
Mount Sidley;4285;Volcanic Seven Summits, Geography of Antarctica;Antarctica
Missouri Mountain;4282;Sawatch Range, Geography of Colorado;Colorado, Geography of United States;US
Culebra Peak;4282;Geography of Colorado;Colorado, Geography of United States;US
Handies Peak;4281;San Juan Mountains, Geography of Colorado;Colorado, Geography of United States;US
Ellingwood Point;4280;Sangre de Cristo Range, Geography of Colorado;Colorado, Geography of United States;US
Mount Lindsey;4280;Sangre de Cristo Range, Geography of Colorado;Colorado, Geography of United States;US
Little Bear Peak;4279;Sangre de Cristo Range, Geography of Colorado;Colorado, Geography of United States;US
Mount Sherman;4278;Mosquito Range, Geography of Colorado;Colorado, Geography of United States;US
Redcloud Peak;4277;San Juan Mountains, Geography of Colorado;Colorado, Geography of United States;US
Galeras;4276;Andes, Geography of Colombia;Columbia
Mount Langley;4275;Sierra Nevada, Geography of California;California, Geography of United States;US
Finsteraarhorn;4274;Bernese Alps, Geography of Switzerland;Switzerland
Pyramid Peak (Colorado);Pyramid Peak;4273;Elk Mountains, Geography of Colorado;Colorado, Geography of United States;US
Mount Tyndall;4273;Sierra Nevada, Geography of California;California, Geography of United States;US
Wilson Peak;4272;San Juan Mountains, Geography of Colorado;Colorado, Geography of United States;US
Mount Muir;4272;Sierra Nevada, Geography of California;California, Geography of United States;US
San Luis Peak;4271;San Juan Mountains, Geography of Colorado;Colorado, Geography of United States;US
Wetterhorn Peak;4271;San Juan Mountains, Geography of Colorado;Colorado, Geography of United States;US
Middle Palisade;4271;Sierra Nevada, Geography of California;California, Geography of United States;US
Huron Peak;4269;Sawatch Range, Geography of Colorado;Colorado, Geography of United States;US
Mount of the Holy Cross;4269;Sawatch Range, Geography of Colorado;Colorado, Geography of United States;US
Thunderbolt Peak;4268;Sierra Nevada, Geography of California;California, Geography of United States;US
Sunshine Peak;4268;San Juan Mountains, Geography of Colorado;Colorado, US
Mount Strickland;4260;Saint Elias Mountains, Geography of Yukon;Yukon, Geography of Canada;Canada
Pigeon Peak;4259;San Juan Mountains, Geography of Colorado;Colorado, Geography of United States;US
Mount Kennedy;4250;Saint Elias Mountains, Geography of Yukon;Yukon, Geography of Canada;Canada
Pointe Bayeux;4258;Graian Alps, Mont Blanc massif, Geography of France;France
Mont Blanc du Tacul;4248;Graian Alps, Mont Blanc massif, Geography of France;France
Stecknadelhorn;4241;Pennine Alps, Geography of Switzerland;Switzerland
Avalanche Peak (Yukon);Avalanche Peak;4228;Saint Elias Mountains, Geography of Yukon;Yukon, Geography of Canada;Canada
Castor (mountain);Castor;4223;Pennine Alps, Geography of Switzerland;Switzerland
Zinalrothorn;4221;Pennine Alps, Geography of Switzerland;Switzerland
Volcán Tajumulco;4220;Geography of Guatemala;Guatemala
Hohberghorn;4219;Pennine Alps, Geography of Switzerland;Switzerland
Turret Peak (Colorado);Turret Peak;4217;Needle Mountains, Geography of Colorado;Colorado, Geography of United States;US
Mount Darwin (California);Mount Darwin;4216;Sierra Nevada, Geography of California;California, Geography of United States;US
Mount Hayes;4216;Geography of Alaska;Alaska, Geography of United States;US
Sacabaya;4215;Geography of Bolivia;Bolivia
Grandes Jorasses;4208;Mont Blanc massif, Geography of France;France/Geography of Italy;Italy
Gannett Peak;4208;Wind River Range, Geography of Wyoming;Wyoming, Geography of United States;US
Mauna Kea;4207;Geography of Hawaii;Hawaii, Geography of United States;US
Alphubel;4206;Pennine Alps, Geography of Switzerland;Switzerland
Cofre de Perote;4201;Geography of Mexico;Mexico
Zard-Kuh;4200;Zagros Mountains, Iran
Shah Alborz;4200;Alborz, Iran
Rimpfischhorn;4199;Pennine Alps, Geography of Switzerland;Switzerland
Grand Teton;4199;Teton Range, Geography of Wyoming;Wyoming, Geography of United States;US
Mount Cook (Saint Elias Mountains);Mount Cook;4196;Saint Elias Mountains, Geography of Canada;Canada/Geography of United States;US
Aletschhorn;4192;Bernese Alps, Geography of Switzerland;Switzerland
Strahlhorn;4190;Pennine Alps, Geography of Switzerland;Switzerland
Fremont Peak (Wyoming);Fremont Peak;4189;Wind River Range, Geography of Wyoming;Wyoming, Geography of United States;US
Mount Warren;4182;Wind River Range, Geography of Wyoming;Wyoming, Geography of United States;US
Mount Sidley;4181;Geography of Antarctica;Antarctica
Mount Abbot;4180;California, Geography of United States;US
Dent d'Hérens;4171;Pennine Alps, Geography of Switzerland;Switzerland
Mauna Loa;4171;Geography of Hawaii;Hawaii, Geography of United States;US
Jbel Toubkal;4167;Atlas Mountains, Geography of Morocco;Morocco
Mount Minto (Antarctica);Mount Minto;4165;Geography of Antarctica;Antarctica
Breithorn (Western Summit);4164;Pennine Alps, Geography of Switzerland;Switzerland/Geography of Italy;Italy
Jungfrau;4158;Bernese Alps, Geography of Switzerland;Switzerland
Bishorn;4153;Pennine Alps, Geography of Switzerland;Switzerland
Mount Helen (Wyoming);Mount Helen;4151;Wind River Range, Geography of Wyoming;Wyoming, Geography of United States;US
El Mela;4150;Andes, Geography of Argentina;Argentina
Mount Quincy Adams (Fairweather Range);Mount Quincy Adams;4150;Fairweather Range, Geography of Canada;Canada/Geography of United States;US
Doublet Peak;4145;Wind River Range, Geography of Wyoming;Wyoming, Geography of United States;US
Turret Peak (Wyoming);Turret Peak;4145;Wind River Range, Geography of Wyoming;Wyoming, Geography of United States;US
Mount Parnassus (Colorado);4137;Front Range, Rocky Mountains, Colorado, US
Mount Sacagawea;4136;Wind River Range, Geography of Wyoming;Wyoming, Geography of United States;US
Mount Dubois;4135;White Mountains, Geography of California;California, Geography of United States;US
Mount Muhabura;4127;Virunga Mountains, Musanze, Rwanda
Kings Peak (Utah);Kings Peak;4125;Uinta Range, Geography of Utah;Utah, Geography of United States;US
Aiguille Verte;4122;Mont Blanc massif, Geography of France;France
Mount Bangeta;4121;Papua New Guinea
Mount Dickerson;4120;Queen Alexandra Range, Geography of Antarctica;Antarctica
Jackson Peak (Fremont County, Wyoming);Jackson Peak;4120;Wind River Range, Geography of Wyoming;Wyoming, Geography of United States;US
Cilo Dağı;4116;Cilo Range, Taurus Mountains;Eastern Taurus, Geography of Turkey;Turkey
Mount Woodrow Wilson;4115;Wind River Range, Geography of Wyoming;Wyoming, Geography of United States;US
Aiguilles du Diable;4114;Graian Alps, Mont Blanc massif, Geography of France;France
Bastion Peak;4113;Wind River Range, Geography of Wyoming;Wyoming
Aiguille Blanche de Peuterey;4112;Mont Blanc massif, Geography of Italy;Italy
Mönch;4107;Bernese Alps, Geography of Switzerland;Switzerland
Mount Febbas;4105;Wind River Range, Geography of Wyoming;Wyoming, Geography of United States;US
Barre des Écrins;4102;Dauphiné Alps, France
Mount Aragats;4095;Geography of Armenia;Armenia
Mount Cameroon;4095;Geography of Cameroon;Cameroon
Mount Kinabalu;4095;Sabah, Geography of Malaysia;Malaysia;Highest in Malaysia
Grizzly Peak (Summit County, Colorado);Grizzly Peak D;4093;Front Range, Rocky Mountains, Colorado, US
Pollux (mountain);Pollux;4092;Pennine Alps, Geography of Switzerland;Switzerland
Mount Wade;4085;Prince Olav Mountains, Geography of Antarctica;Antarctica
Nairamdal Peak;4082;Altai Mountains, Geography of Mongolia;Mongolia
Mount Victoria, Papua New Guinea;Mount Victoria;4072;Papua New Guinea
Centennial Peak (Antarctica);Centennial Peak;4070;Prince Olav Mountains, Geography of Antarctica;Antarctica
Gran Paradiso;4061;Graian Alps, Geography of Italy;Italy
Ober Gabelhorn;4053;Pennine Alps, Geography of Switzerland;Switzerland
Piz Bernina;4049;Bernina Alps, Geography of Switzerland;Switzerland
Fiescherhorn;4049;Bernese Alps, Geography of Switzerland;Switzerland
Grünhorn;4043;Bernese Alps, Geography of Switzerland;Switzerland
Lauteraarhorn;4042;Bernese Alps, Geography of Switzerland;Switzerland
Aiguille du Géant;4035;Graian Alps, Mont Blanc massif, Geography of France;France
Mount Silverthrone (Alaska);Mount Silverthrone;4030;Alaska Range, Alaska, US
Mount Sniktau;4034;Front Range, Rocky Mountains, Colorado, US
Azufral;4030;Colombia
Allalinhorn;4027;Pennine Alps, Geography of Switzerland;Switzerland
Wind River Peak;4021;Wind River Range, Geography of Wyoming;Wyoming, Geography of United States;US
Latsga;4019;Caucasus Mountains, Svaneti, Geography of Georgia (country);Georgia
Weissmies;4017;Pennine Alps, Geography of Switzerland;Switzerland
Mount Waddington;4016;British Columbia, Canada
Mount Marcus Baker;4016;Chugach Range, Alaska, US
Conejos Peak;4015;San Juan Mountains, Colorado, US
Dent du Géant;4013;Mont Blanc massif, France/Italy
Red Slate Mountain;4013;Sierra Nevada, California, US
Cloud Peak;4013;Big Horn Mountains, Wyoming, US
Wheeler Peak (New Mexico);Wheeler Peak;4012;Sangre de Cristo Mountains, New Mexico, US
Lagginhorn;4010;Pennine Alps, Switzerland
Twilight Peak;4010;San Juan Mountains, Colorado, US
Francs Peak;4009;Absaroka Range, Wyoming, US
Mount Lahili;4009;Svaneti Range, Svaneti, Georgia
Mount Walter (New Mexico);Mount Walter;4005;New Mexico, US
Les Droites;4000;Mont Blanc massif, France

Piz Zupò;3995;Bernina Range, Switzerland
Truchas Peak;3994;Sangre de Cristo Mountains, New Mexico
Fletschhorn;3993;Pennine Alps, Switzerland
Mount Albert Edward, Papua New Guinea;Mount Albert Edward;3990;Papua New Guinea
Meije;La Meije;3987;Dauphiné Alps, France
Wheeler Peak (Nevada);Wheeler Peak;3982;Snake Range, Nevada
Mount Dana;3981;California
Acatenango;3976;Guatemala
Piz Roseg;3973;Bernina Range, Switzerland
Piz Scerscen;3971;Bernina Range, Switzerland
Eiger;3967;Bernese Oberland, Switzerland
Tochal;Mount Tochal;3964;Alborz, Iran
Black Tooth Mountain;3964;Bighorn Mountains, Wyoming
Grand Cornier;3962;Pennine Alps, Switzerland
Mount Owen (Wyoming);Mount Owen;3957;Teton Range, Wyoming
Ailefroide;3954;Dauphiné Alps, France
Mount Robson;3954;Highest point in the Canadian Rockies
Descabezado Grande;3953;Chile
Yu Shan;Yu Shan (Mount Jade);3952;Highest point in Taiwan and East Asia
Mont Pelvoux;3946;Dauphiné Alps, France
Mount Julian (Colorado);Mount Julian;3940;Geography of Colorado;Colorado, United States 
Mount Khalatsa;3938;Disputed, South Ossetia or Georgia (country);Georgia
Ajusco;3930;Mexico
Mount Erciyes;3916;Central Anatolia, Turkey
Bomber Mountain;3914;Bighorn Range, Geography of Wyoming;Wyoming, United States 
Pic Sans Nom;3919;Dauphiné Alps, France
Ortler;3905;Italy South Tyrol
Piz Palü;3905;Bernina Range, Switzerland
Middle Teton;3903;Teton Range, Wyoming
Aiguille d'Argentière;3902;Mont Blanc massif, France/Switzerland
Granite Peak (Montana);Granite Peak;3901;Montana, US;Highest point
Mount Gibbs;3893;Sierra Nevada, California, US
Mount Crillon;3879;Fairweather Range, Alaska, US
Mont Blanc de Cheilon;3870;Pennine Alps, Switzerland
Aiguille du Goûter;3863;Graian Alps, Mont Blanc massif, Geography of France;France
Borah Peak;3861;Idaho, US;Highest point
Grande Casse;3855;Vanoise Massif, France
Humphreys Peak;3852;Arizona, US;Highest point
Santa Fe Baldy;3847;Sangre de Cristo Mountains, New Mexico
Mount Baldwin (California);Mount Baldwin;3845;Sierra Nevada, California, US
Aiguille du Midi;3842;Graian Alps, Mont Blanc Massif, France
Mount Moran;3842;Wyoming, US
Monte Viso;3841;Italian Alps
Sauyr Zhotasy;3840;Kazakhstan
Mount Saramati;3826;Patkai Range, Nagaland, India
Nesthorn;3822;Bernese Alps, Switzerland
Cerro Chirripó;3820;Highest in Costa Rica
Aiguille des Glaciers;3816;Mont Blanc massif, France/Italy
South Teton;3814;Teton Range, Wyoming
Mount Kerinci;3800;Highest volcano in Indonesia
Grossglockner;3798;Austria;Highest point
Pigne d'Arolla;3796;Pennine Alps, Switzerland
Mount Erebus;3794;Antarctica;Southernmost active volcano
Mont Pourri;3779;Vanoise Massif, France
Mount Fuji;3776;Japan;Highest in Japan
Wildspitze;3774;Austria
Greenhorn Mountain;3763;Wet Mountains, Colorado, US
Volcán de Fuego;3763;Guatemala
Mount Villard;3760;Montana, US
Teewinot Mountain;3757;Teton Range, Wyoming, US
Aiguille du Dru;3754;Graian Alps, France
Aoraki / Mount Cook;3754;New Zealand;Highest point in New Zealand
Pointe de Charbonnel;3752;Graian Alps, France
Piz Morteratsch;3751;Bernina Range, Switzerland
Sawtooth Mountain;3750;Front Range, Colorado, US
Mount Davis (California);Mount Davis;3750;California, US
Mount Morrison (California);Mount Morrison;3750;California, US
Mount Taibai;3750;Qin Mountains, China;Highest point east of Tibetan massif
Aiguille de la Grande Sassière;3747;Graian Alps, France
Lanín;3747;Andes, Chile/Argentina
Mount Adams (Washington);Mount Adams;3743;Cascade Range, Washington, US
Mount Columbia (Canada);Mount Columbia;3747;Canadian Rockies;Highest in Alberta
Mount Adams (Washington);Mount Adams;3743;Washington, US
Teepe Pillar;3739;Teton Range, Wyoming, US
Weißkugel;3739;Alps, Austria/Italy
Minarets (California);Minarets;3735;Sierra Nevada, California
Mount Huntington (Alaska);Mount Huntington;3731;Alaska Range, Alaska, US
Mount Rinjani;3726;Indonesia
Cerro del Potosí;3721;Mexico
Diamond Peak (Idaho);Diamond Peak;3719;Idaho, US
Teide;3718;Canary Islands;Highest in Spain
Asperity Mountain;3716;Waddington Range
Cerro de la Viga;3712;Mexico
Delano Peak;3711;Utah, US - Highest peak in the Tushar Mountains
Sahand;3707;East Azerbaijan, Iran
Monte San Lorenzo;3706;Patagonia, Argentina-Chile
Wetterhorn;3701;Bernese Alps, Switzerland
Mount Valhalla (Alaska);Mount Valhalla;3699;Alaska, US
Dent Parrachée;3697;Vanoise massif, France
Gunnbjørn;3694;highest in Greenland
North Twin Peak;3684;Canadian Rockies
Monte Disgrazia;3678;Bregaglia, Switzerland
Semeru;3676;Java, Indonesia
Les Bans;3669;Ecrins, France
Cloudveil Dome;3666;Teton Range, Wyoming, US
Thor Peak (Wyoming);Thor Peak;3666;Teton Range, Wyoming, United States
Medicine Bow Peak;3661;Wyoming, US
Hyndman Peak;3660;Idaho, US
Mount Clemenceau;3658;Canadian Rockies
Mount Frakes;3654;Crary Mountains, Antarctica
Grande Motte;3653;Vanoise Massif, France
Sierra Blanca (New Mexico);Sierra Blanca;3652;Sacramento Mountains (New Mexico);Sacramento Mountains, New Mexico
Pointe de la Fournache;3642;Vanoise massif, France
Buck Mountain (Wyoming);Buck Mountain;3639;Teton Range, Wyoming
Mount Nebo (Utah);Mount Nebo;3636;Utah, US
Mount Charleston;3632;Nevada, US
Hintere Schwärze;3628;Ötztal Alps, Austria/Italy
Nez Perce Peak;3627;Teton Range, Wyoming, US
Mount Alberta;3619;Canadian Rockies
Mount Assiniboine;3618;Canadian Rockies
Tödi;3614;Swiss Alps
Mount Forbes;3612;Canadian Rockies
Lautaro (volcano);Lautaro;3607;Patagonia, Chile
Dôme de la Sache;3601;Vanoise massif, France
Castle Peak (Idaho);Castle Peak;3601;Idaho, US
Dôme de l'Arpont;3601;Vanoise massif, France
Dôme de Chasseforêt;3586;Vanoise massif, France
Makra Peak;3586;Pakistan
Sierra Velluda;3585;Chile
Grand Roc Noir;3582;Vanoise massif, France
Mount Timpanogos;3582;Utah, United States
Mount Alvand;3580;Hamedan, Iran
Dôme des Nants;3570;Vanoise massif, France
Ryan Peak (Idaho);Ryan Peak;3570;Idaho, US
South Twin Peak;3566;Canadian Rockies
Olan (mountain);Olan;3564;Ecrins, France
Aiguille de Péclet;3561;Vanoise massif, France
Presanella;3558;Adamello-Presanella, Italy
Mount Steere;3558;Antarctica
Monarch Mountain;3555;Pacific Ranges, British Columbia, Canada
Monte Leone;3552;Lepontine Alps, Switzerland
Mont Turia;3550;Vanoise massif, France
Mount Temple (Alberta);Mount Temple;3543;Canadian Rockies
Disappointment Peak (Wyoming);Disappointment Peak;3541;Teton Range, Wyoming
Mount Woodring;3533;Teton Range, Wyoming
Aiguille de Polset;3531;Vanoise Massif, France
Snow Dome (Canada);Snow Dome;3520;Canadian Rockies
Aiguilles d'Arves;3515;Arve Massif, France
Mount Ellen (Utah);3513;Henry Mountains, Utah, US;Last surveyed mountain range in US lower 48 states
Mont de Gébroulaz;3511;Vanoise massif, France
Mount San Gorgonio;3505;California, US
Mount Kitchener;3505;Canadian Rockies
Zuckerhütl;3505;Stubai Alps, Austria
Mount Wister;3502;Teton Range, Wyoming
Mount Saskatchewan (Yukon);Mount Saskatchewan;3500;Yukon, Canada
Mount Tasman;3497;Southern Alps, New Zealand
Mount Hungabee;3492;Canadian Rockies
Mount Athabasca;3491;Canadian Rockies
Tronador;3491;Chile/Argentina
Mount Saint John;3484;Teton Range, Wyoming
Thabana Ntlenyana;3482;Drakensberg, Africa
Pointes du Châtelard;3479;Vanoise massif, France
Mulhacén;3479;Spain;Highest in continental Spain
Mount Berlin;3478;Flood Range, Antarctica
Mount Pennell;3478;Henry Mountains, Utah, US.
Volcán Barú;3475;Chiriquí, Panama
Roc des Saints Pères;3470;Vanoise massif, France
Mount Brazeau;3470;Canadian Rockies
Mount Nyiragongo;3470;Virunga Mountains, DRC
Ruby Dome;3470;Ruby Mountains, Nevada
Roche de la Muzelle;3465;Dauphine Alps, France
Mount Victoria (Bow Range);Mount Victoria;3464;Canadian Rockies
Abajo Peak;3463;Abajo Mountains, Utah
Eagle Peak (Wyoming);Eagle Peak;3462;Absaroka Range, Wyoming, United States
Doane Peak;3461;Teton Range, Wyoming, US
Ranger Peak (Wyoming);Ranger Peak;3461;Teton range, Wyoming, US
Mount Takahe;3460;Antarctica
Cerro de la Muerte;3451;Second highest in Costa Rica
Furgghorn;3451;Pennine Alps, Switzerland
Mafadi;3450;Drakensberg, South Africa
Mount Andromeda (Alberta);Mount Andromeda;3450;Canadian Rockies
Boulder Mountain (Utah);Boulder Mountain;3449;Utah, US. Highest timbered plateau in N America
Mount Joffre;3449;Canadian Rockies
Hilgard Peak, Montana;Hilgard Peak;3449;Madison Range, Montana, US
Static Peak;3445;Teton Range, Wyoming, US
Thousand Lake Mountain;3444;Utah, US
Pointe de la Sana;3436;Vanoise massif, France
Eagles Rest Peak;3431;Teton Range, Wyoming, US
Irazú Volcano;3431;Costa Rica
Mount Hood;3429;Cascade Range, Oregon, US
Verpeilspitze;3425;Austria
Deltaform Mountain;3424;Canadian Rockies
Mount Lefroy;3423;Canadian Rockies
Pointe de l'Échelle;3422;Vanoise massif, France
Pointe du Bouchet;3420;Vanoise massif, France
Mount Fitzgerald (Nevada);Mount Fitzgerald;3418;Ruby Mountains, Nevada, US
Bellecôte;3417;Vanoise massif, France
Crazy Peak;3417;Montana, US
Emi Koussi;3415;Tibesti Mountains, Chad
Piz Linard;3410;Switzerland
Mount Woolley;3405;Canadian Rockies
Aneto;3404;Pyrenees, Spain;Highest in Pyrenees
Lone Mountain (Montana);Lone Mountain;3404; Madison Range, Montana, US
Fluchthorn;3399;Silvretta, Austria-Switzerland
Grand Bec;3398;Vanoise massif, France
Rockchuck Peak;3397;Teton Range, Wyoming
Veleta (Sierra Nevada);Pico Veleta;3396;Sierra Nevada, Spain;Location of the highest road in Europe
Mount Hector (Alberta);Mount Hector;3394;Canadian Rockies
Piz Platta;3392;Swiss Alps
Telescope Peak;3392;Death Valley
Champagne Castle;3377;Drakensberg, South Africa
Cerro Chaltén;3375;Patagonia, Argentina-Chile
Mount Spurr;3374;Alaska
Pointe du Vallonnet;3372;Vanoise massif, France
Mammoth Mountain;3371;California
Fründenhorn;3369;Bernese Alps, Switzerland
Pointe Renod;3368;Vanoise massif, France
Traverse Peak;3368;Teton Range, Wyoming
Mount Edith Cavell;3363;Canadian Rockies
Dôme des Sonnailles;3361;Vanoise massif, France
Valvelspitze;3360;Austria
Mount Etna;3357;Metropolitan City of Catania, Italy
Mount Agepsta;3357;Gagra Range, Abkhazia, Georgia
Mount Munday;3356;Pacific Ranges, B.C., Canada
Pointe de Claret;3355;Vanoise massif, France
Monte Perdido;3355;Pyrenees
Electric Peak;3343;Gallatin Range, Montana
Marmolada;3343;Dolomites, Italy;Highest mountain of the Dolomites
Mount Saskatchewan (Alberta);Mount Saskatchewan;3342;Canadian Rockies
Cerro Fábrega;3335;Bocas Del Toro, Panama
Ward Mountain (Nevada);Ward Mountain;3333;Nevada, US
Pointe de Méan Martin;3330;Vanoise massif, France
Dôme de Polset;3326;Vanoise massif, France
Cathedral Peak (California);Cathedral Peak;3326;California, US
Raynolds Peak;3325;Teton Range, Wyoming
Rolling Thunder Mountain;3324;Teton Range, Wyoming
Mount Hampton;3323;Antarctica
Dôme des Pichères;3319;Vanoise massif, France
Grand Roc;3316;Vanoise massif, France
Giant's Castle;3315;Drakensberg, South Africa
Sunwapta Peak;3315;Canadian Rockies
Piz Buin;3312;Silvretta, Austria-Switzerland
Mount Ball;3311;Canadian Rockies
Piz Badile;3308;Bregaglia, Switzerland
Ağ Dağ;3306;Mount Bozgush;Bozgush mountain range, East Azerbaijan Province;East Azerbaijan, Iran
San Jacinto Peak;3302;California, US
Didi Abuli;3301;Georgia
Silberhorn (New Zealand);Silberhorn;3300;Southern Alps, New Zealand
Bivouac Peak;3299;Teton Range, Wyoming
Mount Wilbur (Alaska);Mount Wilbur;3298;Fairweather Range, Alaska, US
Monte Argentera;3297;Maritime Alps, Italy
Mount Rose (Nevada);3287;Carson Range, Nevada
Mount Samsari;3285;Abul-Samsari Range, Georgia
Roche Chevrière;3281;Vanoise massif, France
Habicht;3277;Stubai Alps, Austria
Thompson Peak (Idaho);Thompson Peak;3277;Idaho, US
Mount Chephren;3266;Canadian Rockies
Pointe de Thorens;3266;Vanoise massif, France
Mount Cramer;3266;Idaho, US
Toussidé;3265;Tibesti Mountains, Chad-Libya
Antelao;3264;Dolomites, Italy
Mont Pelve;3261;Vanoise massif, France
Mount Stanley Baldwin;3256;Columbia Mountains, B.C., Canada
Sandia Mountains;Sandia Crest;3255;New Mexico, US
Épaule du Bouchet;3250;Vanoise massif, France
Mount Smythe (Alberta);Mount Smythe;3246;Canadian Rockies
Wildstrubel;3243;Bernese Alps, Switzerland
Williams Peak (Idaho);Williams Peak;3242;Idaho, US
Mount Hope (Eternity Range);Mount Hope;3239;Highest British mountain, British Antarctic Territory
Titlis;3238;Bernese Alps, Switzerland
Owl Peak;3235;Teton Range, Wyoming
Mount Mackenzie King;3234;Cariboo Mountains, B.C., Canada
Pointe des Buffettes;3233;Vanoise massif, France
Lisenser Spitze;3230;Stubai Alps, Austria
Mount Terror (Antarctica);Mount Terror;3230;Antarctica
Aiguille Rouge;3227;Vanoise massif, France
Monte Civetta;3220;Dolomites, Italy
Symmetry Spire;3219;Teton Range, Wyoming
Glacier Peak;3213;Washington, US
Pointe du Dard;3212;Vanoise massif, France
Mount Binalud;3211;Alborz, Iran
Pointe de la Réchasse;3206;Vanoise massif, France
Mount Jefferson (Madison County, Montana);Mount Jefferson;3204;Montana, US
Mount Jefferson (Oregon);Mount Jefferson;3199;Cascade Range, Oregon, US
Dreiländerspitze;3197;Silvretta, Austria-Switzerland
Mount Kita;3193;Akaishi Mountains, Japan
Mount Hotaka (Nagano, Gifu);Mount Hotaka;3190;Hida Mountains, Japan
Mount Cleveland (Montana);Mount Cleveland;3190;Montana, US
Ainodake;3189;Akaishi Mountains, Japan
Lassen Peak;3189;California, US
Mount Galatea;3185;Kananaskis Range, Alberta, Canada
Rendezvous Mountain;3185;Teton Range, Wyoming, US
Saviers Peak;3182;Idaho, US
Mount Yari;3180;Hida Mountains, Japan
Kendrick Peak;3178;San Francisco Peaks, USA
Kendrick Peak;3178;San Francisco Peaks, USA
Parícutin;3170;Mexico
Mount Aylmer;3162;Canadian Rockies
Three Sisters (Oregon);South Sister;3157;Cascade Range, Oregon, US
Stanley Peak (Ball Range);Stanley Peak;3155;Ball Range, Canadian Rockies
Jøkulkyrkja;3148;Antarctica
Pica d'Estats;3143;Spanish–French border, Pyrenees
Phan Xi Păng;3143;Sa pa, Vietnam
Mount Warusawa;Mount Arakawa;3141;Akaishi Mountains, Japan
Gray Peak (Wyoming);Gray Peak;3140;Yellowstone National Park, Wyoming, US
Mount Heyburn;3139;Idaho, US
Mount Washburn;3122;Yellowstone National Park, Wyoming, US
Mount Collie;3116;Canadian Rockies
Mount Siple;3110;Antarctica
Pirchinassi;3110;Muzaffarabad Azad Kashmir
Mount Redoubt (Alaska);Mount Redoubt;3108;Alaska, US
Mount Babel (Alberta);Mount Babel;3101;Bow Range, Alberta, Canada
Mount Emei;3099;China
Pico Duarte;3098;Dominican Republic
Picacho del Diablo (Baja California);Picacho del Diablo;3096;Baja California, Mexico
Trapper Peak (Montana);Trapper Peak;3096;Montana, US
Storm Mountain (Misty Range);Storm Mountain;3095;Canadian Rockies
Mount Blackmore;3094;Montana, US
Mount Stimson;3091;Montana, US
Mol Len;3088; Patkai Range, Nagaland-India/Burma<http://www.peaklist.org/WWlists/ultras/burma.html>
Qurnat as Sawdā’;3088;Lebanon
Mount Richardson (Alberta);Mount Richardson;3086;Canadian Rockies
Kintla Peak;3079;Livingston Range, Montana, US
Mount Moulton;3078;Antarctica
Smoky Dome;3077;Idaho, US
Three Sisters (Oregon);North Sister;3074;Cascade Range, Oregon, US
Piton des Neiges;3069;Réunion, France
Mount San Antonio;3068;San Gabriel Mountains, California, US
Mount Ontake;3067;Japan
Mount Jackson (Montana);Mount Jackson;3064;Lewis Range, Montana, US
Three Sisters (Oregon);Middle Sister;3062;Cascade Range, Oregon, US
Mount Wutai;3061;Shanxi, China
Mount Nyamuragira;3058;Democratic Republic of the Congo
Haleakala;3057;Hawaii, US
Crowfoot Mountain (Alberta);Crowfoot Mountain;3055;Canadian Rockies
Mount Chester;3054;Canadian Rockies
Mount Siyeh;3052;Montana, US
Mount Merritt;3049;Montana, US
Cerro de Coxóm;3045;Guatemala
Parseierspitze;3036;Austria
Mount Senjō (Akaishi);Mount Senjō;3033;Akaishi Mountains, Japan
Mount Aspiring/Tititea;3033;New Zealand
Kinnerly Peak;3031;Montana, US
Mount Agung;3031;Bali, Indonesia
Mount McArthur (British Columbia);Mount McArthur;3021;Canadian Rockies
Mount Norikura;3026;Hida Mountains, Japan
Tsiteli Khati;3026;Kharuli Range, Georgia
Mount Tate;3015;Hida Mountains, Japan
Mount Tahat;3003;Algeria;Highest
Sapitwa;3002;Mulanje Massif, Malawi
Ben Macdhui (South Africa);Ben Macdhui;3001;Eastern Cape, South Africa
The Fortress (Alberta);The Fortress;3000;Canadian Rockies

Tre Cime di Lavaredo;2999;Province of Belluno, Italy
Pizzo Centrale;2999;Switzerland
Cascade Mountain (Alberta);Cascade Mountain;2998;Vermilion Range, Canadian Rockies, Canada
Copahue;2997;Andes, Argentina/Chile
Mount Girouard;2985;Fairholme Range, Canadian Rockies, Canada
Pico da Neblina;2994;Serra do Imeri, Amazonas, Brazil;Highest
Mount Whyte;2983;Bow Range, Canadian Rockies, Canada
Miranjani;2980;Pakistan
Forellen Peak;2979;Teton Range, Wyoming, US
Mount Andrus;2978;Ames Range, Antarctica
Mount Niblock;2976;Bow Range, Canadian Rockies, Canada
Pico 31 de Março;2973;Serra do Imeri, Amazonas, Brazil
Keele Peak;2972;Mackenzie Mountains, Yukon, Canada
Mount Odin (British Columbia);Mount Odin;2970;Monashee Mountains, B.C., Canada
Schilthorn;2970;Bernese Alps, Switzerland
Mount Tallac;2968;Sierra Nevada, California, US
Steens Mountain;2968;Isolated peak in Southeastern Oregon
Mount Inglismaldie;2964;Fairholme Range, Canadian Rockies, Canada
Mount Ramelau;2963;Highest in East Timor
Zugspitze;2962;Germany;Highest
Slide Mountain (Nevada);2957;Carson Range, Nevada
Little Alberta;2956;Sir Winston Churchill Range, Canadian Rockies, Canada
Mount Arfak;2955;Arfak Mountains, West Papua (province);West Papua, Indonesia
Iron Mountain (Idaho);Iron Mountain;2955;Soldier Mountains, Idaho, US
Mount Apo;Apo;2954;Philippines;Highest
Fossil Mountain (Alberta);Fossil Mountain;2946;Banff NP, Alberta, Canada
Coma Pedrosa;2942;Pyrenees, Andorra;Highest
Going to the Sun Mountain;2939;Lewis Range, Montana, US
Fishers Peak;2936;Raton Mesas, Colorado-New Mexico, US
Pilot Mountain (Alberta);Pilot Mountain;2935;Massive Range, Canadian Rockies, Canada
Uri Rotstock;2928;Switzerland
Musala;2925;Rila Mountain, Bulgaria;Highest
Mount Pulag;2926;Philippines
Mount Olympus;2917;Thessaly/Macedonia, Greece;Highest
Vihren;2914;Pirin Mountain, Bulgaria
Mount Gould (Montana);Mount Gould;2912;Montana, US
Corno Grande;2912;Abruzzo, Italy
Mount Blakiston;2910;Flathead Range, Canadian Rockies, Canada
Puigmal;2909;Spanish–French border, Pyrenees
Kutelo;2908;Pirin Mountain, Bulgaria
Chutine Peak;2903;Coast Range, British Columbia, Canada
Malka Musala;2902;Rila Mountain, Bulgaria
Rising Wolf Mountain;2900;Lewis Range, Montana, US
Bonanza Peak (Washington);Bonanza Peak;2899;Cascade Range, Washington, US
Mount McLoughlin;2894;Mount McLoughlin, Oregon, US
Pic de Sanfonts;2894;Pyrenees, Andorra
Pico da Bandeira;2892;Serra do Caparaó, Minas Gerais/Espírito Santo, Brazil
Collarada;2886;Pyrenees, Spain
Banski Suhodol;2884;Pirin Mountain, Bulgaria
Boardman Peak;2882;Soldier Mountains, Idaho, US
Mount Wrightson;2882;Santa Rita Mountains, Arizona, US
Lembert Dome;2880;California, US
Sacajawea Peak;2876;Wallowa Mountains, Oregon, US
Mount Stuart;2869;Cascades, Washington, US
Mount Fisht;2867;Adygea, Russia
Mount Silverthrone;2865;British Columbia, Canada
Mount Baden-Powell;2864.75;San Gabriel Mountain, California, US
Triglav;2864;Slovenia;Highest
Mount Saint Nicholas;2858;Montana, US
Irechek;2852;Rila Mountain, Bulgaria
Polezhan;2851;Pirin Mountain, Bulgaria
Mount Tabayoc;2842;Cordillera Range, Benguet, Philippines
Mount Wilbur (Montana);Mount Wilbur;2841;Montana, US
Pico do Fogo;2829;Cape Verde;Highest
Kamenitsa Peak (Pirin);Kamenitsa;2822;Pirin Mountain, Bulgaria
Mount Fernow;2819;Washington, US
Mount Hermon;2814;Syria and Lebanon; a subpeak on its southern slopes is within the Israeli-occupied Golan Heights region
Mount Deakin;2810;Antarctica
Mount Cory (Alberta);Mount Cory;2802;Alberta, Canada
Mount Thielsen;2799;Cascades, Oregon, US
Pedra da Mina;2798;Serra da Mantiqueira, Minas Gerais/São Paulo, Brazil
Mount Ruapehu;2797;Tongariro National Park, North Island, New Zealand
Copper Mountain (Alberta);Copper Mountain;2795;Alberta, Canada
Mount Lemmon;2795;Santa Catalina Mountains, Arizona, US
Maiella;2793;Abruzzo, Italy
Pico das Agulhas Negras;2792;Serra do Itatiaia, Minas Gerais/Rio de Janeiro, Brazil
Deno (Rila);Deno;2790;Rila Mountain, Bulgaria
Hayes Volcano;2788;Alaska, US
Mount Edziza;2787;British Columbia, Canada
Canigou;2784;Pyrenees, France
Mount Weaver;2780;Antarctica
Buckner Mountain;2778;Washington, US
Mount Longonot;2776;Great Rift Valley, Kenya
Seven Fingered Jack;2774;Washington, US
Mount Nirvana;2773;Northwest Territories, Canada
Chief Mountain;2768;Montana, US
Lincoln Peak (Washington);Lincoln Peak;2768;Washington, US
Castle Mountain;2766;Canadian Rockies, Canada
Pyramid Mountain (Alberta);Pyramid Mountain;2766;Canadian Rockies, Canada
El_Ávila_National_Park;Pico Naiguata (Avila);2765;Caracas, Venezuela
Mount Bachelor;2764;Formerly Bachelor Butte, Cascade Mountains, Oregon, US
Mount Korab;2764;North Macedonia & Albania;Highest
Yalovarnika;2763;Pirin Mountain, Bulgaria
Gazey;2761;Pirin Mountain, Bulgaria
Mount Sir James MacBrien;2759;Canada
Kaymakchal;2753;Pirin Mountain, Bulgaria
Mount Olympus (Utah);Mount Olympus;2751;Utah, US
Todorka;2746;Pirin Mountain, Bulgaria
Mawson Peak;2745;Highest in Australian Antarctic Territory
Fairview Mountain (Alberta);Fairview Mountain;2744;Bow Range, Canadian Rockies, Canada
Mount Baekdu;2744;North Korea/China Highest in North Korea
Škrlatica;2740;Julian Alps, Slovenia
Monte Roraima;2739;Serra de Pacaraima, Roraima, Brazil
Heavens Peak;2739;Montana, US
Mount Spickard;2737;North Cascades, US
Banderishki Chukar;2732;Pirin Mountain, Bulgaria
Mount Melbourne;2732;Antarctica
Cerro El Pital;2730;El Salvador;Highest
Mount Redoubt (Washington);Mount Redoubt;2730;Washington, US
Dzhengal;2730; Pirin Mountain, Bulgaria
Malyovitsa;2729; Rila Mountain, Bulgaria
Pizzo di Claro;2727;Ticino, Switzerland
Mount Morning;2723;Antarctica
Phu Xai Lai Leng;2720;Laos
Serles;2718;Stubai Alps, Austria
Watzmann;2713;Bavarian Alps, Germany
Boston Peak;2711;Washington, US
Schiahorn;2709;Switzerland
Grotto Mountain;2706;Canadian Rockies, Canada
Mount Haku;2702;Ryōhaku Mountains, Japan
Eldorado Peak;2701;Washington, US
Anamudi;Anaimudi;2695;Kerala, India;Highest in Western ghats;Western Ghats, India
Maja Jezerce;2694;Highest in Dinaric Alps, Albania
Half Dome;2693;Sierra Nevada, California, US
Mount Louis;2682;Alberta, Canada
Mount Discovery;2681;Antarctica
Pic de la Selle;2680;Haiti
Mount Garibaldi;2678;British Columbia, Canada
Bashliyski Chukar;2670;Pirin Mountain, Bulgaria
Pedra do Sino;2670;Serra dos Órgãos, Rio de Janeiro, Brazil
Guadalupe Peak;2667;Guadalupe Mountains, Texas;Highest in Texas
Gjeravica;2656;Accursed Mountains, Kosovo;Highest in Kosovo
Großer Krottenkopf;2656;Allgäu Alps, Tyrol, Austria
Pic del Port Vell;2655;Pyrenees, Andorra
Gerlachov Peak;2655;High Tatras, Slovakia
Mount Michelson (Chugach Mountains);Mount Michelson;2652;Chugach Mountains, Alaska, US
Torre Cerredo;2650;Picos de Europa, Spain;Highest in Picos de Europa
Mount St. Piran;2649;Bow Range, Alberta, Canada
Mount Meager (British Columbia);Mount Meager;2645;British Columbia, Canada
Mount Trus Madi;2642;Trus Madi Range, Sabah, Malaysia;No. 2 in Malaysia
Meesapulimala;2640;Tamil Nadu/Kerela, India
Doddabetta;2637;Tamil Nadu, India
Piton de la Fournaise;2631;Réunion
Mount Crean;2630;Victoria Land
Cardinal Peak;2618;Washington, US
Barbeau Peak;2616;Nunavut, Canada;Highest in Nunavut
Baba Mountain (North Macedonia);Pelister Peak;2601;North Macedonia
Mount Abao;2596;Philippines
Pico Almanzor;2592;Spain
Mount Currie (British Columbia);Mount Currie;2591;BC, Canada
Pizzo Molare;2585;Ticino, Switzerland
Mount Tavkvetili;2583;Georgia
Mount Tambuyukon;2579;Sabah, Malaysia
Argonaut Peak;2576;Washington, US
Doi Inthanon;2565;Thailand;Highest in Thailand
Pic dels Aspres;2562;Pyrenees, Andorra
Ledyanaya;2562;Russia;Highest of the Koryak Mountains
Aguja Saint Exupery;2558;Argentina
Mount St. Helens;2550;Washington, US
Big Hatchet Peak;2547;New Mexico, US
Moldoveanu Peak;2544;Romania
Mount Vineuo;2536;Papua New Guinea
Negoiu Peak;2535;Romania
Vistea Mare;2527;Romania
Pidurutalagala;2524;Sri Lanka
Mount Norquay;2522;Canadian Rockies, Canada
Hualalai;2521;Hawaii, US
Mount Yesenin;2520;Antarctica
Parangu Mare;2519;Romania
Mount Taranaki/Egmont;2518;New Zealand
Garfield Peak (Wyoming);Garfield Peak;2512;Wyoming, US
Mount Joern;2510;Antarctica
Mount Veniaminof;2507;Alaska, US
Omu Peak;2505;Romania
Rysy;2503;Tatra Mountains;Tatras, Poland/Slovakia
Mount Tymfi;2497;Pindus, Greece
Monte Velino;2487;Abruzzo Italy
Monte Vettore;2476;Abruzzo Italy
Špik;2472;Julian Alps, Slovenia
Luna Peak (British Columbia);Luna Peak;2470;British Columbia, Canada
Galdhøpiggen;2469;Norway;Highest
Kanlaon;2465;Negros Occidental and Negros Oriental, Philippines
Glittertind;2464;Norway
El Capitan (Texas);El Capitan;2464;Texas, US
Shimbiris;2464;Somalia
Mayon;2463;Albay, Philippines
Monte Gorzano;2458;Abruzzo Italy
Mount Ida (Crete);Mount Psiloritis;2456;Crete, Greece
Lefka Ori;Mount Pachnes (Lefka Ori);2453;Crete, Greece
Sulphur Mountain (Alberta);Sulphur Mountain;2451;Canadian Rockies, Canada
Sunset Crater;2451;Arizona, US
Cima del Redentore (Sibillini Mountains);2448;Marche–Umbria, Italy
Triple Divide Peak (Montana);Triple Divide Peak;2444;Montana, US
Blackcomb Peak;2436;Whistler BC, Canada
Monte Binga;2436;Manica, Mozambique
Mount Olympus (Washington);Mount Olympus;2432;Washington, US
Peñalara;2430;Spain
Mesa de los Tres Reyes;2428;Navarre, Spain;Highest point in Navarre
Roque de los Muchachos;2426;La Palma, Spain
Mount Daniel;2426;Washington, US
Mount Murud;2423;Kelabit Highlands, Sarawak, Malaysia;Highest mountain in Sarawak
Mocho-Choshuenco;Mocho;2422;Los Ríos Region, Chile
Mocho-Choshuenco;Choshuenco;2415;Los Ríos Region, Chile
Ha Ling Peak;2408;Canadian Rockies, Alberta, Canada
Store Skagastølstind;2405;Norway
Hajla;2403;Kosovo
Le Tabor;2389;Dauphine Alps, France
Kirigalpottha;2388;Sri Lanka
Maglić (mountain);Maglić;2386;Bosnia and Herzegovina;Highest in Bosnia and Herzegovina
Emory Peak;2385;Texas, US
Mount Cayley;2385;British Columbia, Canada
Mount Galwey;2377;Canadian Rockies, Canada
Botev Peak;2376;Balkan Mountain, Bulgaria
Mount Mulu;2376;Gunung Mulu National Park, Sarawak, Malaysia
Mount Deception (Washington);Mount Deception;2374;Washington, US
Mount Aix;2367;Washington, US
Mount Karthala;2361;Comoros, Indian Ocean
Signal Mountain (Wyoming);Signal Mountain;2353;Wyoming, US
Mount Pico;2351;Azores, Portugal;Highest in Portugal
Grimming;2351;Styria, Austria;Highest monolith in Europe
Monte Sirente;2347;Abruzzo, Italy
Mount Blum;2340;North Cascades, Washington State, US
Mount Popomanaseu;2335;Guadalcanal, Solomon Islands;Highest in Solomon Islands
Monte Priora;2333;Marche Italy
Mount Prophet;2330;North Cascades
Mount Griggs;2317;Alaska, US
Mount Makarakomburu;2310;Guadalcanal, Solomon Islands
Lalla Khedidja;2308;Djurdjura Mountains, Algeria
Lavender Peak (British Columbia);Lavender Peak;2306;British Columbia, Canada
Mount Sir Allan MacNab;2297;Premier Range, British Columbia, Canada
Murree;2291;Rawalpindi, Pakistan
Cherni Vrah;2290;Vitosha Mountain, Bulgaria
Druesberg;2282;Alps, Switzerland
Ineu Peak;2279;Rodnei Mountains, Romanian Carpathian Mountains, Romania
Mount Huye;2278;Rwanda
Bikku Bitti;2267;Libya;Second highest in country
Blue Mountains (Jamaica);Blue Mountains;2256;Jamaica;Highest in Country
Mount Dietz;2250;Antarctica
Adam's Peak;Sri Pada Mountain;2243;Sri Lanka
Mount John Laurie;2240;Canadian Rockies, Alberta, Canada
Red Butte;2232;Arizona, US
Čvrsnica;2228;Herzegovina, BiH
Mount Kosciuszko;2228;Snowy Mountains, New South Wales, Australia;Highest on mainland
Camoghe;2228;Ticino, Switzerland
Commonwealth Mountain;2225;Nunavut, Canada
Mount Chiginagak;2221;Alaska, US
Monte Terminillo;2217;Lazio, Italy
Slavyanka (mountain);Slavyanka;2212;Pirin Mountain, Bulgaria
Mount Oxford (Nunavut);2210;Nunavut, Canada
Mount Townsend (Snowy Mountains);Mount Townsend;2209;Snowy Mountains, New South Wales, Australia;Second-highest on mainland
Black Elk Peak;2207;South Dakota, US;Highest in state
Golden Hinde (British Columbia);Golden Hinde;2198;#1 on Vancouver Island, British Columbia, Canada
Mount Twynam;2196;Snowy Mountains, New South Wales, Australia;Third-highest on mainland
Elkhorn Mountain;2195;Vancouver Island, British Columbia, Canada
Mount Baldy (Alberta);Mount Baldy;2192;Alberta, Canada
Golyam Perelik;2191;Rhodope Mountains, Bulgaria
Shiprock;2188;New Mexico, US
Mount Tahan;2187;Tahan Range, Pahang, Malaysia;Highest in Peninsular Malaysia
Mount Korbu;2183;Titiwangsa Mountains, Perak, Malaysia
Mount Yong Belar;2180;Perak, Malaysia
Doi Chiang Dao;2175;Thailand
Galunggung;2168;Java
Levski Peak (Bulgaria);Levski Peak;2166;Balkan Mountain, Bulgaria
Monte Cimone;2165;Emilia-Romagna, Italy
Mount Hua;2155;Shaanxi, China
Mount Zulia;2149;Uganda
Carruthers Peak;2145;Snowy Mountains, New South Wales, Australia
Crna Glava;2139;Bjelasica, Montenegro
Mount Colonel Foster;2135;Vancouver Island, British Columbia, Canada
Roche à Perdrix;2135;Fiddle Range, Canadian Rockies, Canada
Kodaikanal;2133;Tamil Nadu, India
Pilatus (mountain);Pilatus;2132;Switzerland
Strmenica;2122;Bjelasica, Montenegro
Phu Soi Dao;2120;Thailand/Laos
Eagle Peak (Alaska);Eagle Peak;2119;Alaska, US
Öræfajökull;2110;Iceland
Mount Benum;2107;Malaysia
Mogotón;2107;Nicaragua;Highest in Nicaragua
Kebnekaise;2106;Sweden
Rambler Peak;2092;Vancouver Island, British Columbia, Canada
Mount McBride;2083;Vancouver Island, British Columbia, Canada
Phou Khe;2079;Thailand/Laos
Schneeberg (Alps);Schneeberg;2076;Northern Limestone Alps, Austria
Mount Tate (New South Wales);Mount Tate;2068;Snowy Mountains, New South Wales, Australia
Bjelašnica;2067;Sarajevo Canton, Bosnia and Herzegovina
Kings Peak (British Columbia);Kings Peak;2065;Vancouver Island, British Columbia, Canada
Hoverla;2061;Ukraine;Highest
Monte Miletto;2050;Molise, Italy
Lytton Mountain;2049;British Columbia, Canada
Mount Katmai;2047;Alaska, US
Mount Dimlang;2042;Adamawa, Nigeria
Mount Celeste;2041;Vancouver Island, British Columbia, Canada
Mount Mitchell;2037;Yancey County, North Carolina, US<br>Highest peak of the Appalachian Mountains<br>Highest peak in mainland eastern North America
Namunukula;2035;Sri Lanka
Pico do Barbado;2033;Bahia, Brazil;Highest point in Bahia
Mount Batu Brinchang;2032;Cameron Highlands, Pahang/Perak, Malaysia
Doi Mae Tho;2031;Thailand
Clingmans Dome;2025;Great Smoky Mountains, Tennessee, US
Mount Heng (Shanxi);2017;Shanxi, China
Kopaonik;2017;Pančić's Peak, Serbia
Alpe di Succiso;2017;Province of Reggio Emilia Italy
Kom Peak;Kom;2016;Balkan Mountain, Bulgaria
Polar Bear Peak;2016;Chugach Mountains, Alaska, US
Mount Asgard;2015;Baffin Mountains, Nunavut, Canada
Mount Le Conte (Tennessee);Mount Le Conte;2010;Great Smoky Mountains, Tennessee, US

Serra da Estrela;1993;Portugal
Mount Bogong;1986;Australia;Highest in Victoria
Mount Ishizuchi;1982;Japan;Tallest in Western Japan
Doi Phu Kha;1980;Luang Prabang Range, Thailand
Pizzo Carbonara;1979;Province of Palermo Sicily
Topo de Coroa;1979;Cape Verde
Mount Tongariro;1978;New Zealand
Iceberg Peak;1977;Vancouver Island, British Columbia, Canada
Pico Turquino;1975;Cuba;Highest point
El Piveto Mountain;1969;Vancouver Island, British Columbia, Canada
Qiajivik Mountain;1963;Baffin Island, Nunavut, Canada
Monte Tamaro;1962;Ticino, Switzerland
Montalto (Aspromonte);1955;Calabria, Italy
Ciucas Peak;1954;Romania
Chionistra;1952;Cyprus
Hallasan;1950;Jejudo, South Korea;Highest mountain in South Korea
Pico de las Nieves;1949;Gran Canaria. Spain
Jabal Bil Ays;1934;Oman
Mullayanagiri;1930;Chikmagalur, Karnataka, India
Helvetia Tinde;1929;Roosevelt Range;Highest peak in Peary Land, Northern Greenland
Botte Donato;1928;Sila Mountains, Calabria, Italy
Mount Kirigamine;1925;Japan
Mount Washington (New Hampshire);Mount Washington;1917;Presidential Range, White Mountains (New Hampshire);White Mtns., Appalachian Mountains, Geography of United States;US;Highest in American Northeast
Mount Jiri;1915;South Korea
Troglav (Bosnia and Herzegovina);Troglav;1913;Highest peak of mountain Dinara, Bosnia and Herzegovina
Mont Ventoux;1909;France
Vesper Peak;1896;Washington, US
Baba Budangiri;1895;Chikmagalur, Karnataka, India
Mount Narodnaya;1895;Subpolar Urals, Russia
Kudremukh;1894;Chikmagalur, Karnataka, India
Orjen;1894;Montenegro, Bosnia and Herzegovina
Iskhodnaya;1887;Russia;Highest of the Chukotka Mountains
Mount George V;1883;Vancouver Island, British Columbia, Canada
Rugged Mountain;1875;Vancouver Island, British Columbia, Canada
Agastya Mala;1868;Tamil Nadu/Kerala, India
Trident Volcano;1864;Alaska, US
Mount Martin (Alaska);Mount Martin;1863;Alaska, US
Knuckles Mountain Range;Knuckles;1862;Sri Lanka
Pico Ruivo;1861;Madeira, Portugal
Pico das Torres;1853;Madeira, Portugal
Mont Ross;1850;Gallieni Massif, Kerguelen Islands
Cucurbata Mare;1849;Romania
Crown Mountain (Vancouver Island, British Columbia);Crown Mountain;1846;Vancouver Island, British Columbia, Canada
Loser (mountain);Loser;1838;Austria
Punta La Marmora;1834;Sardinia
Cerro La Campana;1828;Olmue, Chile
Gora Nevskaya;1828;Magadan Oblast, Russia;Highest of the Kolyma Mountains
Cerro de la Silla;1820;Mexico
Pico do Arieiro;1818;Madeira, Portugal
Roque Nublo;1813;Gran Canaria, Spain
Biligiriranga Hills;1800;Chamarajanagar, Karnataka, India
Monte Maggiorasca;1799;liguria - Emilia-Romagna Italy
Rigi;1797;Swiss Alps
Goru;1784;Romania
Blokhin Peak;1779;Chukotka Autonomous Okrug;Chukotka, Russian Federation;Highest in Anyuy Range
Velliangiri Mountains;1778;Coimbatore, Tamil Nadu, India 
Penteleu;1772;Romania
Mount Veve;1768;Kolombangara, Solomon Islands
Mount Adams (New Hampshire);Mount Adams;1766;New Hampshire, US
Pik Sovetskoy Gvardii;1759;Chukotka Autonomous Okrug;Chukotka, Russian Federation
Mount Api;1750;Gunung Mulu National Park, Sarawak, Malaysia
Lovćen;1749;Montenegro
Tadiandamol;1748;Kodagu, Karnataka, India
Mount Rogers (Virginia);Mount Rogers;1746;Virginia, US;Highest point in state
Doi Phi Pan Nam;1745;Luang Prabang Range, Thailand
Mount Wilson (California);Mount Wilson;1742;California, US
Mount Jefferson (New Hampshire);Mount Jefferson;1741;New Hampshire, US
Monte Amiata;1738;Province of Grosseto Italy
Daisen (mountain);Daisen;1729;Japan
The Horn (Mount Buffalo);1723;Victoria, Australia
Mount Batur;1717;Bali, Indonesia
Kumara Parvata;1712;Dakshina Kannada, Karnataka, India
Pushpagiri, Karnataka;Pushpagiri;1712;Pushpagiri Wildlife Sanctuary, Karnataka, India
Mount Lowe (California);Mount Lowe;1707;San Gabriel Mountains, California, US
Boulder Peak (Washington);Boulder Peak;1707;Olympic Mountains, Washington, US
Doi Luang, Phi Pan Nam Range;Doi Luang;1694;Thailand;Highest in the Phi Pan Nam Range
Mitre Peak (New Zealand);Mitre Peak;1692;New Zealand
Arma Konda;1680;India;Highest in Andhra Pradesh
Deomali (mountain);Deomali;1672;India;Highest in Odisha
Mount Caubvick;1652;Torngat Mountains, Canada
Kalsubai;1646;India;Highest in Maharashtra State
Peak 5390;1643;Alaska, US
Yamantau;1640;Southern Urals, Russia
Mount Monroe;1637;New Hampshire, US
Mount Madison;1636;New Hampshire, US
Mount Krebs;1630;Antarctica
Mount Marcy (New York);Mount Marcy;1629;New York, US
Trebević;1627;Bosnia and Herzegovina
Mount Bartle Frere;1622;Queensland, Australia;Highest in QLD=
Rocca Busambra;1613;Province of Palermo Sicily
Velky Rozsutec ;1610;Mala Fatra, Slovakia
Brahmagiri (hill);Brahmagiri;1608;Kodagu, Karnataka, India
Mount Katahdin;1606;Maine, US
Sněžka;1602;Krkonoše, Czech Republic;Highest in Czech Republic
Sirumalai;1600;Tamil Nadu India
Mount Lafayette;1600;New Hampshire, US
Mount Washington (British Columbia);1590;Vancouver Island, British Columbia, Canada
Mount Benarat;1585;Gunung Mulu National Park, Sarawak, Malaysia
Wai'ale'ale;1569;Kauai, Hawaii, US
Salher;1567;Maharashtra, India
Cirque Mountain;1567;Labrador, Canada
Algonquin Peak;1559;New York, US
Mount Lincoln (New Hampshire);Mount Lincoln;1551;New Hampshire, US
Superstition Mountain;1542;Arizona, US
Mount Tai;1532;Shandong, China
Jabel Yibir;1527;United Arab Emirates
Madikeri;1525;Kodagu, Karnataka, India
Mount Popa;1518;Myanmar
Askja;1516;Iceland
Monte Boglia;1516;Ticino, Switzerland
Mount Song;Song Shan;1512;Henan, China
Mount Haystack;1512;New York, US
Pico de Malpaso;1501;El Hierro, Spain
Mount Skylight;1501;New York, US
Javaleon;1494;Spain
Mount Nuang;1491;Titiwangsa Mountains, Malaysia
Hekla;1491;Iceland
Alto de Garanjonay;1487;La Gomera, Spain
Mount Pinatubo;1486;Luzon, Philippines
Whiteface Mountain;1483.462;New York, US
Spruce Knob;1482;West Virginia, US
Dix Mountain;1480;New York, US
Gray Peak (New York);1475;New York, US
Iroquois Peak;1475;New York, US
Lyaskovets Peak;1473;Antarctica
Mount Olympus (Tasmania);Mount Olympus;1471;Tasmania, Australia
Basin Mountain (New York);1471;New York, US
La Grande Soufrière;1467;Guadeloupe, France
Monte Penice;1460;Lombardy – Emilia-Romagna, Italy
Mount Seymour;1455;British Columbia, Canada
Himavad Gopalaswamy Betta;1450;Chamarajanagar, Karnataka, India
Snæfellsjökull;1446;Iceland
Gothics;1444;New York, US
Mount Colden;1436.8;New York, US
Mount Kalourat;1435;Malaita, Solomon Islands
Ngarutjaranya;1435;Australia;Highest in South Australia
Cypress Mountain;1432;British Columbia, Canada
Taramati;1431;Maharashtra, India
Harishchandragad;1427;Maharashtra, India
Tukgahgo Mountain;1425;Alaska, US
Giant Mountain;1410.3;New York, US
Nippletop;1408.2;New York, US
Pikui;1408;Ukraine;Highest point in Lviv Oblast;Lvivshchyna
Santanoni Peak;1404.2;New York, US
Mount Redfield;1403.9;New York, US
Raireshwar;1398;Maharashtra, India
Wright Peak;1396;New York, US
Taburno Camposauro;1393;Campania Italy
Saddleback Mountain;1376.2;New York, US
Parasnath;1366;India;Highest in Jharkhand State
Panther Peak;1354;New York, US
Dhupgarh;1350;India;Highest in Madhya Pradesh
Table Top Mountain;1349.4;New York, US
Rocky Peak Ridge;1347.2;New York, US
Ben Nevis;1345;Scotland, United Kingdom;Highest in the United Kingdom
Kodachadri;1343;Shimoga, Karnataka, India
Macomb Mountain;1342.6;New York, US
Mount Jiuhua;1342;Anhui, China
Armstrong Mountain;1341.1;New York, US
Hough Peak;1341.1;New York, US
Mount Aniakchak;1341;Alaska, US
Mount Mansfield;1339;Green Mountains, Vermont, US;Highest in Vermont
Cerro de Punta;1338;Jayuya, Puerto Rico;Highest in Puerto Rico
Seward Mountain (New York);1329.2;New York, US
Mount Marshall;1329;New York, US
Allen Mountain (New York);1332.8;New York, US
Mount Bassie;1311;Alaska, US
Ben Macdui;1309;Scotland, United Kingdom
Mount Kanaga;1307;Alaska, US
Sinhagad;1303;Maharashtra, India
Mount Heng (Hunan);1300;Hunan, China
Braeriach;1296;Scotland, United Kingdom
Big Slide Mountain;1292.4;New York, US
Esther Mountain;1292.4;New York, US
Rajabasa;1281;Sumatra, Indonesia
Mount Vesuvius;1281;Italy
Upper Wolfjaw;1275.6;New York
Mount Ophir;1276;Titiwangsa Mountains, Johor, Malaysia
Bailadila;1276;India;Highest in Chhattisgarh State
Lower Wolfjaw;1272.5;New York, US
Mount Wellington (Tasmania);Mount Wellington;1271;Tasmania, Australia
Mount Si;1270;Washington, US
Street Mountain;1269.8;New York, US
Phelps Mountain;1268.3;New York, US
Mount Qingcheng;1260;Sichuan, China
Detunata;1258;Romania
Mount Donna Buang;1250;Victoria, Australia
Kīlauea;1247;Geography of Hawaii;Hawaii, Geography of United States;US
Camel's Hump (Vermont);Camel's Hump;1244;Vermont, US
Cannon Mountain (New Hampshire);Cannon Mountain;1240;New Hampshire, US
The Priest (mountain);The Priest;1238;Blue Ridge Mountains, Virginia, US
Aonach Beag;1234;Scotland, United Kingdom
Grouse Mountain;1231;British Columbia, Canada
Kaʻala;1220;Oahu, Hawaii, US
Mount Jerai;1217;Titiwangsa Mountains, Kedah, Malaysia
Mount Gozaisho;1212;Suzuka Mountains, Mie Prefecture, Japan
Mount Meron;1208;Galilee, Israel;Highest in Israel (inside the '67 borders)
Mount Fromme;1185;British Columbia, Canada
Doi Ian;1174;Phi Pan Nam Range, Thailand
Mount Diablo;1173;California, US
Mount Hombori;1155;Mali;Highest in Mali
Lochnagar;1155;Scotland
Bidean nam Bian;1150;Scotland
Monte Musinè;1150;Piedmont, Italy
Brocken;1141;Saxony-Anhalt, Germany;Highest mountain in the Harz; highest in Saxony-Anhalt
Victoria Peak (Belize);Victoria Peak;1120;Belize;2nd highest mountain in Belize
Gora Sovetskaya;1096;Wrangel Island, Chukotka, Russian Federation;Highest in Wrangel Island
Kayser Mountain;1094;Greenland
Mount Juneau;1090;Alaska, US
Roxy Ann Peak;1090;Oregon, US
Snowdon;1085;Gwynedd, Wales, United Kingdom;Highest in Wales
Table Mountain;1085;South Africa
Flattop Mountain (Alaska);Flattop Mountain;1070;Alaska, US
Uummannaq (mountain);Uummannaq;1070;Greenland
White Butte;1069;North Dakota, US;Highest in state
Hogback Mountain (Shenandoah National Park, Virginia);Hogback Mountain;1059;Virginia, US
Liathach;1055;Torridon, Scotland
Saka Haphong;1052;Bandarban, Bangladesh
Corrán Tuathail;1038;County Kerry, Ireland;Highest mountain in Ireland
Mount Ramon;1037;Negev, Palestine
Girnar;1031;Gujarat, India
Mount Zagora;1030;Morocco
Mount Nabi Yunis;1030;Hebron, Palestine
Buachaille Etive Mor;1022;Glen Etive, Scotland
Munboksan;1015;South Korea
Kékes;1014;Hungary;Highest mountain in Hungary
Mount Belumut;1010;Johor, Malaysia
Old Rag Mountain;1001;Virginia, US
Devil's Peak (Cape Town);Devil's Peak;1000;Cape Town, South Africa

Sgurr Dearg;986;Cuillin;Scotland
Mount Sizer;980;Diablo Range;US (California)
Mount Valin;980;Saguenay Lac St-Jean;Canada (Québec)
Hyangnosan;979;;Gyeongnam Province, South Korea
Scafell Pike;978;Southern Fells;England (Cumbria);Highest in England
Mount Edgecumbe (Alaska);Mount Edgecumbe;976;&nbsp;;US (Alaska)
Grand Bonhomme;973;;Saint Vincent and the Grenadines
North Mountain (Catskills);969;Catskill Escarpment;US (New York)
Doli Gutta;965;Deccan Plateau;India;Highest in Telangana State
Mount Monadnock;965;;US (New Hampshire);One of the most frequently climbed in the world
Mount Pirongia;959;Hakarimata Range;New Zealand
Tai Mo Shan;957;;Hong Kong;Highest in Hong Kong
Bays Mountain;Chimneytop ;950.1  ;Bays Mountain Range;Tennessee, US
Helvellyn;950;Eastern Fells;England (Cumbria)
Mount Gimie;950;;Saint Lucia;Highest point
El Cerro del Aripo;940;Northern Range;Trinidad and Tobago;Highest point
El Tucuche;936;Northern Range;Trinidad and Tobago
Lantau Peak;934;;Hong Kong
Betlingchhip;930;Jampui Hills;India;Highest in Tripura
Kaimondake volcano;924;;Kagoshima, Japan
Monte San Salvatore;San Salvatore;912;;Ticino, Switzerland
Mount Pantokrator;Pantokrator;906;;Greece (Corfu)
Edinburgh Peak;904;;Tristan Da Cunha, Atlantic Ocean
Cadair Idris;893;;Wales
Pen y Fan;886;;Wales
Baekunsan;885;;Ulsan, South Korea
Mount Gerizim;881;;West Bank
Sunset Peak (Hong Kong);Sunset Peak;869;;Hong Kong
Mahuli;858;;Thane District, Maharashtra, India
Mount Taylor (Australian Capital Territory);Mount Taylor;856;;Canberra, Australia
Slieve Donard;856;Mourne Mountains;County Down, Northern Ireland
Tinakula;851;Tinakula;Solomon Islands
Mount Saint Catherine (Grenada);Mount Saint Catherine;840;;Grenada;Highest point
Mount Magazine;839;Ozark Mountains;Arkansas, US
Hoemunsan;837;;North Jeolla Province, South Korea
Bukhansan (Baegundae Peak);836.5;;Seoul, South Korea
Piton de la Petite Rivière Noire;828;;Black River Mountain Range, Mauritius
Pieter Both (mountain);820;;Mauritius
Mount Carleton;817;Appalachian Mountains;Canada (New Brunswick)
The Cheviot;815;Cheviot Hills;England (Northumberland)
Le Pouce;811;;Mauritius
Mount Santubong;810;;Malaysia (Sarawak)
Pico de la Zarza;807;;Spain (Fuerteventura) 
Gros Morne, Newfoundland;Gros Morne;807;;Canada (Newfoundland) 
Clisham;799;;Harris, Western Isles, Scotland
Mount Tamalpais;792;California Coast Ranges;US (California)
Mission Peak;790;Diablo Range;US (California)
Gyemyeongsan;774;;North Chungcheong Province, South Korea
Mount Boucherie;758;;Canada (British Columbia)
Daeunsan;742;;South Korea
Mount Dobong;740;;South Korea
Mount Lofty;727;;South Australia
Ben Cleuch;721;;Scotland
Corps de Garde;720;;Mauritius
Gaseopsan;710;;North Chungcheong Province, South Korea
Mount Dick;705;;Auckland Islands, New Zealand
Pu‘u ‘Ō‘ō;698;;US (Hawaii)
Signal de Botrange;694;High Fens;Belgium (Liège);Highest in Belgium
Ishpatina Ridge;690;;Canada (Ontario)
Galgisan;685;;Gyeonggi Province and Gangwon Province, South Korea
Delphi;681;;Greece (Skopelos)
Qalorujoorneq;676;;Greenland
Penas del Chache;672;;Lanzarote, Spain
Lion's Head (Cape Town);Lion's Head;669;;Cape Town, South Africa
Steling;658;High Fens;Belgium
Maple Mountain (Ontario);Maple Mountain;642;;Canada (Ontario)
Kinder Scout;636;;Peak District, England;Highest in Peak District
Masaya Volcano;635;;Nicaragua
Mount D'Urville;630;;Auckland Islands, New Zealand
Moel Eilio;629;;Snowdonia, Wales
High Willhays;621;;England (Dartmoor)
Snaefell;621;;Isle of Man, British Isles
Beinn Mhòr (South Uist);Beinn Mhòr;620;;South Uist, Scotland
Mount Bibele;617;;Italy
Munsusan (Ulsan);600;;Ulsan, South Korea
Mount Takao;599;;Tokyo, Japan
Sikjangsan;596;;Daejeon, South Korea
Forbordsfjellet;590;;Nord-Trøndelag, Norway
Gwanggyosan;582;;Gyeonggi Province, South Korea
Mount Pond;576;;South Shetland Islands
Mount Tabor;575;;Galilee, Israel
Monte Conero;572;;Italy (Ancona)
Gyeryongsan (South Gyeongsang Province);Gyeryongsan;566;;South Gyeongsang Province, South Korea
Mount Honey;558;;Campbell Islands, New Zealand
Le Morne Brabant;555;;Mauritius
Rempart Mountain (Montagne du Rempart);545;;Mauritius
Palasip Qaqqaa (Præstefjeldet);544;;Qeqqata, Greenland
Namamsan;543;;Ulsan, South Korea
Taum Sauk Mountain;540;;Missouri, US
Great Mell Fell;537;Eastern Fells;England (Cumbria)
Geomdansan (Seongnam);534.7;;Gyeonggi Province, South Korea
Yeonhwasan (Ulsan);Yeonhwasan;532;;Ulsan, South Korea
Heukseongsan;519;;North Chungcheong Province, South Korea
Avala;511;;Serbia
Little Si;480;Cascade Range;Washington, US
Mount Ramsay;475;;Antarctica
Mount Keira;462;;New South Wales, Australia - near the city of Wollongong
Blue Mountain Formation;Blue Mountain;452;;Ontario, Canada
Muryongsan (Ulsan);452;;Ulsan, South Korea
Dongdaesan (Ulsan);447;;Ulsan, South Korea
Diamond Hill (Ireland);Diamond Hill;442;Connemara National Park;Ireland
Gibraltar;426;;Gibraltar
Pic Paradis;424;;Collectivity of Saint Martin;Saint Martin (France);Highest point
Havsula;415;;Svalbard, Norway
Storm King Mountain (New York);Storm King Mountain;408;Hudson Highlands;US (New York)
Gyeyangsan;395;;Incheon, South Korea
Mount Galloway;366;;Antipode Islands, New Zealand
Pawala Valley Ridge;347;;Pitcairn Islands, Pacific Ocean;Highest point
Loughrigg Fell;335;Central Fells;England (Cumbria)
Mount Kinka (Gifu);329;;Gifu, Japan
Vaalserberg;321;;Netherlands (Limburg)
Mount Bates;319;;Norfolk Island, Australia
Suur Munamägi;318;;Haanja, Estonia
Gaiziņkalns;312;;Latvia;Highest point in Latvia
Mutla Ridge;306;;Kuwait;Highest point
Aukštojas Hill;Aukštojas;293;;Medininkai, Lithuania
Kruopinė Hill;Kruopinė;293;;Vilnius, Lithuania
Juozapinė Hill;Juozapinė;292;;Vilnius, Lithuania
Morne du Vitet;286;;Saint Barthélemy (France);Highest point
Qixia Mountain;286;;Nanjing, China
Hwajangsan;285;;Ulsan, South Korea
Mount Putuo;Potolaka/Putuo Shan;284;;Zhejiang, China
Agujas Grandes;266;;La Graciosa, Spain
Jerimoth Hill;247;;Rhode Island, US
Mount Ngerchelchuus;242;;Babeldaob, Palau;Highest point
Mount Royal;233;;Quebec, Canada
Diamond Head, Hawaii;Diamond Head;232;;US (Hawaii)
Yeomposan;203;;Ulsan, South Korea
Hamwolsan;200;;Ulsan, South Korea

 */