using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Pit4Casus.BU;

namespace Pit4Casus.CC
{
    public class CC_RatingGeven
    {
        BU_Beoordeling Beoordeling = new BU_Beoordeling();

        public void RatingGeven(int filmId, int gebruikerId)
        {
            Beoordeling.FilmId = filmId;
            Beoordeling.GebruikerId = gebruikerId;
            Beoordeling.CreateBeoordeling();
            if (Beoordeling.BeoordelingId == 0)
            {
                B
            }
        }
    }
}