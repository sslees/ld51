GDPC                                                                            	   D   res://.import/character.png-529a34c9bb84961fe0878b6df0db59b4.stex   p      (      �/�ʀt�������@   res://.import/tiles.png-5543c94a7422728438498b2cd4eb36c8.stex   p      �      :i���J[�t9�w3�   res://Main.tscn �      u      �T_1פ��Z��F+�~   res://Player.gd.remap   �#      !       ��0�F �qq��dX��   res://Player.gdcP            �Z�2�k�G�f���,   res://assets/sprites/character.png.import   �      �      eD���xH�0�yXU�$   res://assets/tiles/tiles.png.import  !      �      n�(;�AOx����]:   res://icon.png  �#      �      G1?��z�c��vN��   res://project.binary�0      E      +�y�e���;5�,�
N    [gd_scene load_steps=14 format=2]

[ext_resource path="res://assets/tiles/tiles.png" type="Texture" id=1]
[ext_resource path="res://assets/sprites/character.png" type="Texture" id=2]
[ext_resource path="res://Player.gd" type="Script" id=3]

[sub_resource type="ConvexPolygonShape2D" id=1]
points = PoolVector2Array( 16, 16, 0, 16, 0, 0, 16, 0 )

[sub_resource type="ConvexPolygonShape2D" id=2]
points = PoolVector2Array( 16, 16, 0, 16, 0, 0, 16, 0 )

[sub_resource type="ConvexPolygonShape2D" id=3]
points = PoolVector2Array( 16, 16, 0, 16, 0, 0, 16, 0 )

[sub_resource type="ConvexPolygonShape2D" id=4]
points = PoolVector2Array( 16, 16, 0, 16, 0, 0, 16, 0 )

[sub_resource type="ConvexPolygonShape2D" id=5]
points = PoolVector2Array( 16, 16, 0, 16, 0, 0, 16, 0 )

[sub_resource type="ConvexPolygonShape2D" id=6]
points = PoolVector2Array( 16, 16, 0, 16, 0, 0, 16, 0 )

[sub_resource type="ConvexPolygonShape2D" id=7]
points = PoolVector2Array( 16, 16, 0, 16, 0, 0, 16, 0 )

[sub_resource type="ConvexPolygonShape2D" id=8]
points = PoolVector2Array( 16, 16, 0, 16, 0, 0, 16, 0 )

