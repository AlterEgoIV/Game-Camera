boolean up, down, left, right;
int numTileCols, numTileRows;
float tileWidth, tileHeight;
Player player;
Camera camera;
PVector screenPosition;

void setup()
{
  size(800, 600);
  
  numTileCols = 20;
  numTileRows = 20;
  tileWidth = width / numTileCols;
  tileHeight = height / numTileRows;
  player = new Player(new PVector(200, 200), 50, 50);
  camera = new Camera(new PVector(0, 0), width, height);
  screenPosition = new PVector();
}

void draw()
{
  background(128);
  
  movePlayer();
  camera.follow(player);
  
  renderTiles();
  renderPlayer();
}

void movePlayer()
{
  if(up) player.position.y -= player.speed;
  if(down) player.position.y += player.speed;
  if(left) player.position.x -= player.speed;
  if(right) player.position.x += player.speed;
}

void renderTiles()
{
  fill(255);
  for(int i = 0; i < numTileCols; ++i)
  {
    for(int j = 0; j < numTileRows; ++j)
    {
      screenPosition.set(i * tileWidth - camera.position.x, j * tileHeight - camera.position.y);
      
      rect(screenPosition.x, screenPosition.y, tileWidth, tileHeight);
    }
  }
}

void renderPlayer()
{
  screenPosition.set(player.position.x - camera.position.x, player.position.y - camera.position.y);
  
  fill(255, 0, 0);
  rect(screenPosition.x - player.halfW, screenPosition.y - player.halfH, player.w, player.h);
}

void keyPressed()
{
  if(keyCode == UP)
  {
    up = true;
  }
  
  if(keyCode == DOWN)
  {
    down = true;
  }
  
  if(keyCode == LEFT)
  {
    left = true;
  }
  
  if(keyCode == RIGHT)
  {
    right = true;
  }
}

void keyReleased()
{
  if(keyCode == UP)
  {
    up = false;
  }
  
  if(keyCode == DOWN)
  {
    down = false;
  }
  
  if(keyCode == LEFT)
  {
    left = false;
  }
  
  if(keyCode == RIGHT)
  {
    right = false;
  }
}
