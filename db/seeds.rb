# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

AnimalDivision.delete_all
AnimalSubclass.delete_all
AnimalClass.delete_all
Animal.delete_all

vertebrados = AnimalDivision.create(name: 'vertebrados')

mamiferos = AnimalClass.create(name: 'mamiferos', animal_division: vertebrados)
carnivoros = AnimalSubclass.create(name: 'carnivoros', animal_class: mamiferos)
herbivoros = AnimalSubclass.create(name: 'herbivoros', animal_class: mamiferos)

Animal.create(name: 'gato', animal_subclass: carnivoros)
Animal.create(name: 'lince', animal_subclass: carnivoros)
Animal.create(name: 'lobo', animal_subclass: carnivoros)
Animal.create(name: 'girafa', animal_subclass: herbivoros)
Animal.create(name: 'ñu', animal_subclass: herbivoros)

aves = AnimalClass.create(name: 'aves', animal_division: vertebrados)

Animal.create(name: 'gallina', animal_class: aves)
Animal.create(name: 'paloma', animal_class: aves)

invertebrados = AnimalDivision.create(name: 'invertebrados')

celentereos = AnimalClass.create(name: 'celentereos', animal_division: invertebrados)

Animal.create(name: 'medusa', animal_class: celentereos)
Animal.create(name: 'coral', animal_class: celentereos)

moluscos = AnimalClass.create(name: 'moluscos', animal_division: invertebrados)

Animal.create(name: 'caracol', animal_class: moluscos)

antropodos = AnimalClass.create(name: 'antropodos', animal_division: invertebrados)
insectos = AnimalSubclass.create(name: 'insectos', animal_class: antropodos)

Animal.create(name: 'mariposa', animal_subclass: insectos)
Animal.create(name: 'mosca', animal_subclass: insectos)

aracnidos = AnimalSubclass.create(name: 'aracnidos', animal_class: antropodos)

Animal.create(name: 'escorpion', animal_subclass: aracnidos)
Animal.create(name: 'araña', animal_subclass: aracnidos)