[sub_resource type="TileSet" id=9]
0/name = "tiles.png 0"
0/texture = ExtResource( 1 )
0/tex_offset = Vector2( 0, 0 )
0/modulate = Color( 1, 1, 1, 1 )
0/region = Rect2( 0, 0, 128, 32 )
0/tile_mode = 2
0/autotile/icon_coordinate = Vector2( 1, 0 )
0/autotile/tile_size = Vector2( 16, 16 )
0/autotile/spacing = 0
0/autotile/occluder_map = [  ]
0/autotile/navpoly_map = [  ]
0/autotile/priority_map = [  ]
0/autotile/z_index_map = [  ]
0/occluder_offset = Vector2( 0, 0 )
0/navigation_offset = Vector2( 0, 0 )
0/shape_offset = Vector2( 0, 0 )
0/shape_transform = Transform2D( 1, 0, 0, 1, 0, 0 )
0/shape = SubResource( 1 )
0/shape_one_way = false
0/shape_one_way_margin = 1.0
0/shapes = [ {
"autotile_coord": Vector2( 1, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 1 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 2, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 2 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 3, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 3 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 4, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 4 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 5, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 5 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 6, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 6 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 7, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 7 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
}, {
"autotile_coord": Vector2( 0, 1 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 8 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 0, 0 )
} ]
0/z_index = 0

[sub_resource type="RectangleShape2D" id=10]
extents = Vector2( 6.5, 18 )

[node name="Main" type="Node2D"]
__meta__ = {
"_edit_lock_": true
}

[node name="TileMap" type="TileMap" parent="."]
tile_set = SubResource( 9 )
cell_size = Vector2( 16, 16 )
format = 1
tile_data = PoolIntArray( 262161, 0, 5, 262162, 0, 6, 327697, 0, 7, 327698, 0, 2, 327699, 0, 6, 327702, 0, 5, 327703, 0, 6, 327706, 0, 3, 327707, 0, 1, 327708, 0, 4, 393234, 0, 7, 393235, 0, 65536, 393238, 0, 7, 393239, 0, 65536, 589848, 0, 3, 589849, 0, 1, 589850, 0, 4, 589852, 0, 5, 589853, 0, 6, 655388, 0, 7, 655389, 0, 65536, 786454, 0, 3, 786455, 0, 1, 786456, 0, 4, 851995, 0, 5, 851996, 0, 6, 917509, 0, 3, 917510, 0, 1, 917511, 0, 4, 917513, 0, 3, 917514, 0, 1, 917515, 0, 4, 917518, 0, 3, 917519, 0, 1, 917520, 0, 4, 917524, 0, 3, 917525, 0, 1, 917526, 0, 4, 917531, 0, 7, 917532, 0, 65536, 983040, 0, 1, 983041, 0, 1, 983042, 0, 1, 983043, 0, 1, 983044, 0, 1, 983045, 0, 1, 983046, 0, 1, 983047, 0, 1, 983048, 0, 1, 983049, 0, 1, 983050, 0, 1, 983051, 0, 1, 983052, 0, 1, 983053, 0, 1, 983054, 0, 1, 983055, 0, 1, 983056, 0, 1, 983057, 0, 1, 983058, 0, 1, 983059, 0, 1, 983060, 0, 1, 983061, 0, 1, 983062, 0, 1, 983063, 0, 1, 983064, 0, 1, 983065, 0, 1, 983066, 0, 1, 983067, 0, 1, 983068, 0, 1, 983069, 0, 1, 1048576, 0, 2, 1048577, 0, 2, 1048578, 0, 2, 1048579, 0, 2, 1048580, 0, 2, 1048581, 0, 2, 1048582, 0, 2, 1048583, 0, 2, 1048584, 0, 2, 1048585, 0, 2, 1048586, 0, 2, 1048587, 0, 2, 1048588, 0, 2, 1048589, 0, 2, 1048590, 0, 2, 1048591, 0, 2, 1048592, 0, 2, 1048593, 0, 2, 1048594, 0, 2, 1048595, 0, 2, 1048596, 0, 2, 1048597, 0, 2, 1048598, 0, 2, 1048599, 0, 2, 1048600, 0, 2, 1048601, 0, 2, 1048602, 0, 2, 1048603, 0, 2, 1048604, 0, 2, 1048605, 0, 2 )
__meta__ = {
"_edit_lock_": true
}

[node name="KinematicBody2D" type="KinematicBody2D" parent="."]
position = Vector2( 35, 216 )
script = ExtResource( 3 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="KinematicBody2D"]
position = Vector2( 0.5, 6 )
shape = SubResource( 10 )
__meta__ = {
"_edit_lock_": true
}

[node name="Sprite" type="Sprite" parent="KinematicBody2D"]
texture = ExtResource( 2 )
__meta__ = {
"_edit_lock_": true
}
           GDSC      
      �      ������������τ�   ��������Ҷ��   ���������Ҷ�   ������϶   �������϶���   ������Ѷ   ���������������Ŷ���   ����׶��   ζ��   ����¶��   ����¶��   ����������������Ҷ��   ���¶���   ���ƶ���   ���������������������Ҷ�   ����������Ķ   ϶��   �������������Ӷ�   d           �                      ui_right      ui_left    	   ui_select                                                           '      ,   	   -   
   4      :      ;      E      O      Y      Z      b      f      l      p      v      z      �      �      �      �      �      �      �      �      3YY8P�  Q;�  Y8P�  Q;�  �  Y8P�  Q;�  �  YY;�  �  PQY;�  �  YY0�  P�  QV�  �  T�  �  Y�  ;�	  �
  T�  P�  Q�  ;�  �
  T�  P�  Q�  ;�  �
  T�  P�  QY�  &�  �  PQV�  �  �  �  �  T�  �  �  &�	  V�  �  T�  �  �  &�  V�  �  T�  �  Y�  �  T�  �  �  Y�  &�  �  PQV�  �  �  Y�  �  �  P�  R�  P�  R�	  QQY`         GDST   0               WEBPRIFF   WEBPVP8L�   /�w�& ��
�����3�Q� �@@��0��[%�6� ��U�O�Ϯ�?Z �l�O�$7k���2I�g�Vm6 ��D��6��1����T;CPm
Ri9�/��w8H$��#���O���G��c�˖Y��]`{��@��N���Jm�Z�tH�@�D�a �`�-�[ �]ye�q�噠��q^	�E��'�[E��}>�WQnڡ���K}�8fƆ֘�1ˮ          [remap]

importer="texture"
type="StreamTexture"
path="res://.import/character.png-529a34c9bb84961fe0878b6df0db59b4.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/sprites/character.png"
dest_files=[ "res://.import/character.png-529a34c9bb84961fe0878b6df0db59b4.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
              GDST�                 n  WEBPRIFFb  WEBPVP8LU  /�g��m8���oX�8mȯ��u��ݢ���$��?��^  (�� ~��\����n���kko�Ls(A����߱T	�
܂ i: ,3t@YX��+�#���m$EJ-Se��S��߿�����gP�ȃ|~�,�SPR����ו�%��y4=2�$8 f��cv�˛�����KB�a�~�΀K������<{��j����Z	*��b�Z�
&����~
͢4 ��)���Ӭ��+B�[�|�썪_�ӟM�Π�fc9��6H��3�z��b���p�|^V���	�%������(}F�����<�f,#oN�?�OB����x@�1       [remap]

importer="texture"
type="StreamTexture"
path="res://.import/tiles.png-5543c94a7422728438498b2cd4eb36c8.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/tiles/tiles.png"
dest_files=[ "res://.import/tiles.png-5543c94a7422728438498b2cd4eb36c8.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
            [remap]

path="res://Player.gdc"
               �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      _global_script_classes�                     class         GitAPI        language      NativeScript      path   *   res://addons/godot-git-plugin/git_api.gdns        base          _global_script_class_icons                GitAPI            application/config/name         ld51   application/run/main_scene         res://Main.tscn    application/config/icon         res://icon.png     display/window/size/width      �     display/window/size/height           display/window/size/test_width      �     display/window/size/test_height      8     display/window/dpi/allow_hidpi            display/window/stretch/mode         2d     display/window/stretch/aspect         keep*   editor/version_control_autoload_on_startup         "   editor/version_control_plugin_name         GitAPI  +   gui/common/drop_mouse_on_gui_input_disabled            gui/theme/use_hidpi            importer_defaults/texture�              compress/mode                compress/lossy_quality    ffffff�?      compress/hdr_mode                compress/bptc_ldr                compress/normal_map              flags/repeat             flags/filter             flags/mipmaps                flags/anisotropic             
   flags/srgb              process/fix_alpha_border            process/premult_alpha                process/HDR_as_SRGB              process/invert_color             process/normal_map_invert_y              stream            
   size_limit            	   detect_3d             	   svg/scale        �?)   physics/common/enable_pause_aware_picking         $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2                     