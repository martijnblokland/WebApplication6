using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Pit4Casus.BU;

namespace WebApplication6.CC
{
    public class CC_PersoonlijkeLijst
    {
        BU_PersoonlijkeLijst PersoonlijkeLijst = new BU_PersoonlijkeLijst();

        int geselecteerdePersoonlijkeLijstId;
        int geselecteerdeFilmId;
        bool geselecteerdeGezienStatus;
        bool geselecteerdeWenslijstStatus;
        bool geselecteerdeInBezitStatus;

        public List<int> AllePersoonlijkeLijstIds { get; } = new List<int>();

        public List<int> AlleFilmIds { get; } = new List<int>();

        public List<int> AlleGebruikerIds { get; } = new List<int>();

        public List<bool> AlleGezienStatussen { get; } = new List<bool>();

        public List<bool> AlleWenslijstStatussen { get; } = new List<bool>();

        public List<bool> AlleInBezitStatussen { get; } = new List<bool>();
        

        public CC_PersoonlijkeLijst(int gebruikerid)
        {
            int a = PersoonlijkeLijst.AllePersoonlijkeLijstFilmIds().Count();
            for (int i = 0; i < a; i = i + 1)
            {
                PersoonlijkeLijst.OphalenPersoonlijkeLijstFilmMetId(PersoonlijkeLijst.AllePersoonlijkeLijstFilmIds()[i]);

                if (PersoonlijkeLijst.GebruikerId != gebruikerid) continue;
                AllePersoonlijkeLijstIds.Add(PersoonlijkeLijst.PersoonlijkeLijstId);
                AlleFilmIds.Add(PersoonlijkeLijst.FilmId);
                AlleGebruikerIds.Add(PersoonlijkeLijst.GebruikerId);
                AlleGezienStatussen.Add(PersoonlijkeLijst.GezienStatus);
                AlleWenslijstStatussen.Add(PersoonlijkeLijst.WenslijstStatus);
                AlleInBezitStatussen.Add(PersoonlijkeLijst.InBezitStatus);
            }
        }

        // Boolean geeft aan of de film kan worden geselecteerd op basis van het gebruikerid
        public bool FilmSelecteren(int persoonlijkelijstid, int gebruikerid)
        {
            PersoonlijkeLijst.OphalenPersoonlijkeLijstFilmMetId(persoonlijkelijstid);
            if (PersoonlijkeLijst.GebruikerId == gebruikerid) return true;
            PersoonlijkeLijst = new BU_PersoonlijkeLijst();
            return false;
        }
        public void PersoonlijkeLijstFilmVerwijderen(int persoonlijkelijstid)
        {
            PersoonlijkeLijst.PersoonlijkeLijstId = persoonlijkelijstid;
            PersoonlijkeLijst.PersoonlijkeLijstFilmVerwijderen();
        }

        public void PersoonlijkeLijstFilmAanpassen(int persoonlijkelijstid, bool gezien, bool wenslijst, bool inbezit)
        {
            PersoonlijkeLijst.OphalenPersoonlijkeLijstFilmMetId(persoonlijkelijstid);

            PersoonlijkeLijst.GezienStatus = gezien;
            PersoonlijkeLijst.WenslijstStatus = wenslijst;
            PersoonlijkeLijst.InBezitStatus = inbezit;

            PersoonlijkeLijst.PersoonlijkeLijstFilmAanpassingenOpslaan();
        }
    }
}