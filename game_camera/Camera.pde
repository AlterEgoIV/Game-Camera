class Camera extends GameObject
{
  Camera(PVector position, float w, float h)
  {
    super(position, w, h);
  }
  
  void follow(GameObject object)
  {
    position.set(object.position.x - w / 2, object.position.y - h / 2);
  }
}
