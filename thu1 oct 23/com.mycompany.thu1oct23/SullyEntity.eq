
/*
 * SullyEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class SullyEntity:SEEntity
{
	SESprite monster;
	int w;
	int h;
	int mx;
	int my;
	int Px;
	int py;
	
	public void initialize(SEResourceCache rsc)
	{
		base.initialize(rsc);
		w = get_scene_width();
		h = get_scene_height();
		
		rsc.prepare_image("mysully","sully",w*0.1,0.1*w);

		monster=add_sprite_for_image(SEImage.for_resource("mysully"));

		monster.move(Math.random(0,w), Math.random(0,h));
		mx = monster.get_x();
		my = monster.get_y();
	}

	public void tick(TimeVal now,double delta)
	{
		Px = MainScene.x;
		py = MainScene.y;
		mx = monster.get_x();
		my = monster.get_y();
		base.tick(now,delta);
		monster.move(mx + (Px-mx) / Math.random(50,100), 
		my + (py-my) / Math.random(50,100));
	}

	public void cleanup()
	{
		base.cleanup();
	}
}
