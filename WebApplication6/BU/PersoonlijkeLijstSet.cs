//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Pit4Casus.BU
{
    using System;
    using System.Collections.Generic;
    
    public partial class PersoonlijkeLijstSet
    {
        public int PersoonlijkeLijstID { get; set; }
        public int FilmFilmID { get; set; }
        public int GebruikerGebruikerID { get; set; }
        public bool Gezien { get; set; }
        public bool Wenslijst { get; set; }
        public bool InBezit { get; set; }
    
        public virtual FilmSet FilmSet { get; set; }
        public virtual GebruikerSet GebruikerSet { get; set; }
    }
}