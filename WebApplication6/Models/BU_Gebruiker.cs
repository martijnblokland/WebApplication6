using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Pit4Casus.BU
{
    public class BU_Gebruiker
    {
        GebruikerSet Gebruiker = new GebruikerSet();
        List<GebruikerSet> AlleGebruikers;
        List<int> AlleIds = new List<int>();

        int gebruikerId;
        string gebruikerNaam;
        string gebruikerWachtwoord;
        bool gebruikerFunctie = false;

        public int GebruikerId
        {
            get
            {
                return gebruikerId;
            }

            set
            {
                gebruikerId = value;
            }
        }

        public string GebruikerNaam
        {
            get
            {
                return gebruikerNaam;
            }

            set
            {
                gebruikerNaam = value;
            }
        }

        public string GebruikerWachtwoord
        {
            get
            {
                return gebruikerWachtwoord;
            }

            set
            {
                gebruikerWachtwoord = value;
            }
        }

        public bool GebruikerFunctie
        {
            get
            {
                return gebruikerFunctie;
            }

            set
            {
                gebruikerFunctie = value;
            }
        }

        // Lege BU_Gebruiker
        public BU_Gebruiker()
        {
        }

        // Gebruiker ophalen met gebruikernaam
        public BU_Gebruiker(string gebruikernaam)
        {
            using (pit4DBEntities context = new pit4DBEntities())
            {
                if (context.GebruikerSet.Any(a => a.GebruikerNaam == gebruikernaam))
                {
                    Gebruiker = context.GebruikerSet.Where(b => b.GebruikerNaam == gebruikernaam).FirstOrDefault();

                    gebruikerId = Gebruiker.GebruikerID;
                    gebruikerNaam = Gebruiker.GebruikerNaam;
                    gebruikerWachtwoord = Gebruiker.GebruikerWachtwoord;
                    gebruikerFunctie = Gebruiker.GebruikerFunctie;
                }
            }
        }

        // Nieuwe Gebruiker opslaan in database
        public BU_Gebruiker(string gebruikernaam, string wachtwoord, bool functie)
        {
            using (pit4DBEntities context = new pit4DBEntities())
            {
                if (context.GebruikerSet.Any(a => a.GebruikerNaam != gebruikernaam))
                {
                    Gebruiker.GebruikerNaam = gebruikernaam;
                    Gebruiker.GebruikerWachtwoord = wachtwoord;
                    Gebruiker.GebruikerFunctie = functie;

                    context.GebruikerSet.Add(Gebruiker);
                    context.SaveChanges();

                    // Nieuwe Gebruiker gegevens ophalen uit database
                    Gebruiker = context.GebruikerSet.Where(b => b.GebruikerNaam == gebruikernaam).FirstOrDefault();

                    gebruikerId = Gebruiker.GebruikerID;
                    gebruikerNaam = Gebruiker.GebruikerNaam;
                    gebruikerWachtwoord = Gebruiker.GebruikerWachtwoord;
                    gebruikerFunctie = Gebruiker.GebruikerFunctie;
                }
            }
        }

        // Gebruiker ophalen met id
        public BU_Gebruiker(int id)
        {
            using (pit4DBEntities context = new pit4DBEntities())
            {
                if (context.GebruikerSet.Any(a => a.GebruikerID == id))
                {
                    Gebruiker = context.GebruikerSet.Where(b => b.GebruikerID == id).FirstOrDefault();

                    if (Gebruiker != null)
                    {
                        gebruikerId = Gebruiker.GebruikerID;
                        gebruikerNaam = Gebruiker.GebruikerNaam;
                        gebruikerWachtwoord = Gebruiker.GebruikerWachtwoord;
                        gebruikerFunctie = Gebruiker.GebruikerFunctie;
                    }
                }
            }
        }
        // Alle Gebruiker ids ophalen
        public List<int> AlleGebruikerIds()
        {
            using (pit4DBEntities context = new pit4DBEntities())
            {
                AlleGebruikers = context.GebruikerSet.ToList();
            }
            foreach (GebruikerSet gebruiker in AlleGebruikers)
            {
                AlleIds.Add(gebruiker.GebruikerID);
            }

            return AlleIds;
        }

        // Bestaande Gebruiker aanpassingen opslaan in database
        public void GebruikerAanpassingenOpslaan()
        {
            if (Gebruiker != null)
            {
                Gebruiker.GebruikerNaam = gebruikerNaam;
                Gebruiker.GebruikerWachtwoord = gebruikerWachtwoord;
                Gebruiker.GebruikerFunctie = gebruikerFunctie;
            }
            
            using (pit4DBEntities context = new pit4DBEntities())
            {
                context.Entry(Gebruiker).State = System.Data.Entity.EntityState.Modified;
                context.SaveChanges();
            }
        }

        // Bestaande Gebruiker verwijderen
        public void GebruikerVerwijderen(int id)
        {
            using (pit4DBEntities context = new pit4DBEntities())
            {
                if (context.GebruikerSet.Any(a => a.GebruikerID == id))
                {
                    Gebruiker = context.GebruikerSet.Where(b => b.GebruikerID == id).FirstOrDefault();
                }
            }

            using (pit4DBEntities context = new pit4DBEntities())
            {
                context.Entry(Gebruiker).State = System.Data.Entity.EntityState.Deleted;
                context.SaveChanges();
            }
        }
    }
}