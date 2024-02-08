<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns="http://www.w3.org/1999/xhtml">
        <xsl:output method="html" encoding="UTF-8" indent="yes" />
         <xsl:template match="/"> <!-- tag di apertura -->
   <html lang="IT">
		<head>
		   <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <!-- restituisce il contenuto del nodo selezionato -->
                <title><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/></title>
                
				<link rel="stylesheet" type="text/css" href="progetto.css"></link><script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script><script src="js/imageMapResizer.min.js"></script><script src="js/funzioniTesto.js"></script><title>Diari di Emanuele Artom - Edizione Digitale Novembre 1943 - Febbraio 1944</title>
	    </head>
	   <body>
	     <header>
              <ul id="menu">
                 <li class="desc"><a href="">Descrizione</a></li>
                 <li><a href="#pag1">Pagina 37</a></li>
                 <li><a href="#pag2">Pagina 38</a></li>
                 <li><a href="#pag3">Pagina 39</a></li>
              </ul>
         </header>
	     <main id="main">
	       <div id="ext">
               <div id="title">
                  <h1 id="main-title"> <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title[@type='full']"/></h1>
                  <h2 id="sub-title"> <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title[@type='sub']"/></h2>             
               </div>
               <div id="fotoArtom">
                  <img src="img/artom.jpg" alt="emanuele_artom" id="img_emanuele_artom"/>
               
            <!--BIBLIOGRAFIA-->
             <section id="bibliografia">
              <h2 id="title_biblio">Bibliografia</h2>
              <p id="paragrafo">
                <b>Titolo:</b>  <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msContents/tei:msItem/tei:title"/><br/>
                <b>Autore:</b>  <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msContents/tei:msItem/tei:author"/><br/>
                <b>Data:</b>  <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msContents/tei:msItem/tei:docDate/tei:date"/><br/>
                <b>Lingua:</b> <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msContents/tei:msItem/tei:textLang"/><br/>
                <br/>
              </p>
            </section>

                


         

                <!-- DESCRIZIONE FISICA DEL DIARIO -->
                <section id="descrizione">
                    <h2 id="desc">Descrizione fisica del diario</h2>
					<p id="paragrafo">
                        <b>Supporto:</b>   <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support"/><br/>
                        <b>Pagine:</b>     <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc//tei:extent/tei:measure"/><br/>
                        <b>Condizioni:</b> <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:condition"/><br/>
                        <b>Autore:</b>     <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:handDesc/tei:handNote"/><br/>
                        <b>Nota:</b>       <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:typeDesc/tei:p"/><br/>
                        <br/>
					</p>
                </section>
                <section id="edizione_digitale">
                    <h2 id="prog">Progetto</h2>
                    <p id="paragrafo">
                      <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:editionStmt/tei:edition"/><br/>
                      <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:editionStmt/tei:respStmt"/><br/>
                    </p>
               </section>
             </div>
		   </div>


			

            <div id="pagine_diario">

                <h1 id="pag1">Pagina 37</h1>
                <br/>            
                <div id="pag37">

                  <div id="img37">
                  <!-- elabora in modo ricorsivo i nodi  -->
                     <xsl:apply-templates select="//tei:surface[@n='1']"/> <!-- discendente a qualsiasi livello-->
                  </div>
                  <div id="testo37" class="testo">
                                   
                    <xsl:apply-templates select="//tei:ab[@n='37']"/>
                                   
                 </div>
                </div>

                  <div id="bottoni37" class="btnFunzioni">
                  <button type="button"  id="btn" class="abbreviazioni">abbreviazioni</button>
                  <button type="button"  id="btn" class="cancellature">cancellature</button>
                  <button type="button"  id="btn" class="correzioni">errori</button>
                  <button type="button"  id="btn" class="aggiunte">aggiunte</button>
                  <button type="button"  id="btn" class="nonForm">forma non normalizzata</button>
                  <button type="button"  id="btn" class="persone">persone</button>
                  <button type="button"  id="btn" class="luoghi">luoghi</button>
                  <button type="button"  id="btn" class="punt">punteggiatura</button>
                </div>

                               

            </div>
            <div id="pagine_diario">

                <h1 id="pag2">Pagina 38</h1>
                <br/>            
                <div id="pag38">

                  <div id="img38">
                  
                     <xsl:apply-templates select="//tei:surface[@n='2']"/>
                  </div>
                        <div id="testo37" class="testo">
                                   
                                    <xsl:apply-templates select="//tei:ab[@n='38']"/>
                                   
                                </div>

                </div>

                <div id="bottoni38" class="btnFunzioni">
                  <button type="button" id="btn" class="abbreviazioni">abbreviazioni</button>
                  <button type="button"  id="btn" class="cancellature">cancellature</button>
                  <button type="button"  id="btn" class="correzioni">errori</button>
                  <button type="button" id="btn"  class="aggiunte">aggiunte</button>
                  <button type="button" id="btn"  class="nonForm">forma non normalizzata</button>
                  <button type="button"  id="btn" class="persone">persone</button>
                  <button type="button"  id="btn" class="luoghi">luoghi</button>
                  <button type="button"  id="btn" class="punt">punteggiatura</button>
                </div>

                               

            </div>
            <div id="pagine_diario">

                <h1 id="pag3">Pagina 39</h1>
                <br/>            
                <div id="pag39">

                  <div id="img39">
                    
                     <xsl:apply-templates select="//tei:surface[@n='3']"/>
                  </div>
                        <div id="testo37" class="testo">
                                   
                                    <xsl:apply-templates select="//tei:ab[@n='39']"/>
                                   
                                </div>

                </div>

                <div id="bottoni39" class="btnFunzioni">
                  <button type="button" id="btn" class="abbreviazioni">abbreviazioni</button>
                  <button type="button"  id="btn" class="cancellature">cancellature</button>
                  <button type="button"  id="btn" class="correzioni">errori</button>
                  <button type="button"  id="btn" class="aggiunte">aggiunte</button>
                  <button type="button"  id="btn" class="nonForm">forma non normalizzata</button>
                  <button type="button"  id="btn" class="persone">persone</button>
                  <button type="button"  id="btn" class="luoghi">luoghi</button>
                  <button type="button"  id="btn" class="punt">punteggiatura</button>
                </div>

                               

            </div>





	     </main>
	  </body>
 

    <script>
       <!-- MAP RESIZER -->
       $(document).ready(function() {
       $('map').imageMapResize();
       evidenzia();     
       pulsantiTesto();                     
       });                     
    </script>
    
            

 </html>
 </xsl:template>
 <xsl:template match="tei:surface">

		<xsl:element name="img">
			<xsl:attribute name="class">immag</xsl:attribute>
            <xsl:attribute name="src"><xsl:value-of select="tei:graphic/@url"/></xsl:attribute>
			<xsl:attribute name="usemap">#<xsl:value-of select="@xml:id"/></xsl:attribute>
        </xsl:element>
		
		<xsl:element name="map">
            <xsl:attribute name="name"><xsl:value-of select="@xml:id"/></xsl:attribute>
            <xsl:for-each select="tei:zone">
                <xsl:element name="area">
                    <xsl:attribute name="id"><xsl:value-of select="@xml:id"/></xsl:attribute>
					<xsl:attribute name="class">riga</xsl:attribute>
                    <xsl:attribute name="coords"><xsl:value-of select="@ulx"/>,<xsl:value-of select="@uly"/>,<xsl:value-of select="@lrx"/>,<xsl:value-of select="@lry"/></xsl:attribute>
                </xsl:element>
            </xsl:for-each>
        </xsl:element>

 </xsl:template>

 
        <!-- INIZIO RIGA -->
	<xsl:template match="tei:lb">
		
		<xsl:if test="@n != 1">

			<br/>
			
		</xsl:if>
		
		<xsl:element name="span">
            <xsl:attribute name="id">
                <xsl:value-of select="@facs"/>
            </xsl:attribute>
            <xsl:attribute name="class">riga</xsl:attribute>
            <xsl:value-of select="@n"/>
        </xsl:element>
		
	</xsl:template>

    <!-- CANCELLATURE COMPRENSIBILI -->
	<xsl:template match="tei:del">
	
        <span class="del nascosto">
           <xsl:value-of select="."/>
		</span>

    </xsl:template>

    <!-- ELEMENTI INCOMPRENSIBILI -->
	<xsl:template match="tei:gap">
	
    	<span class="gap nascosto">
					???
        </span>
		
    </xsl:template>

    <!-- ABBREVIAZIONI -->
	<xsl:template match="tei:abbr">
	
		<span class="abbr">
			<xsl:value-of select="."/>
		</span>
	
	</xsl:template>

    <!-- ESPANSIONI ABBREVIAZIONI -->
	<xsl:template match="tei:expan">
	
		<span class="expan nascosto">
			<xsl:value-of select="."/>
		</span>
	</xsl:template>

    <!-- AGGIUNTE AUTORE DELLA CODIFICA -->
	<xsl:template match="tei:supplied">
	
		<span class="supplied">
			<xsl:value-of select="."/>
		</span>
	
	</xsl:template>

    <!-- ORIGINALE (orig) -->
	<xsl:template match="tei:orig">
	
		<span class="orig nascosto">
			<xsl:value-of select="."/>
		</span>
	
	</xsl:template>
    
    <!-- NORMALIZZAZIONE (reg) -->
	<xsl:template match="tei:reg">
	
		<span class="reg">
			<xsl:value-of select="."/>
		</span>
	
	</xsl:template>
	
	<!-- ERRORE (sic) -->
	<xsl:template match="tei:sic">
		<span class="sic nascosto">
			<xsl:value-of select="."/>
		</span>
    </xsl:template>
	
	<!-- CORREZIONE (corr) -->
	<xsl:template match="tei:corr">
		<span class="corr">
			<xsl:value-of select="."/>
		</span>
    </xsl:template>
	
	<!-- AGGIUNTE -->
	<xsl:template match="tei:add">
		<span class="add">
			<xsl:value-of select="."/>
		</span>
    </xsl:template>
	
	<!-- NOMI DI PERSONA -->
       <xsl:template match ="tei:persName">
            <span class = "persName">
               <xsl:value-of select="."/>
           </span>
       </xsl:template>

       	   <!-- PUNTEGGIATURA-->
       <xsl:template match ="tei:pc">
	
            <span class = "pc">
               <xsl:value-of select="."/>
           </span>
        </xsl:template>

           <!-- LUOGHI -->
    <xsl:template match ="tei:placeName">
	
        <span class = "placeName">
            <xsl:value-of select="."/>
        </span>
		
    </xsl:template>

		
</xsl:stylesheet>


   