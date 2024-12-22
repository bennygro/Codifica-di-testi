<?xml version="1.0"?>
<!DOCTYPE TEI SYSTEM "teilite.dtd">
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns="http://www.w3.org/1999/xhtml">
    
    <xsl:output method="xml" indent="yes" omit-xml-declaration="yes"/>
    
    <xsl:template match="tei:TEI">
        <html>
            <head>
                <title>Versione elettronica di Rosso Malpelo</title>
                <link href="style.css" rel="stylesheet" type="text/css"/> 
            </head> 
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template> 
    
    <xsl:template match="tei:bibl">
        <div class="bibl">
            <h4>Bibliografia</h4>
            <ul>
                <li><b>Titolo</b>: <xsl:value-of select="tei:title"/>
                    <xsl:value-of select="tei:pubPlace"/></li>
                <li><b>Autore</b>: <xsl:value-of select="tei:author"/></li>
                <li><b>Casa editrice</b>: <xsl:value-of select="tei:publisher"/></li> 
                <li><b>Data versione</b>: <xsl:value-of select="tei:date"/></li>
            </ul>
        </div>
        <br />
    </xsl:template>
    
    <xsl:template match="tei:titleStmt">
        <div class="titolo">
            <h2><xsl:value-of select="tei:title"/></h2>
            <h3>di <i><xsl:value-of select="tei:author"/></i></h3>
            <hr width="75%"/>
            <h5><xsl:value-of select="tei:respStmt"/></h5>
        </div>
        <br /><br />
    </xsl:template>
    
    <xsl:template match="tei:publicationStmt">
        <div class="publs">
            <h4>Informazioni sulla pubblicazione</h4>
            <ul>
                <li><b>Edizione originale</b>: <xsl:value-of select="tei:distributor"/></li>
                <li><b>Diffusione elettronica</b>: <xsl:value-of select="tei:publisher"/></li>
                <li><b>Data ultima revisione</b>: <xsl:value-of select="tei:date"/></li>
                <li><b>Restrizioni</b>: <xsl:value-of select="tei:availability"/></li>
            </ul>
        </div>
    </xsl:template>
    
    <xsl:template match="tei:teiHeader">
        <div class="header">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="tei:figure">
        <div class="foto">
            <img><xsl:attribute name="src"><xsl:value-of select="tei:graphic/@url"/>
            </xsl:attribute><xsl:attribute name="alt"><xsl:value-of select="tei:figDesc"/></xsl:attribute></img>
        </div>
        <br />
    </xsl:template> 
    
    <xsl:template match="//tei:front/tei:titlePage">
        <div class="front">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="//tei:front/tei:epigraph">
        <div class="epigraph">
            <b><xsl:apply-templates/></b>
        </div>
        <br />
    </xsl:template>
    
    <xsl:template match="//tei:front/tei:head">
        <div class="head">
            <i><xsl:apply-templates/></i>
        </div>
        <br />
    </xsl:template>
    
    <xsl:template match="tei:body">
        <div class="body">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="//tei:front/tei:epigraph/tei:p">
            <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="//tei:front/tei:epigraph/tei:date">
            <xsl:apply-templates/>   
    </xsl:template>
    
    <xsl:template match="tei:p">
        <p  class="p">
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
    <xsl:template match="tei:emph">
        <i>
            <xsl:apply-templates/>
        </i>
    </xsl:template>
    
    <xsl:template match="tei:said">
        <i>
            <xsl:apply-templates/>
        </i>
    </xsl:template>
    
    <xsl:template match="tei:orig">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="tei:reg">
        <i>[<xsl:apply-templates/>]</i>
    </xsl:template>
    
    <xsl:template match="tei:term">
        <i>
            <xsl:apply-templates/>
        </i>
    </xsl:template>
    
    <xsl:template match="tei:abbr">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="tei:q">
        <i>
            <xsl:apply-templates/>
        </i>
    </xsl:template>
    
    <xsl:template match="tei:num">
        <xsl:apply-templates/>
    </xsl:template>
     
    <xsl:template match="tei:name[@role='protagonist']">
        <span class="prot"><xsl:apply-templates/></span> 
    </xsl:template>
     
</xsl:stylesheet>