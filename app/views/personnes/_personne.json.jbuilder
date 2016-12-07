json.extract! personne, :id, :name, :surname, :birthdate, :phone, :created_at, :updated_at
json.url personne_url(personne, format: :json)