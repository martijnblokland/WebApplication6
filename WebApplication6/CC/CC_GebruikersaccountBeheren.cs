using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Pit4Casus.BU;

namespace Pit4Casus.CC
{
    public class CC_GebruikersaccountBeheren
    {
        BU_Gebruiker Gebruiker = new BU_Gebruiker();

        List<int> alleGebruikerIds = new List<int>();
        List<string> alleGebruikerNamen = new List<string>();
        List<string> alleWachtwoorden = new List<string>();
        List<bool> alleFuncties = new List<bool>();

        public List<int> AlleGebruikerIds
        {
            get
            {
                return alleGebruikerIds;
            }
        }

        public List<string> AlleGebruikerNamen
        {
            get
            {
                return alleGebruikerNamen;
            }
        }

        public List<string> AlleWachtwoorden
        {
            get
            {
                return alleWachtwoorden;
            }
        }

        public List<bool> AlleFuncties
        {
            get
            {
                return alleFuncties;
            }
        }



        public CC_GebruikersaccountBeheren()
        {
            foreach (int id in Gebruiker.AlleGebruikerIds())
            {
                Gebruiker = new BU_Gebruiker(id);

                alleGebruikerIds.Add(Gebruiker.GebruikerId);
                alleGebruikerNamen.Add(Gebruiker.GebruikerNaam);
                alleWachtwoorden.Add(Gebruiker.GebruikerWachtwoord);
                alleFuncties.Add(Gebruiker.GebruikerFunctie);
            }
        }

        public void GebruikerVerwijderen(int id)
        {
            Gebruiker.GebruikerVerwijderen(id);
        }

        public void GebruikerAanpassen(int id, string gebruikernaam, string wachtwoord, bool functie)
        {
            Gebruiker = new BU_Gebruiker(id);

            Gebruiker.GebruikerNaam = gebruikernaam;
            Gebruiker.GebruikerWachtwoord = wachtwoord;
            Gebruiker.GebruikerFunctie = functie;

            Gebruiker.GebruikerAanpassingenOpslaan();
        }
    }
}