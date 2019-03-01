class Player extends GameObject
{
  float speed;
  
  Player(PVector position, float w, float h)
  {
    super(position, w, h);
    this.speed = 5;
  }
}
