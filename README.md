# County-Adj-List
Project done for an interview project with the DOT. Using C#, Windows forms, and SQL Server

1.	Installations: if not already installed.
  a.	Visual studio code: https://visualstudio.microsoft.com/
  b.	SQL Server: https://www.microsoft.com/en-us/sql-server/sql-server-downloads 
    i.	Make sure to install the SQL Server Management Studio (SSMS)
c.	.Net Framework: https://dotnet.microsoft.com/en-us/download/dotnet-framework 

2.	Setting up SQL Database:
  a.	Once SQL Server is downloaded, open SQL Server Management Studio.
  b.	Connect to the server. Make sure to note the server name.
  c.	Select open file on the top pane.
    i.	Open DOT Project folder
    ii.	Open SQL Scripts folder
    iii.	Double click Database Creation Script
      1.	This will create the database we will use.
    iv.	Select Execute.
    v.	Refresh page and check to see if DOTproj database was created.
  d.	Select open file on the top pane.
    i.	Open DOT Project folder
    ii.	Open SQL Scripts folder
    iii.	Double click Table Creation Script
      1.	This will create our table.
    iv.	Select Execute
    v.	Expand DOTproj.
    vi.	Expand Tables.
    vii.	Check to see if dbo.adj_list was created.
  e.	Select open file on the top pane.
    i.	Open DOT Project folder
    ii.	Open SQL Scripts folder
    iii.	Double click User Creation Script
      1.	This will create the user credentials we will use to access the database.
    iv.	Select Execute
    v.	Expand Security
    vi.	Expand Logins
    vii.	Check to see if user: root was created.
  f.	Select open file on the top pane.
    i.	Open DOT Project folder
    ii.	Open SQL Scripts folder
    iii.	Double click Column Creation Script
      1.	This will create our columns in dbo.adj_list
    iv.	Select Execute
    v.	Expand DOTproj\Tables if not already done.
    vi.	Expand dbo.adj_list
    vii.	Expand Columns
    viii.	Check to see if columns were created.
  g.	Select open file on the top pane.
    i.	Open DOT Project folder
    ii.	Open SQL Scripts folder
    iii.	Double click County1 Proc
      1.	This will create our first procedure
    iv.	Select Execute
  h.	Select open file on the top pane.
    i.	Open DOT Project folder
    ii.	Open SQL Scripts folder
    iii.	Double click County2 Proc
      1.	This will create our second procedure
    iv.	Select Execute

3.	Setting up Visual Studio:
  a.	Open DOT Project\Visual Studio Docs\DOT_proj.sln
    i.	This opens our solution.
  b.	Under Form1.cs
    i.	In line 46:
      1.	Make sure Data Source matches the name of your server.
2.	Initial Catalog matches the name of the database we created.
3.	User ID and Password matches that of the user we created.
  c.	Click the green arrow in the top pane that says DOT_proj
  d.	Once the windows form window opens.
  e.	In the first box enter the FIPS_code of the first county you wish to check.
  f.	In the second box enter the FIPS_code of the second county.
  g.	Click Connect.
  h.	Boolean result should display.
  i.	Celebrate setting up the project.




Assumptions:

1.	Corners of two counties touching/kitty-corner are NOT adjacent.
a.	A vertex is said to be adjacent if there is an edge connecting them.
2.	FIPS 153 is adjacent to FIPS 125.
3.	Only created one table for the adjacency list as we are only needing to pull data needed from a singular table.
4.	User input is required to be in FIPS due to the “Problem statement” mentioning: “Each of the 99 counties is assigned a number used as part of the National Atlas of the United States. “
5.	No error was created for incorrect inputs as Objective A states “returns a Boolean result which is true if the counties are adjacent to one-another.” This does not request to have an error returned on invalid inputs. It simply returns False.
6.	Objective C. Assumed SQL Server is the relational data store as it is stated that “Objective “C” should be written in SQL Server 2017 or a more recent release.”
7.	Deliverable 3. Assumed the sql queries to be imported are import scripts.
8.	Deliverable 4. “Documentation that describes application setup.” Is assumed to be work instructions given to a new user to run what I created, rather than a complete description of the setup I performed.
9.	Adjacency list was created using the map number not FIPS_code due to ease of creating instead of constantly cross-referencing the map with FIPS codes. Assumed that the application runs in the background so the user will only see Themselves input FIPS and have True or False returned.
10.	Assumed all deliverables would be best delivered in a single parent folder.
