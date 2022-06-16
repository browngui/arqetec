import React from 'react'
import { Carousel } from 'react-bootstrap'
import './style.css';

function index() {
  return (
    <Carousel>
    <Carousel.Item>
      <img
        className="d-block w-100"
        src="https://images.hdqwalls.com/wallpapers/star-wars-4th-may-kt.jpg "
        alt="First slide"
      />

    </Carousel.Item>
    <Carousel.Item>
      <img
        className="d-block w-100"
        src="https://images8.alphacoders.com/110/1103710.jpg"
        alt="First slide"
      />
      <Carousel.Caption>
        <h2>The Mandalorian</h2>
      </Carousel.Caption>
    </Carousel.Item>

    <Carousel.Item>
      <img
        className="d-block w-100"
        src="https://images5.alphacoders.com/124/thumb-1920-1242370.jpg"
        alt="Second slide"
      />
  
      <Carousel.Caption>
        <h2>Obi-Wan Kenobi</h2>
      </Carousel.Caption>
    </Carousel.Item>
    <Carousel.Item>
      <img
        className="d-block w-100"
        src="https://wallpaperaccess.com/full/1471005.jpg" 
        alt="Third slide"
      />
  
      <Carousel.Caption>
        <h2>Rogue One</h2>
      </Carousel.Caption>
      
    </Carousel.Item>
  </Carousel>
  )
}

export default index