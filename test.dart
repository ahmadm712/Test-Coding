void main() {
  // Soal No 1
  getN(int n) {
    switch (n.toString().length) {
      case 1:
        print("Satuan");
        break;

      case 2:
        print("Puluhan");
        break;

      case 3:
        print("Ratusan");
        break;

      case 4:
        print("Ribuan");
        break;
      case 5:
        print("Puluhan Ribuan");
        break;
      default:
    }
  }

  // Contoh Input 1
  getN(4);
  print('==================');

  // Contoh Input 2
  getN(12345);
  print('==================');

  // Soal No 2
  findArray(List arr) {
    var max = arr.reduce((value, element) => value > element ? value : element);
    var min = arr.reduce((value, element) => value < element ? value : element);
    return "Max $max - Min $min";
  }

  // Contoh Input 1
  print(findArray([
    1,
    -1,
    1,
    10,
    10,
    6,
    8,
    4,
  ]));

  // Soal No 3
  stringChecker(String date) {
    RegExp regExp = new RegExp(
      r"^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[13-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$",
      caseSensitive: false,
      multiLine: false,
    );
    var check = regExp.hasMatch(date);

    if (check) {
      return "Ya";
    } else {
      return "Tidak";
    }
  }

  // Contoh Input 1
  print('==================');
  print(stringChecker("24-01-2022"));

  // Contoh Input 2
  print('==================');
  print(stringChecker("24/01/2022"));

  // Contoh Input 3
  print('==================');
  print(stringChecker("24 01 2022"));

  // Soal Bonus
  List array = [
    {
      "nama": "Indomie",
      "harga": 3000,
      "rating": 5,
      "likes": 150,
    },
    {
      "nama": "Laptop",
      "harga": 400000,
      "rating": 4.5,
      "likes": 123,
    },
    {
      "nama": "Aqua",
      "harga": 3000,
      "rating": 4,
      "likes": 250,
    },
    {
      "nama": "Smart Tv",
      "harga": 400000,
      "rating": 4.5,
      "likes": 42,
    },
    {
      "nama": "Headphone",
      "harga": 400000,
      "rating": 3.5,
      "likes": 90,
    },
    {
      "nama": "Very Smart Tv",
      "harga": 400000,
      "rating": 3.5,
      "likes": 87,
    }
  ];
  print('==================');

  sortByLowestPrice(List arr) {
    return arr.sort((a, b) => a["harga"].compareTo(b["harga"]));
  }

  sortByHighestPrice(List arr) {
    return arr.sort((a, b) => b["harga"].compareTo(a["harga"]));
  }

  sortByHighestRating(List arr) {
    return arr.sort((a, b) => b["rating"].compareTo(a["rating"]));
  }

  sortByLowestRating(List arr) {
    return arr.sort((a, b) => a["rating"].compareTo(b["rating"]));
  }

  sortByHighestLikes(List arr) {
    return arr.sort((a, b) => b["rating"].compareTo(a["rating"]));
  }

  sortByLowestPrice(array);
  print(array);
  print('==================');
  sortByHighestPrice(array);
  print(array);
  print('==================');
  sortByHighestRating(array);
  print(array);
  print('==================');
  sortByLowestRating(array);
  print(array);
  print('==================');
  sortByHighestLikes(array);
  print(array);
}
