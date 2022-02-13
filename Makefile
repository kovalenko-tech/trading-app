gen:
	@echo "╠ -------------------------- START -----------------------------"
	@echo "╠ ---------------------- Create files --------------------------"
	fvm flutter packages pub run build_runner build
	fvm flutter pub run easy_localization:generate -S assets/translations -f keys -o app_strings.g.dart
	@echo "╠ -------------------------- FINISH ----------------------------"
