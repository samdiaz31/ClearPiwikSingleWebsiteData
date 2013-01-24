/*###################################################*/
/*                                                   */
/*   Set this variable to equal the 'idsite' field   */
/*         of the website you wish to clear          */
/*    The ID can be found in the PIWIK_SITE table    */
/*                                                   */
/**/                SET @siteID = 4;               /**/
/*                                                   */
/*   !!CAUTION!! This will delete ALL your analytic  */
/*  data including reports & goals for this website  */     
/*                                                   */
/*###################################################*/

DELETE FROM piwik_archive_blob_2013_01 WHERE idsite = @siteID;
DELETE FROM piwik_archive_numeric_2013_01 WHERE idsite = @siteID;
DELETE FROM piwik_goal WHERE idsite = @siteID;
DELETE FROM piwik_log_conversion WHERE idsite = @siteID;
DELETE FROM piwik_log_conversion_item WHERE idsite = @siteID;
DELETE FROM piwik_log_link_visit_action WHERE idsite = @siteID;
DELETE FROM piwik_log_visit WHERE idsite = @siteID;
DELETE FROM piwik_report WHERE idsite = @siteID;