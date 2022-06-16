import { Navigate, Outlet } from "react-router-dom";

function userAlph (){
    const user = true;
    return user || user;
}

function protectedRouter (){
    const isAuth = userAlph();
    return(
        
            isAuth ? <Outlet/> : <Navigate to ='/login'/>
        
    )
}

export default protectedRouter