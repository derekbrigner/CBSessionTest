component extends="coldbox.system.Interceptor" {

    // Security Service
    property name="securityService" inject="SecurityService";
    
    void function configure(){}

    void function preProcess( event, data, buffer, rc, prc ){
        local.loginArr = ['Main.Login', 'Main.doLogin'];

        //Check that we are not in a login event
        if( NOT arrayContainsNoCase(local.loginArr, event.getCurrentEvent()) ) {
            
            //Check that the user has an active session and has application access
            if ( securityService.authenticate() ) {
                return;
            } else {
                //User did not pass authorization, and will be sent back to Main.Login
                relocate("Main.Login");
            }

        }


    }    

}