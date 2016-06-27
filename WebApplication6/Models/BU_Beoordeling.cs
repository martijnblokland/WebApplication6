using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Pit4Casus.BU
{
    public class BU_Beoordeling
    {
        BeoordelingSet Beoordeling = new BeoordelingSet();
        int beoordelingId;
        int filmId;
        int gebruikerId;
        string review;
        int rating;

        List<int> AlleIds = new List<int>();

        public int BeoordelingId
        {
            get
            {
                return beoordelingId;
            }

            set
            {
                beoordelingId = value;
            }
        }

        public int FilmId
        {
            get
            {
                return filmId;
            }

            set
            {
                filmId = value;
            }
        }

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

        public string Review
        {
            get
            {
                return review;
            }

            set
            {
                review = value;
            }
        }

        public int Rating
        {
            get
            {
                return rating;
            }

            set
            {
                rating = value;
            }
        }

        // Lege BU_Beoordeling
        public BU_Beoordeling()
        { }

        // Lijst van alle beoordeling id's
        public List<int> AlleBeoordelingIds()
        {
            using (pit4DBEntities context = new pit4DBEntities())
            {
                foreach (BeoordelingSet beoordeling in context.BeoordelingSet.ToList())
                {
                    AlleIds.Add(beoordeling.BeoordelingID);
                }
            }
            return AlleIds;       
        }

        // Nieuwe Beoordeling aan database toevoegen (CREATE)
        public void CreateBeoordeling()
        {
            using (pit4DBEntities context = new pit4DBEntities())
            {
                if (context.BeoordelingSet.Any(b => b.FilmFilmID != filmId || b.GebruikerGebruikerID != gebruikerId))
                {
                    Beoordeling.FilmFilmID = filmId;
                    Beoordeling.GebruikerGebruikerID = gebruikerId;
                    Beoordeling.Review = review;
                    Beoordeling.Rating = rating;

                    context.BeoordelingSet.Add(Beoordeling);
                    context.SaveChanges();

                    // Nieuwe Beoordeling uit database halen
                    Beoordeling = context.BeoordelingSet.Where(b => b.FilmFilmID == filmId && b.GebruikerGebruikerID == gebruikerId).FirstOrDefault();

                    beoordelingId = Beoordeling.BeoordelingID;
                    filmId = Beoordeling.FilmFilmID;
                    gebruikerId = Beoordeling.GebruikerGebruikerID;
                    review = Beoordeling.Review;
                    rating = Beoordeling.Rating;
                }
            }
        }

        // Beoordeling ophalen met beoordelingId (READ)
        public void ReadBeoordelingMetFilmIdEnGebruikerId()
        {
            using (pit4DBEntities context = new pit4DBEntities())
            {
                if (context.BeoordelingSet.Any(b => b.FilmFilmID == filmId && b.GebruikerGebruikerID == gebruikerId))
                {
                    Beoordeling = context.BeoordelingSet.Where(b => b.FilmFilmID == filmId && b.GebruikerGebruikerID == gebruikerId).FirstOrDefault();

                    filmId = Beoordeling.FilmFilmID;
                    gebruikerId = Beoordeling.GebruikerGebruikerID;
                    review = Beoordeling.Review;
                    rating = Beoordeling.Rating;
                }
            }
        }

        // Bestaande Beoordeling aanpassingen opslaan in database (UPDATE)
        public void UpdateBeoordeling()
        {
            if (Beoordeling.BeoordelingID > 0)
            {
                Beoordeling.FilmFilmID = filmId;
                Beoordeling.GebruikerGebruikerID = gebruikerId;
                Beoordeling.Review = review;
                Beoordeling.Rating = rating;

                using (pit4DBEntities context = new pit4DBEntities())
                {
                    context.Entry(Beoordeling).State = System.Data.Entity.EntityState.Modified;
                    context.SaveChanges();
                }
            }
        }

        // Bestaande Beoordeling verwijderen uit de database (DELETE)
        public void DeleteBeoordeling()
        {
            using (pit4DBEntities context = new pit4DBEntities())
            {
                if (context.BeoordelingSet.Any(a => a.BeoordelingID == beoordelingId))
                {
                    Beoordeling = context.BeoordelingSet.Where(b => b.BeoordelingID == beoordelingId).FirstOrDefault();
                }
            }

            using (pit4DBEntities context = new pit4DBEntities())
            {
                context.Entry(Beoordeling).State = System.Data.Entity.EntityState.Deleted;
                context.SaveChanges();
            }
        }
    }
}