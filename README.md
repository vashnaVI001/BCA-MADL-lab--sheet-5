# BCA303P — Lab Sheet 5: Flutter Lists, Grids and Dynamic UI

This is a GitHub-ready Flutter project containing implementations of all 17 programs listed in `BCA303P-AS05.pdf`.

## Included programs
1. Five-item `ListView`
2. `ListTile` with leading icon, title and subtitle
3. Numbers 1–100 using `ListView.builder`
4. Names from a Dart list using `ListView.builder`
5. `ListView.separated`
6. Horizontal list using `scrollDirection`
7. Icon grid using `GridView.count`
8. Colored grid using `GridView.builder`
9. Product list with a Dart model class
10. StatelessWidget vs StatefulWidget demonstration
11. Counter using `setState()`
12. Increment, decrement and reset counter
13. Add list item using `TextField`
14. Delete list item using delete icon
15. Swipe-to-delete using `Dismissible`
16. Search/filter names
17. Student record app: add, list, search by name and delete

## Run locally
1. Install Flutter SDK and Android Studio (or another supported Flutter development environment).
2. Extract this ZIP.
3. Open a terminal in the extracted project folder.
4. Run:
   ```bash
   flutter pub get
   flutter run
   ```
5. The home screen lists all 17 programs. Tap any item to open that example.

## Upload to GitHub
1. Create a new repository on GitHub.
2. Extract the ZIP on your computer.
3. Upload the project files/folders (including `pubspec.yaml`, `lib/`, and `README.md`) to the repository root, or use Git:
   ```bash
   git init
   git add .
   git commit -m "Add BCA303P Lab Sheet 5 Flutter programs"
   git branch -M main
   git remote add origin https://github.com/YOUR-USERNAME/YOUR-REPOSITORY.git
   git push -u origin main
   ```

Replace the sample GitHub URL with your own repository URL. This project uses only Flutter's built-in Material library and has no extra package dependencies.
