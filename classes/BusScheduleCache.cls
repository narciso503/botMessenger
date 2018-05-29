public class BusScheduleCache {
    private Cache.OrgPartition part;
    //part = Cache.Org.getPartition('local.BusSchedule');
    public BusScheduleCache()
    {
        part=Cache.Org.getPartition('local.BusSchedule');
    }
    
    public void putSchedule(String busLine, Time[] schedule)
    {
        part.put(busLine, schedule);
    }
    
    public Time[] getSchedule(String busLine)
    {
        Time[] schedule = (Time[])part.get(busLine);
        if(schedule == null)
        {
            return new List<Time>
            {
                Time.newInstance(8,0,0,0),
                Time.newInstance(17,0,0,0)
            };
        }
        else
        {
            return schedule;
        }
        
    }
}
/*

        Cache.OrgPartition part = Cache.Org.getPartition('local.BusSchedule');
        part.schedule;
        if(part == null)
        {
            return(Time.newInstance(8),Time.newInstance(5))
                }else{
                    return(schedule);
                }
       // return Time[];
    }
}
/* Get partition
Cache.SessionPartition sessionPart = Cache.Session.getPartition('local.CurrencyCache');
// Add cache value to the partition
sessionPart.put('FavoriteCurrency', 'JPY');
// Retrieve cache value from the partition
String cachedRate = (String)sessionPart.get('FavoriteCurrency');
///////////////////
// Get partition
Cache.OrgPartition orgPart = Cache.Org.getPartition('local.CurrencyCache');
// Add cache value to the partition. Usually, the value is obtained from a 
// callout, but hardcoding it in this example for simplicity.
orgPart.put('DollarToEuroRate', '0.91');
// Retrieve cache value from the partition
String cachedRate = (String)orgPart.get('DollarToEuroRate');
*/