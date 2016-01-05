<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xd="http://schemas.microsoft.com/office/infopath/2003" xmlns:nv="http://skjema.kxml.no/dibk/nabovarsel/0.9" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:seres="http://seres.no/xsd/forvaltningsdata" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns:xdExtension="http://schemas.microsoft.com/office/infopath/2003/xslt/extension" xmlns:xdXDocument="http://schemas.microsoft.com/office/infopath/2003/xslt/xDocument" xmlns:xdSolution="http://schemas.microsoft.com/office/infopath/2003/xslt/solution" xmlns:xdFormatting="http://schemas.microsoft.com/office/infopath/2003/xslt/formatting" xmlns:xdImage="http://schemas.microsoft.com/office/infopath/2003/xslt/xImage" xmlns:xdUtil="http://schemas.microsoft.com/office/infopath/2003/xslt/Util" xmlns:xdMath="http://schemas.microsoft.com/office/infopath/2003/xslt/Math" xmlns:xdDate="http://schemas.microsoft.com/office/infopath/2003/xslt/Date" xmlns:sig="http://www.w3.org/2000/09/xmldsig#" xmlns:xdSignatureProperties="http://schemas.microsoft.com/office/infopath/2003/SignatureProperties" xmlns:ipApp="http://schemas.microsoft.com/office/infopath/2006/XPathExtension/ipApp" xmlns:xdEnvironment="http://schemas.microsoft.com/office/infopath/2006/xslt/environment" xmlns:xdUser="http://schemas.microsoft.com/office/infopath/2006/xslt/User" xmlns:xdServerInfo="http://schemas.microsoft.com/office/infopath/2009/xslt/ServerInfo">
	<xsl:output method="html" indent="no"/>
	<xsl:template match="nv:Nabovarsel">
		<html>
			<head>
				<meta content="text/html" http-equiv="Content-Type"></meta>
				<style type="text/css">
