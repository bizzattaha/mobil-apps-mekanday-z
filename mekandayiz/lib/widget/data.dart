final people = [
  {
    "id": 1,
    "name": "Sare Küçükyeğen",
    "LastMsg": "Yarın müsaitmisin buluşalım mı ? Kadıköye gidelim ?",
    "avatarr": "/Users/bizzattaha/Downloads/mekandayiz/assets/images/Sare.jpeg",
    "unread": 1,
    "date": DateTime.now().add(const Duration(minutes: -1))
  },
  {
    "id": 2,
    "name": "Emre Halil",
    "LastMsg": "Hacı arabayı ayarladın mı, Uludağa gidiyoruz demi.",
    "avatarr": "/Users/bizzattaha/Downloads/mekandayiz/assets/images/Emre.jpeg",
    "unread": 1,
    "date": DateTime.now().add(const Duration(minutes: -10))
  },
  {
    "id": 3,
    "name": "Yunuscan Şahin",
    "LastMsg": "Kanka Pazartesi günü istanbula geliyorum haberin olsun.",
    "avatarr": "/Users/bizzattaha/Downloads/mekandayiz/assets/images/yunus.jpeg",
    "unread": 1,
    "date": DateTime.now().add(const Duration(minutes: -45))
  },
  {
    "id": 4,
    "name": "Umut Karabulut",
    "LastMsg": "Bir tane astra dolu paket aracım geldi. Tam sana göre fiyatı da uygun.",
    "avatarr": "/Users/bizzattaha/Downloads/mekandayiz/assets/images/umut.jpeg",
    "unread": 1,
    "date": DateTime.now().add(const Duration(minutes: -55))
  },
  {
    "id": 5,
    "name": "Samet Alaoğlu",
    "LastMsg": "AA dan iş teklifi var, tam senlik iş bi bak istersen ?",
    "avatarr": "/Users/bizzattaha/Downloads/mekandayiz/assets/images/samet.jpeg",
    "unread": 1,
    "date": DateTime.now().add(const Duration(minutes: -85))
  },
  {
    "id": 6,
    "name": "İsmail Kasım Doğan",
    "LastMsg": "Kanka hollandadayım bir şey istiyormusun buralardan, Herşey ucuz buralardan :D",
    "avatarr": "assets/images/Kasım.jpeg",
    "unread": 1,
    "date": DateTime.now().add(const Duration(minutes: -115))
  },
  {
    "id": 7,
    "name": "Sare Küçükyeğen",
    "LastMsg": "Yarın müsaitmisin buluşalım mı ? Kadıköye gidelim ?",
    "avatarr": "/Users/bizzattaha/Downloads/mekandayiz/assets/images/Sare.jpeg",
    "unread": 1,
    "date": DateTime.now().add(const Duration(minutes: -1))
  },
  {
    "id": 8,
    "name": "Emre Halil",
    "LastMsg": "Hacı arabayı ayarladın mı, Uludağa gidiyoruz demi.",
    "avatarr": "/Users/bizzattaha/Downloads/mekandayiz/assets/images/Emre.jpeg",
    "unread": 1,
    "date": DateTime.now().add(const Duration(minutes: -10))
  },
  {
    "id": 9,
    "name": "Yunuscan Şahin",
    "LastMsg": "Kanka Pazartesi günü istanbula geliyorum haberin olsun.",
    "avatarr": "/Users/bizzattaha/Downloads/mekandayiz/assets/images/yunus.jpeg",
    "unread": 1,
    "date": DateTime.now().add(const Duration(minutes: -45))
  },
  {
    "id": 10,
    "name": "Umut Karabulut",
    "LastMsg": "Bir tane astra dolu paket aracım geldi. Tam sana göre fiyatı da uygun.",
    "avatarr": "/Users/bizzattaha/Downloads/mekandayiz/assets/images/umut.jpeg",
    "unread": 1,
    "date": DateTime.now().add(const Duration(minutes: -55))
  },
  {
    "id": 11,
    "name": "Samet Alaoğlu",
    "LastMsg": "AA dan iş teklifi var, tam senlik iş bi bak istersen ?",
    "avatarr": "/Users/bizzattaha/Downloads/mekandayiz/assets/images/samet.jpeg",
    "unread": 1,
    "date": DateTime.now().add(const Duration(minutes: -85))
  },
  {
    "id": 12,
    "name": "İsmail Kasım Doğan",
    "LastMsg": "Kanka hollandadayım bir şey istiyormusun buralardan, Herşey ucuz buralardan :D",
    "avatarr": "assets/images/Kasım.jpeg",
    "unread": 1,
    "date": DateTime.now().add(const Duration(minutes: -115))
  },
];

class ApiEndPoints{
  static const String baseUrl = 'https://restapi.adequateshop.com/api/';
  static _AuthEndPoints authEndPoints = _AuthEndPoints();
}

class _AuthEndPoints{
  final String registerEmail = 'authaccount/registration';
  final String loginEmail = 'authaccount/login';
}