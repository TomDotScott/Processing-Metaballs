class Blob {
  public PVector m_position;
  private PVector m_velocity;
  private float m_radius;


  Blob(PVector _position, float _radius) {
    m_position = _position;
    m_radius = _radius;
    m_velocity = new PVector(random(3), random(3));
  }

  void Show() {
    stroke(255);
    ellipse(m_position.x, m_position.y, m_radius, m_radius);
  }

  void Update() {
    m_position.add(m_velocity);

    if (m_position.x > width || m_position.x < 0)
    {
      m_velocity.x *= -1;
    }
    if (m_position.y > height || m_position.y < 0) {
      m_velocity.y *= -1;
    }
  }
}
