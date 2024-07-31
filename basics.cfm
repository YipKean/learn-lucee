<!--- output --->
<cfoutput>
    This will be the output
</cfoutput>

<!--- writeOutput("Hello, World!"); --->

<!--- variable --->
<cfset myVar = "This is a var!">

<cfset myString = "This is a string">
<cfset myNumber = 123>
<cfset arr = ["apple","oren"]>
<cfset myStruct = {name="John", age=30}>
<br>
<!--- Conditional Statements --->
<cfif myVar EQ "This is a var!"> 
    <cfoutput>This is myVar!!</cfoutput>
</cfif>
<br>

<!--- Switch --->
<cfswitch expression="#myVar#">
    <cfcase value="Hello, World!">
        <cfoutput>The value is Hello, World!</cfoutput>
    </cfcase>
    <cfcase value="This is a var!">
        <cfoutput>The value is This is a var!</cfoutput>
    </cfcase>
    <cfdefaultcase>
        <cfoutput>This is a default Value </cfoutput>
    </cfdefaultcase>
</cfswitch>
<br>

<!--- For Loop --->
<cfloop index="i" from="1" to="10">
    <cfoutput> #i# </cfoutput>
</cfloop>
<br>
<cfset i = 1>
<!--- While Loop Doesnt work --->
<cfwhile condition="#i LT 10#">
    <cfoutput> #i# </cfoutput>
    <cfset i = i + 1>
</cfwhile>



<br><br><br>
<h2>Script</h2>
<cfscript>
    writeOutput("Hello World with script!");

    myVar = "Hello, World!";
    j = 1;
    writeOutput(j & "<br>");

    if(myVar == "Hello, World!")
    {
        writeOutput("The value is Hello, World!");
    }
    
    space();

    switch(myVar)
    {
        case "Hello, World!":
            writeOutput("SWITCH The value is Hello, World!");
            break;
        default:
            writeOutput("Default value");
    }

    space();
    space();
    for(i = 0; i < 10; i++)
    {
        writeOutput("For Loop: " & i & "<br>");
    }

    space();
    i = 1
    while(i <= 10)
    {
        writeOutput("While Loop : " & i & " ");
        space();
        i++;
    }
    space();space();

    function space()
    {
        writeOutput("<br>");
    }
</cfscript>

<h2>Practical </h2>
<!--- Practically --->
<cfset name = "John">
<cfset age = 26>
<cfset hobbies = ["Golf", "Gym", "Gaming"]>
<cfset user = {name="John", age=26, hobbies=hobbies}>

<cfif age GT 18>
    <cfoutput>#name# is an adult</cfoutput>
<cfelse>
    <cfoutput>#name# is not an adult </cfoutput>
</cfif>
<br>
<cfloop index="i" from="1" to="3">
    <cfoutput>Hobby #i#: #hobbies[i]#</cfoutput><br>
</cfloop>

<cffunction name="greetUser" access="public" returnType="string">
    <cfargument name="name" type="string" required="true">
    <cfreturn "Hello!, " & arguments.name & "!">
</cffunction>

<cfinclude template="header.cfm">
<cfoutput> This is cfinclude </cfoutput>

<h2>Practical Script </h2>
<cfscript>
    function printUser()
    {
        var name = "John";
        var age = 26;
        var hobbies = ["Golf", "Gym", "Gaming"];
        var user = {name= "John", age= 26, hobbies=hobbies};

        if(age > 18)
            writeOutput(name & " is an adult");
        else
            writeOutput(name & " is not an adult");

        writeOutput("<br>")
        for(var i = 1; i < 4; i++)
        {
            writeOutput("Hobby " & i & " : " & hobbies[i]);
            writeOutput("<br>")
        }
    }

    
    // component {
    //     public string function greetUser(string name){
    //         return "Hello, " & name & "!";
    //     }
    // }
    printUser();
</cfscript>