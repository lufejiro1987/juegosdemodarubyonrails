# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all
Game.destroy_all
Category.create(
    [
        {
            name: 'familiar'
        },
        {
            name: 'accion'
        },
        {
            name: 'aventura'
        },
        {
            name: 'rol'
        },
        {
            name: 'terror'
        },
        {
            name: 'estrategia'
        }

    ]
)

Game.create(
    [
        {
            name: 'doom',
            year: 2020
        },
        {
            name: 'civilization VI',
            year: 2019
        },
        {
            name: 'kingdom hearts',
            year: 2017
        },
        {
            name: 'COD warzone',
            year: 2019
        },
        {
            name: 'Dark Souls 3',
            year: 2019
        }
    ]
)