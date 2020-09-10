<?xml version="1.0" encoding="iso-8859-1"?>

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:dt="urn:schemas-microsoft-com:datatypes">
  <xsl:template match="/">
    <html>
      <head>
        <title>Experiment Advisor Report</title>

        <style type="text/css">
          body { font-family:Arial; }
          th { background-color:#1E1D72; color:white; }
          td { border-style:solid; border-width:1pt; border-color:#1E1D72; }
          table { width:60%;  border-color:#1E1D72; border-style:solid; border-width:1pt; border-collapse:collapse; }
          .trOdd { background-color:#F0F8FF; }
          .trEven { background-color:#F5F5F5; }

        </style>
      </head>
      <body>

        <h1>Experiment Advisor Report</h1>

        <img src = "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAYEBQYFBAYGBQYHBwYIChAKCgkJChQODwwQFxQYGBcUFhYaHSUfGhsjHBYWICwgIyYnKSopGR8tMC0oMCUoKSj/2wBDAQcHBwoIChMKChMoGhYaKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCj/wAARCAE0ArwDASIAAhEBAxEB/8QAHQABAAEFAQEBAAAAAAAAAAAAAAYDBAUHCAECCf/EAFQQAAEDAwEFAwgGAwwIBQQDAAEAAgMEBREGEiExQVEHE2EiMlJxgZGh0RRCYpSxwSMz4QgVFhdDRVVWcoKS0iRTg5OiwuLwNEZUc9MlNUSyY3Tx/8QAGwEBAAIDAQEAAAAAAAAAAAAAAAMFAQIEBgf/xAA5EQACAgEDAQQIBQMEAgMAAAAAAQIDBAURITEGEkFRExQVIjJhcaFSgZGx0ULB4RYjM/AH8SQ0U//aAAwDAQACEQMRAD8A6pREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEVvWVcFHA+eqmjhhYMufI4NA9q1Bq/ttpGXKKyaMpf33vFQ8RROORE1x5nmQOu4KejGtyHtXHf9jDaRuYOBzjkvVgdHUNdSWlkl4rfp10nw+olaAGA+iwDg0cB14lZ4KGS2e2+5kIiLACIVjr1d6Wz0pnrHENJ2WNaNp0jjwa0DiVhvblmG0luzI5TKiLb7qCYd5FY4Ioj5rZ6oB/tABA968ffb+zzrVQ/e/wDpUTvgupA8mC67/oS/KKESaovTNxtVFnwqj/lXw3Vd5z5VppAP/wCz+xRvLqXVmks6mPV/YnWUyoY3VdeP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" ></img>

        <!-- ExperimentInfo -->
        <h2>Experiment Info</h2>

        <table>

          <xsl:for-each select="Report/ExperimentInfo">

            <tr>

              <td>ExperimentName:</td>

              <td>

                <xsl:value-of select="ExperimentName"/>

              </td>

            </tr>



            <tr>

              <td>Session Date/Time:</td>

              <td>

                <xsl:value-of select="SessionDate"/>
                <xsl:text> </xsl:text>
                <xsl:value-of select="SessionTime"/>

              </td>

            </tr>



            <tr>

              <td>Subject</td>

              <td>

                <xsl:value-of select="Subject"/>

              </td>

            </tr>



            <tr>

              <td>Session</td>

              <td>

                <xsl:value-of select="Session"/>

              </td>

            </tr>



            <tr>

              <td>Group</td>

              <td>

                <xsl:value-of select="Group"/>

              </td>

            </tr>

            <tr>

              <td>Elapsed Time</td>

              <td>

                <xsl:value-of select="ElapsedTime"/>

              </td>

            </tr>          



          </xsl:for-each>

        </table>



        <!-- TimeAuditInfo -->



        <h2>Onset To Onset Stats</h2>
        <xsl:variable name="resultCount" select="count(Report/TimeAuditInfo/TimeAuditObjects/TimeAuditObject/OnsetToOnsetStats/OnsetToOnsetStat)" />

        <xsl:choose>

          <xsl:when test="$resultCount = 0">
            <blockquote>(none)</blockquote>
          </xsl:when>

          <xsl:otherwise>

            <table>



              <tr>

                <th>Object</th>

                <th>Expected</th>

                <th>N</th>

                <th>Mean</th>

                <th>StdDev</th>

                <th>Min</th>

                <th>Max</th>             

              </tr>



              <xsl:for-each select="Report/TimeAuditInfo/TimeAuditObjects/TimeAuditObject/OnsetToOnsetStats/OnsetToOnsetStat">


                <xsl:variable name="css-class">
                  <xsl:choose>
                    <xsl:when test="position() mod 2 = 0">trEven</xsl:when>
                    <xsl:otherwise>trOdd</xsl:otherwise>
                  </xsl:choose>
                </xsl:variable>


                <tr class="{$css-class}">

                  <td>


                    <xsl:value-of select="Name"/>

                  </td>

                  <td>

                    <xsl:value-of select="Expected"/>

                  </td>

                  <td>

                    <xsl:value-of select="N"/>

                  </td>

                  <td>

                    <xsl:choose>
                      <xsl:when test="Mean/@dt:dt = 'r8'">
                        <xsl:value-of select='format-number(Mean, "0")'/>
                      </xsl:when>
                      <xsl:when test="Mean/@dt:dt = 'boolean'">
                        <xsl:choose>
                          <xsl:when test="Mean = 1">Yes</xsl:when>
                          <xsl:otherwise>No</xsl:otherwise>
                        </xsl:choose>
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:value-of select="Mean"/>
                      </xsl:otherwise>
                    </xsl:choose>


                  </td>

                  <td>

                    <xsl:choose>
                      <xsl:when test="StdDevP/@dt:dt = 'r8'">
                        <xsl:value-of select='format-number(StdDevP, "0")'/>
                      </xsl:when>
                      <xsl:when test="StdDevP/@dt:dt = 'boolean'">
                        <xsl:choose>
                          <xsl:when test="StdDevP = 1">Yes</xsl:when>
                          <xsl:otherwise>No</xsl:otherwise>
                        </xsl:choose>
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:value-of select="StdDevP"/>
                      </xsl:otherwise>
                    </xsl:choose>

                  </td>

                  <td>

					<xsl:choose>
                      <xsl:when test="Min/@dt:dt = 'r8'">
                        <xsl:value-of select='format-number(Min, "0")'/>
                      </xsl:when>
                      <xsl:when test="Min/@dt:dt = 'boolean'">
                        <xsl:choose>
                          <xsl:when test="Min = 1">Yes</xsl:when>
                          <xsl:otherwise>No</xsl:otherwise>
                        </xsl:choose>
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:value-of select="Min"/>
                      </xsl:otherwise>
                    </xsl:choose>

                  </td>

                  <td>

					<xsl:choose>
                      <xsl:when test="Max/@dt:dt = 'r8'">
                        <xsl:value-of select='format-number(Max, "0")'/>
                      </xsl:when>
                      <xsl:when test="Max/@dt:dt = 'boolean'">
                        <xsl:choose>
                          <xsl:when test="Max = 1">Yes</xsl:when>
                          <xsl:otherwise>No</xsl:otherwise>
                        </xsl:choose>
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:value-of select="Max"/>
                      </xsl:otherwise>
                    </xsl:choose>


                  </td>                  

                </tr>





              </xsl:for-each>

            </table>

          </xsl:otherwise>

        </xsl:choose>

        <h2>Onset Delay Stats</h2>

        <xsl:variable name="OnsetDelayCount" select="count(Report/TimeAuditInfo/TimeAuditObjects/TimeAuditObject/OnsetDelayStats)" />

        <xsl:choose>

          <xsl:when test="$OnsetDelayCount = 0">
            <blockquote>(none)</blockquote>
          </xsl:when>

          <xsl:otherwise>


            <table>

              <tr>

                <th>Object</th>

                <th>N</th>

                <th>Mean</th>

                <th>StdDev</th>
                
                <th>Min</th>

                <th>Max</th>

              </tr>



              <xsl:for-each select="Report/TimeAuditInfo/TimeAuditObjects/TimeAuditObject/OnsetDelayStats">



                <xsl:variable name="css-class">
                  <xsl:choose>
                    <xsl:when test="position() mod 2 = 0">trEven</xsl:when>
                    <xsl:otherwise>trOdd</xsl:otherwise>
                  </xsl:choose>
                </xsl:variable>


                <tr class="{$css-class}">

                  <td>

                    <xsl:value-of select="Name"/>

                  </td>

                  <td>

                    <xsl:value-of select="N"/>

                  </td>

                  <td>

                    <xsl:choose>
                      <xsl:when test="Mean/@dt:dt = 'r8'">
                        <xsl:value-of select='format-number(Mean, "0")'/>
                      </xsl:when>
                      <xsl:when test="Mean/@dt:dt = 'boolean'">
                        <xsl:choose>
                          <xsl:when test="Mean = 1">Yes</xsl:when>
                          <xsl:otherwise>No</xsl:otherwise>
                        </xsl:choose>
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:value-of select="Mean"/>
                      </xsl:otherwise>
                    </xsl:choose>

                  </td>

                  <td>

                    <xsl:choose>
                      <xsl:when test="StdDevP/@dt:dt = 'r8'">
                        <xsl:value-of select='format-number(StdDevP, "0")'/>
                      </xsl:when>
                      <xsl:when test="StdDevP/@dt:dt = 'boolean'">
                        <xsl:choose>
                          <xsl:when test="StdDevP = 1">Yes</xsl:when>
                          <xsl:otherwise>No</xsl:otherwise>
                        </xsl:choose>
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:value-of select="StdDevP"/>
                      </xsl:otherwise>
                    </xsl:choose>

                  </td>

                  <td>

					<xsl:choose>
                      <xsl:when test="Min/@dt:dt = 'r8'">
                        <xsl:value-of select='format-number(Min, "0")'/>
                      </xsl:when>
                      <xsl:when test="Min/@dt:dt = 'boolean'">
                        <xsl:choose>
                          <xsl:when test="Min = 1">Yes</xsl:when>
                          <xsl:otherwise>No</xsl:otherwise>
                        </xsl:choose>
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:value-of select="Min"/>
                      </xsl:otherwise>
                    </xsl:choose>


                  </td>

                  <td>

					<xsl:choose>
                      <xsl:when test="Max/@dt:dt = 'r8'">
                        <xsl:value-of select='format-number(Max, "0")'/>
                      </xsl:when>
                      <xsl:when test="Max/@dt:dt = 'boolean'">
                        <xsl:choose>
                          <xsl:when test="Max = 1">Yes</xsl:when>
                          <xsl:otherwise>No</xsl:otherwise>
                        </xsl:choose>
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:value-of select="Max"/>
                      </xsl:otherwise>
                    </xsl:choose>


                  </td>

                  

                </tr>

              </xsl:for-each>

            </table>

          </xsl:otherwise>
        </xsl:choose>

        <h2>Load Time Stats</h2>

        <xsl:variable name="LoadTimeCount" select="count(Report/TimeAuditInfo/TimeAuditObjects/TimeAuditObject/LoadTimeStats)" />

        <xsl:choose>

          <xsl:when test="$LoadTimeCount= 0">
            <blockquote>(none)</blockquote>
          </xsl:when>

          <xsl:otherwise>

            <table>
              <tr>

                <th>Object</th>

                <th>N</th>

                <th>Mean</th>

                <th>StdDev</th>
                
                <th>Min</th>

                <th>Max</th>

              </tr>



              <xsl:for-each select="Report/TimeAuditInfo/TimeAuditObjects/TimeAuditObject/LoadTimeStats">



                <xsl:variable name="css-class">
                  <xsl:choose>
                    <xsl:when test="position() mod 2 = 0">trEven</xsl:when>
                    <xsl:otherwise>trOdd</xsl:otherwise>
                  </xsl:choose>
                </xsl:variable>


                <tr class="{$css-class}">

                  <td>

                    <xsl:value-of select="Name"/>

                  </td>

                  <td>

                    <xsl:value-of select="N"/>

                  </td>

                  <td>

                    <xsl:choose>
                      <xsl:when test="Mean/@dt:dt = 'r8'">
                        <xsl:value-of select='format-number(Mean, "0")'/>
                      </xsl:when>
                      <xsl:when test="Mean/@dt:dt = 'boolean'">
                        <xsl:choose>
                          <xsl:when test="Mean = 1">Yes</xsl:when>
                          <xsl:otherwise>No</xsl:otherwise>
                        </xsl:choose>
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:value-of select="Mean"/>
                      </xsl:otherwise>
                    </xsl:choose>

                  </td>

                  <td>

                    <xsl:choose>
                      <xsl:when test="StdDevP/@dt:dt = 'r8'">
                        <xsl:value-of select='format-number(StdDevP, "0")'/>
                      </xsl:when>
                      <xsl:when test="StdDevP/@dt:dt = 'boolean'">
                        <xsl:choose>
                          <xsl:when test="StdDevP = 1">Yes</xsl:when>
                          <xsl:otherwise>No</xsl:otherwise>
                        </xsl:choose>
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:value-of select="StdDevP"/>
                      </xsl:otherwise>
                    </xsl:choose>

                  </td>

                  <td>

					<xsl:choose>
					<xsl:when test="N = 0">
						0
                      </xsl:when>
                      <xsl:otherwise>

					<xsl:choose>
                      <xsl:when test="Min/@dt:dt = 'r8'">
                        <xsl:value-of select='format-number(Min, "0")'/>
                      </xsl:when>
                      <xsl:when test="Min/@dt:dt = 'boolean'">
                        <xsl:choose>
                          <xsl:when test="Min = 1">Yes</xsl:when>
                          <xsl:otherwise>No</xsl:otherwise>
                        </xsl:choose>
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:value-of select="Min"/>
                      </xsl:otherwise>
                    </xsl:choose>
                      </xsl:otherwise>
                    </xsl:choose>



                  </td>

                  <td>

					<xsl:choose>
					<xsl:when test="N = 0">
						0
                      </xsl:when>
                      <xsl:otherwise>
					<xsl:choose>
                      <xsl:when test="Max/@dt:dt = 'r8'">
                        <xsl:value-of select='format-number(Max, "0")'/>
                      </xsl:when>
                      <xsl:when test="Max/@dt:dt = 'boolean'">
                        <xsl:choose>
                          <xsl:when test="Max = 1">Yes</xsl:when>
                          <xsl:otherwise>No</xsl:otherwise>
                        </xsl:choose>
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:value-of select="Max"/>
                      </xsl:otherwise>
                    </xsl:choose>
                      </xsl:otherwise>
                    </xsl:choose>



                  </td>

                  

                </tr>
              </xsl:for-each>
            </table>
          </xsl:otherwise>
        </xsl:choose>

        <!-- MovieInfo -->

        <!-- AdvisorModuleInfo -->

        <h2>Experiment Advisor Modules</h2>

        <xsl:variable name="ExperimentAdvisorModuleCount" select="count(Report/AdvisorModules/AdvisorModule)" />

        <xsl:choose>

          <xsl:when test="$ExperimentAdvisorModuleCount= 0">
            <blockquote>(none)</blockquote>
          </xsl:when>

          <xsl:otherwise>

            <table>
              <tr>
                <th>Caption</th>

                <th>Enabled</th>

                <th>Description</th>
              </tr>

              <xsl:for-each select="Report/AdvisorModules/AdvisorModule">

                <xsl:variable name="css-class">
                  <xsl:choose>
                    <xsl:when test="position() mod 2 = 0">trEven</xsl:when>
                    <xsl:otherwise>trOdd</xsl:otherwise>
                  </xsl:choose>
                </xsl:variable>


                <tr class="{$css-class}">


                  <td>
                    <xsl:value-of select="Caption"/>
                  </td>

                  <td>
                    <xsl:choose>
                      <xsl:when test="Enabled = 1">Yes</xsl:when>
                      <xsl:otherwise>No</xsl:otherwise>
                    </xsl:choose>
                  </td>

                  <td>
                    <xsl:value-of select="Description"/>
                  </td>

                </tr>
              </xsl:for-each>

            </table>

          </xsl:otherwise>
        </xsl:choose>

        <!-- AdvisorModuleInfo -->

        <h2>Experiment Advisor Findings</h2>

        <xsl:variable name="ExperimentAdvisorModuleFindingCount" select="count(Report/AdvisorModuleFindings/AdvisorModuleFinding)" />

        <xsl:choose>

          <xsl:when test="$ExperimentAdvisorModuleFindingCount = 0">
            <blockquote>(none)</blockquote>
          </xsl:when>

          <xsl:otherwise>


            <table>



              <tr>

                <th>Caption</th>

                <th>Category</th>

                <th>Message</th>

                <th>Occurrences</th>

              </tr>



              <xsl:for-each select="Report/AdvisorModuleFindings/AdvisorModuleFinding">


                <xsl:variable name="css-class">
                  <xsl:choose>
                    <xsl:when test="position() mod 2 = 0">trEven</xsl:when>
                    <xsl:otherwise>trOdd</xsl:otherwise>
                  </xsl:choose>
                </xsl:variable>


                <tr class="{$css-class}">

                  <td>

                    <xsl:value-of select="AdvisorModuleCaption"/>

                  </td>

                  <td>

                    <xsl:value-of select="Category"/>

                  </td>

                  <td>

                    <xsl:value-of select="Message"/>

                  </td>

                  <td>

                    <xsl:value-of select="MessageCount"/>

                  </td>

                </tr>
              </xsl:for-each>

            </table>
          </xsl:otherwise>
        </xsl:choose>


        <!-- ClockInfo -->

        <h2>Clock Info</h2>

        <table>

          <xsl:for-each select="Report/Clock/Property">

            <xsl:variable name="css-class">
              <xsl:choose>
                <xsl:when test="position() mod 2 = 0">trEven</xsl:when>
                <xsl:otherwise>trOdd</xsl:otherwise>
              </xsl:choose>
            </xsl:variable>


            <tr class="{$css-class}">

              <td>

                <xsl:value-of select="PropertyName"/>

              </td>

              <td>

                <xsl:choose>
                  <xsl:when test="PropertyValue/@dt:dt = 'r8'">
                    <xsl:value-of select='format-number(PropertyValue, "0")'/>
                  </xsl:when>
                  <xsl:when test="PropertyValue/@dt:dt = 'boolean'">
                    <xsl:choose>
                      <xsl:when test="PropertyValue = 1">Yes</xsl:when>
                      <xsl:otherwise>No</xsl:otherwise>
                    </xsl:choose>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:value-of select="PropertyValue"/>
                  </xsl:otherwise>
                </xsl:choose>


              </td>

            </tr>

          </xsl:for-each>

        </table>

        <!-- DeviceInfo -->

        <h2>Device Info</h2>

        <xsl:for-each select="Report/Devices/Device">
          <table>


            <xsl:for-each select="Property">

              <xsl:variable name="css-class">
                <xsl:choose>
                  <xsl:when test="position() mod 2 = 0">trEven</xsl:when>
                  <xsl:otherwise>trOdd</xsl:otherwise>
                </xsl:choose>
              </xsl:variable>

              <tr class="{$css-class}">

                <td width="25%">

                  <xsl:value-of select="PropertyName"/>

                </td>

                <td>

                  <xsl:choose>
                    <xsl:when test="PropertyValue/@dt:dt = 'r8'">
                      <xsl:value-of select='format-number(PropertyValue, "0.##")'/>
                    </xsl:when>
                    <xsl:when test="PropertyValue/@dt:dt = 'boolean'">
                      <xsl:choose>
                        <xsl:when test="PropertyValue = 1">Yes</xsl:when>
                        <xsl:otherwise>No</xsl:otherwise>
                      </xsl:choose>
                    </xsl:when>
                    <xsl:otherwise>
                      <xsl:value-of select="PropertyValue"/>
                    </xsl:otherwise>
                  </xsl:choose>

                </td>

              </tr>



            </xsl:for-each>

          </table>

          <br />

        </xsl:for-each>







      </body>

    </html>

  </xsl:template>

</xsl:stylesheet>



