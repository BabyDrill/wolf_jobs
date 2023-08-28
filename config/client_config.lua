--Developed by BabyDrill - Discord: https://discord.gg/yjPGt2YMcg
Config = {}

Config.rprogress = true

Config.Marker = {
    gridsystem = {
        key = "E",
        type = 9,
        color = { r = 255, b = 255, g = 255 },
        size = vector3(1.0, 1.0, 1.0),
        scale = vector3(0.7, 0.7, 0.7),
        distance = 5
    }
}

Config.Ped = {
    job_center = {
        enable = true,
        hash = 0x62018559,
        position = { x = 1200.6959228516, y = -1277.1409912109, z = 34.375221252441, h = 0.0}
    },
    job_pizza = {
        enable = true,
        hash = 0xED0CE4C6,
        position = { x = 282.21017456055, y = -975.41375732422, z = 28.871349334717, h = -10.0}
    },
    job_boscaiolo = {
        enable = true,
        hash = 0x62018559,
        position = { x = -552.25311279297, y = 5348.5703125, z = 73.743057250977, h = 70.0}
    },
    job_agricoltore = {
        enable = true,
        hash = 0x14D7B4E0,
        position = { x = 406.1462097168, y = 6526.2900390625, z = 26.760452270508, h = 85.0}
    },
    job_macellaio = {
        enable = true,
        hash = 0x0F977CEB,
        position = { x = -81.737258911133, y = 6238.140625, z = 30.09158706665, h = 130.0}
    },
    job_pescatore = {
        enable = true,
        hash = 0x0E32D8D0,
        position = { x = 714.48840332031, y = 4099.556640625, z = 34.785179138184, h = 90.0}
    },
    job_postino = {
        enable = true,
        hash = 0xCA0050E9,
        position = { x = 69.0595703125, y = 127.80274200439, z = 78.213409423828, h = 170.0}
    }
}

Config.Blip = {
    job_center = {
        enable = true,
        id = 685,
        name = "Centro Impieghi",
        color = 0,
        scale = 0.7
    },
    job_pizza = {
        enable = true,
        id = 488,
        name = "Pizzeria",
        color = 1,
        scale = 0.7
    },
    job_boscaiolo = {
        enable = true,
        id = 253,
        name = "Falegniameria",
        color = 0,
        scale = 0.7
    },
    job_agricoltore = {
        enable = true,
        id = 285,
        name = "Campo di Agricoltura",
        color = 2,
        scale = 0.7
    },
    job_macellaio = {
        enable = true,
        id = 171,
        name = "Macellaio",
        color = 5,
        scale = 0.7
    },
    job_pescatore = {
        enable = true,
        id = 68,
        name = "Pesca",
        color = 46,
        scale = 0.7
    },
    job_postino = {
        enable = true,
        id = 318,
        name = "Centro Poste",
        color = 46,
        scale = 0.7
    }
}

