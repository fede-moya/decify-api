pablo_garin = User.create(first_name: 'Pablo', last_name: 'Garin', email: 'pablo.garin@gmail.com', user_type: :master, password: 'abcd1234')
pablo_garin.avatar.attach(io: File.open('db/seeds/avatars/avatar-pablo.png'), filename: 'avatar-pablo.png')

elasco_software = Organization.create(
  name: 'Elascto Software',
  user: pablo_garin,
  description: 'En estrecha colaboración con nuestros clientes, diseñamos y desarrollamos soluciones intuitivas, confiables y sostenibles para fines comerciales y sociales.'
)


admin_users = [ 
  ['Martin', 'Rodriguez', 'martinrodriguezgervasio@gmail.com', 'tincho.png'],
  ['Adrian', 'Celi', 'adrian.celi2193@gmail.com', 'adri.jpg'],
  ['Federico', 'Moya', 'federicomoyamartin@gmail.com', 'fede.png']
]

admin_users.each do |admin_user|
  u = User.create(
    first_name: admin_user[0],
    last_name: admin_user[1],
    email: admin_user[2],
    user_type: :admin,
    password: 'abcd1234',
    organization_id: elasco_software.id
  )

  u.avatar.attach(io: File.open("db/seeds/avatars/avatar-#{admin_user[3]}"), filename: "avatar-#{admin_user[3]}")
end


users = [
  ['Cecilia', 'Alvarez', '1'],
  ['Leticia', 'Carrasco', '2'],
  ['Sofia', 'Martinez', '3'],
  ['Richard', 'Nuñez', '4'],
  ['Nicolas', 'Machado', '5'],
  ['Mariana', 'Pietrafesa', '6'],
  ['Andrea', 'Esperdutti', '7'],
  ['Juan', 'Gomez', '8'],
  ['Virginia', 'Laureiro', '9'],
  ['Monica', 'Gestido', '10'],
  ['Laura', 'Martinez', '11'],
  ['Ezequiel', 'Rodriguez', '12'],
  ['Valentina', 'Tilk', '13'],
  ['Joaquin', 'Perez', '14'],
  ['Agustina', 'Trigo', '15'],
  ['Manuela', 'Quintela','16'],
  ['Estafnia', 'Lorenzotti', '17'],
  ['Guido', 'Rodriguez', '18'],
  ['Ana', 'Laferte', '19'],
  ['Carlos', 'Ozorio', '20']
]

users.each do |user|
  u = User.create(
    first_name: user[0],
    last_name: user[1],
    email: "#{user[0].downcase}.#{user[1].downcase}@gmail.com",
    user_type: :user,
    password: 'abcd1234',
    organization_id: elasco_software.id
  )

  u.avatar.attach(io: File.open("db/seeds/avatars/avatar-#{user[2]}.jpg"), filename: "avatar-#{user[2]}.jpg")
end