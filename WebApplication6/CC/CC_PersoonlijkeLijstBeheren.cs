using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Pit4Casus.BU;

namespace Pit4Casus.CC
{
    public class CC_PersoonlijkeLijstBeheren
    {
        BU_PersoonlijkeLijst PersoonlijkeLijst = new BU_PersoonlijkeLijst();

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