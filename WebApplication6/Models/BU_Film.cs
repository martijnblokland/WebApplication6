using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Pit4Casus.BU
{
    public class BU_Film
    {
        FilmSet Film = new FilmSet();
        int filmId;
        int filmInspiratieId;
        string filmRemake;
        bool filmKleur;
        int filmJaar;
        string filmTaal;
        int filmDuur;
        string filmNaam;
        int filmGenre;

        FilmpersoneelSet Personeel = new FilmpersoneelSet();
        List<int> filmpersoneelId;
        int geselecteerdeFilmpersoneelId;
        string geselecteerdeKarakterNaam;
        string geselecteerdeFunctieNaam;
    }
}