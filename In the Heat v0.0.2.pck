GDPC                �                                                                      "   X   res://.godot/exported/133200997/export-27ec3af020b3964c939cdf0436146454-platform3x1.scn ��      �      �?�o��؝d�4r�̋    P   res://.godot/exported/133200997/export-3070c538c03ee49b7677ff960a3f5195-main.scn p      �,      <�����^CC��5N2�    X   res://.godot/exported/133200997/export-32634c3f34bc05ec3657f7e7d3b5ac8e-jumpparts.scn   �a      d      �[��8c)"��r-y    T   res://.godot/exported/133200997/export-36a25e342948d0ceacc500772b5412b3-player.scn  P�      �      	�DkR��6�>ec    X   res://.godot/exported/133200997/export-c426688054a972e8c995ba12f925dff7-fallparts.scn   `"      d      �]��C+ȣ�4�	ǻ��    ,   res://.godot/global_script_class_cache.cfg  p�             ��Р�8���8~$}P�    P   res://.godot/imported/1pxwhitesquare.png-9528eea70c0e92f8d56991651a2efa93.ctex          ^       ��@ԫ4��5��    L   res://.godot/imported/Platform3x1.png-0a6a0bb6d64043866959fae0d7bcee2b.ctex ��      f      㼎��� 9]3�}�<    H   res://.godot/imported/charging.png-e6a40a48e2ba80d86dbd5d27c18b3003.ctex�      �      4Y�A���QĹUMo�    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex�0            ：Qt�E�cO���    D   res://.godot/imported/idle.png-345bd841398ecb5f0be76f8faade9523.ctex�>            9Y�~�
V.��,���j    P   res://.godot/imported/jumpindicator.png-1390692328ad3951320813f64ed6aedf.ctex   ``      z       ���G�X"�P�3����    H   res://.godot/imported/tileset.png-a39e944f25b35d62f55d4f98a36e2b5e.ctex ��      �      ��B���W�-Ve���f       res://.godot/uid_cache.bin  P�      U      ���2��D�ClFTq�        res://1pxwhitesquare.png.import `       �       u�5��1ie.k�&       res://Indicator.gd  �^      V       ����-�q�L�T�د�       res://Platform3x1.png.import�      �       &jGV�X����T����       res://Player.gd p�      �      �����8�Ee-z��]�       res://camera.gd 0      �      �e�2���S�       res://charging.png.import   �!      �       ��O�����}�+>��       res://fallparts.tscn.remap  @�      f       +� ZD���|��T       res://icon.svg  ��      �      k����X3Y���f       res://icon.svg.import   �=      �       x�_e[(TB5����e       res://idle.png.import   �]      �       .����r���쌽��       res://indicator.gdshader _      ^      y��(����ƪ���p        res://jumpindicator.png.import  �`      �       M���ߤL3���6�5'b       res://jumpparts.tscn.remap  ��      f       ��AO�;��k���h�       res://main.tscn.remap    �      a       �J�Sw� ������       res://parts.gd  �      �       ��5�ԭ�⨶��       res://platform3x1.tscn.remap��      h       �w����F�m�9� }       res://player.tscn.remap  �      c       ������T�?�L���       res://plrsprite.gdshader0�      b       %���=V14zy����)       res://project.binary��      �
      ^ҫ����ƪ��!�ifs       res://tileset.png.importp�      �       �%��=���~�sK�            GST2            ����                        &   RIFF   WEBPVP8L   /    ���������    [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://btaxlf7yi08y5"
path="res://.godot/imported/1pxwhitesquare.png-9528eea70c0e92f8d56991651a2efa93.ctex"
metadata={
"vram_texture": false
}
      extends Camera2D
var rng = RandomNumberGenerator.new()
@onready var player = get_parent().get_node("Player")
@export var noise = FastNoiseLite.new();
var shaketime = 0
var time = 0.0

func _process(delta):
	time += delta
	var look = Vector2(0.0, 0.0) #(get_global_mouse_position() - position)*Vector2(0.1, 0.2)
	position = lerp(position, Vector2(look.x, player.position.y+look.y-128.0), delta * 16.0)
	if shaketime > 0:
		shaketime -= delta
		offset = lerp(offset, Vector2(noise.get_noise_2d(time*128.0, 0.0)*32.0, noise.get_noise_2d(time*128.0+10.0, 0.0)*32.0), delta*32.0)
	else:
		offset = lerp(offset, Vector2(0.0, 0.0), delta*32.0)

