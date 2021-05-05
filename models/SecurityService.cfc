component singleton {

    //DI
    property name="userSessionService" inject="UserSessionService";
    
	SecurityService function init () {

		return this;
    }

    boolean function authenticate () {

        local.userSessionBO = userSessionService.getSession();

        return local.userSessionBO.isAuthenticated();

    } 

}