Config.Uniforms = {
    job_pizza = {
        male = {
            ['tshirt_1'] = 50,  ['tshirt_2'] = 0,
            ['torso_1'] = 40,   ['torso_2'] = 0,
            ['arms'] = 0,
            ['pants_1'] = 33,   ['pants_2'] = 0,
            ['shoes_1'] = 25,   ['shoes_2'] = 0,
            ['decals_1'] = 0,   ['decals_2'] = 0,
        },
        female = {
            ['tshirt_1'] = 14,  ['tshirt_2'] = 0,
            ['torso_1'] = 84,   ['torso_2'] = 0,
            ['arms'] = 0,
            ['pants_1'] = 3,   ['pants_2'] = 0,
            ['shoes_1'] = 52,   ['shoes_2'] = 0,
            ['chain_1'] = 3,    ['chain_2'] = 0
        }
    },
    job_boscaiolo = {
        male = {
            ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
            ['torso_1'] = 13,   ['torso_2'] = 5,
            ['arms'] = 0,
            ['pants_1'] = 33,   ['pants_2'] = 0,
            ['shoes_1'] = 53,   ['shoes_2'] = 0,
            ['decals_1'] = 0,   ['decals_2'] = 0,
        },
        female = {
            ['tshirt_1'] = 14,  ['tshirt_2'] = 0,
            ['torso_1'] = 84,   ['torso_2'] = 0,
            ['arms'] = 0,
            ['pants_1'] = 3,   ['pants_2'] = 0,
            ['shoes_1'] = 52,   ['shoes_2'] = 0,
            ['chain_1'] = 3,    ['chain_2'] = 0
        }
    },
    job_agricoltore = {
        male = {
            ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
            ['torso_1'] = 42,   ['torso_2'] = 0,
            ['arms'] = 0,
            ['pants_1'] = 36,   ['pants_2'] = 0,
            ['shoes_1'] = 39,   ['shoes_2'] = 0,
            ['decals_1'] = 0,   ['decals_2'] = 0,
        },
        female = {
            ['tshirt_1'] = 14,  ['tshirt_2'] = 0,
            ['torso_1'] = 84,   ['torso_2'] = 0,
            ['arms'] = 0,
            ['pants_1'] = 3,   ['pants_2'] = 0,
            ['shoes_1'] = 52,   ['shoes_2'] = 0,
            ['chain_1'] = 3,    ['chain_2'] = 0
        }
    },
    job_macellaio = {
        male = {
            ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
            ['torso_1'] = 41,   ['torso_2'] = 0,
            ['arms'] = 0,
            ['pants_1'] = 38,   ['pants_2'] = 2,
            ['shoes_1'] = 51,   ['shoes_2'] = 0,
            ['decals_1'] = 0,   ['decals_2'] = 0,
        },
        female = {
            ['tshirt_1'] = 14,  ['tshirt_2'] = 0,
            ['torso_1'] = 84,   ['torso_2'] = 0,
            ['arms'] = 0,
            ['pants_1'] = 3,   ['pants_2'] = 0,
            ['shoes_1'] = 52,   ['shoes_2'] = 0,
            ['chain_1'] = 3,    ['chain_2'] = 0
        }
    },
    job_pescatore = {
        male = {
            ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
            ['torso_1'] = 41,   ['torso_2'] = 0,
            ['arms'] = 0,
            ['pants_1'] = 38,   ['pants_2'] = 2,
            ['shoes_1'] = 51,   ['shoes_2'] = 0,
            ['decals_1'] = 0,   ['decals_2'] = 0,
        },
        female = {
            ['tshirt_1'] = 14,  ['tshirt_2'] = 0,
            ['torso_1'] = 84,   ['torso_2'] = 0,
            ['arms'] = 0,
            ['pants_1'] = 3,   ['pants_2'] = 0,
            ['shoes_1'] = 52,   ['shoes_2'] = 0,
            ['chain_1'] = 3,    ['chain_2'] = 0
        }
    },
    job_postino = {
        male = {
            ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
            ['torso_1'] = 41,   ['torso_2'] = 0,
            ['arms'] = 0,
            ['pants_1'] = 38,   ['pants_2'] = 2,
            ['shoes_1'] = 51,   ['shoes_2'] = 0,
            ['decals_1'] = 0,   ['decals_2'] = 0,
        },
        female = {
            ['tshirt_1'] = 14,  ['tshirt_2'] = 0,
            ['torso_1'] = 84,   ['torso_2'] = 0,
            ['arms'] = 0,
            ['pants_1'] = 3,   ['pants_2'] = 0,
            ['shoes_1'] = 52,   ['shoes_2'] = 0,
            ['chain_1'] = 3,    ['chain_2'] = 0
        }
    }
}

--//CONFIG ALL JOB\\--
Config.PizzaCase = {
    [1] = { x = -284.18493652344, y = -601.56506347656, z = 33.553203582764, money = 50 },
    [2] = { x = 759.04553222656, y = -815.98980712891, z = 26.297037124634, money = 100 },
    [3] = { x = 21.076736450195, y = -1505.8889160156, z = 31.850135803223, money = 60 },
    [4] = { x = 294.77462768555, y = -1447.6452636719, z = 29.966617584229, money = 70 },
    [5] = { x = 109.44779968262, y = -633.86157226563, z = 44.244083404541, money = 120 },
}