func screenshake(time):
	shaketime = time
        GST2   @   Q      ����               @ Q        r  RIFFj  WEBPVP8L]  /? � ����jDڶ�J<|�?�����$yR����@�Zc��{�m���m۶�ֶm�c{����������D۶i�ֶ���Ʌ�k۶}C�ql۶Ϲ��!�Vȶ�����Ek�!I۶m�q""2#Y�Y]m߶�Ƕm���f۶m��s�UvfdD��ٶj��9q�L�?	Rq�r�t�m$��i��M:� `  �  �h��� H0@� "     0 'Cc�  �
 NB @�?�0`����l�ځ��ҭ';p � ]  ��$����y����}����{T3ob�c�J�U���_)s%�ڛ?�Ѷꩭf��P^�;w=�  �0NҘ  ��?��]�Òȵ�{ߒ������t�o����?Y�x�Ւ�v�#��]I 6�qr�j   ��
2d�PJKb<�@1A��d$���l߬����c�=�g <!��(���!�N�׮5�r���0* /��d��'o���� X��Q��2Dg��߽���>��k��IO � ��>_-�>K	G��M+�K��Cg��g�6��ܠ�V�A�!��O��1����; �`
d �⽦G#]�<��4���{�-��f��(Tfۖ���
�R��D�?1� ���y�^����/l�f�(�l�y�3?�� 	���c)EE�h�к6�h\���L��˿��3�eMv��x��L�����rB�{��N���
Sk����Ip��I��k׀\��J�hD���z4y����� ��% `A ��s���)x����ѽq�P�%�(88M��ơR��Γ����6�FJN���RYRYȷ<ɮ8  @�  ���en�ԇB�;FB �I����6P�P�䶌4E62���'r1�d)�,����70�-�]�5 � �'�����c_�����,Z���Mkmg�1F�5�J
���ڪ���Y�دW�k�3~��<X(  ��:�(�=���K^�ş���O-��͆���e�Q���
O�Am0�#�v�qp�S�N_z"+d�"�4 ��2vo����+��߾���]��W{�7��]`#��_:��Bt�A^]�}Ϙ��Α��U;)8xߑ�����W<�6�a���  ����]�rc���yH ֍�{����rs���|(>Ƕq�Q3�g�j���z�i[����Kݽ:��Gͮ��8#iSЃ���{��(����&�����w��S�~�y����-���R�z��Η����xF@]C��Zn�����i)q�D���;+լ�ӛ��m-�-٪!5X��Г��Dȁ�ޱ�������yj������ė=���$�ӗ_�c�ZItև���=#����|l�>u��]�|n����^���������ր  D�]�< �  ���9������}�w����_��P�(����Qz���أ4=��C�o���qUH� =v�?-" 6V��C�A 	e���A	���j����Q ��*�����b����	��U��f�5�� l�h��)S@�e�3gp�v����gq:��Ɨ=����>s/�u���|�K�1�Q����-�h�M��U��c�/ltc����n���Έ��$���A/`�]����������{���ƾ]Ƕ� o�"x�O�8oR8�ԙw���JDh3p��W^S^�ok��W��Oy����nF���pA�� ��� �`�����8�|I�G�p����L'����M+����8b2c�U Dl�}��\��me=��O]XnY3��F�K���&GC����u����I�������Xm	����v&So�X"�A�`���mx�F�˱��qde��'��,�=U��=����� �.�`� �z���y�?"�Wη�]=��_���-V����t2�9��;Eo�*:�>#ǚ���ih�c�Y�?�����O�_N���+�-)�'�),$hy  P   �A������$���%��?����7:�}ƣL����{�ߟ�= �����@P�X����  2��  ��@	Z	xJ yJ�H����,Cz��k���Ӡ.��J<�ѓ��� ���{�t��s" --���R�q%"�� �.P�� �$ C1XN ����z��k�����|B�W����:�d �@������ʮ8��=�o��{F�b��s��"�"�����k   �;�$�@i0&(�i�,������xĢ����g�u����<����� ؎�-���u�+n�9������:�޸��$7�L�a(aˡ ���`�� %�b�!��ʵ��Tv��K0��W��'�n���S���Eo->\G�BoAZ�%�b�^}ŧ
�̕g~+p�ݧ��wn9yTR�aY�(�`��w;�@��ٻ���OxX�ũ���g� ��~���%�=�|FџQ2q	s�b\�9Wi�F�e�I�%U��J�j�z�S�^�I�+�l�����0�M_��3�d��NV2,�t#-�-�4ɥ�mJk���ʨTT��ݷ�"%x������ᐍ�Svo(�mcZZ�5Z)(�PO�d���G��Έv���/���V��J�0,!9�4���x�'�� 驫N�F��`���Z��7h�H)J�� dxL�e���P&>���4x�-J7gJqH����jS���zH�mv�Sx�lE4Ei��-�b���ҏ����o<W̞��,e�I�h�A4b�$t��$��r�%7}��>p�9�����������s6E�0@ "#@�� (JH�6^��Ŭ��0���~�15��lVxhD���स�d��(Gםv݁���[}]�ۜ���+<��7j>\�ټi��祥��+��o�yV#e��U�l7�U%5�w��AVH�^v��K��j��'>�5��]�R�6SX
�RȳƈHG�D+dVhZ���Q R��6��[���E+M8K�����.Z�X�k#�N����|��B�j�y���0E�N��9���#��H��=�h��̓bߨS��P�{9e.
�it�3n�iל�N���I�rj��4a)w�' �vdǄ���V�� �m����|臉�]�8��V��k�D][(�k�5�5`��,�y�g|�5�����!�R
�ˤayWj�������{�?*�d=�޼�ի=x/'e��s��S���q+�Q#��]����Z�:�ANx � �h�g�W�U�lTc�0بKQ��t�N3*�]!��(����^�h������
��f��41�Q1T$��@�	�m����f'�R|B�T�I9�-�K��1T��]!'�vڇ��u�J:)�`zL/�,��B(��>�GI�1z��2&� @�Dk��YR�z�LV����"E�Pz�9�z	To�m����%�D��P�Hˀ]���'��_�с6�z�Iފ&�z�x�$a��R  x��6#��Q�<me*�68m�$pDe��i'�H�����xll����A#!�ɒ�KBg1����,�B��vCM�0�ml	
�V���/�ZY�D?��8c\zmU��BfA�XiZ�5:WI @�.�.�t��K�I0 ����ɜI|2�{  r����-�|7l�*&�m4���V�O���3?'�e�H�@��,i��0��(���LeH5D�G��z��k7���&�ެ�f�8m����q��b��z'�Z�%�@K�w�Iʤ(�cA    Peh*e�')�b� `��P�yдV56�-�@��n(����*�L���4]Z"����f۪dO@w�UX*I	=�nj��nsqK����]��:�(�7x4w�_ � ����	U��YR�lu.��XK�P������sY�Ά:?V��l��cG+m}kD�R���/��b$0����G8ky��7�Jj�_Yw�"�D�J�����Ǖ�=��#k�)��462� CȊgf4  �1�XL(
m�Qtbg�j�;/�rm ��9zo0 A�������-6�T��<����٨�4��^�ZB:�l�v ��6�˒=���6.��Gl�c=-���"��'��U*?��wnRI�����>5>a]���۱(p��!M����SXR�I`�c�/y��Q�:fO�I  ��f����ro)�뢶��U��ᣕ��}D2P*��
*:ZO5kg�A³z+G*�JcM�eT����_���U����c�uak�ᱵ�  �g�g����9%ǎ-,` ��[hEJ��Z    �������
���rĈ5o������:��G���T��n(���-�{)"�Hi�����S҅H+G��/��#���s?x����?q���j�RK�Ji7�.�mY8@�  S�J^I$0QB$ @ 2��ؚ;�DhC$+�R��'L�X��ߵ��>}�� -�B�r�x�y���Qjb��Ah��Ő� ����l7Sf��S-   !�^1c+5ID���FB ��{̭W��֠����   @ z`fN�q�*";8$�B2�j[[�ɑ�%�>&�X�6q�c�p ���`d<���e����Ҭ\��]*WV֫�dV�0    ��N'H��%��,"I$@��m�؊)
 Qt$�H ZD ��a�pVI�'�&�[bm���%�R46�<�5��&��X�W3�Ј�H!����6��5����B]���;t&�ڼ���9 2������_󽧽��7�Sg�w�<�s�wp�hW��,5g��p @�,~���y�?����B�kC�Jk��L���K>������R��,3�� IJJ"��5�;r�;�����{M�P9�S� 
 `H  ��ϻ�;P�oϿ��]u���\�7���#���ѵg��c����f � M3��$1�0�fxY"Żd�l�m.�2�J�H�� c�T`a����9J�nxkG'B� ��JD&D�Ţ� 	 �  @B�y���!������o�'|��J$(�o���o/���|��o����,`� �[��P������H�	���z�� J$U��C� �1bR���z��{�����dރ%0ԛ�  �  ��{������]����o}�GL����[��*��a����|�Gl�����^�?��?��TH��#D�}����Kv��^�k�/ɊCai)Y�q� ��c�l#����"ҥ���e�ԭ���   �i"�K�~BM$�k

B@��5S,���]/����#�e�( ȏ\u�3��g>(�-�@"�)�6�L�4OO������hcUY����L�h�:#��)�ҊKV
���@$  ` ���r�'��w|�N�=���0���j�k#�D�͐� p�ʙRx�.�2!!H@j��q�d,�d!D���t)D%�h�v�F�)B
�T�q:U�ӱ  0H �e�+��}�	��A�aW�j����d��nƮ=�]ޅ@=  h`�4�����2�3�1u�����Rf5�(��*��zHg8]m��f<�lB��ƈ����u�d��uWH ���@	0� @ @5Hp�w��� �:���]w�-# ���]���=�k�,�f#�Nנ����s�HP˙�)�@���� ;��fv��+�Kv)�#�ow���� �@ ���0  � ���δJh�M~�� 2� �~�}���`7D���z�{���SrrlC����,zƏߔ�m���@�dDF �H 5p (
 ��I���	Mr�,4����P-L 2� c$�e� ��,*1	�<MG�Y��% �I;8�ű �NF$|��fM2�`�!Lm;���� �  �	���2�٢��He����*� ��D���Irߚjc�[ȵO�]gO���Z!���"4���pN�Nkq��� 4`�>5h�q4�x4 �`�whG��Q�a���_p��j��ζ ���� Ee�"� ��������;B+N%]Ѹ��y�u�� ��Ǝ� H�O�(3�@�pλ��`� Īʰ�vUL2P+l-a��wt=��ڠ�t   ����݂! ,xp�B �tiFN�v#!�H� �bX敂��q���|4�"j�V*��B'( %B*�;�N\4c%��|!���D� Y��y�z<�����$��vA)U���) pbIe҆n��{���fK,�(3�A�1�p<z���K�X�1���h��	���dgƪ І �w-���,YX�( � ������5����qh���ןA�����BG��EEY��6�w���@"P"ݧ�;X^Ska���_s���_�)X����<q����u::h���z�D֓:h3N���: � *�:��A�1#n�qAqݼT��|�Q  $Q  ;
0\�E;�E�ݹ�H�j=ɲ�����  @� �.P ���]~�TRKr�4�& �1(� %� $�xz�v�]&"�<.8d ՒH@�6Y�  �@��H��\�Y�&@+��@B`s0 � %��3��E�r���	@��d�"���0�  ��Ņ8h	Z@  �bD��8^0�  )���z����`�DI �" d�  �5�������	��^�a���47F /�ė���_�a���a��~��>��!!d#/���#�dbS	(�"^���u����V�,�ϸ�����hH���5ۍQ�آ���$L��Q���~�\w�O�劕��7��QzV��0� �g'D�W3�������?�`�Xa՘pdb����!.?�0,C�����4��.Y=v�ٿ�����7��yȧ ���6k�;�w�{���Q���k�G��g���X�L\~�Ϫ` ϻ��Fb_/�`��V`T�����O������L��όtF!�Ժ���{l*�Л�GD�l��E:���*�8���o��sF�����&�ӻL�cM�^y�=IX���Y\L�l � V�d,�� T^���)��dE�`�� 3p�ؐeU#i��6{�篲�� P�M�A�J��]c��CV�<�9}�e��1�,j�0B`�),�V]a�Ulw�j�B�h%@!+DR`)=������{O�}f��f~.d7)��*�躠(4a#a��̄����=���N�q��?�����8���n<�WI�7��4�D�]�Å��z2��޵�Q��Y1����U���( �  �t����׼�h�Ajp=nN�G���~hy{�������-��'��(�jt
�p7���z��Ϻ�)у�\d2UB6��G�$��2��=��]οkAx����^����Q����;�G�h�V� :=``�8�0�`$��@�Ih �@kЂܕg�> �$�# L@`��        [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://co6p7ji4yy5qt"
path="res://.godot/imported/charging.png-e6a40a48e2ba80d86dbd5d27c18b3003.ctex"
metadata={
"vram_texture": false
}
            RSRC                    PackedScene            ��������                                            _      resource_local_to_scene    resource_name 
   min_value 
   max_value    bake_resolution    _data    point_count    script    width    texture_mode    curve    interpolation_mode    interpolation_color_space    offsets    colors 	   gradient    use_hdr    lifetime_randomness    particle_flag_align_y    particle_flag_rotate_y    particle_flag_disable_z "   particle_flag_damping_as_friction    emission_shape_offset    emission_shape_scale    emission_shape 
   angle_min 
   angle_max    angle_curve    inherit_velocity_ratio    velocity_pivot 
   direction    spread 	   flatness    initial_velocity_min    initial_velocity_max    angular_velocity_min    angular_velocity_max    angular_velocity_curve    directional_velocity_curve    orbit_velocity_min    orbit_velocity_max    orbit_velocity_curve    radial_velocity_min    radial_velocity_max    radial_velocity_curve    velocity_limit_curve    gravity    linear_accel_min    linear_accel_max    linear_accel_curve    radial_accel_min    radial_accel_max    radial_accel_curve    tangential_accel_min    tangential_accel_max    tangential_accel_curve    damping_min    damping_max    damping_curve    attractor_interaction_enabled 
   scale_min 
   scale_max    scale_curve    scale_over_velocity_min    scale_over_velocity_max    scale_over_velocity_curve    color    color_ramp    color_initial_ramp    alpha_curve    emission_curve    hue_variation_min    hue_variation_max    hue_variation_curve    anim_speed_min    anim_speed_max    anim_speed_curve    anim_offset_min    anim_offset_max    anim_offset_curve    turbulence_enabled    turbulence_noise_strength    turbulence_noise_scale    turbulence_noise_speed    turbulence_noise_speed_random    turbulence_influence_min    turbulence_influence_max $   turbulence_initial_displacement_min $   turbulence_initial_displacement_max    turbulence_influence_over_life    collision_mode    collision_use_scale    sub_emitter_mode    sub_emitter_keep_velocity 	   _bundled    
   Texture2D    res://1pxwhitesquare.png ��ow(�3   Script    res://parts.gd ��������      local://Curve_e8cp3 �	         local://CurveTexture_ve2co }
         local://Gradient_1o02a �
          local://GradientTexture1D_48a3s �
      &   local://ParticleProcessMaterial_ray2u !         local://PackedScene_s2pkf �         Curve             
         �?                            
      ?  �?             �              
   ��*?       �\��                                       CurveTexture    
                   	   Gradient       $      ��R?��?      �?��=?���>��\>  �?         GradientTexture1D                         ParticleProcessMaterial 
                        ��    !         C"        �C.            @D    <        �@=         A>            D                     PackedScene    ^      	         names "         GPUParticles2D    scale 	   emitting    amount    process_material    texture 	   one_shot    explosiveness 
   fixed_fps    script    _on_finished 	   finished    	   variants    	   
      @   @                                           �?   <                  node_count             nodes        ��������        ����	                                                    	                conn_count             conns                   
                    node_paths              editable_instances              version             RSRC            GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�m�m۬�}�p,��5xi�d�M���)3��$�V������3���$G�$2#�Z��v{Z�lێ=W�~� �����d�vF���h���ڋ��F����1��ڶ�i�엵���bVff3/���Vff���Ҿ%���qd���m�J�}����t�"<�,���`B �m���]ILb�����Cp�F�D�=���c*��XA6���$
