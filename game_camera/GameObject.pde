abstract class GameObject
{
  PVector position;
  float w, h, halfW, halfH;
  
  GameObject(PVector position, float w, float h)
  {
    this.position = position;
    this.w = w;
    this.h = h;
    this.halfW = w / 2;
    this.halfH = h / 2;
  }
}
