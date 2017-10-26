FactoryGirl.define do
	factory :buyer do
		email 'nurratnasarii@gmail.com'
		phone '085277202020'
		address 'Banda Aceh'
	end

	factory :invalid_buyer, parent: :buyer do
		email nil
		phone nil
		address nil
	end
end