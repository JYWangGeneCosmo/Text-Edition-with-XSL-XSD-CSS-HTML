<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:tei="http://www.tei-c.org/ns/1.0"
  xmlns:nonTei="http://www.tei-c.org/ns/1.0/nonTei/MyProject/JingyingWang">
  <xsl:template match="/">
    <html>
      <head>
        <!-- Die CSS-Datei soll in dem gleichen Ordner wie die XSL-Datei-->
        <!-- Diese Stylesheet ist unterstützt am besten von Browser für Mac!
          (z.B. Safari, Firefox, Chrome for Mac)-->
        <link rel="stylesheet" type="text/css" href="Darstellung_TEDTalk_Rhetorics_JingyingWang.css"></link>
        <title>TED Talk</title>
      </head>
      <body>
        <header>
        <h2 align="middle"><xsl:value-of select="/tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/></h2>
        </header>
        <section>
        <div>
        <h3>Titel: <i><xsl:value-of select="/tei:TEI/tei:text/tei:body/tei:head"/></i></h3>
        <h4><font color="#666666"><xsl:value-of select="/tei:TEI/tei:teiHeader/tei:profileDesc/tei:p"/> Für die originale Webseite klicken bitte</font>
          <a href="https://www.ted.com/talks/nora_mcinerny_we_don_t_move_on_from_grief_we_move_forward_with_it/transcript?referrer=playlist-the_most_popular_talks_of_2019" target="_blank">
          <font color = "blue"><u><b> hier</b></u></font></a>.
          <br/>
          <br/>
            In der folgenden Tabelle werden unterschiedliche rhetorische Stilmittel mit entsprechenden Farben
            jeweils für den originalen und übersetzten Text markiert:
          <ul>
            <li><irony>Golden =&gt;</irony> Ironie. (<a href = "https://de.wikipedia.org/wiki/Ironie" target="_blank"><i><font color = "blue">Definition</font></i></a>)</li>
            <li><parallelism>Pink =&gt;</parallelism> Parallelismus. (<a href = "https://de.wikipedia.org/wiki/Parallelismus_(Rhetorik)" target="_blank"><i><font color = "blue">Definition</font></i></a>)</li>
            <li><metaphor>Violett =&gt;</metaphor> Metapher. (<a href = "https://de.wikipedia.org/wiki/Metapher" target="_blank"><i><font color = "blue">Definition</font></i></a>)</li>
            <li><selfMockery>Blau =&gt;</selfMockery> Self-Mockery (Chleuasmos). (<a href = "https://ifioque.com/figures-of-speech/trope/chleuasmos" target="_blank"><i><font color = "blue">Definition</font></i></a>)</li>
            <li><hyperbole>Grün =&gt;</hyperbole> Hyperbel. (<a href = "https://de.wikipedia.org/wiki/Hyperbel_(Sprache)" target="_blank"><i><font color = "blue">Definition</font></i></a>)</li>
            <li><none>Grey =&gt;</none> Für die Rhetorik, die <b>nicht</b> in der Übersetzung repräsentiert ist. </li>
          </ul>
        </h4>
        </div>
        <div>
        <iframe align="right" width="500" height="300" src="https://www.youtube.com/embed/khkJkR-ipfw">
        </iframe>
        </div>
        </section>  
      
        <table>
          <tr>
            <th>Original</th>
            <th>Translation</th>
          </tr>
          <xsl:for-each select="/tei:TEI/tei:text/tei:body/tei:segmentation">
          <tr>
            <td>
              <xsl:call-template name="ori"/>
            </td>
            <td><xsl:call-template name="translation"/></td>
          </tr>
          </xsl:for-each>
        </table>
        <h4 align="left"> 
          <br/>
          Last modified: 2020/03/27  by Jingying Wang
          <br/>
          E-Mail Contact: wangjingying1994@outlook.com
          <br/>
        </h4>
        <img align="right" width="300" height="150" src="https://upload.wikimedia.org/wikipedia/de/2/24/TU_Darmstadt_Logo.svg" alt="Logo der TU Darmstadt"/>
      </body>
    </html>
  </xsl:template>
  <!-- dddd -->
  <xsl:template name="ori">
    <xsl:for-each select="nonTei:sourceText/*">
      <xsl:choose>
        <xsl:when test="tei:f/@name='parallelism'">
          <parallelism><xsl:value-of select="."/></parallelism>
        </xsl:when>
        <xsl:when test="tei:f/@name='selfMockery'">
          <selfMockery><xsl:value-of select="."/></selfMockery>
        </xsl:when>
        <xsl:when test="tei:f/@name='irony'">
          <irony><xsl:value-of select="."/></irony>
        </xsl:when>
        <xsl:when test="tei:f/@name='metaphor'">
          <metaphor><xsl:value-of select="."/></metaphor>
        </xsl:when>
        <xsl:when test="tei:f/@name='hyperbole'">
          <hyperbole><xsl:value-of select="."/></hyperbole>
        </xsl:when>
        <xsl:otherwise>
          <other><xsl:value-of select="."/></other>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:for-each>
  </xsl:template>
  <xsl:template name="translation">
    <xsl:for-each select="nonTei:translation/*">
      <xsl:choose>
        <xsl:when test="tei:f/@name='parallelism'">
          <parallelism><xsl:value-of select="."/></parallelism>
        </xsl:when>
        <xsl:when test="tei:f/@name='selfMockery'">
          <selfMockery><xsl:value-of select="."/></selfMockery>
        </xsl:when>
        <xsl:when test="tei:f/@name='irony'">
          <irony><xsl:value-of select="."/></irony>
        </xsl:when>
        <xsl:when test="tei:f/@name='metaphor'">
          <metaphor><xsl:value-of select="."/></metaphor>
        </xsl:when>
        <xsl:when test="tei:f/@name='hyperbole'">
          <hyperbole><xsl:value-of select="."/></hyperbole>
        </xsl:when>
        <xsl:when test="tei:f/@name='NONE'">
          <none><xsl:value-of select="."/></none>
        </xsl:when>
        <xsl:otherwise>
          <other><xsl:value-of select="."/></other>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:for-each>
  </xsl:template>


</xsl:stylesheet>
