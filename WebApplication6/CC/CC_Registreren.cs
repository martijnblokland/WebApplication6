using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Pit4Casus.BU;

namespace Pit4Casus.CC
{
    public class CC_Registreren
    {
        BU_Gebruiker Gebruiker;

        // Gebruiker Registreren in database (stuurt 'false' terug als gebruikernaam al bestaat)
        public bool GebruikerRegistreren(string gebruikernaam, string wachtwoord, bool functie)
        {
            Gebruiker = new BU_Gebruiker(gebruikernaam);

            if (Gebruiker.GebruikerNaam == null)
            {
                Gebruiker = new BU_Gebruiker(gebruikernaam, wachtwoord, functie);
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}