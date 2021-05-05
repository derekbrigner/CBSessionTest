component accessors="true" scope="request" {

    property name="userId" type="string" default="0";
    property name="userName" type="string" default="";
    property name="hasActiveSession" type="boolean" default="no";
    property name="createdDate" type="date" default="";

    UserSessionBO function init() {
        return this;
    }

    boolean function isAuthenticated() {
        return this.getHasActiveSession();
    }
}