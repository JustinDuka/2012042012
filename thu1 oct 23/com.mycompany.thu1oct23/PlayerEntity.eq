
/*
 * PlayerEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class PlayerEntity:SEEntity
{
	SESprite ball;
	int w;
	int h;
	
	public void initialize(SEResourceCache rsc)
	{
		base.initialize(rsc);
		w=get_scene_width();
		h=get_scene_height();

		rsc.prepare_image("myball","ball",w*0.1);

		ball=add_sprite_for_image(SEImage.for_resource("myball"));

		ball.move(w*0.5,h*0.5);
	}

	public void tick(TimeVal now, double delta)
	{
		base.tick(now,delta);
		ball.move(MainScene.x,MainScene.y);
	}

	public void cleanup()
	{
		base.cleanup();
	}
}
