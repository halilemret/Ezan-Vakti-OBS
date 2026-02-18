# ☪️ Ezan Vakti OBS Widget

Canlı yayınlarınızda 81 ilin ezan vakitlerini gösteren şık bir OBS overlay widget'ı. Ramazan temalı tasarımıyla izleyicilerinize anlık ezan bilgisi sunun.

![preview](https://img.shields.io/badge/OBS-Widget-green?style=for-the-badge&logo=obsstudio)
![cities](https://img.shields.io/badge/81_İl-Turkey-red?style=for-the-badge)

## ✨ Özellikler

- 🕌 **81 İl Desteği** — Türkiye'nin tüm illerinin ezan vakitleri
- ⏳ **Geri Sayım** — Sıradaki ezan vaktine canlı geri sayım
- 📊 **Akıllı Sıralama** — Şehirler en yakın ezan vaktinden en uzağa sıralı
- 🔔 **Yanıp Sönme** — Ezan okunan şehir altın renkte yanıp söner, ardından listeden kaybolur
- 🔄 **Otomatik Vakit Geçişi** — İmsak → Öğle → İkindi → Akşam → Yatsı → (yarının İmsakı)
- 🌙 **Ramazan Teması** — Koyu yeşil, altın vurgular, İslami geometrik desenler
- 🖥️ **OBS Uyumlu** — Şeffaf arkaplan, kompakt tasarım
- 📡 **Offline Çalışır** — Tüm veriler JSON dosyasından yüklenir, API çağrısı yapılmaz

## 🚀 Kullanım (OBS Studio)

### 1. Tarayıcı Kaynağı Ekle

1. **OBS Studio**'yu açın
2. **Sources (Kaynaklar)** panelinde **+** butonuna tıklayın
3. **Browser (Tarayıcı)** seçin
4. İsim verin (örn: `Ezan Vakti`) ve **OK**'e tıklayın

### 2. URL'yi Girin

Açılan pencerede şu ayarları yapın:

| Ayar | Değer |
|------|-------|
| **URL** | `https://ezanvakti.halilemre.com/` |
| **Width (Genişlik)** | `540` |
| **Height (Yükseklik)** | `720` |

> 💡 "Shutdown source when not visible" ve "Refresh browser when scene becomes active" seçeneklerini **işaretlemeyin**, böylece widget sürekli güncel kalır.

### 3. Konumlandırma

- Widget'ı sahnenizde istediğiniz köşeye sürükleyip bırakın
- Boyutlandırma tutamaçlarıyla küçültüp büyütebilirsiniz
- Önerilen konum: **sağ alt** veya **sol alt** köşe

### 4. Hazır! 🎉

Widget otomatik olarak:
- Şu anki saate göre aktif vakti belirler
- Şehirleri en yakın ezan vaktine göre sıralar
- Ezan vakti gelen şehri yanıp söndürüp listeden çıkarır
- Son şehir de okunduktan sonra bir sonraki vakte geçer
- Gece yarısından sonra yarının imsak vakitlerini gösterir

## 📸 Önizleme

Widget şu bilgileri gösterir:

```
 ☪  İMSAK
 21:40:01
 18 Şubat 2026 Çarşamba

 Sıradaki: Agri
 07:24:15

 ┌─────────────────────────┐
 │ 1  Adiyaman       05:44 │
 │ 2  Agri            05:25 │
 │ 3  Adana           05:56 │
 │ ...                      │
 └─────────────────────────┘
 ● ● ● ● ● ● ● ● ●  1/9  72 şehir kaldı
```

## 🛠️ Kendi Sunucunuzda Barındırma

Eğer kendi sunucunuzda çalıştırmak isterseniz:

### Docker ile

```bash
git clone https://github.com/KULLANICI_ADIN/ezan-vakti-obs.git
cd ezan-vakti-obs
docker build -t ezan-vakti .
docker run -d -p 3222:80 ezan-vakti
```

### Coolify ile

1. GitHub reposunu Coolify'a bağlayın
2. Build Pack: **Dockerfile**
3. Ports Exposes: `80`
4. Port Mappings: `3222:80`
5. Deploy! 🚀

## 📁 Dosya Yapısı

```
├── index.html                    # Widget (HTML + CSS + JS)
├── ramazan_imsakiye_2026.json    # 81 il ezan vakitleri verisi
├── veri.py                       # Veri çekme scripti (Aladhan API)
├── Dockerfile                    # Docker deployment
└── README.md
```

## 📊 Veri Kaynağı

Ezan vakitleri [Aladhan API](https://aladhan.com/prayer-times-api) üzerinden Diyanet İşleri Başkanlığı hesaplama yöntemi (method: 13) ile çekilmiştir. Veriler `veri.py` scripti ile güncellenebilir.

## 📄 Lisans

MIT License — Dilediğiniz gibi kullanabilir, değiştirebilir ve paylaşabilirsiniz.

---

<p align="center">
  <b>☪️ Hayırlı Ramazanlar ☪️</b><br>
  <sub>2026 Ramazan • 81 İl • Canlı Ezan Takibi</sub>
</p>
