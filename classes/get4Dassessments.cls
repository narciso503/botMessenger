public class get4Dassessments {
    
    @AuraEnabled 
    public static User getUser(){
        return (User) Database.query( ' SELECT Id,Name FROM User WHERE Id=0050N000006XtziQAC' );
    }

    @AuraEnabled 
    public static User saveUser(User user){
        update user;
        return user;
    }  

}