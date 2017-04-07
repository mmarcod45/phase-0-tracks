museum = {
    hall_1: {
        hall_theme: 'Prehistoric',
        art_info: {
            total_paintings: 6,
            total_sculptures: 4
        },
        art_name: [
            "Bison Painting", 
            "Magdalenian Horse"
        ]
    },
    hall_2: {
        hall_theme: 'Egyptian',
        art_info: {
            total_paintings: 12,
            total_sculptures: 9
        },
        art_name: [
            "Nefertiti Bust", 
            "Narmer's Palette"
        ]
    },
    hall_3: {
        hall_theme: 'Greek',
        art_info: {
            total_paintings: 10,
            total_sculptures: 20
        },
        art_name: [
            "Venus de Milo",
            "Samothrace"
        ]
    }
}

# Uncomment each one and run individually to see the result:
# museum[:hall_1][:art_info]
# museum[:hall_3][:art_name][0]
# museum[:hall_3][:art_name][1]




classroom = {
    'row_1' => [
        'John',
        'Eric',
        'David',
        'Mary',
    ],
    'row_2' => [
        'Lisa',
        'Vincent',
        'Edward',
        'Ernest'
    ],
    'row_3' => [
        'Andy',
        'Georgia',
        'Henri',
        'Paul'
    ],
}

# Uncomment each one and run individually to see the result:
# classroom["row_2"][1]
# classroom["row_1"]
# classroom["row_3"][0]