---------------------------------------------------------------------------------------------------
-- /me

-- Global configuration
Config = {
    language = 'fr',
    color = { r = 230, g = 230, b = 230, a = 255 }, -- Text color
    font = 0, -- Text font
    time = 5000, -- Duration to display the text (in ms)
    scale = 0.5, -- Text scale
    dist = 250, -- Min. distance to draw 
}

-- Languages available
Languages = {
    ['en'] = {
        commandName = 'me',
        commandDescription = 'Display an action above your head.',
        commandSuggestion = {{ name = 'action', help = '"scratch his nose" for example.'}},
        prefix = 'the person '
    },
    ['fr'] = {
        commandName = 'me',
        commandDescription = 'Affiche une action au dessus de votre tête.',
        commandSuggestion = {{ name = 'action', help = '"se gratte le nez" par exemple.'}},
        prefix = 'l\'individu '
    },
    ['dk'] = {
        commandName = 'me',
        commandDescription = 'Viser en handling over hovedet.',
        commandSuggestion = {{ name = 'Handling', help = '"Tager en smøg op ad lommen" for eksempel.'}},
        prefix = 'Personen '
    },
}

---------------------------------------------------------------------------------------------------
-- Location de voiture 

Config.notif = 2 -- Type de notification 1 = ESX notification | 2 = OX notification