Config.VenditaPesce = {

    Fish1 = { money = 10},
    Fish2 = { money = 30},
    Fish3 = { money = 70},
    Fish4 = { money = 100},

}

Config.PostinoCase = {
    [1] = { x = 206.65759277344, y = -85.700736999512, z = 69.230392456055, money = math.random(50,100)},
    [2] = { x = 315.34490966797, y = -128.08708190918, z = 69.977027893066, money = math.random(50,100)},
    [3] = { x = 352.71774291992, y = -142.67356872559, z = 66.688270568848, money = math.random(50,100)},
    [4] = { x = 5.8606462478638, y = -9.0574350357056, z = 70.116180419922, money = math.random(50,100)},
    [5] = { x = -263.77307128906, y = 98.914352416992, z = 69.294418334961, money = math.random(50,100)},
    [6] = { x = -400.41009521484, y = 146.64721679688, z = 65.722793579102, money = math.random(50,100)},
    [7] = { x = -182.79208374023, y = 219.14149475098, z = 88.771286010742, money = math.random(50,100)},
    [8] = { x = -68.21337890625, y = 214.12915039062, z = 97.228988647461, money = math.random(50,100)},
    [9] = { x = -34.307403564453, y = 347.5002746582, z = 113.92077636719, money = math.random(50,100)},
    [10] = { x = -413.81188964844, y = 220.80534362793, z = 83.430267333984, money = math.random(50,100)},
}

Config.PrezzoLegnio = 100--$
Config.PrezzoPollo = 80--$
Config.PrezzoArancia = 40--$

