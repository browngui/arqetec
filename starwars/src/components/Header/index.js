import React from 'react'
import { Container, Nav, Navbar, NavDropdown } from 'react-bootstrap'
import { Link } from 'react-router-dom'

function index() {
  return (
    <Navbar bg="dark" expand="lg" variant='dark'>
    <Container>
      <Navbar.Brand href="#home">The World of Star Wars</Navbar.Brand>
      <Navbar.Toggle aria-controls="basic-navbar-nav" />
      <Navbar.Collapse id="basic-navbar-nav">
        <Nav className="me-auto">

          <Nav.Link> <Link to='/index.js'></Link>Home</Nav.Link>

          <Nav.Link> <Link to=''></Link>Link</Nav.Link>

          <NavDropdown title="Dropdown" id="basic-nav-dropdown">
            <NavDropdown.Item href="#action/3.1">1ª trilogia</NavDropdown.Item>
            <NavDropdown.Item href="#action/3.2">2ª trilogia</NavDropdown.Item>
            <NavDropdown.Item href="#action/3.3">3ª trilogia</NavDropdown.Item>
            <NavDropdown.Divider />
            <NavDropdown.Item href="#action/3.4">Spin off's</NavDropdown.Item>
          </NavDropdown>
        </Nav>
      </Navbar.Collapse>
    </Container>
  </Navbar>
  )
}

export default index