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
AnimalSpecie.delete_all

vertebrados = AnimalDivision.create(name: 'vertebrados')

mamiferos = AnimalClass.create(name: 'mamiferos', animal_division: vertebrados)
carnivoros = AnimalSubclass.create(name: 'carnivoros', animal_class: mamiferos)
herbivoros = AnimalSubclass.create(name: 'herbivoros', animal_class: mamiferos)

AnimalSpecie.create(name: 'gato', animal_subclass: carnivoros)
AnimalSpecie.create(name: 'lince', animal_subclass: carnivoros)
AnimalSpecie.create(name: 'lobo', animal_subclass: carnivoros)
AnimalSpecie.create(name: 'girafa', animal_subclass: herbivoros)
AnimalSpecie.create(name: 'ñu', animal_subclass: herbivoros)

aves = AnimalClass.create(name: 'aves', animal_division: vertebrados)

AnimalSpecie.create(name: 'gallina', animal_class: aves)
AnimalSpecie.create(name: 'paloma', animal_class: aves)

invertebrados = AnimalDivision.create(name: 'invertebrados')

celentereos = AnimalClass.create(name: 'celentereos', animal_division: invertebrados)

AnimalSpecie.create(name: 'medusa', animal_class: celentereos)
AnimalSpecie.create(name: 'coral', animal_class: celentereos)

moluscos = AnimalClass.create(name: 'moluscos', animal_division: invertebrados)

AnimalSpecie.create(name: 'caracol', animal_class: moluscos)

antropodos = AnimalClass.create(name: 'antropodos', animal_division: invertebrados)
insectos = AnimalSubclass.create(name: 'insectos', animal_class: antropodos)

AnimalSpecie.create(name: 'mariposa', animal_subclass: insectos)
AnimalSpecie.create(name: 'mosca', animal_subclass: insectos)

aracnidos = AnimalSubclass.create(name: 'aracnidos', animal_class: antropodos)

AnimalSpecie.create(name: 'escorpion', animal_subclass: aracnidos)
AnimalSpecie.create(name: 'araña', animal_subclass: aracnidos)
