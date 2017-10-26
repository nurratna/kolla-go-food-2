# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Food.delete_all

Food.create!(
	name: 'Keumamah ',
	description: 
		%{<p>
			<em>Olahan Ikan Kayu Terbaik</em>
			Keumamah atau sering disebut dengan Ikan kayu merupakan makanan tradisional Aceh 
			dan makanan khas Aceh yang paling banyak diminati oleh masyarakat Aceh. 
			Selain memiliki rasa yang lezat dan unik, 
			ikan ini terbuat dari ikan tuna yang telah direbus, 
			kemudian dikeringkan dan diiris-iris kecil.
			</p>},
	image_url: 'keumamah.jpg',
	price: 30000.00
)

Food.create!(
	name: 'Meuseukat',
	description: 
		%{<p>
			<em>Kue Tradisional Aceh</em>
			Meuseukat ini merupakan salah satu kue tradisional dari aceh atau semacam dodol nanas khas aceh. 
			Meuseukat terbuat dari tepung terigu dan campuran buah nanas, 
			paduan yang unik dengan cita rasa yang khas. 
			Meuseukat sangat jarang ditemukan dipasar-pasar tradisional dan 
			terkadang harus dipesan terlebih dahulu.
			</p>},
	image_url: 'meusekat.jpg',
	price: 30000.00
)

Food.create!(
	name: 'Kue Bhoi',
	description: 
		%{<p>
			<em>Daging Terbaik</em>
			Kue Bhoi adalah maknan khas Aceh Besar yang dikenal luas oleh masyarakat Aceh. 
			Bentuk kue ini sangat bervariasi, seperti : bentuk ikan, bintang, bunga, dan lain-lain
			</p>},
	image_url: 'kue.jpg',
	price: 30000.00
)

Buyer.create!(
	email: 'nurratnasarii@gmail.com',
	phone: '0852-4442-3332',
	address: 'Banda Aceh'
)

Buyer.create!(
	email: 'qurin@gmail.com',
	phone: '0857-7382-3432',
	address: 'Surabaya'
)

Buyer.create!(
	email: 'ajeng@gmail.com',
	phone: '0812-4422-1233',
	address: 'Bogor'
)