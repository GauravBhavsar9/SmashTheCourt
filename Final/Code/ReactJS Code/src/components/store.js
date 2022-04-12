import {createStore } from 'redux';

const initialState = {counter:0};


const ownerReducer = (state={uname:""},action)=>{

    if(action.type === 'uname'){
        return{
            uname:action.payload.uname
        }
    }
    return state;

}

const store = createStore(userReducer);

export default store;