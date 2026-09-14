//This script writes/updates values for experience keys used by the LABS body armor system.
default
{
    state_entry()
    {
        //llUpdateKeyValue("ballisticarmor","Ballistic Armor,200,0.25,1,1,1,1",0,"");
        //llUpdateKeyValue("LABSVersion","LABSv2.0",0,"")
        //llUpdateKeyValue("thermalarmor","Thermal Armor,200,1,0.25,1,1,0.9",0,"");
        //llUpdateKeyValue("flakarmor","Flak Armor,200,0.9,1,1,1,0.25",0,"");
        //llUpdateKeyValue("platearmor","Plate Armor,200,0.75,1,1,0.5,1",0,"");
        //llUpdateKeyValue("teslaarmor","Tesla Armor,200,1,0.9,0.25,1,1",0,"");
    }

    dataserver(key id, string data)
    {
        if((integer)llGetSubString(data,0,0))
        {
            llSay(0,"Data Written Successfully:\n"+llGetSubString(data,2,-1));
        }
        else llSay(0,"Error "+llGetSubString(data,2,-1));
    }
}
