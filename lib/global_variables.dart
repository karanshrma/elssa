final List<Map<String, String>> countries = [
  {'name': 'USA', 'code': '+1', 'flag': '🇺🇸', 'fullName': 'United States'},
  {'name': 'IND', 'code': '+91', 'flag': '🇮🇳', 'fullName': 'India'},
  {'name': 'UK', 'code': '+44', 'flag': '🇬🇧', 'fullName': 'United Kingdom'},
  {'name': 'CAN', 'code': '+1', 'flag': '🇨🇦', 'fullName': 'Canada'},
  {'name': 'AUS', 'code': '+61', 'flag': '🇦🇺', 'fullName': 'Australia'},
  {'name': 'GER', 'code': '+49', 'flag': '🇩🇪', 'fullName': 'Germany'},
  {'name': 'FRA', 'code': '+33', 'flag': '🇫🇷', 'fullName': 'France'},
  {'name': 'JPN', 'code': '+81', 'flag': '🇯🇵', 'fullName': 'Japan'},
  {'name': 'BRA', 'code': '+55', 'flag': '🇧🇷', 'fullName': 'Brazil'},
  {'name': 'UAE', 'code': '+971', 'flag': '🇦🇪', 'fullName': 'United Arab Emirates'},
];
const List<String> carouselImages = [
  'https://res.cloudinary.com/dfpolwe00/image/upload/v1758048023/carousel_srithz.png',
  'https://images-eu.ssl-images-amazon.com/images/G/31/img21/Wireless/WLA/TS/D37847648_Accessories_savingdays_Jan22_Cat_PC_1500.jpg',
  'https://images-eu.ssl-images-amazon.com/images/G/31/img2021/Vday/bwl/English.jpg',
  'https://images-eu.ssl-images-amazon.com/images/G/31/img22/Wireless/AdvantagePrime/BAU/14thJan/D37196025_IN_WL_AdvantageJustforPrime_Jan_Mob_ingress-banner_1242x450.jpg',
  'https://images-na.ssl-images-amazon.com/images/G/31/Symbol/2020/00NEW/1242_450Banners/PL31_copy._CB432483346_.jpg',
  'https://images-na.ssl-images-amazon.com/images/G/31/img21/shoes/September/SSW/pc-header._CB641971330_.jpg',
];



// Home Services with Icon URLs
final Map<String, Map<String, String>> homeServicesWithIcons = {
  'kitchen_cleaning': {
    'title': 'Kitchen Cleaning',
    'imageUrl': 'https://img.icons8.com/color/96/kitchen.png',
  },
  'sofa_cleaning': {
    'title': 'Sofa Cleaning',
    'imageUrl': 'https://img.icons8.com/color/96/sofa.png',
  },
  'full_home_cleaning': {
    'title': 'Full Home Cleaning',
    'imageUrl': 'https://img.icons8.com/color/96/home.png',
  },
};
class GLobalVariables{

  static const List<Map<String, String>> services = [
    {
      'name': 'Kitchen Cleaning',
      'image': 'https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=400&h=300&fit=crop'
    },
    {
      'name': 'Sofa Cleaning',
      'image': 'https://images.unsplash.com/photo-1586023492125-27b2c045efd7?w=400&h=300&fit=crop'
    },
    {
      'name': 'Full Home Cleaning',
      'image': 'https://images.unsplash.com/photo-1558618047-3c8c76ca7d13?w=400&h=300&fit=crop'
    },
  ];


  static List<Map<String, String?>> getServices() {
    return [
      {
        'title': 'Kitchen Cleaning',
        'image': 'https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=400&h=300&fit=crop',
      },
      {
        'title': 'Sofa Cleaning',
        'image': 'https://images.unsplash.com/photo-1586023492125-27b2c045efd7?w=400&h=300&fit=crop',
      },
      {
        'title': 'Full Home Deep Cleaning',
        'image': 'https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=400&h=300&fit=crop',
      },
      {
        'title': 'Bathroom Cleaning',
        'image': 'https://images.unsplash.com/photo-1620626011761-996317b8d101?w=400&h=300&fit=crop',
      },
      {
        'title': 'Carpet Cleaning',
        'image': 'https://images.unsplash.com/photo-1558618047-3c8c76ca7d13?w=400&h=300&fit=crop',
      },
      {
        'title': 'Window Cleaning',
        'image': 'https://images.unsplash.com/photo-1581578731548-c64695cc6952?w=400&h=300&fit=crop',
      },
      {
        'title': 'AC Cleaning',
        'image': 'https://images.unsplash.com/photo-1621905252507-b35492cc74b4?w=400&h=300&fit=crop',
      },
      {
        'title': 'Laundry Service',
        'image': 'https://images.unsplash.com/photo-1582735689369-4fe89db7114c?w=400&h=300&fit=crop',
      },
    ];
  }
  static List<Map<String, String?>> getCleaningServices() {
    return [
      {
        'title': 'Kitchen Cleaning',
        'image': 'https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?w=400&h=300&fit=crop',
      },
      {
        'title': 'Sofa Cleaning',
        'image': 'https://images.unsplash.com/photo-1586023492125-27b2c045efd7?w=400&h=300&fit=crop',
      },
      {
        'title': 'Full Home Deep Cleaning',
        'image': 'https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=400&h=300&fit=crop',
      },
      {
        'title': 'Bathroom Cleaning',
        'image': 'https://images.unsplash.com/photo-1620626011761-996317b8d101?w=400&h=300&fit=crop',
      },
      {
        'title': 'Carpet Cleaning',
        'image': 'https://images.unsplash.com/photo-1558618047-3c8c76ca7d13?w=400&h=300&fit=crop',
      },
      {
        'title': 'Window Cleaning',
        'image': 'https://images.unsplash.com/photo-1581578731548-c64695cc6952?w=400&h=300&fit=crop',
      },
      {
        'title': 'AC Cleaning',
        'image': 'https://images.unsplash.com/photo-1621905252507-b35492cc74b4?w=400&h=300&fit=crop',
      },
      {
        'title': 'Laundry Service',
        'image': 'https://images.unsplash.com/photo-1582735689369-4fe89db7114c?w=400&h=300&fit=crop',
      },
    ];
  }
}