#
# Config File conventions.  '#' is a comment character. anything after ignored.
#                           '[ ]' contains section designators.

[jira] # Configuration information for jira.
url=https://jira.oceanobservatories.org/tasks/
#url=https://jira-dev.oceanobservatories.org/tasks
username=unwin      # optional, for unchallenged operation
#password=PASSWORD      # optional, for unchallenged operation
csv_file_name=R2 AS Task List - R2C4-AS.csv # optional, for unchallenged operation

reporter=tampe    # defaults to username, unless specified here

separator=,
quote_char="
filter_folumn=Iteration
filter_value=R2C4

[Projects] # (key, value)
Analysis & Synthesis=CIDEVAS

[priorities]
blocker=Blocker
B=Blocker
5=Blocker
High=Critical
H=Critical
4=Critical
Medium=Major
M=Major
3=Major
Low=Minor
L=Minor
2=Minor
1=Trivial

[jira_priority]
Blocker=1
Critical=2
Major=3
Minor=4
Trivial=5
Must Complete=6
Should Complete=7
Good to Complete=8
Nice to Complete=9


[field_mappings]    # This designates the column mappings from the google spreadsheet CSV to what we do with them????


#WBS,Type,CO-ID,IT-ID,Iteration,Task,Description,Outcome of task (deliverables),Risk (COs),R2C1-AS,R2C2-AS,R2C3-AS,Jira Task#,Priority,Work days,Remaining Work Days,Confidence,Assignee,Support Roles,Design URL,Questions and Comments,Possible Risks,Confluence Ready,Status

OOI_CATEGORY_NUMBER=0 #?? This column should stay set until reset by another value. Blank = use last defined value.
Type=1
RT-ID=2
IT-ID=3
Iteration=4
Task=5
Description=6
Outcome=7
Risk (RTs)=8  # Risk (COs)
R2C1-AS=9
R2C2-AS=10
R2C3-AS=11
R2C4-AS=12
Jira Task Num=13
Priority=14
Work Days=15
Assignee=16
Support Developer=17
Design URL=18
Comments=19
Possible Risks=20
Confluence Ready=21

[Used_mappings]    # This designates the column numbers to what the migrator will use them for, possibly making above redundant.
TaskTitle=5
Description=6
Priority=14
TimeEstimate=15
Assignee=16
AffectsVersion=9,10,11,12 # if X in column, then add column name to affects version.
Components=0 # value should stay set until overwritten by a non blank value.  Also need to do a link lookup on it.
[output_mappings] # Column to overwrite with values resulting from addition to Jira.  Dumps input back as output, with the addition of these column mappings which overwrite the origional contents.
12=JiraKey

