# 🎬 TokTik - Short Vertical Video Player App

**TokTik** is a dynamic mobile application built with **Flutter** and **Dart** that clones the core user experience of TikTok. The app features an infinite vertical scrolling feed, custom video controls, reactive UI animations, and formatted metric counters.

This project is part of my mobile development learning journey through **DevTalles** (taught by Fernando Herrera).

---

## 📸 Demo & Preview

| Application View |
| :---: |
| ![TokTik Preview](docs/toktik_preview.gif) |

---

## ✨ Features & Key Learnings

- 📱 **Vertical Scroll Video Player:** Smooth vertical scrolling feed for short video playback.
- 🎬 **Video Playback Controls:** Tap-to-pause and play functionality integrated with local and remote video streams.
- 🎨 **Animated UI Components:** Reactive animations for interactive elements such as likes and action buttons.
- 📊 **Number & Currency Formatting:** Compact metric formatting for view counters and likes (e.g., converting 1,500,000 to 1.5M).
- ⚙️ **State Management:** Reactive data flow using Provider to synchronize video controllers and screen overlays.
- 🏗️ **Clean Architecture Foundations:** Modular separation of Data Models, Repositories, and Presentation Widgets.

---

## 🛠️ Tech Stack

- **Framework:** [Flutter](https://flutter.dev/) (SDK >= 3.0.0)
- **Language:** [Dart](https://dart.dev/)
- **State Management:** [Provider](https://pub.dev/packages/provider)
- **Key Packages:**
  - [`video_player`](https://pub.dev/packages/video_player) - Low-level video controller and playback engine.
  - [`animate_do`](https://pub.dev/packages/animate_do) - Smooth UI animations for buttons and overlay icons.
  - [`intl`](https://pub.dev/packages/intl) - Internationalization and number/metric formatting.

---
## 🚀 Getting Started

Follow these steps to run the project locally:

1. **Clone the repository:**
```bash
git clone https://github.com/samuel-taya-dev/toktik
```

2. **Navigate to the project directory:**
```bash
cd toktik
```

3. **Install dependencies:**
```bash
flutter pub get
```

4. **Run the aplication:**
```bash
flutter run
```

---

## 👤 Author

Developed by **Samuel Taya**  
- **LinkedIn:** [Samuel Taya](https://www.linkedin.com/in/samuel-taya-dev)  
- **GitHub:** [@samuel-taya-dev](https://github.com/samuel-taya-dev)