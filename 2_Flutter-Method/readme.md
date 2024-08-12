#   StatefulWidget:
##  Deskripsi: Mengelola state secara internal menggunakan widget itu sendiri. State diubah dengan menggunakan setState(), yang memberi tahu Flutter untuk merender ulang UI dengan nilai state yang baru.
##  Kapan digunakan: Cocok untuk skenario sederhana di mana state hanya digunakan dalam satu widget atau komponen kecil.

#   Provider:
##  Deskripsi: Mengelola state secara global menggunakan ChangeNotifier dan Provider. ChangeNotifier memungkinkan state untuk diberitahukan ke UI, sedangkan Provider memungkinkan state diakses oleh banyak widget.
##  Kapan digunakan: Digunakan ketika state perlu dibagikan di antara beberapa widget atau komponen dalam aplikasi. Cocok untuk aplikasi dengan kompleksitas sedang.

#   Bloc/Cubit:
##  Deskripsi: Menggunakan Cubit atau Bloc untuk mengelola state secara reaktif. Cubit adalah bagian dari arsitektur Bloc, yang memisahkan logika bisnis dari UI dan menggunakan event untuk mengubah state.
##  Kapan digunakan: Ideal untuk aplikasi kompleks di mana pemisahan yang jelas antara logika bisnis dan presentasi dibutuhkan. Cocok untuk aplikasi besar dengan banyak interaksi pengguna dan perubahan state yang rumit.
