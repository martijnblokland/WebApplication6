using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Pit4Casus.BU
{
    public class BU_PersoonlijkeLijst
    {
        PersoonlijkeLijstSet PersoonlijkeLijst = new PersoonlijkeLijstSet();
        int persoonlijkeLijstId;
        int filmId;
        int gebruikerId;
        bool gezienStatus;
        bool wenslijstStatus;
        bool inBezitStatus;

        List<int> AlleIds = new List<int>();

        public int PersoonlijkeLijstId
        {
            get
            {
                return persoonlijkeLijstId;
            }

            set
            {
                persoonlijkeLijstId = value;
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

        public bool GezienStatus
        {
            get
            {
                return gezienStatus;
            }

            set
            {
                gezienStatus = value;
            }
        }

        public bool WenslijstStatus
        {
            get
            {
                return wenslijstStatus;
            }

            set
            {
                wenslijstStatus = value;
            }
        }

        public bool InBezitStatus
        {
            get
            {
                return inBezitStatus;
            }

            set
            {
                inBezitStatus = value;
            }
        }

        // Lege BU_PersoonlijkeLijst
        public BU_PersoonlijkeLijst()
        { }

        // Lijst van alle persoonlijke lijst id's
        public List<int> AllePersoonlijkeLijstFilmIds()
        {
            using (pit4DBEntities context = new pit4DBEntities())
            {
                foreach (PersoonlijkeLijstSet persoonlijkelijstfilm in context.PersoonlijkeLijstSet.ToList())
                {
                    AlleIds.Add(persoonlijkelijstfilm.PersoonlijkeLijstID);
                }
            }
            return AlleIds;
        }

        // Nieuwe Film aan Persoonlijke Lijst toevoegen (CREATE)
        public void ToevoegenPersoonlijkeLijstFilm()
        {
            using (pit4DBEntities context = new pit4DBEntities())
            {
                if (context.PersoonlijkeLijstSet.Any(a => a.FilmFilmID != filmId || a.GebruikerGebruikerID != gebruikerId))
                {
                    PersoonlijkeLijst.FilmFilmID = filmId;
                    PersoonlijkeLijst.GebruikerGebruikerID = gebruikerId;
                    PersoonlijkeLijst.Gezien = gezienStatus;
                    PersoonlijkeLijst.InBezit = wenslijstStatus;
                    PersoonlijkeLijst.Wenslijst = inBezitStatus;

                    context.PersoonlijkeLijstSet.Add(PersoonlijkeLijst);
                    context.SaveChanges();

                    // Nieuwe Persoonlijke Lijst Film uit database halen
                    PersoonlijkeLijst = context.PersoonlijkeLijstSet.Where(b => b.FilmFilmID == filmId && b.GebruikerGebruikerID == gebruikerId).FirstOrDefault();

                    persoonlijkeLijstId = PersoonlijkeLijst.PersoonlijkeLijstID;
                    filmId = PersoonlijkeLijst.FilmFilmID;
                    gebruikerId = PersoonlijkeLijst.GebruikerGebruikerID;
                    gezienStatus = PersoonlijkeLijst.Gezien;
                    inBezitStatus = PersoonlijkeLijst.InBezit;
                    wenslijstStatus = PersoonlijkeLijst.Wenslijst;
                }
            }
        }

        // Persoonlijke Lijst Film ophalen met persoonlijkelijstId (READ)
        public void OphalenPersoonlijkeLijstFilmMetId()
        {
            using (pit4DBEntities context = new pit4DBEntities())
            {
                if (context.PersoonlijkeLijstSet.Any(a => a.PersoonlijkeLijstID == persoonlijkeLijstId))
                {
                    PersoonlijkeLijst = context.PersoonlijkeLijstSet.Where(b => b.PersoonlijkeLijstID == persoonlijkeLijstId).FirstOrDefault();

                    filmId = PersoonlijkeLijst.FilmFilmID;
                    gebruikerId = PersoonlijkeLijst.GebruikerGebruikerID;
                    gezienStatus = PersoonlijkeLijst.Gezien;
                    wenslijstStatus = PersoonlijkeLijst.InBezit;
                    inBezitStatus = PersoonlijkeLijst.Wenslijst; 
                }
            }
        }

        // Bestaande Persoonlijke Lijst Film aanpassingen opslaan in database (UPDATE)
        public void PersoonlijkeLijstFilmAanpassingenOpslaan()
        {
            if (PersoonlijkeLijst.PersoonlijkeLijstID > 0)
            {
                PersoonlijkeLijst.FilmFilmID = filmId;
                PersoonlijkeLijst.GebruikerGebruikerID = gebruikerId;
                PersoonlijkeLijst.Gezien = gezienStatus;
                PersoonlijkeLijst.InBezit = wenslijstStatus;
                PersoonlijkeLijst.Wenslijst = inBezitStatus;
                using (pit4DBEntities context = new pit4DBEntities())
                {
                    context.Entry(PersoonlijkeLijst).State = System.Data.Entity.EntityState.Modified;
                    context.SaveChanges();
                }
            }
        }

        // Bestaande Persoonlijke Lijst Film aanpassingen opslaan in database (DELETE)
        public void PersoonlijkeLijstFilmVerwijderen()
        {
            using (pit4DBEntities context = new pit4DBEntities())
            {
                if (context.PersoonlijkeLijstSet.Any(a => a.PersoonlijkeLijstID == persoonlijkeLijstId))
                {
                    PersoonlijkeLijst = context.PersoonlijkeLijstSet.Where(b => b.PersoonlijkeLijstID == persoonlijkeLijstId).FirstOrDefault();   
                }
            }

            using (pit4DBEntities context = new pit4DBEntities())
            {
                context.Entry(PersoonlijkeLijst).State = System.Data.Entity.EntityState.Deleted;
                context.SaveChanges();
            }
        }
    }
}