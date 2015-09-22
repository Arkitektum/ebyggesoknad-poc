using KommIT.ebyggesoknad.Models.Altinn;

namespace KommIT.ebyggesoknad.Models
{
    public class EksempeldataGenerator
    {
        public NabovarselType NyttNabovarsel()
        {
            var nabovarsel = new NabovarselType();

            nabovarsel.beskrivelseAvTiltaket = "Tilbygg til eksisterende hus. Utvide garasjen med bod.";
            var adresseTilHansen = new EnkelAdresseType()
            {
                adresselinje1 = "Storgata 5",
                postnr = "3810",
                poststed = "Gvarv"
            };
            nabovarsel.eiendomByggested = new EiendomType[] 
                { 
                    new EiendomType()
                    {
                        adresse = adresseTilHansen,
                        eiendomsidentifikasjon = new MatrikkelnummerType()
                        {
                            gaardsnummer = "110",
                            bruksnummer = "1",
                            festenummer = "1",
                            seksjonsnummer = "1",
                            kommunenummer = "0822"
                        }
                    } 
                };

            var partHansHansen = new PartType()
            {
                navn = "Hans Hansen",
                adresse = adresseTilHansen,
                telefonnummer = "11223344",
                mobilnummer = "99887766",
                epost = "hansen@domene.no",
                partstype = new PartstypeType()
                {
                    kode = "Privatperson",
                    beskrivelse = "Privatperson"
                }
            };

            nabovarsel.eiere = new PartType[]
            {
                partHansHansen
            };

            nabovarsel.gjeldendePlan = new PlanType()
            {
                navn = "Plan 2010",
                plantype = new PlantypeType()
                {
                    beskrivelse = "Reguleringsplan",
                    kode = "RP"
                }
            };

            nabovarsel.naboer = new NaboGjenboerType[]
            {
                new NaboGjenboerType()
                {
                    navn = "Ole Olsen",
                    gjelderNaboeiendom = new EiendomType()
                    {
                        eiendomsidentifikasjon = new MatrikkelnummerType()
                        {
                            gaardsnummer = "109",
                            bruksnummer = "1",
                            kommunenummer = "0822"
                        },
                        adresse = new EnkelAdresseType()
                        {
                            adresselinje1 = "Storgata 3",
                            postnr = "3810",
                            poststed = "Gvarv"
                        }
                    },
                    adresse = new EnkelAdresseType()
                    {
                        adresselinje1 = "Storgata 3",
                        postnr = "3810",
                        poststed = "Gvarv"
                    },
                    telefonnummer = "22334455",
                    partstype = new PartstypeType()
                    {
                        kode = "Privatperson",
                        beskrivelse = "Privatperson"
                    }
                },
                new NaboGjenboerType()
                {
                    navn = "Gunn Gundersen",
                    gjelderNaboeiendom = new EiendomType()
                    {
                        eiendomsidentifikasjon = new MatrikkelnummerType()
                        {
                            gaardsnummer = "108",
                            bruksnummer = "1",
                            kommunenummer = "0822"
                        },
                        adresse = new EnkelAdresseType()
                        {
                            adresselinje1 = "Storgata 4",
                            postnr = "3810",
                            poststed = "Gvarv"
                        }
                    },
                    adresse = new EnkelAdresseType()
                    {
                        adresselinje1 = "Storgata 4",
                        postnr = "3810",
                        poststed = "Gvarv"
                    },
                    telefonnummer = "33445566",
                    partstype = new PartstypeType()
                    {
                        kode = "Privatperson",
                        beskrivelse = "Privatperson"
                    }
                }
            };

            nabovarsel.tiltakshaver = new TiltakshaverType()
            {
                Soeknad_personlig_ansvarsrett = true,
                navn = "Hans Hansen",
                adresse = adresseTilHansen,
                telefonnummer = "12345678",
                partstype = new PartstypeType()
                {
                    kode = "Privatperson",
                    beskrivelse = "Privatperson"
                }
            };

            nabovarsel.tiltakstyper = new TiltakstypeType[]
            {
                new TiltakstypeType()
                {
                    kode = "23",
                    beskrivelse = "Påbygg"
                }
            };

            nabovarsel.vedlegg = new VedleggType[]
            {
                new VedleggType()
                {
                    elektroniskVedlegg = true,
                    filnavn = "kart.jpg",
                    kommentar = "kart over eiendommen",
                    postbasertVedlegg = false,
                    postbasertVedleggSpecified = true,
                    vedleggstype = new VedleggstypeType()
                    {
                        kode = "Kart"
                    }
                }
            };

            nabovarsel.dispensasjonstyper = new DispensasjonstypeType[]
            {
                new DispensasjonstypeType()
                {
                    kode = "Vegloven"
                }
            };
            return nabovarsel;
        }
    }
}