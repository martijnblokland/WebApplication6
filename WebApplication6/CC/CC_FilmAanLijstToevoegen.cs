using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Pit4Casus.BU;

namespace Pit4Casus.CC
{
    public class CC_FilmAanLijstToevoegen
    {
        BU_PersoonlijkeLijst PersoonlijkeLijst = new BU_PersoonlijkeLijst();

        // Toevoegen van een film aan persoonlijke lijst
        public void FilmAanLijstToevoegen(int filmid, int gebruikerid, bool gezien, bool wenslijst, bool inbezit)
        {
            PersoonlijkeLijst.FilmId = filmid;
            PersoonlijkeLijst.GebruikerId = gebruikerid;
            PersoonlijkeLijst.GezienStatus = gezien;
            PersoonlijkeLijst.WenslijstStatus = wenslijst;
            PersoonlijkeLijst.InBezitStatus = inbezit;

            PersoonlijkeLijst.ToevoegenPersoonlijkeLijstFilm();
        }
    }
}