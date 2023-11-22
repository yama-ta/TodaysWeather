class CoordinateVariable {
  String image;
  String explanation;

  CoordinateVariable(this.image, this.explanation);
}

// コーディネートデータは男女それぞれで作成
// 服装指数（0~100）、各服装指数毎に2バリエーション以上のコーディネートを想定

Map<String, Map<int, List<CoordinateVariable>>> coordinateData = {
  'radies': {
    0: [
      CoordinateVariable(
          'assets/images/ladies1.jpg', 'モックネックTシャツ +\nニットベスト +\n スキニー'),
      CoordinateVariable(
          'assets/images/ladies2.jpg', 'Tシャツ +\nニットカーディガン +\n スキニーデニム'),
    ],
    10: [
      CoordinateVariable(
          'assets/images/ladies1.jpg', 'モックネックTシャツ +\nニットベスト +\n スキニー'),
      CoordinateVariable(
          'assets/images/ladies2.jpg', 'Tシャツ +\nニットカーディガン +\n スキニーデニム'),
    ],
    20: [
      CoordinateVariable(
          'assets/images/ladies1.jpg', 'モックネックTシャツ +\nニットベスト +\n スキニー'),
      CoordinateVariable(
          'assets/images/ladies2.jpg', 'Tシャツ +\nニットカーディガン +\n スキニーデニム'),
    ],
    30: [
      CoordinateVariable(
          'assets/images/ladies1.jpg', 'モックネックTシャツ +\nニットベスト +\n スキニー'),
      CoordinateVariable(
          'assets/images/ladies2.jpg', 'Tシャツ +\nニットカーディガン +\n スキニーデニム'),
    ],
    40: [
      CoordinateVariable(
          'assets/images/ladies1.jpg', 'モックネックTシャツ +\nニットベスト +\n スキニー'),
      CoordinateVariable(
          'assets/images/ladies2.jpg', 'Tシャツ +\nニットカーディガン +\n スキニーデニム'),
    ],
    50: [
      CoordinateVariable(
          'assets/images/ladies1.jpg', 'モックネックTシャツ +\nニットベスト +\n スキニー'),
      CoordinateVariable(
          'assets/images/ladies2.jpg', 'Tシャツ +\nニットカーディガン +\n スキニーデニム'),
    ],
    60: [
      CoordinateVariable(
          'assets/images/ladies1.jpg', 'モックネックTシャツ +\nニットベスト +\n スキニー'),
      CoordinateVariable(
          'assets/images/ladies2.jpg', 'Tシャツ +\nニットカーディガン +\n スキニーデニム'),
    ],
    70: [
      CoordinateVariable(
          'assets/images/ladies1.jpg', 'モックネックTシャツ +\nニットベスト +\n スキニー'),
      CoordinateVariable(
          'assets/images/ladies2.jpg', 'Tシャツ +\nニットカーディガン +\n スキニーデニム'),
    ],
    80: [
      CoordinateVariable(
          'assets/images/ladies1.jpg', 'モックネックTシャツ +\nニットベスト +\n スキニー'),
      CoordinateVariable(
          'assets/images/ladies2.jpg', 'Tシャツ +\nニットカーディガン +\n スキニーデニム'),
    ],
    90: [
      CoordinateVariable(
          'assets/images/ladies1.jpg', 'モックネックTシャツ +\nニットベスト +\n スキニー'),
      CoordinateVariable(
          'assets/images/ladies2.jpg', 'Tシャツ +\nニットカーディガン +\n スキニーデニム'),
    ],
    100: [
      CoordinateVariable(
          'assets/images/ladies1.jpg', 'モックネックTシャツ +\nニットベスト +\n スキニー'),
      CoordinateVariable(
          'assets/images/ladies2.jpg', 'Tシャツ +\nニットカーディガン +\n スキニーデニム'),
    ],
  }, //女性用コーディネートデータ
  'mens': {
    0: [
      CoordinateVariable(
          'assets/images/mens1.jpg', 'シャツ +\nニットカーディガン +\n スウェットパンツ'),
      CoordinateVariable('assets/images/mens2.jpg', 'パーカー +\nデニム'),
    ],
    10: [
      CoordinateVariable(
          'assets/images/mens1.jpg', 'シャツ +\nニットカーディガン +\n スウェットパンツ'),
      CoordinateVariable('assets/images/mens2.jpg', 'パーカー +\nデニム'),
    ],
    20: [
      CoordinateVariable(
          'assets/images/mens1.jpg', 'シャツ +\nニットカーディガン +\n スウェットパンツ'),
      CoordinateVariable('assets/images/mens2.jpg', 'パーカー +\nデニム'),
    ],
    30: [
      CoordinateVariable(
          'assets/images/mens1.jpg', 'シャツ +\nニットカーディガン +\n スウェットパンツ'),
      CoordinateVariable('assets/images/mens2.jpg', 'パーカー +\nデニム'),
    ],
    40: [
      CoordinateVariable(
          'assets/images/mens1.jpg', 'シャツ +\nニットカーディガン +\n スウェットパンツ'),
      CoordinateVariable('assets/images/mens2.jpg', 'パーカー +\nデニム'),
    ],
    50: [
      CoordinateVariable(
          'assets/images/mens1.jpg', 'シャツ +\nニットカーディガン +\n スウェットパンツ'),
      CoordinateVariable('assets/images/mens2.jpg', 'パーカー +\nデニム'),
    ],
    60: [
      CoordinateVariable(
          'assets/images/mens1.jpg', 'シャツ +\nニットカーディガン +\n スウェットパンツ'),
      CoordinateVariable('assets/images/mens2.jpg', 'パーカー +\nデニム'),
    ],
    70: [
      CoordinateVariable(
          'assets/images/mens1.jpg', 'シャツ +\nニットカーディガン +\n スウェットパンツ'),
      CoordinateVariable('assets/images/mens2.jpg', 'パーカー +\nデニム'),
    ],
    80: [
      CoordinateVariable(
          'assets/images/mens1.jpg', 'シャツ +\nニットカーディガン +\n スウェットパンツ'),
      CoordinateVariable('assets/images/mens2.jpg', 'パーカー +\nデニム'),
    ],
    90: [
      CoordinateVariable(
          'assets/images/mens1.jpg', 'シャツ +\nニットカーディガン +\n スウェットパンツ'),
      CoordinateVariable('assets/images/mens2.jpg', 'パーカー +\nデニム'),
    ],
    100: [
      CoordinateVariable(
          'assets/images/mens1.jpg', 'シャツ +\nニットカーディガン +\n スウェットパンツ'),
      CoordinateVariable('assets/images/mens2.jpg', 'パーカー +\nデニム'),
    ],
  } //男性用コーディネートデータ
};
