import React from 'react'
import { Card, CardGroup } from 'react-bootstrap'

function cloneCard() {
  return (
    <CardGroup>
  <Card>
    <Card.Img variant="top" src="https://wallpapercave.com/wp/wp7465668.jpg" />
    <Card.Body>
      <Card.Title>The Clone Wars</Card.Title>
      <Card.Text>Start to watch the biggest Star Wars series </Card.Text>
    </Card.Body>
    <Card.Footer>
      <small className="text-muted">Last updated 3 mins ago</small>
    </Card.Footer>
  </Card>
  <Card>
    <Card.Img variant="top" src="https://lumiere-a.akamaihd.net/v1/images/boba_ka_ff676bed.jpeg" />
    <Card.Body>
      <Card.Title>The Book of Boba Fett</Card.Title>
      <Card.Text>Watch now the season 01</Card.Text>
    </Card.Body>
    <Card.Footer>
      <small className="text-muted">Last updated 3 mins ago</small>
    </Card.Footer>
  </Card>
  <Card>
    <Card.Img variant="top" src="https://images.alphacoders.com/114/thumb-1920-1140507.jpg" />
    <Card.Body>
      <Card.Title> Star Wars: The Bad Batch </Card.Title>
      <Card.Text>Enjoy with this new Star Wars series</Card.Text>
    </Card.Body>
    <Card.Footer>
      <small className="text-muted">Last updated 3 mins ago</small>
    </Card.Footer>
  </Card>
</CardGroup>
  )
}

export default cloneCard