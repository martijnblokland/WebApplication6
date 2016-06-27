using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Pit4Casus.BU;

namespace Pit4Casus.CC
{
    public class CC_ReviewSchrijven
    {
        BU_Beoordeling Beoordeling = new BU_Beoordeling();

        public void ReviewGeven(int filmId, int gebruikerId, string review)
        {
            Beoordeling.FilmId = filmId;
            Beoordeling.GebruikerId = gebruikerId;
            Beoordeling.Rating = 0;
            Beoordeling.Review = review;
            Beoordeling.CreateBeoordeling();
            if (Beoordeling.BeoordelingId == 0)
            {
                Beoordeling.FilmId = filmId;
                Beoordeling.GebruikerId = gebruikerId;
                Beoordeling.ReadBeoordelingMetFilmIdEnGebruikerId();

                Beoordeling.Review = review;
                Beoordeling.UpdateBeoordeling();
            }
        }
    }
}