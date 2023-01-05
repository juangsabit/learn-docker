# memungkinkan untuk tiap container bisa saling terhubung/berkomunikasi

# type network : 
# bridge, yaitu driver yang digunakan untuk membuat network secara virtual yang memungkinkan container yang terkoneksi di bridge network yang sama saling berkomunikasi
# host, yaitu driver yang digunakan untuk membuat network yang sama dengan sistem host. host hanya jalan di Docker Linux, tidak bisa digunakan di Mac atau Windows
# none, yaitu driver untuk membuat network yang tidak bisa berkomunikasi 


docker network ls

docker network create --driver bridge contoh-network

docker network rm contoh-network
# docker tidak bisa dihapus jika masih dipakai oleh container, harus hapus container dulu


