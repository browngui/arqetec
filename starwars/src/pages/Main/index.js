import React from 'react'
import  Carousel from '../../components/Carousel/index';
import Header from '../../components/Header/index';
import  Card from '../../components/Card/index';
import Clone from '../../components/Carousel/clone';
import CloneHeader from '../../components/Header/cloneHeader';
import  CloneCard from '../../components/Card/cloneCard';

function index() {
    return (
      <>
        <Header/> 
        <Carousel/>
        <Card/>
        
        {/* {/* <CloneHeader />
        <Clone/>
        <CloneCard />
        <div>Main</div> */}
      </>
    )
  }
  
  export default index