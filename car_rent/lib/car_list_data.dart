//this file containing data only
//if create new variable, first word dont use capital!
// dont using _ when create variable, error!

class CarData {
  String carName;
  String carYear;
  String carCapacity;
  String carImage;
  String dailyPrice;
  String weeklyPrice;
  String rentAmount;
  List<String> morePhoto;

  CarData({
    required this.carName,
    required this.carYear,
    required this.carCapacity,
    required this.carImage,
    required this.dailyPrice,
    required this.weeklyPrice,
    required this.rentAmount,
    required this.morePhoto,
  });
}

var carDataList = [
//Data Mobil ke-1
  CarData(
    carName: 'Honda City Hatchback',
    carYear: '2021',
    carCapacity: 'Capacity: 4-5',
    carImage: 'assets/images/cars-03-primary.png',
    dailyPrice: 'Rp  230.000',
    weeklyPrice: 'Rp  750.000',
    rentAmount: '5x Rented',
    morePhoto: [
      'assets/images/cars-03-secondary.png',
      'assets/images/cars-03-inter.png'
    ],
  ),

//Data Mobil ke-2
  CarData(
    carName: 'Daihatsu Rocky',
    carYear: '2022',
    carCapacity: 'Capacity: 5-7',
    carImage: 'assets/images/cars-04-primary.png',
    dailyPrice: 'Rp  200.000',
    weeklyPrice: 'Rp  600.000',
    rentAmount: '7x Rented',
    morePhoto: [
      'assets/images/cars-04-secondary.png',
      'assets/images/cars-04-inter.png'
    ],
  ),

//Data Mobil ke-3
  CarData(
    carName: 'KIA Sonet',
    carYear: '2021',
    carCapacity: 'Capacity: 4-5',
    carImage: 'assets/images/cars-05-primary.png',
    dailyPrice: 'Rp  230.000',
    weeklyPrice: 'Rp  750.000',
    rentAmount: '10x Rented',
    morePhoto: [
      'assets/images/cars-05-secondary.png',
      'assets/images/cars-05-inter.png'
    ],
  ),

//Data Mobil ke-4
  CarData(
    carName: 'Mitshubishi Pajero',
    carYear: '2021',
    carCapacity: 'Capacity: 5-7',
    carImage: 'assets/images/cars-06-primary.png',
    dailyPrice: 'Rp  325.000',
    weeklyPrice: 'Rp  900.000',
    rentAmount: '10x Rented',
    morePhoto: [
      'assets/images/cars-06-secondary.png',
      'assets/images/cars-06-inter.png'
    ],
  ),
//Data Mobil ke-5
  CarData(
    carName: 'Mini Cooper',
    carYear: '2020',
    carCapacity: 'Capacity: 2',
    carImage: 'assets/images/cars-07-primary.png',
    dailyPrice: 'Rp  350.000',
    weeklyPrice: 'Rp  1.000.000',
    rentAmount: '2x Rented',
    morePhoto: [
      'assets/images/cars-06-secondary.png',
      'assets/images/cars-06-inter.png'
    ],
  ),
];