/*! normalize.css v3.0.3 | MIT License | github.com/necolas/normalize.css */
html {
  font-family: sans-serif;
  -webkit-text-size-adjust: 100%;
      -ms-text-size-adjust: 100%;
}
body {
  margin: 0;
}
article,
aside,
details,
figcaption,
figure,
footer,
header,
hgroup,
main,
menu,
nav,
section,
summary {
  display: block;
}
audio,
canvas,
progress,
video {
  display: inline-block;
  vertical-align: baseline;
}
audio:not([controls]) {
  display: none;
  height: 0;
}
[hidden],
template {
  display: none;
}
a {
  background-color: transparent;
}
a:active,
a:hover {
  outline: 0;
}
abbr[title] {
  border-bottom: 1px dotted;
}
b,
strong {
  font-weight: bold;
}
dfn {
  font-style: italic;
}
h1 {
  margin: .67em 0;
  font-size: 2em;
}
mark {
  color: #000;
  background: #ff0;
}
small {
  font-size: 80%;
}
sub,
sup {
  position: relative;
  font-size: 75%;
  line-height: 0;
  vertical-align: baseline;
}
sup {
  top: -.5em;
}
sub {
  bottom: -.25em;
}
img {
  border: 0;
}
svg:not(:root) {
  overflow: hidden;
}
figure {
  margin: 1em 40px;
}
hr {
  height: 0;
  -webkit-box-sizing: content-box;
     -moz-box-sizing: content-box;
          box-sizing: content-box;
}
pre {
  overflow: auto;
}
code,
kbd,
pre,
samp {
  font-family: monospace, monospace;
  font-size: 1em;
}
button,
input,
optgroup,
select,
textarea {
  margin: 0;
  font: inherit;
  color: inherit;
}
button {
  overflow: visible;
}
button,
select {
  text-transform: none;
}
button,
html input[type="button"],
input[type="reset"],
input[type="submit"] {
  -webkit-appearance: button;
  cursor: pointer;
}
button[disabled],
html input[disabled] {
  cursor: default;
}
button::-moz-focus-inner,
input::-moz-focus-inner {
  padding: 0;
  border: 0;
}
input {
  line-height: normal;
}
input[type="checkbox"],
input[type="radio"] {
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
  padding: 0;
}
input[type="number"]::-webkit-inner-spin-button,
input[type="number"]::-webkit-outer-spin-button {
  height: auto;
}
input[type="search"] {
  -webkit-box-sizing: content-box;
     -moz-box-sizing: content-box;
          box-sizing: content-box;
  -webkit-appearance: textfield;
}
input[type="search"]::-webkit-search-cancel-button,
input[type="search"]::-webkit-search-decoration {
  -webkit-appearance: none;
}
fieldset {
  padding: .35em .625em .75em;
  margin: 0 2px;
  border: 1px solid #c0c0c0;
}
legend {
  padding: 0;
  border: 0;
}
textarea {
  overflow: auto;
}
optgroup {
  font-weight: bold;
}
table {
  border-spacing: 0;
  border-collapse: collapse;
}
td,
th {
  padding: 0;
}
/* end normalize.css*/

					body { font-family: Helvetica, Arial, Sans-serif; }
					h1, h2, h3 { font-weight: bold; }
					h1 { font-size: 1.3em; }
					h2 { font-size: 1.2em; }
					h3 { font-size: 1.1em; }
					small { font-size: 0.8em; font-weight: normal; }
					table {
						border: 1px solid black;
						font-size: 0.8em;
						margin-bottom: 20px;
						width: 100%;
					}
					table.no-margin-below { margin-bottom: 0px; border-bottom: none; }
					th, td {
						padding: 2px;
						text-align: left;
					}
					thead th {
						background: #ccc;
						border: 1px solid black;
						color: black;
						font-weight: bold;
						text-align: left;
					}
					tbody th {
						font-weight: bold;
						border-left: 1px solid black;
						border-top: 1px solid black;
					}
					th.information { background: #ccc; font-weight: normal; }
					th.header-two { font-weight: normal; }
					td.new-section {
						border-left: 1px solid black;
						border-right: 1px solid black;
					}
					tr.new-section td { border-top: 1px solid black; }
					ul.horizontal { list-style-type: square; }
					ul.horizontal li { float: left; margin-right: 40px; }
				</style>
			</head>
			<body>
				<div align="center">
					<xsl:apply-templates select="." mode="_1"/>
					<hr/>
					<xsl:apply-templates select="." mode="_12"/>
				</div>
			</body>
		</html>
	</xsl:template>

	<xsl:template match="nv:Nabovarsel" mode="_1">
		<div title="" class="xdSection xdRepeating" style="MARGIN-BOTTOM: 0px; BORDER-TOP: 0pt; BORDER-RIGHT: 0pt; WIDTH: 637px; BORDER-BOTTOM: 0pt; BORDER-LEFT: 0pt" align="left">

			<img src="985FA5C0.png" alt="Direktoratet for Byggkvalitet" height="100" width="82" style="float: right" />
			<h1>Opplysninger gitt i nabovarsel</h1>
			<p><strong>(Gjenpart av nabovarsel)</strong></p>
			<p><strong>Pbl § 21-3</strong></p>
			<p><small>sendes kommunen sammen med søknaden</small></p>

			<div>
				<xsl:apply-templates select="nv:eiendomByggested/nv:eiendom" mode="_2" />
			</div>

			<div>
				<xsl:apply-templates select="nv:tiltakstyper" mode="_3" />
			</div>

			<div>
				<xsl:apply-templates select="nv:dispensasjonstyper" mode="_4"/>
			</div>

			<div>
				<table>
					<thead>
						<tr><th>Beskriv nærmere hva nabovarselet gjelder</th></tr>
					</thead>
					<tbody>
						<tr>
							<td>
								<span class="xdTextBox" xd:xctname="PlainText" xd:CtrlId="CTRL2" xd:binding="nv:beskrivelseAvTiltaket" xd:datafmt="&quot;string&quot;,&quot;plainMultiline&quot;" style="WORD-WRAP: break-word; HEIGHT: 150px; WIDTH: 634px; WHITE-SPACE: normal; OVERFLOW-X: auto; OVERFLOW-Y: auto">
									<xsl:choose>
										<xsl:when test="function-available('xdFormatting:formatString')">
											<xsl:value-of select="xdFormatting:formatString(nv:beskrivelseAvTiltaket,&quot;string&quot;,&quot;plainMultiline&quot;)" disable-output-escaping="yes"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:value-of select="nv:beskrivelseAvTiltaket" disable-output-escaping="yes"/>
										</xsl:otherwise>
									</xsl:choose>
								</span>
							</td>
						</tr>
					</tbody>
				</table>
			</div>


			<div>
				<xsl:apply-templates select="nv:tiltakshaver" mode="_6"/>
			</div>
			<div>
				<xsl:apply-templates select="nv:eiere/nv:part" mode="_7"/>
			</div>

			<div>
				<xsl:apply-templates select="nv:vedlegg" mode="_9"/>
			</div>
			<div>
				<xsl:apply-templates select="." mode="_11"/>
			</div>



		</div>
	</xsl:template>
	<xsl:template match="nv:eiendom" mode="_2">
		<div title="" class="xdRepeatingSection xdRepeating">
			<table>
				<thead>
					<tr>
						<th colspan="7">Tiltak på eiendommen</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th>Gnr.</th>
						<th>Bnr.</th>
						<th>Festenr.</th>
						<th>Seksjonsnr.</th>
						<th>Eiendommens adresse</th>
						<th>Postnr.</th>
						<th>Poststed</th>
					</tr>
					<tr>
						<td>
							<xsl:value-of select="nv:eiendomsidentifikasjon/nv:gaardsnummer"/>
						</td>
						<td>
							<xsl:value-of select="nv:eiendomsidentifikasjon/nv:bruksnummer"/>
						</td>
						<td>
							<xsl:value-of select="nv:eiendomsidentifikasjon/nv:festenummer"/>
						</td>
						<td>
							<xsl:value-of select="nv:eiendomsidentifikasjon/nv:seksjonsnummer"/>
						</td>
						<td class="new-section">
							<xsl:value-of select="nv:adresse/nv:adresselinje1"/>
						</td>
						<td>
							<xsl:value-of select="nv:adresse/nv:postnr"/>
						</td>
						<td>
							<xsl:value-of select="nv:adresse/nv:poststed"/>
						</td>
					</tr>
					<tr>
						<th colspan="4">Eier/fester</th>
						<th colspan="3">Kommune</th>
					</tr>
					<tr>
						<td colspan="4">
							test
						</td>
						<td colspan="3" class="new-section">
							<xsl:value-of select="nv:eiendomsidentifikasjon/nv:kommunenummer"/>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</xsl:template>
	<xsl:template match="nv:tiltakstyper" mode="_3" >
		<div class="xdSection xdRepeating">

			<table class="no-margin-below">
				<thead>
					<tr>
						<th>Tiltak på eiendommen</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<ul class="horizontal">
								<xsl:for-each select="nv:tiltakstype">
									<li>
										<xsl:value-of select="nv:beskrivelse"/>
									</li>
								</xsl:for-each>
							</ul>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</xsl:template>
	<xsl:template match="nv:dispensasjonstyper" mode="_4">
		<div class="xdSection xdRepeating">
			<table>
				<thead>
					<tr>
						<th>Dispensasjon <small>etter plan- og bygningsloven kapittel 19</small></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<ul class="horizontal">
								<xsl:for-each select="nv:dispensasjonstype">
									<li>
										<xsl:value-of select="nv:kode"/>
									</li>
								</xsl:for-each>
							</ul>
						</td>
					</tr>
				</tbody>
			</table>

		</div>
	</xsl:template>

	<xsl:template match="nv:tiltakshaver" mode="_6">
		<div class="xdSection xdRepeating">
			<table>
				<thead>
					<tr>
						<th colspan="4">Spørsmål vedrørerende nabovarsel rettes til</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th colspan="4">Foretak/tiltak</th>
					</tr>
					<tr>
						<td colspan="4">
							<xsl:value-of select="nv:navn"/>
						</td>
					</tr>
					<tr>
						<th>Kontaktperson, navn</th>
						<th>E-post</th>
						<th>Telefon</th>
						<th>Mobil</th>
					</tr>
					<tr>
						<td>
							<xsl:value-of select="nv:navn"/>
						</td>
						<td></td>
						<td>
							<xsl:value-of select="nv:telefonnummer"/>
						</td>
						<td></td>
					</tr>
					<tr class="new-section">
						<th class="information">Søknaden kan ses på hjemmeside:<br/>(ikke obligatorisk:)</th>
						<td colspan="3" class="new-section">
							<xsl:value-of select="nv:www"/>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</xsl:template>

	<xsl:template match="nv:part" mode="_7">
		<div class="xdRepeatingSection xdRepeating">
			<div>
				<xsl:apply-templates select="." mode="_8"/>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="nv:part" mode="_8">
		<div class="xdSection xdRepeating">
			<table>
				<thead>
					<tr><th colspan="3">Merknader sendes til</th></tr>
				</thead>
				<tbody>
					<tr>
						<th colspan="3" class="information">Eventuelle merknader skal være mottatt innen 2 uker etter at dette varsel er sendt.<br/>Ansvarlig søker/tiltakshaver skal sammen med søknad sende innkomne merknader og redegjøre for ev. endringer.</th>
					</tr>
					<tr>
						<th colspan="2">Navn</th><th>Postadresse</th>
					</tr>
					<tr>
						<td colspan="2">
							<xsl:value-of select="nv:navn"/>
						</td>
						<td>
							<xsl:value-of select="nv:adresse/nv:adresselinje1"/>
						</td>
					</tr>
					<tr>
						<th>Postnr.</th>
						<th>Poststed</th>
						<th>E-post</th>
					</tr>
					<tr>
						<td>
							<xsl:value-of select="nv:adresse/nv:postnr"/>
						</td>
						<td>
							<xsl:value-of select="nv:adresse/nv:poststed"/>
						</td>
						<td></td>
					</tr>
				</tbody>
			</table>
		</div>
	</xsl:template>

	<xsl:template match="nv:vedlegg" mode="_9">
		<div class="xdRepeatingSection xdRepeating">
			<table>
				<thead>
					<tr><th colspan="3">Følgende vedlegg er sendt med nabovarselet</th></tr>
					<tr>
						<th class="header-two">Beskrivelse av vedlegg</th>
						<th class="header-two">Type</th>
						<th class="header-two">Filnavn</th>
					</tr>
				</thead>
				<tbody>
					<xsl:for-each select="nv:vedlegg">
						<tr>
							<td>
								<xsl:value-of select="nv:kommentar"/>
							</td>
							<td>
								<xsl:value-of select="nv:vedleggstype/nv:kode"/>
							</td>
							<td>
								<xsl:value-of select="nv:filnavn"/>
							</td>
						</tr>
					</xsl:for-each>
				</tbody>
			</table>
		</div>
	</xsl:template>

	<xsl:template match="nv:Nabovarsel" mode="_11">
		<div>
			<table>
				<thead>
					<tr><th colspan="3">Underskrift</th></tr>
					<tr>
						<th class="header-two" colspan="3">
							Tilsvarende opplysninger med vedlegg er sendt i nabovarsel til berørte naboer og gjenboere. Mottager av nabovarsel fremgår av kvittering for nabovarsel.
						</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th>Sted</th><th>Dato</th><th>Underskrift ansvarlig søker eller tiltakshaver</th>
					</tr>
					<tr>
						<td></td><td></td><td></td>
					</tr>
					<tr>
						<td class="information" colspan="2"></td>
						<td></td>
					</tr>
				</tbody>
			</table>
		</div>
	</xsl:template>

	<!-- Kvittering for nabovarsel -->
	<xsl:template match="nv:Nabovarsel" mode="_12">
		<div title="" class="xdSection" style="MARGIN-BOTTOM: 0px; BORDER-TOP: 0pt; BORDER-RIGHT: 0pt; WIDTH: 637px; BORDER-BOTTOM: 0pt; BORDER-LEFT: 0pt" align="left">
			<h1>Kvittering for nabovarsel</h1>
			<p><small>sendes kommunen sammen med søknaden</small></p>
			<table>
				<thead>
					<tr><th>
				Nabovarsel kan enten sendes som rekommandert sending, overleveres personlig mot kvittering eller sendes på e-post mot kvittering.
	Med kvittering for mottatt e-post menes en e-post fra nabo/gjenboer som bekrefter å ha mottatt nabovarselet. Ved personlig
	overlevering vil signatur gjelde som bekreftelse på at varslet er mottatt. Det kan også signeres på at man gir samtykke til tiltaket.
					</th></tr>
				</thead>
			</table>

			<table>
				<thead><tr><th colspan="8">Tiltaket gjelder</th></tr></thead>
				<tbody>
					<tr>
						<th rowspan="4" class="information">Eiendom / byggested</th>
						<th>Gnr.</th>
						<th>Bnr.</th>
						<th>Festenr.</th>
						<th>Seksjonsnr.</th>
						<th>Bygningsnr.</th>
						<th>Bolignr.</th>
						<th>Kommune.</th>
					</tr>
					<tr>
						<td>
							<xsl:value-of select="nv:eiendomByggested/nv:eiendom/nv:eiendomsidentifikasjon/nv:gaardsnummer"/>
						</td>
						<td>
							<xsl:value-of select="nv:eiendomByggested/nv:eiendom/nv:eiendomsidentifikasjon/nv:bruksnummer"/>
						</td>
						<td>
							<xsl:value-of select="nv:eiendomByggested/nv:eiendom/nv:eiendomsidentifikasjon/nv:festenummer"/>
						</td>
						<td>
							<xsl:value-of select="nv:eiendomByggested/nv:eiendom/nv:eiendomsidentifikasjon/nv:seksjonsnummer"/>
						</td>
						<td>
							<xsl:value-of select="nv:eiendomByggested/nv:eiendom/nv:eiendomsidentifikasjon/nv:seksjonsnummer"/>
						</td>
						<td><!-- bolignummer mangler i modellen --></td>
						<td>
							<xsl:value-of select="nv:eiendomByggested/nv:eiendom/nv:eiendomsidentifikasjon/nv:kommunenummer"/>
						</td>
					</tr>
					<tr>
						<th colspan="4">Adresse</th>
						<th>Postnr</th>
						<th colspan="2">Poststed</th>
					</tr>
					<tr>
						<td colspan="4">
							<xsl:value-of select="nv:eiendomByggested/nv:eiendom/nv:adresse/nv:adresselinje1"/>
						</td>
						<td>
							<xsl:value-of select="nv:eiendomByggested/nv:eiendom/nv:adresse/nv:postnr"/>
						</td>
						<td colspan="2">
							<xsl:value-of select="nv:eiendomByggested/nv:eiendom/nv:adresse/nv:poststed"/>
						</td>
					</tr>
				</tbody>
			</table>
			<xsl:apply-templates select="nv:naboer" mode="_13" />
		</div>
	</xsl:template>

	<xsl:template match="nv:naboer" mode="_13">
		<div class=" ">
			<xsl:apply-templates select="nv:nabogjenboer" mode="_14"/>
		</div>
	</xsl:template>

	<xsl:template match="nv:nabogjenboer" mode="_14">
		<div class="xdSection xdRepeatingSection">
			<table>
				<thead>
					<tr>
						<th colspan="4">Nabo-/gjenboereiendom</th>
						<th colspan="3">Eier/fester av nabo-/gjenboereiendom</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th>Gnr.</th>
						<th>Bnr.</th>
						<th>Festenr.</th>
						<th>Seksjonsnr.</th>
						<th colspan="2">Eiers/festers navn</th>
						<th>Dato sendt e-post</th>
					</tr>
					<tr>
						<td>
							<xsl:value-of select="nv:gjelderNaboeiendom/nv:eiendomsidentifikasjon/nv:gaardsnummer"/>
						</td>
						<td>
							<xsl:value-of select="nv:gjelderNaboeiendom/nv:eiendomsidentifikasjon/nv:bruksnummer"/>
						</td>
						<td>
							<xsl:value-of select="nv:gjelderNaboeiendom/nv:eiendomsidentifikasjon/nv:festenummer"/>
						</td>
						<td>
							<xsl:value-of select="nv:gjelderNaboeiendom/nv:eiendomsidentifikasjon/nv:seksjonsnummer"/>
						</td>
						<td colspan="2" class="new-section">
							<xsl:value-of select="nv:navn"/>
						</td>
						<td>
							<!-- dato sendt epost mangler i modellen -->
						</td>
					</tr>

					<tr>
						<th colspan="4">Adresse</th>
						<th colspan="2">Adresse</th>
						<th class="information" rowspan="2">Kvittering vedlegges</th>
					</tr>
					<tr>
						<td colspan="4" class="new-section">
							<xsl:value-of select="nv:gjelderNaboeiendom/nv:adresse/nv:adresselinje1"/>
						</td>
						<td colspan="2">
							<xsl:value-of select="nv:adresse/nv:adresselinje1"/>
						</td>
					</tr>

					<tr>
						<th>Postnr.</th>
						<th colspan="3">Poststed</th>
						<th>Postnr.</th>
						<th>Poststed</th>
						<th>Poststedets reg. nr.</th>
					</tr>
					<tr>
						<td>
							<xsl:value-of select="nv:gjelderNaboeiendom/nv:adresse/nv:postnr"/>
						</td>
						<td colspan="3">
							<xsl:value-of select="nv:gjelderNaboeiendom/nv:adresse/nv:poststed"/>
						</td>
						<td class="new-section">
							<xsl:value-of select="nv:adresse/nv:postnr"/>
						</td>
						<td>
							<xsl:value-of select="nv:adresse/nv:poststed"/>
						</td>
						<td class="new-section"></td>
					</tr>

					<tr>
						<th class="information">Personlig kvittering for</th>
						<th>Dato</th>
						<th colspan="2">Sign.</th>
						<th class="information">Personlig kvittering for</th>
						<th>Dato</th>
						<th>Sign.</th>
					</tr>
					<tr>
						<th class="information">mottatt varsel</th>
						<td></td>
						<td colspan="2" class="new-section"></td>
						<th class="information new-section">samtykke til tiltaket</th>
						<td></td>
						<td></td>
					</tr>

				</tbody>
			</table>
		</div>
	</xsl:template>

</xsl:stylesheet>