2#�E.@$���A.T�p )��#L��;Ev9	Б )��D)�f(qA�r�3A�,#ѐA6��npy:<ƨ�Ӱ����dK���|��m�v�N�>��n�e�(�	>����ٍ!x��y�:��9��4�C���#�Ka���9�i]9m��h�{Bb�k@�t��:s����¼@>&�r� ��w�GA����ը>�l�;��:�
�wT���]�i]zݥ~@o��>l�|�2�Ż}�:�S�;5�-�¸ߥW�vi�OA�x��Wwk�f��{�+�h�i�
4�˰^91��z�8�(��yޔ7֛�;0����^en2�2i�s�)3�E�f��Lt�YZ���f-�[u2}��^q����P��r��v��
�Dd��ݷ@��&���F2�%�XZ!�5�.s�:�!�Њ�Ǝ��(��e!m��E$IQ�=VX'�E1oܪì�v��47�Fы�K챂D�Z�#[1-�7�Js��!�W.3׹p���R�R�Ctb������y��lT ��Z�4�729f�Ј)w��T0Ĕ�ix�\�b�9�<%�#Ɩs�Z�O�mjX �qZ0W����E�Y�ڨD!�$G�v����BJ�f|pq8��5�g�o��9�l�?���Q˝+U�	>�7�K��z�t����n�H�+��FbQ9���3g-UCv���-�n�*���E��A�҂
�Dʶ� ��WA�d�j��+�5�Ȓ���"���n�U��^�����$G��WX+\^�"�h.���M�3�e.
����MX�K,�Jfѕ*N�^�o2��:ՙ�#o�e.
��p�"<W22ENd�4B�V4x0=حZ�y����\^�J��dg��_4�oW�d�ĭ:Q��7c�ڡ��
A>��E�q�e-��2�=Ϲkh���*���jh�?4�QK��y@'�����zu;<-��|�����Y٠m|�+ۡII+^���L5j+�QK]����I �y��[�����(}�*>+���$��A3�EPg�K{��_;�v�K@���U��� gO��g��F� ���gW� �#J$��U~��-��u���������N�@���2@1��Vs���Ŷ`����Dd$R�":$ x��@�t���+D�}� \F�|��h��>�B�����B#�*6��  ��:���< ���=�P!���G@0��a��N�D�'hX�׀ "5#�l"j߸��n������w@ K�@A3�c s`\���J2�@#�_ 8�����I1�&��EN � 3T�����MEp9N�@�B���?ϓb�C��� � ��+�����N-s�M�  ��k���yA 7 �%@��&��c��� �4�{� � �����"(�ԗ�� �t�!"��TJN�2�O~� fB�R3?�������`��@�f!zD��%|��Z��ʈX��Ǐ�^�b��#5� }ى`�u�S6�F�"'U�JB/!5�>ԫ�������/��;	��O�!z����@�/�'�F�D"#��h�a �׆\-������ Xf  @ �q�`��鎊��M��T�� ���0���}�x^�����.�s�l�>�.�O��J�d/F�ě|+^�3�BS����>2S����L�2ޣm�=�Έ���[��6>���TъÞ.<m�3^iжC���D5�抺�����wO"F�Qv�ږ�Po͕ʾ��"��B��כS�p�
��E1e�������*c�������v���%'ž��&=�Y�ް>1�/E������}�_��#��|������ФT7׉����u������>����0����緗?47�j�b^�7�ě�5�7�����|t�H�Ե�1#�~��>�̮�|/y�,ol�|o.��QJ rmϘO���:��n�ϯ�1�Z��ը�u9�A������Yg��a�\���x���l���(����L��a��q��%`�O6~1�9���d�O{�Vd��	��r\�՜Yd$�,�P'�~�|Z!�v{�N�`���T����3?DwD��X3l �����*����7l�h����	;�ߚ�;h���i�0�6	>��-�/�&}% %��8���=+��N�1�Ye��宠p�kb_����$P�i�5�]��:��Wb�����������ě|��[3l����`��# -���KQ�W�O��eǛ�"�7�Ƭ�љ�WZ�:|���є9�Y5�m7�����o������F^ߋ������������������Р��Ze�>�������������?H^����&=����~�?ڭ�>���Np�3��~���J�5jk�5!ˀ�"�aM��Z%�-,�QU⃳����m����:�#��������<�o�����ۇ���ˇ/�u�S9��������ٲG}��?~<�]��?>��u��9��_7=}�����~����jN���2�%>�K�C�T���"������Ģ~$�Cc�J�I�s�? wڻU���ə��KJ7����+U%��$x�6
�$0�T����E45������G���U7�3��Z��󴘶�L�������^	dW{q����d�lQ-��u.�:{�������Q��_'�X*�e�:�7��.1�#���(� �k����E�Q��=�	�:e[����u��	�*�PF%*"+B��QKc˪�:Y��ـĘ��ʴ�b�1�������\w����n���l镲��l��i#����!WĶ��L}rեm|�{�\�<mۇ�B�HQ���m�����x�a�j9.�cRD�@��fi9O�.e�@�+�4�<�������v4�[���#bD�j��W����֢4�[>.�c�1-�R�����N�v��[�O�>��v�e�66$����P
�HQ��9���r�	5FO� �<���1f����kH���e�;����ˆB�1C���j@��qdK|
����4ŧ�f�Q��+�     [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://cxwqaj5qo5jsk"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
                GST2   C   Z      ����               C Z        �  RIFF�  WEBPVP8L�  /B@�,D�?�ob0�����m;$I��Q���PfVW�=satݶm�w���m�j۾���۶m��,$"���DDf�m�&I�履�,�ضm۶ʶ��T��m��m۞)#+2"�����/.l�I���?�(vU�x���c۶}��s�+۶m���{y<��.deF$I��H�zL��u���3�6�3�$���a8D�p<`7� @  p `�(�2��@D�� ��6�O� ��r ����ï�N�e3l?�R��ɧ��V;~ßk!B������Y���ͯ�=��e�q��]@aM�D�vc��)��F1��W>垔&�����+���o(0 ���N @����w��͇�֪g�}�u�=�����M�r�}b!��2M�?R�ۿ\�� o   �D��tq�J$nagR<z�\�^�a�����w(��k�.�QCO�ն�
 ��j�\��y�����#��5&���	�ցZ��k<�����������!�YE%���m�c?�����j@ �� 
J[͹�����Ƶ�WP�06T����[�Gn ��#4�|kH�PG��goD�����& ޝR)���g@+��?�Su��m�0t���m��ȑ/��,0*:/�&���gΔ0�8R ������k>�{y�ߨ��٘�[X*M���?�����;��O���W���n�ۖ�y���o��������!��}\5���\�M���'|郂<�PCi�H	vD�(Įc�A�Mov�^)�S�(Սc>(�bu�{�& 8�p��{�dԛH,��Q����g��=����P2���ǒ��������zHTVuX�V���=o�  H轘_����,�� =�B(M���j��Ccm���@���Xa����2wd�t���``��@B ��wh�}�W\��[��ʪ4?�;p���^���1���}���:q�Y�>��������_�s3)�R�  ��A���ϱo���8���>�ka:�}D�}l-e�|.�{'1��;|=�f���u��_ٺm=�6-$���ӗ}q`|�7�W~�7_��v��O��_����S��s��)ni`{��������W����ց5����yN�\��JJW ��a�~祟�[6����素Y>W>�+�ظ��?��m��������uh��^zz�rl4<��x�/�{`���sb�7�!�Q}����Î\����w9�9��o�ΗX?Pش����r�{_���.[�}��x��0�/���7���ew��,��Vy��]u�G^�ʇ�g���3$t�����9��w�����߽�k������q�s�A_8�ϣ�����~1[+��{�&���}�+���?�r��km�V�;�N´�W��>�����dV˒1^�$  "��[� ��>z;�o��}��T�e�	um�KE5^���5���W��x�4����D<=*j�����W�Y��X�-
b{9-��}�w��@�x`}?����y	�|�=�+2[A~�eF��v�TFۛ��� �M�7-�!��+(+����kdE���h2����/<������go>�{�Ox��tݓ��Y�-�>��� �w�Z�����`��ܘA�ʳ�68��E��Y���:v����E��W��&��{?�Zb�{�����{��%���8��G���<�(��o<厏���F�5M�O	��]��	��ᒇ��=�w�#�u���`}�� ����(A${����%�p��f�{d�򞋉͡����g{z�����,M�;�N�D�y�c7��N?��������M2��22�ˡE��E3sY� ���{����N.�w��I���î�]�u��?}���*1^wW�w��D�d3�)>*��n޻d�y[y+�)���K�X�c[F L�͑���t�%����~>�sߟ�d��כ3c�����/���ʟ��۴����a�u5�����?��O�G�jQ� �B���: j &�V"<%�o����@�}�W
;1����s��_$��0@��Q����ֈ  �^���(D��vZ � D�$n�F��}Z�VP� 8<x8S��jT@D=� @q c��;#XB �`9�o,~���ɚ*�0�=�	<���B0�]�WT`����}!�W8v�/{���=+<t�Jm\�j$�  �U@ ��N!�:8ܶZ\���g]��mW����?�z:4i^���K>&(�	Է�غ3��E�\zً �;~�z��c��?P�{ʩ��9�F�8��oȜa 00MYA��$������R���$-��x�yJ8�/@��n�7���G�rm��ј�)Q#b�:�ث4M�ه^a1^�97�� 	�^M��w��0*q���fp 8e�3Pz��=��hf![z��' ��x�Q_����e�L�,�f��R��A�]��Ì�ׂڎL-��@I��=Eu?r���P��Zr���y��5)M�2� }��aО#w\��!�\�ug�(L���_�"�}�p+,8l:6�Oac�M����޼M�X�Rs�T+��4o6D��R���,�Y/NM��	bq�S/y1�_���8z��Hp�l1ִ�����a,�JcB
̊������.�Na]��
�޿m�p鞟��bgmzV�[,ۑՎ��,��V�-��w����n$�^��{���|�}���������c���Qx�9l�u`v���K�g��>Ȯ8y�WI���R�bbBu�]k=N ɖ��d���i��T(����6� _�s��sTv*�W�E�׎���cv�K
�7��QU6;�hW��EN��:x�5m��{��w�����Ϩ�ͻ���`�2�C�
��l9`�}����R,ٴ�!o_O�Q�m&W
�1Y���ƀ��A�%E���g�x{}�ΐ���X᥸�W���dQ�L��QEVAJ�5�e�i�����x��/b7/��}��FJVOמ��g�����l��Ĥe3ks����A�z�9�n=�m;a!��H�@>��=��n���v��U6z���w���:<,4�]�m[�IT)�\�!�a���|��~�E��b�^���&M�3-��uJ��l��ӏ��އ��c��x#�^��SON�e{��g�����6�Z�y^;D��ڭ5^%[G�,O���J���g��ud�+I=?�?����:p� � X�����g��Q��/�T��4���=n�dD��h���Cj)�N�E�,$[�c_%6/��j<NJk�������>7W�A�1����CMֲc%_h�:�c�/<7�)�Uk��mn�]�Հ̰va��1�m�@A��g � ��q�W�:&���`�����q�ݴ:�$�M��k<	�'l��i��
8y-�;��(5O��J�*i���;r�ǟǖog+�Rsܘ�E�nj���Qئ��r]���W�'�7%e�u�P�������!�k�B�&(��2s���,U��5��������h���T�4ے�*d�+  J-CN�f֬┛e���8B���F;*bf�>ҫ����	+#7)�	 ���9Um[�A���f}���F�cwY�@� ��K��o��U��E��NcEf%�%U:��$L�*#�Q�T
U�E��$.u(�P8�ۅ���O����V�R�_xq�|>@,zu�$J�r�8�P$�hʴ��{�:" �!`m���X�����i��``���:"��##i'E�S�B}Y��t���Z�y��8����2)�AQ�^��R^�,_�]?�/1�=bt���xH��![>7R1Ќ���; �L�Z��#
�HD�  �x0�ȳ$u���NJ�1��Ì��\���O�,�C͞���+_��K��!�������+[nt�C�w���ˁ�)k?��5>����{�Z��Z�L	b�4�@�-x� `&�"<(�ܨ�Lܷ\HT��  	,x(4S�����#@ $�ak;s��*���"[)m�i��7=d�.��B;V�'EI;��ܲYߵ������-'� "Hx�r����ϼ��(x_~��D~/�X�$��4�� ��@T���xb�0d��'ER�= 
�`��i&$B.�\ �  ze;�u���&�(T¶{�4Ea��U���~�U�<��O[1t +B!عQ������OEkM3�$#I�q'B���A������ž����V46����U�z�p�  ������%6Y�����>4��cqLl�<q� � �7<4�x��Ѱw�
�XUUZl�/��T��՗���k=2�H��f�������i'�,�X�ɬc���ם�|̧��_�����0H��+>����L�t	�<��q!ŌF��3S@���7���ʕ��    �Ң<�R��f�2"+";�۾��/��ƃ5zU^C܉)��;r��\�j6e���EVl�!2�!��2�Ef��*2��` �![���`!
j�  ��<�ID�rm�eVG q��#�VH=��d���T��h�r�xfPb�*#��P:R!)��9���(+��Y�"��$�V>��j�1߮��E/�  `  �P���D�X*t�E����'������n&88 84-,#s)�K�m=Y�n:��}�PRb�l�3��o�����мY�� KIH%��,jb�Ԟ�;�X��6xql�9�����m�T  $� U�Yv֏M��꺙�m�x�o�}�`�����B&WQ �������N?��X.&��H����*�"���'~��Ļ4V]v��294�D�����%��eHZ<[;�c�	�=�d鵬z=�/�c�`��#�PYNm�/K�M( � �'�8Fj*�S��^'`�k�`�A�Bd/���b�RJ�$bJ����7���K����@�����TD�;Q'ؒy��O��.�m4c���3;��ń� 9   ��fyn�ԫJ�U $K�L�`�Bph��Z �e>¦B�r��,F{��sQ^*a(5���&GQr�Gʘ�;��Jᢷ�S�#=o}�/��OVt(4Z�4���ِA � ���C*�45�%�,*��)$&������J]DD�A�n^��~��n��%�7x��M��J4YY���A�L��I�" �"�=�Y���9�g+��5O�1Q��X���߿� ��� �(�ד��ݹw��{~���)��u�y>� m�������QY�p��q�aEm�8y�Vf&��U�m���Z���hvn:<#�-Ql��!�k�N��a�k���  ���D��ύ��
'�kʹ�-50�<^��M�v���W�X��7(s �-K|��N5V9"e���%�Zk�E�8��W0�5�)� ��hTX�`�X��h�g�Yi��Մ��,�@���RڇΗx��s{�;Ό$H�b�\�U����0�o��扁^��D� �AX5�	��.˦�8��` (�E�CTZ�'�!O�M�Q��6��F���ums����.�ܗ��]�C�� ����>�w��q�?�v煃+eT��w���?9~�Gy�Ի�|���h�	��>憐�B8��GnT�@�Z]Cd~A6��͋D�¦rߙ��"hkC�b�Zs[Xhaa�Y�e;��,���w�����O��[N�'���Ip��_!һ]x��8|�����"M�#���ie�_�������>��Pt��ˠ   xx��Ji+|->�D `���Ӿ�	��ţ����gL>�$��lV�l��לd����.J����$�2BC�Fο���g����|o�x�� 8�}�g�Ӳ�������[eH3  �  �J��٘!����5E�s�0-67��"��������A�%��(VCF��z$��V�}��xM&o}���)6����ڱK�L��]~0�pj\��S��O���E �
����r��.�7�<�� - �� %�K���[��ڨwB̢�{ -A��O4��vVݗ���G�ǻ� ���]�U;�6��*z�eY�eـ�֡i"��֫�l�� ;�� f��S#ĝ�q���A���~ꕟi�_�cf�9y�Ͻ�	m�S��#��~Y��b�3~��,w���@�q'�z5�z�Q�K�*�D$  .YA�KQ�v(e���%X��������� 	�,��_)����B��8R��vr�T1�e���g @��*7�FY��R�Y!�0
H��렀�(X��Ԣﴺ'R b	)� ���ic�@G�#;m��ɠɉa��,u0�}��@R   d�?�ҏr�J�(K���Z�2�d��$ ��b˰,��f haa@�N��S��h5r}�Z^�
v�VHH� Ah ��� �(knh�vka�,��������� )Sv�(]���;r@��!K�o�� ���L�>�*GuJ;�Df���G��]$H<��c��>͸3*j�qMd��]R @@�Z��>.*�o�ŸUV��G@�G$��Q�F5�1��Pf�b�.3�'
C0Lߑ�5�X���x��"���'*�n:n�E��U>F1dA�sǏ���=�   ������tYX�``�� ��E���1F< �� ���^�um�iM�k;uш�x��h�sE��� @  �C=-�����uU-���s�[?\��"DX�0}���D|�Uf!���G<!�+2N��];KJ�	�eB�k�ӕ��R3A?�< U��d�۲KX&�L���<����9I�؎����=9w��s#B��J  �� 6��!����� ����uQa"7��I�k==+٘���J��;�,�T�����I9a�FqIw
 ��"�`�!����-?&&C���'l�<��/p���`��X��3��Ł��>�����_�q	صG HB
��0c@�ҫ�]@ u@�  3��g^����� Q #=��K�\D�C���͐<>���Ρ_�	 �s`9 ���%�@��Z�H� -#�}<6��[s���q���7F?x��Ra#XI��=�nz�%x���-�S��E���uɰ����}�?��$����x����k�$� d�L8�/�E��
��G�����~�jyF���>�L����)�;Q���r��)��Շtq�׶��_TvFC�F~��OW�����6������!�G9l�L�w����w������x�Y"Ul}BΌ4zk���R"B��E��l%�>���Y�x��.�r\l���z_'��?c�����S�v%/aǖ<����c���>�ڽ��lk�>{���p��m�T\w�re�=��#*�<7�ޝ�{{����a�+���V��C-ʧ~s���{�MgL�E�;4����G/��͆��h�-�'�fm����'_��28����vwdy��%��Q��2Q�����z�Ns������d�3h��C$łݵ����#�� DEϬ2:y+�
r���T��Z�\�(��O���'A �3/{/|j��i���J>;|�?�P`Dؙ}��!�̚��ʵD`��
4�E���saC�
�����RG��W��"�Q A��q׼� "$�3 `�k���~Mg_�aR{N�$�G�1�-_h.S|Y�'��W5�b�˾ `	� ;��,i�؏��_<���%���U���g�TM,B��U́AfYVO����3
 ���+�:D��A�)�cx0PP إ-         [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://cadyfxogkhsu"
path="res://.godot/imported/idle.png-345bd841398ecb5f0be76f8faade9523.ctex"
metadata={
"vram_texture": false
}
 extends Marker2D

func _physics_process(delta):
	look_at(get_global_mouse_position())
          shader_type canvas_item;

uniform float progress;

void fragment() {
	if (1.0-UV.y > progress)
	{
		COLOR.a = 0.0;
	}
	if (progress > 1.0)
	{
		COLOR.gb *= (1.5-progress)*2.0;
	}
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
  GST2             ����                         B   RIFF:   WEBPVP8L.   /�0��?���PԶT� 
��� v�� ��E(��ݾ��(�3      [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://uukdpup2mfqj"
path="res://.godot/imported/jumpindicator.png-1390692328ad3951320813f64ed6aedf.ctex"
metadata={
"vram_texture": false
}
        RSRC                    PackedScene            ��������                                            _      resource_local_to_scene    resource_name 
   min_value 
   max_value    bake_resolution    _data    point_count    script    width    texture_mode    curve    interpolation_mode    interpolation_color_space    offsets    colors 	   gradient    use_hdr    lifetime_randomness    particle_flag_align_y    particle_flag_rotate_y    particle_flag_disable_z "   particle_flag_damping_as_friction    emission_shape_offset    emission_shape_scale    emission_shape 
   angle_min 
   angle_max    angle_curve    inherit_velocity_ratio    velocity_pivot 
   direction    spread 	   flatness    initial_velocity_min    initial_velocity_max    angular_velocity_min    angular_velocity_max    angular_velocity_curve    directional_velocity_curve    orbit_velocity_min    orbit_velocity_max    orbit_velocity_curve    radial_velocity_min    radial_velocity_max    radial_velocity_curve    velocity_limit_curve    gravity    linear_accel_min    linear_accel_max    linear_accel_curve    radial_accel_min    radial_accel_max    radial_accel_curve    tangential_accel_min    tangential_accel_max    tangential_accel_curve    damping_min    damping_max    damping_curve    attractor_interaction_enabled 
   scale_min 
   scale_max    scale_curve    scale_over_velocity_min    scale_over_velocity_max    scale_over_velocity_curve    color    color_ramp    color_initial_ramp    alpha_curve    emission_curve    hue_variation_min    hue_variation_max    hue_variation_curve    anim_speed_min    anim_speed_max    anim_speed_curve    anim_offset_min    anim_offset_max    anim_offset_curve    turbulence_enabled    turbulence_noise_strength    turbulence_noise_scale    turbulence_noise_speed    turbulence_noise_speed_random    turbulence_influence_min    turbulence_influence_max $   turbulence_initial_displacement_min $   turbulence_initial_displacement_max    turbulence_influence_over_life    collision_mode    collision_use_scale    sub_emitter_mode    sub_emitter_keep_velocity 	   _bundled    
   Texture2D    res://1pxwhitesquare.png ��ow(�3   Script    res://parts.gd ��������      local://Curve_57sku �	         local://CurveTexture_v1nej }
         local://Gradient_kywmd �
          local://GradientTexture1D_f2asy �
      &   local://ParticleProcessMaterial_j227m !         local://PackedScene_gwq0g �         Curve             
         �?                            
      ?  �?             �              
   ��*?       �\��                                       CurveTexture    
                   	   Gradient       $      ��R?��?      �?��=?���>��\>  �?         GradientTexture1D                         ParticleProcessMaterial 
                        ��    !        �B"         C.            @D    <        �@=         A>            D                     PackedScene    ^      	         names "         GPUParticles2D    scale 	   emitting    amount    process_material    texture 	   one_shot    explosiveness 
   fixed_fps    script    _on_finished 	   finished    	   variants    	   
      @   @                                           �?   <                  node_count             nodes        ��������        ����	                                                    	                conn_count             conns                   
                    node_paths              editable_instances              version             RSRC            RSRC                    PackedScene            ��������                                            d      resource_local_to_scene    resource_name    shader    shader_parameter/progress    script    custom_solver_bias    radius    height    texture    margins    separation    texture_region_size    use_texture_padding    0:1/0 &   0:1/0/physics_layer_0/linear_velocity '   0:1/0/physics_layer_0/angular_velocity '   0:1/0/physics_layer_0/polygon_0/points    0:1/0/script    1:0/0 &   1:0/0/physics_layer_0/linear_velocity '   1:0/0/physics_layer_0/angular_velocity '   1:0/0/physics_layer_0/polygon_0/points    1:0/0/script    1:1/0 &   1:1/0/physics_layer_0/linear_velocity '   1:1/0/physics_layer_0/angular_velocity '   1:1/0/physics_layer_0/polygon_0/points    1:1/0/script    1:2/0 &   1:2/0/physics_layer_0/linear_velocity '   1:2/0/physics_layer_0/angular_velocity '   1:2/0/physics_layer_0/polygon_0/points    1:2/0/script    1:3/0 &   1:3/0/physics_layer_0/linear_velocity '   1:3/0/physics_layer_0/angular_velocity '   1:3/0/physics_layer_0/polygon_0/points    1:3/0/script    1:4/0 &   1:4/0/physics_layer_0/linear_velocity '   1:4/0/physics_layer_0/angular_velocity '   1:4/0/physics_layer_0/polygon_0/points    1:4/0/script    0:4/0 &   0:4/0/physics_layer_0/linear_velocity '   0:4/0/physics_layer_0/angular_velocity '   0:4/0/physics_layer_0/polygon_0/points    0:4/0/script    0:3/0 &   0:3/0/physics_layer_0/linear_velocity '   0:3/0/physics_layer_0/angular_velocity '   0:3/0/physics_layer_0/polygon_0/points    0:3/0/script    0:2/0 &   0:2/0/physics_layer_0/linear_velocity '   0:2/0/physics_layer_0/angular_velocity '   0:2/0/physics_layer_0/polygon_0/points    0:2/0/script    2:1/0 &   2:1/0/physics_layer_0/linear_velocity '   2:1/0/physics_layer_0/angular_velocity '   2:1/0/physics_layer_0/polygon_0/points    2:1/0/script    2:2/0 &   2:2/0/physics_layer_0/linear_velocity '   2:2/0/physics_layer_0/angular_velocity '   2:2/0/physics_layer_0/polygon_0/points    2:2/0/script    2:3/0 &   2:3/0/physics_layer_0/linear_velocity '   2:3/0/physics_layer_0/angular_velocity '   2:3/0/physics_layer_0/polygon_0/points    2:3/0/script    2:4/0 &   2:4/0/physics_layer_0/linear_velocity '   2:4/0/physics_layer_0/angular_velocity '   2:4/0/physics_layer_0/polygon_0/points    2:4/0/script    0:0/0 &   0:0/0/physics_layer_0/linear_velocity '   0:0/0/physics_layer_0/angular_velocity '   0:0/0/physics_layer_0/polygon_0/points    0:0/0/script    2:0/0 &   2:0/0/physics_layer_0/linear_velocity '   2:0/0/physics_layer_0/angular_velocity '   2:0/0/physics_layer_0/polygon_0/points    2:0/0/script    tile_shape    tile_layout    tile_offset_axis 
   tile_size    uv_clipping     physics_layer_0/collision_layer    physics_layer_0/collision_mask 
   sources/1    tile_proxies/source_level    tile_proxies/coords_level    tile_proxies/alternative_level 	   _bundled 
      PackedScene    res://jumpparts.tscn ��������   Script    res://Player.gd ��������   Shader    res://plrsprite.gdshader ��������
   Texture2D    res://idle.png �����   Script    res://Indicator.gd ��������   Shader    res://indicator.gdshader ��������
   Texture2D    res://jumpindicator.png -���F
   Texture2D    res://tileset.png SaP��v   Script    res://camera.gd ��������   PackedScene    res://platform3x1.tscn 	4=�>`j      local://ShaderMaterial_7vu00 5         local://CapsuleShape2D_p6dap l         local://ShaderMaterial_jvgdy �      !   local://TileSetAtlasSource_34kp0 �         local://TileSet_hwex3 q         local://PackedScene_t3xgp �         ShaderMaterial                               CapsuleShape2D             A      NQ�A         ShaderMaterial                               TileSetAtlasSource M                            
                        %         �   �   A   �   A   A   �   A                   
                        %         �   �   A   �   A   A   �   A                   
                        %         �   �   A   �   A   A   �   A                   
                        %         �   �   A   �   A   A   �   A       !          "   
           #          $   %         �   �   A   �   A   A   �   A%      &          '   
           (          )   %         �   �   A   �   A   A   �   A*      +          ,   
           -          .   %         �   �   A   �   A   A   �   A/      0          1   
           2          3   %         �   �   A   �   A   A   �   A4      5          6   
           7          8   %         �   �   A   �   A   A   �   A9      :          ;   
           <          =   %         �   �   A   �   A   A   �   A>      ?          @   
           A          B   %         �   �   A   �   A   A   �   AC      D          E   
           F          G   %         �   �   A   �   A   A   �   AH      I          J   
           K          L   %         �   �   A   �   A   A   �   AM      N          O   
           P          Q   %         �   �   A   �   A   A   �   AR      S          T   
           U          V   %         �   �   A   �   A   A   �   AW               TileSet    ]         ^          _                     PackedScene    c      	         names "         Main "   metadata/_edit_horizontal_guides_    Node2D    GPUParticles2D 	   position    Player    scale    collision_layer    script    CharacterBody2D 	   Sprite2D 	   material    texture    CollisionShape2D    shape 
   Indicator 	   Marker2D 	   rotation    TileMap 	   tile_set    format    layer_0/tile_data 	   Camera2D    zoom    StaticBody2D    StaticBody2D2    StaticBody2D3    StaticBody2D4    	   variants                  ��          
         XC
     �C  ��
   33@33@                         
   v�y�    
     �>  �>                                    
     `B       ��?
      @   @                      h  ��       ��                                                          ��      ��      ��       ��      ��      ��       ��              ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ��       ��             	       
         ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��                    ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��       ��      ��      ��       ��     	 ��     
 ��      ��       ��      ��      ��     ����      ����     ����     ����     ����      ����     ����     ����      ��       ��      ��      ��      ��      ��      ��       ��       ��     ����     ����      ����     ����     ����     ����     ����      ����     ����       ��      ��      ��     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����     ����       ��     ����       ��      ��      ��        ��      ��      ��       ��      	 ��     ����      ����      ����     ����     ����     ����     ����     ����     ����     ����     ��              ����     ����     ����     ����     ����       ��       ��      ��      ��     ����        ��      ��      ��       ��      ��     	 ��      
 ��      ��       ��      ��     	 ��      
 ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��      ��       ��      ��      ��      	 ��     
 ��      ��       ��      ��     ����        ��      ��     ����      ����     ����      ��       ��      ��      ��      	 ��     
 ��      ��     
 ��                    	   
      �  ��   �I?
    ��  ��
   ��B  ��
     � �J�      node_count             nodes     �   ��������       ����                      ���                           	      ����                                      
   
   ����                  	      
                    ����                          ����                    
   
   ����                                                   ����                                             ����                                 ����                ���                                 ���                                 ���                                 ���                               conn_count              conns               node_paths              editable_instances              version             RSRC              extends GPUParticles2D

func start(pos, parent):
	parent.add_child(self)
	position = pos
	emitting = true

func _on_finished():
	queue_free()
  GST2   0         ����               0         .  RIFF&  WEBPVP8L  //�?@`2�]�������m� *�r; I�����9G@P��h1����W!� 9���` �vw@ p�g-��*��������m� ��Xכ~����1�	�k�(��%'%��\��FICI�_�q�\5�z�k���_7���L�/��~�y�O:�|�F��aO��n  K7��[[�\�Ip�� �H0v7�07��I֭�H�I�J6�n/��S�$��#��'�%���v,5L9�Ār��q����bI5��Ts�ȩ�T��z��&           [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://bhko3ado0xw6y"
path="res://.godot/imported/Platform3x1.png-0a6a0bb6d64043866959fae0d7bcee2b.ctex"
metadata={
"vram_texture": false
}
         RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled    
   Texture2D    res://Platform3x1.png �vKy�U<(      local://RectangleShape2D_00syx [         local://PackedScene_fypoc �         RectangleShape2D       
     �B   B         PackedScene          	         names "         StaticBody2D 	   position    CollisionShape2D    shape 	   Sprite2D    scale    texture    	   variants       
     ��  ��          
      @   @                node_count             nodes        ��������        ����                            ����                           ����                         conn_count              conns               node_paths              editable_instances              version             RSRC             extends CharacterBody2D

var veloc = Vector2(0.0, 0.0)
var grav = 768.0
var jumpforce = 1024.0
var speed = 128.0
var jumptime = 0.0
var jumping = false
var jumpparts = preload("res://jumpparts.tscn")
var fallparts = preload("res://fallparts.tscn")

@onready var indicator = get_node("Indicator/Sprite2D")
@onready var plrsprite = get_node("Sprite2D")
@onready var cam = get_parent().get_node("Camera2D")

var default_texture = preload("res://idle.png") 
var charge_texture = preload("res://charging.png") 

func _physics_process(delta):
	var move = (Input.get_action_strength("D") - Input.get_action_strength("A"))

	if is_on_floor():
		if veloc.y > 700.0:
			cam.screenshake(0.15)
			var nparts = fallparts.instantiate()
			nparts.start(global_position + Vector2(0.0, 16.0), get_parent())

		veloc.y = 0.0
		plrsprite.rotation = 0.0

		if !jumping and Input.is_action_just_pressed("W"):
			jumping = true
			veloc = Vector2(0.0, 0.0)
			plrsprite.texture = charge_texture

		elif Input.is_action_just_released("W"):
			jumping = false
			jump(move)
			plrsprite.texture = default_texture 

		elif jumping:
			jumptime += delta * 2.0
			if jumptime >= 1.0:
				jumptime = 1.0
		else:
			veloc.x = lerp(veloc.x, move * speed, delta * 16.0)

	if !is_on_floor():
		veloc.y = lerp(veloc.y, grav, delta * 2.0)
		if is_on_ceiling():
			veloc.y *= -1.0
		if is_on_wall():
			veloc.x *= -1.0
		jumptime = 0.0

	indicator.material.set_shader_parameter("progress", jumptime * 1.5)
	plrsprite.material.set_shader_parameter("progress", jumptime)

	velocity = veloc
	move_and_slide()


	update_sprite_tilt()

func jump(move):
	jumping = false
	veloc = ((get_global_mouse_position() - position) * Vector2(1.0, 1.5)).normalized() * jumptime * jumpforce
	cam.screenshake(0.05)
	var nparts = jumpparts.instantiate()
	nparts.start(global_position + Vector2(0.0, 16.0), get_parent())
	jumptime = 0.0


func update_sprite_tilt():
	if veloc.length() > 0:
		plrsprite.rotation = veloc.angle()
	else:
		plrsprite.rotation = 0.0
           RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled    
   Texture2D    res://icon.svg �簨��HY      local://RectangleShape2D_6nndh T         local://PackedScene_vtqrw �         RectangleShape2D       
     C  C         PackedScene          	         names "   	      Player    CharacterBody2D 	   Camera2D    CollisionShape2D 	   position    shape 	   Sprite2D    texture    Node2D    	   variants       
     �?  �?                          node_count             nodes     )   ��������       ����                      ����                      ����                                  ����                           ����              conn_count              conns               node_paths              editable_instances              version             RSRC    shader_type canvas_item;

uniform float progress;

void fragment() {
	COLOR.gb *= 1.0-progress;
}
              GST2   0   P      ����               0 P        �  RIFF�  WEBPVP8L�  //�G`���A��@��۷QжcDe>n ���]^��Ӝ# (�����?�=x� ���q$i�MP��#��	�T=2� |�kq½���K��{��Wضm#�{�_��t�}�M�n�6�&�V��z̙yr����d>̞�>g�q|�G��qd~:���A��Z�$�BD�6�1�ۤi{L��o�T��O�M��([�m��w�W��ת���#=��~{�m������-ߠ?��<Wf�������y.2_��+y�}#��Xf�Lnw��������x�������x���p}:�����>��d$�>}$�3�  �˃�������+3��y������Xy��c~efx8�d0H���byl(����-h�`ή�>��>�4eW�H
̢ҥW�w�*P�hC:���h���\o��nϿ=��ZG���7��\�g����;?~�o��>a�a i�BX��< � �t�dЃ�Ɍ����a�i_.A���#�y6���B����lC�!"��f��tԪb�B��>'l��i^+�t:IѢ"Q�jW�$` 0%VCӄA����-V��熝\. i;P%F2�${P9{BK)$W����H� "�X*����$�!Jn�)W�I':g)�:������2���
Ҵ�;\*�y�'��q��}3��a�4\^�XfjO�6��by��re�ڀ��6���6�$���]��t���ܜ� �t�4E�4��	�nA��?�ls�S	"؀L PJ��|��䕙*�JIG��XɎ�4훩�ژ�s�t��ǖ@ڡs
v���U����6�r�t%��+O3����^
�q�:H�U(��$(di�
 $�&�&� A#J$$��$8����>&' -mH�"/t����ݠ�H@Ҫ�tH�h Z��h�@   [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://dt2nrr65y7ho3"
path="res://.godot/imported/tileset.png-a39e944f25b35d62f55d4f98a36e2b5e.ctex"
metadata={
"vram_texture": false
}
             [remap]

path="res://.godot/exported/133200997/export-c426688054a972e8c995ba12f925dff7-fallparts.scn"
          [remap]

path="res://.godot/exported/133200997/export-32634c3f34bc05ec3657f7e7d3b5ac8e-jumpparts.scn"
          [remap]

path="res://.godot/exported/133200997/export-3070c538c03ee49b7677ff960a3f5195-main.scn"
               [remap]

path="res://.godot/exported/133200997/export-27ec3af020b3964c939cdf0436146454-platform3x1.scn"
        [remap]

path="res://.godot/exported/133200997/export-36a25e342948d0ceacc500772b5412b3-player.scn"
             list=Array[Dictionary]([])
     <svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 814 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H446l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z" fill="#478cbf"/><path d="M483 600c0 34 58 34 58 0v-86c0-34-58-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
              ��ow(�3   res://1pxwhitesquare.png�簨��HY   res://icon.svg-���F   res://jumpindicator.pngbX!h�   res://main.tscn�vKy�U<(   res://Platform3x1.png	4=�>`j   res://platform3x1.tscng>���^I   res://player.tscnSaP��v   res://tileset.png�&�c�P   res://charging.png�����   res://idle.pngv����;   res://fallparts.tscn           ECFG      application/config/name         In the Heat v0.0.1     application/run/main_scene         res://main.tscn    application/config/features(   "         4.2    GL Compatibility       application/config/icon         res://icon.svg     dotnet/project/assembly_name         In the Heat v0.0.1     input/A�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   A   	   key_label             unicode    a      echo          script         input/D�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   D   	   key_label             unicode    d      echo          script         input/W�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   W   	   key_label             unicode    w      echo          script            InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode       	   key_label             unicode           echo          script            InputEventMouseButton         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          button_mask           position              global_position               factor       �?   button_index         canceled          pressed           double_click          script      9   rendering/textures/canvas_textures/default_texture_filter          #   rendering/renderer/rendering_method         gl_compatibility*   rendering/renderer/rendering_method.mobile         gl_compatibility      