Config.location = {
    {
        id = "location1", -- Suite de chiffre ou de lettre et unique pour chaque location

        pos = { x = 239.92, y = -861.94, z = 29.75, h = 340.08 }, -- Position du blips ainsi que du ped
        name = 'csb_car3guy1', -- Nom du ped
        blocking = true, -- true = ped bloquer | false = ped qui change de place si vous le frapper
        invincible = true, -- true = ped imortel | false = ped susceptible de mourir
        freeze = true, -- true = le ped reste statique | false = le ped n'est pas statique

        icon = 'fa-solid fa-car-side', -- Icône de l'interaction alt : https://fontawesome.com/search
        titre = 'Location de voiture', -- Nom de l'interaction alt
        distance = 2.5, -- Distance à laquelle vous pouvez interagir

        posspawn = { x = 240.92, y = -859.09, z = 29.60, h = 248.83 }, -- Position de spawn du véhicule
        tempslocation = 30000, -- Temps de location en miliseconde

        blip = {
            sprite = 464, -- Icon du blip : https://docs.fivem.net/docs/game-references/blips/
            scale = 0.8, -- Taille du blip
            colour = 11,  -- Couleur du blip : https://docs.fivem.net/docs/game-references/blips/
            name = "Location de véhicule", -- Nom du blip
        },

        vehicle = {
            {
                label = "Faggio", -- Nom du menu
                vehicule = "faggio", -- nom du véhicule
                description = "Vous pouvez louer un faggio pour : 20$", -- Descritption du menu
                prix = 20, -- Prix du véhicule
                image = "https://docs.fivem.net/vehicles/faggio.webp", -- Image du véhicule
            },
            {
                label = "Sultan", -- Nom du menu
                vehicule = "sultan", -- nom du véhicule
                description = "Vous pouvez louer une sultan pour : 300$", -- Descritption du menu
                prix = 300, -- Prix du véhicule
                image = "https://www.grandtheftauto5.fr/images/vehicules/hd2020/sultan.jpg", -- Image du véhicule
            },
        }
    },  
    {
        id = "location2", -- Suite de chiffre ou de lettre et unique pour chaque location

        pos = { x = 1894.66, y = 3715.32, z = 32.75, h = 124.56 }, -- Position du blips ainsi que du ped
        name = 'csb_car3guy1', -- Nom du ped
        blocking = true, -- true = ped bloquer | false = ped qui change de place si vous le frapper
        invincible = true, -- true = ped imortel | false = ped susceptible de mourir
        freeze = true, -- true = le ped reste statique | false = le ped n'est pas statique

        icon = 'fa-solid fa-car-side', -- Icône de l'interaction alt : https://fontawesome.com/search
        titre = 'Location de voiture', -- Nom de l'interaction alt
        distance = 2.5, -- Distance à laquelle vous pouvez interagir

        posspawn = { x = 1890.39, y = 3712.03, z = 32.85, h = 213.11 }, -- Position de spawn du véhicule
        tempslocation = 30000, -- Temps de location en miliseconde

        blip = {
            sprite = 464, -- Icon du blip : https://docs.fivem.net/docs/game-references/blips/
            scale = 0.8, -- Taille du blip
            colour = 11,  -- Couleur du blip : https://docs.fivem.net/docs/game-references/blips/
            name = "Location de véhicule", -- Nom du blip
        },

        vehicle = {
            {
                label = "Faggio", -- Nom du menu
                vehicule = "faggio", -- nom du véhicule
                description = "Vous pouvez louer un faggio pour : 20$", -- Descritption du menu
                prix = 20, -- Prix du véhicule
                image = "https://docs.fivem.net/vehicles/faggio.webp", -- Image du véhicule
            },
            {
                label = "Sultan", -- Nom du menu
                vehicule = "sultan", -- nom du véhicule
                description = "Vous pouvez louer une sultan pour : 300$", -- Descritption du menu
                prix = 300, -- Prix du véhicule
                image = "https://www.grandtheftauto5.fr/images/vehicules/hd2020/sultan.jpg", -- Image du véhicule
            },
        }
    },
    {
        id = "location3", -- Suite de chiffre ou de lettre et unique pour chaque location

        pos = { x = 1702.86, y = 4917.30, z = 42.22, h = 145.94 }, -- Position du blips ainsi que du ped
        name = 'csb_car3guy1', -- Nom du ped
        blocking = true, -- true = ped bloquer | false = ped qui change de place si vous le frapper
        invincible = true, -- true = ped imortel | false = ped susceptible de mourir
        freeze = true, -- true = le ped reste statique | false = le ped n'est pas statique

        icon = 'fa-solid fa-car-side', -- Icône de l'interaction alt : https://fontawesome.com/search
        titre = 'Location de voiture', -- Nom de l'interaction alt
        distance = 2.5, -- Distance à laquelle vous pouvez interagir

        posspawn = { x = 1691.52, y = 4916.34, z = 42.08, h = 64.46 }, -- Position de spawn du véhicule
        tempslocation = 30000, -- Temps de location en miliseconde

        blip = {
            sprite = 464, -- Icon du blip : https://docs.fivem.net/docs/game-references/blips/
            scale = 0.8, -- Taille du blip
            colour = 11,  -- Couleur du blip : https://docs.fivem.net/docs/game-references/blips/
            name = "Location de véhicule", -- Nom du blip
        },

        vehicle = {
            {
                label = "Faggio", -- Nom du menu
                vehicule = "faggio", -- nom du véhicule
                description = "Vous pouvez louer un faggio pour : 20$", -- Descritption du menu
                prix = 20, -- Prix du véhicule
                image = "https://docs.fivem.net/vehicles/faggio.webp", -- Image du véhicule
            },
            {
                label = "Sultan", -- Nom du menu
                vehicule = "sultan", -- nom du véhicule
                description = "Vous pouvez louer une sultan pour : 300$", -- Descritption du menu
                prix = 300, -- Prix du véhicule
                image = "https://www.grandtheftauto5.fr/images/vehicules/hd2020/sultan.jpg", -- Image du véhicule
            },
        }
    },
    {
        id = "location3", -- Suite de chiffre ou de lettre et unique pour chaque location

        pos = { x = -269.99, y = 6073.13, z = 31.46, h = 182.81 }, -- Position du blips ainsi que du ped
        name = 'csb_car3guy1', -- Nom du ped
        blocking = true, -- true = ped bloquer | false = ped qui change de place si vous le frapper
        invincible = true, -- true = ped imortel | false = ped susceptible de mourir
        freeze = true, -- true = le ped reste statique | false = le ped n'est pas statique

        icon = 'fa-solid fa-car-side', -- Icône de l'interaction alt : https://fontawesome.com/search
        titre = 'Location de voiture', -- Nom de l'interaction alt
        distance = 2.5, -- Distance à laquelle vous pouvez interagir

        posspawn = { x = -267.79, y = 6067.05, z = 31.46, h = 123.57 }, -- Position de spawn du véhicule
        tempslocation = 30000, -- Temps de location en miliseconde

        blip = {
            sprite = 464, -- Icon du blip : https://docs.fivem.net/docs/game-references/blips/
            scale = 0.8, -- Taille du blip
            colour = 11,  -- Couleur du blip : https://docs.fivem.net/docs/game-references/blips/
            name = "Location de véhicule", -- Nom du blip
        },

        vehicle = {
            {
                label = "Faggio", -- Nom du menu
                vehicule = "faggio", -- nom du véhicule
                description = "Vous pouvez louer un faggio pour : 20$", -- Descritption du menu
                prix = 20, -- Prix du véhicule
                image = "https://docs.fivem.net/vehicles/faggio.webp", -- Image du véhicule
            },
            {
                label = "Sultan", -- Nom du menu
                vehicule = "sultan", -- nom du véhicule
                description = "Vous pouvez louer une sultan pour : 300$", -- Descritption du menu
                prix = 300, -- Prix du véhicule
                image = "https://www.grandtheftauto5.fr/images/vehicules/hd2020/sultan.jpg", -- Image du véhicule
            },
        }
    },
}

---------------------------------------------------------------------------------------------------
-- Météo

Config.adminweather = { -- Rank pour avoir accès au commandes
    --'owner', 
    'admin',
    'modo'
} 

