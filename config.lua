Config = {}

-- Items must be registered inside the items table in database
-- Gli oggetti devono essere registrati nella tabella items del database

-- EN: About hunger and thirst, the number inside the '' will be the percentage of hunger or thirst refilled, for example 20 is 20% of the status
-- IT: Il numero tra le '' per la fame e la sete sarà la percentuale aggiunta alla fame od alla sete, per esempio 20 sta per 20% dello stato

Config.Debug = true -- EN: Prints in console all foods and drinks that are registered       IT: Mostra nella console tutte le bevande e cibi registrati

Config.Items = {
    {
        name = 'water', -- EN: Name of the item in Database || Not the display name !!      IT: Nome dell'oggetto nel database || Non il nome visualizzato dal player
        displayName = 'Acqua', -- EN: Name of the item in the inventory || Used for notification purposes!!     IT: Nome dell'oggetto che visualizza il player || Usato per le notifiche
        hunger = nil, -- EN: Nil for Drinks      IT: Imposta nil per le bibite || Senza le virgolette
        thirst = 20, -- EN: Nil for foods      IT: Imposta nil per i cibi || Senza le virgolette
    },
    {
        name = 'hamburger', -- EN: Name of the item in Database || Not the display name !!      IT: Nome dell'oggetto nel database || Non il nome visualizzato dal player
        displayName = 'Hamburger di Carne', -- EN: Name of the item in the inventory || Used for notification purposes!!     IT: Nome dell'oggetto che visualizza il player || Usato per le notifiche
        hunger = 25, -- EN: Nil for Drinks      IT: Imposta nil per le bibite || Senza le virgolette
        thirst = nil -- EN: Nil for foods      IT: Imposta nil per i cibi || Senza le virgolette
    },
}

Config.DrinkText = "Hai bevuto 1x "
Config.EatText = "Hai mangiato 1x " 
Config.notNilErr1 = "L'oggetto "
Config.notNilErr2 = " non è stato registrato poichè sia la fame che la sete erano diversi da nil"
