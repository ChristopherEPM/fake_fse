# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@how1 = How.create(key:"HOWDATAUSER", value: "01")
@how2 = How.create(key:"HOWDATAUSER", value: "02")
@how3 = How.create(key:"HOWDATAUSER", value: "03")
## soporte
@rest1 = Rest.create(user:"support",role: "FSEASCOTTAPP", app: "8820")
@uc = Usecase.create(what: "01",rest_id: @rest1.id)
@uc2 = Usecase.create(what: "02",rest_id: @rest1.id)
@uc.hows << @how3
@uc2.hows << @how3

## Admin
@rest2 = Rest.create(user:"admin",role: "FSEASCOTTAPP", app: "8820")
@uc = Usecase.create(what: "03", rest_id: @rest2.id)
@uc.hows << @how3

## Empleado
@rest3 = Rest.create(user:"empleado",role: "FSEASCOTTAPP", app: "8820")
@uc = Usecase.create(what: "03", rest_id: @rest3.id)
@uc.hows << @how1

## Super
@rest4 = Rest.create(user:"super",role: "FSEASCOTTAPP", app: "8820")
@uc = Usecase.create(what: "01", rest_id: @rest4.id)
@uc2 = Usecase.create(what: "03", rest_id: @rest4.id)
@uc3 = Usecase.create(what: "04", rest_id: @rest4.id)
@uc.hows << @how2
@uc2.hows << @how1
@uc3.hows << @how2

## SuperVacas
@rest5 = Rest.create(user:"supervacas",role: "FSEASCOTTAPP", app: "8820")
@uc = Usecase.create(what: "04", rest_id: @rest5.id)
@uc2 = Usecase.create(what: "03", rest_id: @rest5.id)
@uc.hows << @how2
@uc2.hows << @how1

## Prefer
@rest6 = Rest.create(user:"prefer",role: "FSEASCOTTAPP", app: "8820")
@uc = Usecase.create(what: "01", rest_id: @rest6.id)
@uc2 = Usecase.create(what: "02", rest_id: @rest6.id)
@uc3 = Usecase.create(what: "03", rest_id: @rest6.id)
@uc.hows << @how3
@uc2.hows << @how3
@uc3.hows << @how1
