
/*
 * Main.eq
 * Generated by Eqela Studio 2.0b7.4
 */

public class Main : SEScene
{
	SESprite sprite1;
	SESprite sprite2;
	SESprite sprite3;
	SESprite sprite4;
	SESprite bg;

	SESprite text;

	double transparency=0;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		
		add_sprite_for_color(Color.instance("black"),get_scene_width(), get_scene_height());

		
		rsc.prepare_image("background","bg",get_scene_width());
		bg= add_sprite_for_image(SEImage.for_resource("background"));
		bg.move(0,0);

		rsc.prepare_image("mysprite","sprite2",get_scene_width()*0.3);
		sprite1= add_sprite_for_image(SEImage.for_resource("mysprite"));
		sprite1.move(200,100);

		rsc.prepare_image("mysprite2","sprite3",get_scene_width()*0.3);
		sprite2= add_sprite_for_image(SEImage.for_resource("mysprite2"));
		sprite2.move(200, get_scene_height()*0.25+30);

		rsc.prepare_image("mysprite3","sprite",get_scene_width()*0.3);
		sprite3= add_sprite_for_image(SEImage.for_resource("mysprite3"));
		sprite3.move(get_scene_width()*0.5+100,100);

		rsc.prepare_image("mysprite4","sprite4",get_scene_width()*0.3);
		sprite4= add_sprite_for_image(SEImage.for_resource("mysprite4"));
		sprite4.move(get_scene_width()*0.5+200,get_scene_height()*0.5+75);

		rsc.prepare_font("myfont","arial bold color=white", 40);
		text= add_sprite_for_text("RANDOM IMAGES","myfont");
		text.move(50,50);
	}

	public void on_key_press(String name, String str) {
		base.on_key_press(name, str);
		text.set_text("KEY IS PRESSED");
	}

	public void on_key_release(String name, String str) {
		base.on_key_press(name, str);
		text.set_text("KEY IS RELEASED");
	}

	public void on_pointer_press(SEPointerInfo pi) {
		base.on_pointer_press(pi);
  
		if(pi.is_inside(0,0,get_scene_width()*0.5,get_scene_height()*0.5)) {
			text.set_text("LOGO");
			text.move(0.25*get_scene_width()-text.get_width()*0.5, 0.25*get_scene_height()-text.get_height()*0.5);
			sprite1.set_alpha(0.5);
			sprite2.set_alpha(1);
			sprite3.set_alpha(1);
			sprite4.set_alpha(1);
		}
		else if(pi.is_inside(get_scene_width()*0.5,0,get_scene_width()*0.5,get_scene_height()*0.5)) {
			text.set_text("MONSTER");
			text.move(0.75*get_scene_width()-text.get_width()*0.5, 0.25*get_scene_height()-text.get_height()*0.5);
			sprite1.set_alpha(1);
			sprite2.set_alpha(1);
			sprite3.set_alpha(0.5);
			sprite4.set_alpha(1);
		} 
		else if(pi.is_inside(0,get_scene_height()*0.5,get_scene_width()*0.5,get_scene_height()*0.5)) {
			text.set_text("MECHANIC");
			text.move(0.25*get_scene_width()-text.get_width()*0.5, 0.75*get_scene_height()-text.get_height()*0.5);
			sprite1.set_alpha(1);
			sprite2.set_alpha(0.5);
			sprite3.set_alpha(1);
			sprite4.set_alpha(1);
		} else {
			text.set_text("KNIGHT");
			text.move(0.75*get_scene_width()-text.get_width()*0.5, 0.75*get_scene_height()-text.get_height()*0.5);
			sprite1.set_alpha(1);
			sprite2.set_alpha(1);
			sprite3.set_alpha(1);
			sprite4.set_alpha(0.5);
		}
		
		
	//	text.set_text("on_pointer_press");
	}

	public void set_alpha(double alpha) {

		transparency=alpha;
	
	}

	public void cleanup() {
		base.cleanup();
	}
	
}
