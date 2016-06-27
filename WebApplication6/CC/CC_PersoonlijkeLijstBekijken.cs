using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Pit4Casus.BU;

namespace Pit4Casus.CC
{
    public class CC_PersoonlijkeLijstBekijken
    {
        BU_PersoonlijkeLijst PersoonlijkeLijst = new BU_PersoonlijkeLijst();

        List<int> allePersoonlijkeLijstIds = new List<int>();
        List<int> alleFilmIds = new List<int>();
        List<bool> alleGezienStatussen = new List<bool>();
        List<bool> alleWenslijstStatussen = new List<bool>();
        List<bool> alleInBezitStatussen = new List<bool>();

        int geselecteerdePersoonlijkeLijstId;
        int geselecteerdeFilmId;
        bool geselecteerdeGezienStatus;
        bool geselecteerdeWenslijstStatus;
        bool geselecteerdeInBezitStatus;

        public List<int> AllePersoonlijkeLijstIds
        {
            get
            {
                return allePersoonlijkeLijstIds;
            }
        }

        public List<int> AlleFilmIds
        {
            get
            {
                return alleFilmIds;
            }
        }

        public List<bool> AlleGezienStatussen
        {
            get
            {
                return alleGezienStatussen;
            }
        }

        public List<bool> AlleWenslijstStatussen
        {
            get
            {
                return alleWenslijstStatussen;
            }
        }

        public List<bool> AlleInBezitStatussen
        {
            get
            {
                return alleInBezitStatussen;
            }
        }

        public CC_PersoonlijkeLijstBekijken(int gebruikerid)
        {
            int a = PersoonlijkeLijst.AllePersoonlijkeLijstFilmIds().Count();
            for (int i = 0; i < a; i = i + 1)
            {
                PersoonlijkeLijst.OphalenPersoonlijkeLijstFilmMetId(PersoonlijkeLijst.AllePersoonlijkeLijstFilmIds()[i]);

                if (PersoonlijkeLijst.GebruikerId == gebruikerid)
                {
                    allePersoonlijkeLijstIds.Add(PersoonlijkeLijst.PersoonlijkeLijstId);
                    alleFilmIds.Add(PersoonlijkeLijst.FilmId);
                    alleGezienStatussen.Add(PersoonlijkeLijst.GezienStatus);
                    alleWenslijstStatussen.Add(PersoonlijkeLijst.WenslijstStatus);
                    alleInBezitStatussen.Add(PersoonlijkeLijst.InBezitStatus);
                }
            }
        }

        // Boolean geeft aan of de film kan worden geselecteerd op basis van het gebruikerid
        public bool FilmSelecteren(int persoonlijkelijstid, int gebruikerid)
        {
            PersoonlijkeLijst.OphalenPersoonlijkeLijstFilmMetId(persoonlijkelijstid);
            if (PersoonlijkeLijst.GebruikerId != gebruikerid)
            {
                PersoonlijkeLijst = new BU_PersoonlijkeLijst();
                return false;
            }
            else
            {
                return true;
            }
        }
    }
}