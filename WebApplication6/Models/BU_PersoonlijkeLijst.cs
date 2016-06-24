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
    }
}