class News{
  String type;
  String image;
  String time;
  String date;
  int viewNumber;
  String title;
  String content;
  News(this.type, this.image, this.time, this.date, this.viewNumber,this.title, this.content);

  static List<News> myNews = [
    News("Mahalliy, Avto", "https://s.daryo.uz/wp-content/uploads/2021/12/metrobus.jpg", "12:38", "15.12.2021", 230, "Urganchda alohida yo‘lakda harakatlanuvchi tezyurar avtobuslar yo‘lga qo‘yiladi", "Boshqa transportlardan to‘liq ozod qilingan tezkor avtobus yo‘nalishi tizimini yaratish uchun 1,221 milliard so‘m ajratiladi"),
    News("Avto", "https://s.daryo.uz/wp-content/uploads/2021/12/1-76.jpg", "23:14","09.12.2021", 12886, "O‘zbekistonda so‘nggi kunlarda sodir bo‘lgan YTHlarda 2 kishi vafot etdi, 3 kishi jarohat oldi","O‘zbekiston yo‘llarida sodir bo‘lgan hodisalar haqida batafsil ma’lumotlar taqdim etamiz. 15 yoshli bola boshqaruvidagi Cobalt Matiz bilan to‘qnashib yonib ketdi. 2021-yil 8-dekabr kuni taxminan soat 22:00 da Shifo nur va Talabalar ko‘chalari kesishmasida Cobalt avtomobilini tegishli huquqsiz boshqargan 15 yoshli A.M. qarama-qarshi harakat yo‘liga chiqib, 33 yoshli R.I. boshqaruvidagi Matiz avtomobiliga to‘qnashgan."),
    News("Foto, Shou-biznes", "https://s.daryo.uz/wp-content/uploads/2021/12/244789942_393871058897164_4651092545314125293_n.jpg", "17:39", "14.12.2021", 101672, "BMW X7, Toyota Prado, Hongqi: O‘zbek shou-biznesi vakillari qanday avtomobillarni boshqaradi? (foto)","Mashina nafaqat uzoqni yaqin qilish, balki atrofdagilarda yaxshi taassurot qoldirish va shaxs imijini yaratishga ham xizmat qiladi. “Daryo” muxbiri Nargiza Murodova ayrim o‘zbek shou-biznesi vakillarining qanday rusumdagi avtomobillarni boshqarishini aniqladi.")
  ];
}