Lang = {
    ["job"] = "Premi [E] per fare un colloquio",
    ["direttore"] = "Premi [E] per parlare con il direttore",
    ["vestiti"] = "Premi [E] per indosarre i vestiti da lavoro",
    ["garage"] = "Premi [E] per aprire il garage",
    ["pizza2"] = "Premi [E] per prendere una pizza",
    ["postino2"] = "Premi [E] per vendere il pacco",
    ["boscaiolo2"] = "Premi [E] per tagliare la legnia",
    ["agricoltore2"] = "Premi [E] per raccogliere le Arance",
    ["macellaio2"] = "Premi [E] per raccogliere le Galline",
    ["vendita"] = "Premi [E] per interagire nella vendita",
    ["macellaio3"] = "Premi [E] per cuninare le Galline",
    ["macellaio4"] = "Premi [E] per impacchettare le Galline",
    ["pescatore2"] = "Premi [E] per andare a Pescare!",
    ["pescainfo"] = "Premi [E] per pescare!",
    ["success"] = "Hai ottenuto il lavoro con successo! Ora sei un:",
    ["assunto"] = "Sei stato assunto dal direttore! Cambiati i Vesiti!",
    ["notassunto"] = "Devi essere prima assunto dal direttore!",
    ["assunto2"] = "Sei già stato assunto! Vai a Lavorare!",
    ["gps"] = "Vai alla meta impostata sul tuo GPS!",
    ["pizza"] = "Pizzaiolo",
    ["boscaiolo"] = "Boscaiolo",
    ["agricoltore"] = "Agricoltore",
    ["macellaio"] = "Macellaio",
    ["pescatore"] = "Pescatore",
    ["postino"] = "Postino",
    ["vendilegnio"] = "Vendi Legnio",
    ["vendiarancia"] = "Vendi Arancia",
    ["vendipollo"] = "Vendi Pollo",
    ["importo"] = "Inserisci un importo da Vendere",
    ["importo_invalido"] = "Devi inserire un importo valido!",
    ["ottienilavoro"] = "Ottieni Lavoro",
    ["impasto_pizza"] = "Impastando Pizza..",
    ["tagliando_legnia"] = "Tagliando Legnia...",
    ["processando_legnia"] = "Processando Legnia...",
    ["raccogliendo_galline"] = "Raccogliendo Galline...",
    ["processando_galline"] = "Processando Galline...",
    ["raccogliendo_arancia"] = "Raccogliendo Arance...",
    ["imballaggio_galline"] = "Imballaggio Galline...",
    ["posa_pizza"] = "Hai preso una pizza! Vai a venderla al civico impostato sul GPS!",
    ["posa_legnia"] = "Hai preso della legnia! Racogline un'altro poi e portala a processare!",
    ["posa_legnia2"] = "Hai processato della legnia! Per vendere vai all'import & exeport!",
    ["posa_gallina"] = "Hai cuninato delle galline! Ora vai a impacchettarle!",
    ["posa_gallina2"] = "Hai imballato delle galline! Per vendere vai all'import & exeport!",
    ["no_outfit"] = "Al momento il tuo outfits non esiste!",
    ["notjob_pizza"] = "Devi essere un pizzaiolo per parlare con il direttore!",
    ["notjob_boscaiolo"] = "Devi essere un boscaiolo per parlare con il direttore!",
    ["notjob_agricoltore"] = "Devi essere un agricoltore per parlare con il direttore!",
    ["notjob_macellaio"] = "Devi essere un macellaio per parlare con il direttore!",
    ["notjob_pescatore"] = "Devi essere un pescatore per parlare con il direttore!",
    ["notjob_postino"] = "Devi essere un postino per parlare con il direttore!",
    ["projob"] = "Parlando con il Direttore...",
    ["pescando"] = "Pescando..",
    ["vestiti1"] = "Hai già indossato i vestiti! Torna a Lavorare!",
    ["vestiti2"] = "Devi prima indossare gli abiti da lavoro!",
    ["selezionaveicolo"] = "Seleziona un Veicolo",
    ["sfortunato"] = "Cavolo sei stato sfortunato! Non hai preso niente e si è rotta pure la canna da pesca!",
    ["pescepreso"] = "Hai preso un pesce!",
    ["ritiraveicolo"] = "Ritira Veicolo",
    ["depoveicolo"] = "Deposita Veicolo",
    ["vendipesce"] = "Vendi Pesci",
    ["vendi"] = "Vendi ",
    ["importo_alto"] = "Non hai abbastanza materiale da vendere!",
    ["postinolavoro"] = "Incomincia Lavoro",
    ["progresspacco"] = "Imballando Pacco...",
    ["paccononcelhai"] = "Devi prima prendere un'altro pacco...",
    ["paccovenduto"] = "Hai venduto il pacco! Ritorna al centro poste!",
    ["postinoincorso"] = "Devi cosegniare prima il pacco!",
    ["vaiapescare"] = "Pesca",
    ["postimacchinafiniti"] = "Tutti i posti macchina sono occupati aspetta che se ne liberi uno!",
    ["nientepesci"] = "Non hai nessun pesce da vendere!",
    ["intveicolo"] = "Sei già in un veicolo!",
    ["pesca_blip"] = "Zona di Pesca",
    ["pesca_barca"] = "Per pescare devi rimanere sul bordo della barca!",
    ["veicolo_bloccato"] = "C'è un altro veicolo nell'area di spawn, attendere",
    ["cannapesca"] = "Devi avere una canna da pesca per pescare!",
    ["have_pizza"] = "Hai già una pizza in mano, vai subito a cosegniare la pizza!",
    ["dont_pizza"] = "Devi avere una pizza per venderla",
    ["pizza_venduta"] = "Hai venduto una pizza con successo! Torna alla Pizzeria!",
    ["interagendo_vestiti"] = "Ti stai vestendo...",
    ["materiale"] = "Non hai abbastanza materiale da processare!",
    ["raccolto"] = "Hai raccolto: ",
    ["arancie"] = "Arance",
    ["galline"] = "Galline"
}
--Developed by BabyDrill - Discord: https://discord.gg/yjPGt2YMcg