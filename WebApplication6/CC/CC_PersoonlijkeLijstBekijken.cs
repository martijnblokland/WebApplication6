﻿using System;
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
            for (int i = 0; i < PersoonlijkeLijst.AllePersoonlijkeLijstFilmIds().Count(); i = i + 1)
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
    }
}