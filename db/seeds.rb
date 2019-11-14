# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


@rest = Rest.where(user:"2310",role: "FEASTCOTAPP", app: "8820").first_or_create
@usecases1 = Usecase.where(what: "01",rest_id: @rest.id).first_or_create
@usecases2 = Usecase.where(what: "04",rest_id: @rest.id).first_or_create
@usecases3 = Usecase.where(what: "03",rest_id: @rest.id).first_or_create
@how1 = How.where(key:"HOWDATAUSER", value: "01", usecase_id: @usecases1.id).first_or_create
@how2 = How.where(key:"HOWDATAUSER", value: "02", usecase_id: @usecases2.id).first_or_create
@how3 = How.where(key:"HOWDATAUSER", value: "03", usecase_id: @usecases3.id).first_or_create