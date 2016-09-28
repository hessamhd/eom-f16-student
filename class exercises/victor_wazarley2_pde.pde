size (500, 500);
for (int i = 1; i < 500; i += 3) {
  line (i, i + 1, 500, 0);
  line (i, i + 1, 0, 500);
}
line (0, 0, 500, 500);