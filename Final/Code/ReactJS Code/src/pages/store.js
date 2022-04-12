import {createStore} from 'redux';

// const initialState = {ownerObject:{},flag:false};

const SessionManager=(state={ownerObject:{}},action)=>{

    if(action.type ==='login')
    {
        return{...state,ownerObject:action.payload}
    }
    else if(action.type ==='logout')
    {
        return{...state,ownerObject:null,flag:false}
    }
    else{
        return state
    }
    
}
const store=createStore(SessionManager)
export default store


// let loginUser=('rohan','1244')=>{
//   let  obj={user:"rohan",password:'1244'}
//     dispatch({type:'login',payload:obj})
// }