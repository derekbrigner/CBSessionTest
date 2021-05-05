component singleton {

    //DI
    property name="userSessionBO" inject="UserSessionBO";
	
	UserSessionService function init(){
        return this;
    }
    
    UserSessionBO function getSession () {
        
        local.userSessionResult = {
            userId: 1,
            userName: 'Joe',
            hasActiveSession: true,
            createdDate: now()
        };

        userSessionBO.setUserId(local.userSessionResult.userId);
        userSessionBO.setUserName(local.userSessionResult.userName);
        userSessionBO.setHasActiveSession(local.userSessionResult.hasActiveSession);
        userSessionBO.setCreatedDate(ParseDateTime(local.userSessionResult.createdDate);
        
        return local.userSessionBO;

    }

}