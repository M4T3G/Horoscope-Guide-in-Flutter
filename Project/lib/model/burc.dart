class Burc{
  final String _burcAdi;
  get burcAdi => this._burcAdi;
  final String _burcTarihi;
  get burcTarihi => this._burcTarihi;
  final String _burcDetayi;
  get burcDetayi => this._burcDetayi;
  final String _burcKucukResim;
  get burcKucukResim => this._burcKucukResim;
  final String _burcBuyukResim;
  get burcBuyukResim => this._burcBuyukResim;

  Burc(this._burcAdi, this._burcTarihi, this._burcDetayi, this._burcKucukResim, this._burcBuyukResim);

  @override
  String toString() {
    return "$_burcAdi - $_burcTarihi - $_burcDetayi - $_burcKucukResim - $_burcBuyukResim";
  }
}