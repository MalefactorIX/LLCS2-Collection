float dmg=15.0;//Base LBA damage
purge(integer hex,key targ, string name,string fdmg)
{
    //llRegionSayTo(o,-1995,"lba:"+name+":"+fdmg+":"+llKey2Name(llGetOwnerKey(targ)));//Used for hitmarker hud
    if(hex)llRegionSayTo(targ,hex,(string)targ+","+fdmg);
    else llRegionSayTo(targ,-500,(string)targ+",damage,"+fdmg);
}
key direct;
key o;
default
{
    link_message(integer s, integer n, string m, key id)
    {
        o=llGetOwner();
        direct=id;
        llSensor("","",SCRIPTED,6.0,PI);
        string desc=llList2String(llGetObjectDetails(direct,[OBJECT_DESC]),0);
        if(desc!=""&&(llGetSubString(desc,0,1)=="v."||llGetSubString(desc,0,5)=="LBA.v."))
        {
            integer hex=(integer)("0x" + llGetSubString(llMD5String((string)direct,0), 0, 3));
            if(llGetSubString(desc,0,5)!="LBA.v.")hex=0;
            purge(hex,direct,llKey2Name(direct),(string)llFloor(dmg));
        }
    }
    sensor(integer d)
    {
        vector pos=llGetPos();
        float falloff=dmg*0.2;//Calculates how much damage should be reduced per meter. 0.2 allows for 5m of falloff before the value bottoms out.
        while(d--)
        {
            key oid=llDetectedKey(d);
            if(oid!=direct)
            {
            vector epos=llDetectedPos(d);
            list ray=llCastRay(pos,epos,[RC_REJECT_TYPES,RC_REJECT_AGENTS,RC_DATA_FLAGS,RC_GET_ROOT_KEY,RC_MAX_HITS,1]);
            key hit=llList2Key(ray,0);
            //key hit=llDetectedKey(d);
            //
            if(hit==oid||llList2Vector(ray,1)==ZERO_VECTOR)
            {
                string desc=llList2String(llGetObjectDetails(hit,[OBJECT_DESC]),0);
                if(desc!=""&&(llGetSubString(desc,0,1)=="v."||llGetSubString(desc,0,5)=="LBA.v."))
                {
                    float dist=llVecDist(pos,llList2Vector(ray,1));
                    if(dist<=0.0)dist=llVecDist(pos,epos);
                    integer hex=(integer)("0x" + llGetSubString(llMD5String((string)hit,0), 0, 3));
                    if(llGetSubString(desc,0,5)!="LBA.v.")hex=0;
                    integer fmg=llCeil(dmg-(falloff*dist));
                    if(fmg>0)purge(hex,hit,llDetectedName(d),(string)fmg);
                }
            }}
        }
        llSleep(1.0);//Delay death for LBA processing
        llDie();
    }
    no_sensor()
    {
        llSleep(1.0);//Delay death for LBA processing
        llDie();
    }
}
