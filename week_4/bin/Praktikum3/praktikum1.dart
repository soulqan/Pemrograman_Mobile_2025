void main() {
  // Map awal
  var gifts = {
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  print(gifts);
  print(nobleGases);

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings'; 

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon'; 

  gifts['name'] = 'Soultan Mohammad Agnar Bisyarah';
  gifts['nim'] = '234170191';

  nobleGases[99] = 'Soultan Mohammad Agnar Bisyarah';
  nobleGases[100] = '234170191';

  mhs1['name'] = 'Soultan Mohammad Agnar Bisyarah';
  mhs1['nim'] = '234170191';

  mhs2[1] = 'Soultan Mohammad Agnar Bisyarah';
  mhs2[2] = '234170191';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}
