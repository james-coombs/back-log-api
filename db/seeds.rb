# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Log.create([
                { title: 'Super Mario Bros.',
                  platform: 'NES',
                  players: 'P. 1',
                  stage: '1-1',
                  notes: 'Jumped on a Goomba.',
                  passed: true, },
                { title: 'Metroid',
                  platform: 'NES',
                  players: 'P. 1',
                  stage: 'Brinstar',
                  notes: 'Got a Missle Tank.',
                  passed: false, },
                { title: 'Fallout 3',
                  platform: 'PC',
                  players: '',
                  stage: 'Nuketown',
                  notes: 'Drank dirty water.',
                  passed: false, },
                { title: 'Monopoly',
                  platform: 'Board Game',
                  players: 'Me, You',
                  stage: 'Turn 4',
                  notes: 'Went to Jail.',
                  passed: false, },
                { title: 'Pokemon Blue',
                  platform: 'GBC',
                  players: 'JRC',
                  stage: 'Pallet Town',
                  notes: 'Need to pick a starter.',
                  passed: false, },
                { title: 'Tic-Tac-Toe',
                  platform: 'Web App',
                  players: 'James',
                  stage: 'X\'s Turn',
                  notes: '[x,x,o,x,o]',
                  passed: true, }
            ])
