using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Pit4Casus.BU;

namespace Pit4Casus.CC
{
    public class CC_Inloggen
    {
        BU_Gebruiker Gebruiker;

        public bool CheckLogin(string gebruikernaam, string wachtwoord)
        {
            Gebruiker = new BU_Gebruiker(gebruikernaam);

            if (Gebruiker.GebruikerNaam != null)
            {
                if (Gebruiker.GebruikerWachtwoord == wachtwoord)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }

        public bool OphalenFunctie()
        {
            return Gebruiker.GebruikerFunctie;
        }

        public string OphalenGebruikerNaam()
        {
            return Gebruiker.GebruikerNaam;
        }

        public int OphalenGebruikerInt()
        {
            return Gebruiker.GebruikerId;
        }
    }
}