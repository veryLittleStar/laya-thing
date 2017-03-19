/**Created by the LayaAirIDE,do not modify.*/
package ui {
	import laya.ui.*;
	import laya.display.*; 
	import managers.baoziwang.TableLightBtn;
	import managers.baoziwang.BankPanel;
	import managers.baoziwang.ClockBox;
	import managers.baoziwang.PortraitCell;
	import managers.baoziwang.MainPanelBottom;
	import managers.baoziwang.ChipCell;
	import managers.baoziwang.LaoPaoWang;
	import managers.baoziwang.MainPanelTop;
	import managers.baoziwang.TipBox;
	import managers.baoziwang.DiceCupBox;
	import customUI.BmpFontLabel;
	import managers.baoziwang.RecordCell;
	import managers.baoziwang.ShangZhuangPanel;
	import managers.baoziwang.ApplyCell;
	import managers.baoziwang.ChatAndUserList;
	import managers.baoziwang.UserInfoBox;
	import managers.baoziwang.RankPanel;
	import managers.baoziwang.PersonalRecordCell;
	import managers.baoziwang.RankCell;
	import managers.baoziwang.ConfigPanel;
	import managers.baoziwang.RecordPanel;

	public class BaoziwangUI extends View {
		public var table:Image;
		public var xLightBtn:TableLightBtn;
		public var dLightBtn:TableLightBtn;
		public var myJetion2:BmpFontLabel;
		public var myJetion0:BmpFontLabel;
		public var allJetion2:BmpFontLabel;
		public var allJetion0:BmpFontLabel;
		public var clockBox:ClockBox;
		public var playerList:List;
		public var mainPanelBottom:MainPanelBottom;
		public var myPortraitImage:Image;
		public var myGameIDLabel:Label;
		public var myNameLabel:Label;
		public var myMoneyLabel:Label;
		public var laoPaoWang:LaoPaoWang;
		public var mainPanelTop:MainPanelTop;
		public var recordBtn:Image;
		public var bankerImage:Image;
		public var configBtn:Button;
		public var bankBtn:Button;
		public var tipBox:TipBox;
		public var diceCupBox:DiceCupBox;
		public var recordPanel:RecordPanel;
		public var shangZhuangPanel:ShangZhuangPanel;
		public var chatAndUserList:ChatAndUserList;
		public var rankPanel:RankPanel;
		public var configPanel:ConfigPanel;
		public var bankPanel:BankPanel;

		public static var uiView:Object ={"type":"View","props":{"width":800,"vScrollBarSkin":"\" \"","height":600,"centerY":0,"centerX":0},"child":[{"type":"Image","props":{"y":0,"x":0,"var":"table","skin":"ui/common/yb_bj.jpg"},"child":[{"type":"Image","props":{"y":194,"x":132,"width":280,"var":"xLightBtn","skin":"ui/baseUI/yb_gx_yzsg_2.png","sizeGrid":"27,31,30,25","runtime":"managers.baoziwang.TableLightBtn","height":246}},{"type":"Image","props":{"y":194,"x":413,"width":280,"var":"dLightBtn","skin":"ui/baseUI/yb_gx_yzsg_2.png","sizeGrid":"27,31,30,25","runtime":"managers.baoziwang.TableLightBtn","height":246}},{"type":"Label","props":{"y":405,"x":188,"width":170,"visible":false,"var":"myJetion2","text":"1234567890w","runtime":"customUI.BmpFontLabel","mouseEnabled":false,"font":"benz_xz_me","align":"center"}},{"type":"Label","props":{"y":405,"x":475,"width":170,"visible":false,"var":"myJetion0","text":"1234567890w","runtime":"customUI.BmpFontLabel","mouseEnabled":false,"font":"benz_xz_me","align":"center"}},{"type":"Label","props":{"y":214,"x":186,"width":170,"visible":false,"var":"allJetion2","text":"1234567890w","runtime":"customUI.BmpFontLabel","mouseEnabled":false,"font":"benz_xz_total","align":"center"}},{"type":"Label","props":{"y":214,"x":471,"width":170,"visible":false,"var":"allJetion0","text":"1234567890w","runtime":"customUI.BmpFontLabel","mouseEnabled":false,"font":"benz_xz_total","align":"center"}}]},{"type":"Box","props":{"y":70,"x":163,"visible":false,"var":"clockBox","runtime":"managers.baoziwang.ClockBox"},"child":[{"type":"Image","props":{"y":17,"x":43,"skin":"ui/baseUI/yb_nz_dk.png"}},{"type":"Image","props":{"y":5,"x":0,"skin":"ui/baseUI/ttz_clock.png"}},{"type":"Image","props":{"y":22,"x":52,"skin":"ui/baseUI/yb_nz_qxz.png","name":"xzImage"}},{"type":"Image","props":{"y":22,"x":52,"skin":"ui/baseUI/yb_nz_qdd.png","name":"ddImage"}},{"type":"Label","props":{"y":18,"x":6,"width":41,"text":"0","runtime":"customUI.BmpFontLabel","name":"clockNumLabel","height":30,"font":"sgj_nz","align":"center"}}]},{"type":"List","props":{"y":123,"x":22,"visible":false,"var":"playerList","spaceY":-4,"spaceX":608,"repeatY":4,"repeatX":2},"child":[{"type":"Box","props":{"y":6,"x":8,"width":84,"runtime":"managers.baoziwang.PortraitCell","renderType":"render","height":84},"child":[{"type":"Image","props":{"width":61,"visible":true,"skin":"ui/baseUI/lob_men_1.jpg","name":"portrait","height":61,"centerY":0.5,"centerX":0.5},"child":[{"type":"Image","props":{"y":2.5,"x":2.5,"width":56,"visible":true,"skin":"ui/baseUI/game_user_head_zz.png","renderType":"mask","height":56}}]},{"type":"Image","props":{"width":84,"visible":true,"skin":"ui/baseUI/game_user_head_box_1.png","height":84}},{"type":"Image","props":{"y":60,"skin":"ui/baseUI/ttz_head_player_bg.png","centerX":0},"child":[{"type":"Label","props":{"y":0,"x":13,"text":"我是名字","color":"#f4f3ec"}},{"type":"Label","props":{"y":15,"x":15,"text":"123456","color":"#f2eacb"}}]}]}]},{"type":"Box","props":{"width":718,"var":"mainPanelBottom","runtime":"managers.baoziwang.MainPanelBottom","height":64,"centerX":0,"bottom":0},"child":[{"type":"Image","props":{"y":50,"x":182,"visible":true,"skin":"ui/baseUI/ttz_board_2.png","name":"chipsBg"},"child":[{"type":"List","props":{"y":4,"x":49,"spaceX":11,"repeatX":5,"name":"chips"},"child":[{"type":"Box","props":{"y":0,"width":58,"scaleY":0.95,"scaleX":0.95,"runtime":"managers.baoziwang.ChipCell","renderType":"render","pivotY":29.5,"pivotX":29,"height":59},"child":[{"type":"Image","props":{"y":-5.000000000000092,"x":-14.000000000000021,"visible":false,"skin":"ui/baseUI/ttz_chip_d_light.png","name":"chipLight","centerX":0}},{"type":"Image","props":{"y":0,"x":0,"skin":"ui/baseUI/sgj_chip_d_1.png","name":"chip"}}]}]}]},{"type":"Image","props":{"skin":"ui/baseUI/ttz_board_1.png"}},{"type":"Button","props":{"y":36,"x":588,"visible":false,"stateNum":"2","skin":"ui/baseUI/xu_ya.png","name":"autoBettingBtn","disabled":true}},{"type":"Box","props":{"y":-5,"x":-4,"width":84,"scaleY":0.9,"scaleX":0.9,"runtime":"managers.baoziwang.PortraitCell","height":84},"child":[{"type":"Image","props":{"width":61,"visible":true,"var":"myPortraitImage","skin":"ui/baseUI/lob_men_1.jpg","height":61,"centerY":0.5,"centerX":0.5},"child":[{"type":"Image","props":{"y":2.5,"x":2.5,"width":56,"visible":false,"skin":"ui/baseUI/game_user_head_zz.png","renderType":"mask","height":56}}]},{"type":"Image","props":{"width":84,"skin":"ui/baseUI/game_user_head_box_1.png","height":84}}]},{"type":"Label","props":{"y":-13,"x":72,"width":100,"var":"myGameIDLabel","height":20,"color":"#f4ece9","bold":true}},{"type":"Label","props":{"y":16,"x":73,"width":100,"var":"myNameLabel","color":"#5b2e1f","bold":true}},{"type":"Label","props":{"y":37,"x":109,"width":100,"var":"myMoneyLabel","color":"#5b2e1f","bold":true,"align":"left"}},{"type":"Image","props":{"y":31,"x":75,"skin":"ui/baseUI/game_icon_gold.png"}},{"type":"Button","props":{"y":12,"x":549,"stateNum":"2","skin":"ui/baseUI/miao_xiao.png","name":"mxBtn","disabled":true}},{"type":"Button","props":{"y":12,"x":625,"stateNum":"2","skin":"ui/baseUI/miao_da.png","name":"mdBtn","disabled":true}}]},{"type":"Animation","props":{"y":125,"x":411,"var":"laoPaoWang","source":"ani/yb_rdh_idle.ani","runtime":"managers.baoziwang.LaoPaoWang","autoPlay":true}},{"type":"Box","props":{"width":630,"visible":true,"var":"mainPanelTop","runtime":"managers.baoziwang.MainPanelTop","height":71,"centerX":0.5},"child":[{"type":"Image","props":{"y":0,"skin":"ui/common/yb_bj_zsdt.png","centerX":0}},{"type":"Image","props":{"y":3,"x":170,"var":"recordBtn","skin":"ui/baseUI/yb_bt_gd.png"}},{"type":"Button","props":{"y":5,"x":520,"stateNum":"2","skin":"ui/baseUI/ttz_bt_sz.png","name":"applySZBtn"}},{"type":"Button","props":{"y":5,"x":520,"stateNum":"2","skin":"ui/baseUI/ttz_bt_sz1.png","name":"applyingSZBtn"}},{"type":"Button","props":{"y":5,"x":520,"stateNum":"1","skin":"ui/baseUI/ttz_bt_sz4.png","name":"ingSZBtn"}},{"type":"Image","props":{"y":2,"x":386,"var":"bankerImage","skin":"ui/baseUI/yb_tx_lpt.png","name":"bankerImage"}},{"type":"Box","props":{"y":-7,"x":382,"width":84,"visible":false,"scaleY":0.9,"scaleX":0.9,"runtime":"managers.baoziwang.PortraitCell","name":"bankerPortrait","height":84},"child":[{"type":"Image","props":{"width":61,"visible":true,"skin":"ui/baseUI/lob_men_1.jpg","name":"portraitImage","height":61,"centerY":0.5,"centerX":0.5},"child":[{"type":"Image","props":{"y":2.5,"x":2.5,"width":56,"visible":true,"skin":"ui/baseUI/game_user_head_zz.png","renderType":"mask","height":56}}]},{"type":"Image","props":{"width":84,"visible":true,"skin":"ui/baseUI/game_user_head_box_1.png","name":"portraitBg","height":84}}]},{"type":"Label","props":{"y":14,"x":460,"name":"bankerNameLabel","color":"#f4f3ec"}},{"type":"Label","props":{"y":37,"x":468,"name":"bankerScoreLabel","color":"#f2eacb"}},{"type":"Box","props":{"y":32,"x":52.5,"name":"recordListBox"},"child":[{"type":"List","props":{"y":0,"x":0,"spaceX":6,"repeatX":6,"name":"recordList"},"child":[{"type":"Image","props":{"skin":"ui/baseUI/yb_bj_zs_03.png","renderType":"render"}}]}]},{"type":"Button","props":{"y":3,"x":-52,"var":"configBtn","stateNum":"1","skin":"ui/baseUI/button_setting.png","scaleY":0.7,"scaleX":0.7}},{"type":"Button","props":{"y":-3,"x":626,"var":"bankBtn","stateNum":"2","skin":"ui/baseUI/button_bank.png","scaleY":0.5,"scaleX":0.5}}]},{"type":"Box","props":{"y":240,"width":800,"var":"tipBox","runtime":"managers.baoziwang.TipBox","centerX":0},"child":[{"type":"Box","props":{"y":65,"x":0,"width":800,"pivotY":62.5,"name":"bg"},"child":[{"type":"Image","props":{"y":0,"x":0,"skin":"ui/baseUI/game_com_tip_bg.png"}},{"type":"Image","props":{"y":0,"x":799.5,"skin":"ui/baseUI/game_com_tip_bg.png","scaleX":-1}}]},{"type":"Image","props":{"y":22,"x":294,"skin":"ui/baseUI/ttz_ts_01.png","name":"word1"}},{"type":"Image","props":{"y":19,"x":264,"skin":"ui/baseUI/ttz_ts_02.png","name":"word2"}}]},{"type":"Box","props":{"y":333,"x":415,"width":1,"visible":false,"var":"diceCupBox","runtime":"managers.baoziwang.DiceCupBox","height":1},"child":[{"type":"Image","props":{"y":0,"x":0,"skin":"ui/baseUI/yb_z_1.png","pivotY":65,"pivotX":117,"name":"tray"}},{"type":"Image","props":{"y":0,"x":0,"skin":"ui/baseUI/yb_z_2.png","pivotY":185,"pivotX":85,"name":"cap"}},{"type":"Animation","props":{"y":-213,"x":-88,"width":172,"visible":false,"source":"ani/baozi.ani","name":"baoziAni","mouseEnabled":false,"height":121,"autoPlay":false}},{"type":"Image","props":{"y":-334,"x":0,"skin":"ui/baseUI/yb_gx_hd.png","scaleY":2.5,"scaleX":2.5,"pivotX":71.5,"name":"light"}},{"type":"Image","props":{"y":39,"x":-131,"skin":"ui/baseUI/yb_d_sm.png","name":"pointBg"},"child":[{"type":"Box","props":{"x":-30,"name":"pointBox"},"child":[{"type":"Label","props":{"y":46,"x":90,"width":50,"text":"18","runtime":"customUI.BmpFontLabel","name":"numLabel","font":"yb_sz_ds","anchorY":0.5,"anchorX":0.5,"align":"right"}},{"type":"Image","props":{"y":42,"x":137,"width":38,"skin":"ui/baseUI/yb_wz_d.png","pivotY":21,"pivotX":18,"name":"point","height":38}},{"type":"Image","props":{"y":45,"x":192,"skin":"ui/baseUI/yb_wz_bz.png","pivotY":36,"pivotX":33,"name":"dx"}}]}]}]},{"type":"Box","props":{"y":63,"x":105,"width":237,"var":"recordPanel","runtime":"managers.baoziwang.RecordPanel","height":486},"child":[{"type":"Image","props":{"y":0,"x":0,"width":236,"skin":"ui/baseUI/game_phb_10.png","sizeGrid":"20,20,25,20","height":490}},{"type":"List","props":{"y":9,"x":8,"width":224,"vScrollBarSkin":" ","spaceY":10,"name":"recordList","height":468},"child":[{"type":"Box","props":{"runtime":"managers.baoziwang.RecordCell","renderType":"render"},"child":[{"type":"Image","props":{"y":0,"x":0,"width":220,"skin":"ui/baseUI/yb_sz_ls_lv2.png","sizeGrid":"15,30,15,30","name":"bgImage","height":49}},{"type":"Image","props":{"y":15,"x":167,"skin":"ui/baseUI/yb_sz_ls_11.png"}},{"type":"Image","props":{"y":11,"x":189,"skin":"ui/baseUI/yb_bj_zs_01.png","name":"dxImage"}},{"type":"Image","props":{"y":2,"x":3,"visible":true,"skin":"ui/baseUI/ttz_sezi_d_1.png","name":"dice0Image"}},{"type":"Image","props":{"y":1,"x":48,"visible":true,"skin":"ui/baseUI/ttz_sezi_d_1.png","name":"dice1Image"}},{"type":"Image","props":{"y":1,"x":93,"visible":true,"skin":"ui/baseUI/ttz_sezi_d_1.png","name":"dice2Image"}},{"type":"Label","props":{"y":12,"x":140,"width":24,"text":"16","name":"pointLabel","height":20,"fontSize":22,"color":"#99dd99","bold":false,"align":"center"}}]}]}]},{"type":"Box","props":{"y":0,"x":0,"width":800,"var":"shangZhuangPanel","runtime":"managers.baoziwang.ShangZhuangPanel","height":600},"child":[{"type":"Image","props":{"y":8,"x":155,"width":451,"skin":"ui/baseUI/game_phb_10.png","sizeGrid":"20,20,25,20","name":"bgImage","height":541},"child":[{"type":"Image","props":{"y":12,"x":127,"skin":"ui/baseUI/ttz_ej_sz_sqsz.png"}},{"type":"Image","props":{"y":72,"x":14,"width":423,"skin":"ui/baseUI/ttz_talk_bg_3.png","sizeGrid":"10,10,10,10","height":379}},{"type":"Image","props":{"y":110,"x":25,"width":400,"skin":"ui/baseUI/ttz_help_02.png","sizeGrid":"0,10,0,10"}},{"type":"Label","props":{"y":48,"x":150,"width":150,"text":"申请上庄条件：1亿金币","name":"conditionLabel","height":14,"fontSize":14,"color":"#f1e1e1"}},{"type":"Image","props":{"y":85,"x":199,"skin":"ui/baseUI/ttz_ej_sz_jb.png"}},{"type":"Image","props":{"y":85,"x":352,"skin":"ui/baseUI/ttz_ej_sz_pd.png"}},{"type":"Image","props":{"y":85,"x":67,"skin":"ui/baseUI/ttz_ej_sz_wj.png"}},{"type":"List","props":{"y":124,"x":26,"width":407,"spaceY":10,"repeatX":1,"name":"playerList","height":299},"child":[{"type":"Box","props":{"runtime":"managers.baoziwang.ApplyCell","renderType":"render"},"child":[{"type":"Image","props":{"y":20,"x":0,"width":400,"skin":"ui/baseUI/ttz_help_02.png","sizeGrid":"0,10,0,10"}},{"type":"Label","props":{"y":0,"x":7,"width":112,"text":"我是标准的八个字","name":"nameLabel","height":0,"fontSize":14,"color":"#f1e1e1","align":"center"}},{"type":"Label","props":{"y":0,"x":142,"width":106,"text":"90亿","name":"scoreLabel","height":0,"fontSize":14,"color":"#f1e1e1","align":"center"}},{"type":"Label","props":{"y":0,"x":291,"width":113,"text":"第一名","name":"indexLabel","height":0,"fontSize":14,"color":"#f1e1e1","align":"center"}}]}]},{"type":"Button","props":{"y":466,"x":156,"stateNum":"2","skin":"ui/baseUI/btn_apply.png","name":"applyBtn"}},{"type":"Button","props":{"y":466,"x":156,"stateNum":"2","skin":"ui/baseUI/btn_cancel.png","name":"cancelBtn"}},{"type":"Button","props":{"y":9,"x":394,"stateNum":"2","skin":"ui/baseUI/btn_close.png","name":"closeBtn"}}]}]},{"type":"Box","props":{"y":81,"x":0,"width":328,"var":"chatAndUserList","runtime":"managers.baoziwang.ChatAndUserList","height":438,"centerY":0},"child":[{"type":"Image","props":{"y":0,"x":1,"width":330,"skin":"ui/baseUI/ttz_talk_bg_2.png","sizeGrid":"0,52,0,0","name":"bgImage"}},{"type":"Image","props":{"y":90,"x":303,"skin":"ui/baseUI/ttz_talk_txt_0.png"}},{"type":"Image","props":{"y":188,"x":303,"skin":"ui/baseUI/ttz_talk_txt_1.png"}},{"type":"Image","props":{"y":288,"x":303,"skin":"ui/baseUI/ttz_talk_txt_2.png"}},{"type":"Image","props":{"y":151,"x":305,"width":12,"skin":"ui/baseUI/ttz_talk_j2.png","name":"sChatArrow","height":12}},{"type":"Image","props":{"y":248,"x":305,"skin":"ui/baseUI/ttz_talk_j2.png","name":"rChatArrow"}},{"type":"Image","props":{"y":343,"x":305,"skin":"ui/baseUI/ttz_talk_j2.png","name":"userArrow"}},{"type":"Image","props":{"y":12,"x":8,"width":279,"skin":"ui/baseUI/ttz_talk_bg_3.png","sizeGrid":"10,10,10,10","height":417}},{"type":"Box","props":{"y":72,"x":296,"width":30,"name":"sChatBtn","height":97}},{"type":"Box","props":{"y":171,"x":296,"width":30,"name":"rChatBtn","height":97}},{"type":"Box","props":{"y":270,"x":296,"width":30,"name":"userBtn","height":97}},{"type":"List","props":{"y":14,"x":0,"width":285,"vScrollBarSkin":" ","spaceY":-4,"name":"userList","height":414},"child":[{"type":"Box","props":{"runtime":"managers.baoziwang.UserInfoBox","renderType":"render"},"child":[{"type":"Image","props":{"y":5,"x":15,"width":266,"skin":"ui/baseUI/ttz_wzwj_1.png","sizeGrid":"20,15,15,20","height":60}},{"type":"Box","props":{"y":-3,"x":10,"width":84,"visible":true,"scaleY":0.9,"scaleX":0.9,"runtime":"managers.baoziwang.PortraitCell","name":"portraitBox","height":84},"child":[{"type":"Image","props":{"width":61,"visible":true,"skin":"ui/baseUI/lob_men_1.jpg","name":"portraitImage","height":61,"centerY":0.5,"centerX":0.5},"child":[{"type":"Image","props":{"y":2.5,"x":2.5,"width":56,"visible":true,"skin":"ui/baseUI/game_user_head_zz.png","renderType":"mask","height":56}}]},{"type":"Image","props":{"width":84,"visible":true,"skin":"ui/baseUI/game_user_head_box_1.png","name":"portraitBg","height":84}}]},{"type":"Label","props":{"y":14,"x":92,"text":"名字标准的八个字","name":"userName","fontSize":14,"color":"#86583b","bold":true}},{"type":"Image","props":{"y":32,"x":95,"skin":"ui/baseUI/game_icon_gold.png"}},{"type":"Label","props":{"y":35,"x":121,"text":"123456","name":"userScore","fontSize":14,"color":"#86583b","bold":true}},{"type":"Button","props":{"y":19,"x":220,"stateNum":"2","skin":"ui/baseUI/button_sChat.png","scaleY":0.9,"scaleX":0.9,"name":"sChatBtn"}}]}]},{"type":"Box","props":{"y":21,"x":11,"name":"sChatBox"},"child":[{"type":"Panel","props":{"y":0,"x":0,"width":268,"vScrollBarSkin":" ","name":"sChatPanel","height":310}},{"type":"TextInput","props":{"y":373,"x":3,"width":205,"skin":"ui/baseUI/ttz_wzwj_1.png","sizeGrid":"20,15,15,20","name":"sChatInput","height":30}},{"type":"List","props":{"y":314,"x":11,"width":314,"spaceY":0,"spaceX":-3,"scaleY":0.8,"scaleX":0.8,"repeatY":1,"repeatX":5,"name":"sChatUserList","height":72,"hScrollBarSkin":" "},"child":[{"type":"Box","props":{"y":0,"x":0,"runtime":"managers.baoziwang.UserInfoBox","renderType":"render"},"child":[{"type":"Image","props":{"y":8,"x":5,"width":164,"skin":"ui/baseUI/ttz_wzwj_1.png","sizeGrid":"20,15,15,20","height":60}},{"type":"Box","props":{"y":1,"x":-3,"width":84,"visible":true,"scaleY":0.9,"scaleX":0.9,"runtime":"managers.baoziwang.PortraitCell","name":"portraitBox","height":84},"child":[{"type":"Image","props":{"width":61,"visible":true,"skin":"ui/baseUI/lob_men_1.jpg","name":"portraitImage","height":61,"centerY":0.5,"centerX":0.5},"child":[{"type":"Image","props":{"y":2.5,"x":2.5,"width":56,"visible":true,"skin":"ui/baseUI/game_user_head_zz.png","renderType":"mask","height":56}}]},{"type":"Image","props":{"width":84,"visible":true,"skin":"ui/baseUI/game_user_head_box_1.png","name":"portraitBg","height":84}}]},{"type":"Label","props":{"y":17,"x":66,"text":"名字标准的八个字","name":"userName","fontSize":12,"color":"#86583b","bold":true}},{"type":"Image","props":{"y":35,"x":67,"skin":"ui/baseUI/game_icon_gold.png"}},{"type":"Label","props":{"y":39,"x":90,"text":"123456","name":"userScore","fontSize":12,"color":"#86583b","bold":true}},{"type":"Image","props":{"y":7.0000000000000275,"x":5.999999999999942,"width":164,"visible":false,"skin":"ui/baseUI/yb_gx_yzsg_2.png","sizeGrid":"27,31,30,25","name":"choseMask","mouseEnabled":false,"height":60}},{"type":"Button","props":{"y":10,"x":137,"width":30,"stateNum":"2","skin":"ui/baseUI/btn_close.png","name":"sCloseBtn","height":30}}]}]},{"type":"Button","props":{"y":373,"x":211,"stateNum":"1","skin":"ui/baseUI/button_sChat_send.png","name":"sChatSendBtn"}}]},{"type":"Box","props":{"y":21,"x":11,"name":"rChatBox"},"child":[{"type":"TextInput","props":{"y":373,"x":3,"width":205,"skin":"ui/baseUI/ttz_wzwj_1.png","sizeGrid":"20,15,15,20","name":"rChatInput","height":30}},{"type":"Panel","props":{"y":0,"x":0,"width":268,"vScrollBarSkin":" ","name":"rChatPanel","height":362}},{"type":"Button","props":{"y":373,"x":211,"stateNum":"1","skin":"ui/baseUI/button_sChat_send.png","name":"rChatSendBtn"}}]}]},{"type":"Box","props":{"x":470,"width":328,"var":"rankPanel","runtime":"managers.baoziwang.RankPanel","height":438,"centerY":0},"child":[{"type":"Image","props":{"y":0,"x":326,"width":330,"skin":"ui/baseUI/ttz_talk_bg_2.png","sizeGrid":"0,52,0,0","scaleX":-1,"name":"bgImage"}},{"type":"Image","props":{"y":10,"x":45,"width":279,"skin":"ui/baseUI/ttz_talk_bg_3.png","sizeGrid":"10,10,10,10","height":417}},{"type":"Image","props":{"y":90,"x":9,"skin":"ui/baseUI/ttz_rank_txt_0.png"}},{"type":"Image","props":{"y":188,"x":9,"skin":"ui/baseUI/ttz_rank_txt_1.png"}},{"type":"Image","props":{"y":287,"x":9,"skin":"ui/baseUI/ttz_rank_txt_2.png"}},{"type":"Image","props":{"y":151,"x":11,"width":12,"skin":"ui/baseUI/ttz_talk_j2.png","name":"personalArrow","height":12}},{"type":"Image","props":{"y":247,"x":11,"width":12,"skin":"ui/baseUI/ttz_talk_j2.png","name":"todayArrow","height":12}},{"type":"Image","props":{"y":345,"x":11,"width":12,"skin":"ui/baseUI/ttz_talk_j2.png","name":"yesterdayArrow","height":12}},{"type":"Box","props":{"y":74,"x":2,"width":30,"name":"personalBtn","height":97}},{"type":"Box","props":{"y":171,"x":2,"width":30,"name":"todayBtn","height":97}},{"type":"Box","props":{"y":269,"x":2,"width":30,"name":"yesterdayBtn","height":97}},{"type":"Box","props":{"y":10,"x":37,"name":"personalBox"},"child":[{"type":"List","props":{"y":9,"x":1,"width":285,"vScrollBarSkin":" ","spaceY":7,"name":"personalList","height":400},"child":[{"type":"Box","props":{"runtime":"managers.baoziwang.PersonalRecordCell","renderType":"render"},"child":[{"type":"Image","props":{"y":5,"x":15,"width":266,"skin":"ui/baseUI/ttz_wzwj_1.png","sizeGrid":"20,15,15,20","height":55}},{"type":"Label","props":{"y":10,"x":29,"width":228,"text":"15:32:59 本局开【小】，输：1000","name":"recordLabel","height":18,"fontSize":12,"color":"#86583b","bold":true}},{"type":"Label","props":{"y":26,"x":27,"width":228,"text":"下注【大】：1000","name":"bigLabel","height":18,"fontSize":12,"color":"#86583b","bold":true}},{"type":"Label","props":{"y":41,"x":27,"width":228,"text":"下注【小】：1000","name":"smallLabel","height":18,"fontSize":12,"color":"#86583b","bold":true}}]}]}]},{"type":"Box","props":{"y":13,"x":37,"name":"todayBox"},"child":[{"type":"Tab","props":{"y":14,"x":55,"space":20,"selectedIndex":0,"name":"tabBtn"},"child":[{"type":"Button","props":{"skin":"ui/baseUI/rank_tab_win.png","name":"item0"}},{"type":"Button","props":{"y":1,"x":84,"skin":"ui/baseUI/rank_tab_lose.png","name":"item1"}}]},{"type":"List","props":{"y":47,"x":0,"width":285,"vScrollBarSkin":" ","spaceY":-4,"name":"winList","height":345},"child":[{"type":"Box","props":{"runtime":"managers.baoziwang.RankCell","renderType":"render"},"child":[{"type":"Image","props":{"y":5,"x":15,"width":266,"skin":"ui/baseUI/ttz_wzwj_1.png","sizeGrid":"20,15,15,20","height":60}},{"type":"Box","props":{"y":-3,"x":10,"width":84,"visible":true,"scaleY":0.9,"scaleX":0.9,"runtime":"managers.baoziwang.PortraitCell","name":"portraitBox","height":84},"child":[{"type":"Image","props":{"width":61,"visible":true,"skin":"ui/baseUI/lob_men_1.jpg","name":"portraitImage","height":61,"centerY":0.5,"centerX":0.5},"child":[{"type":"Image","props":{"y":2.5,"x":2.5,"width":56,"visible":true,"skin":"ui/baseUI/game_user_head_zz.png","renderType":"mask","height":56}}]},{"type":"Image","props":{"width":84,"visible":true,"skin":"ui/baseUI/game_user_head_box_1.png","name":"portraitBg","height":84}}]},{"type":"Label","props":{"y":9,"x":95,"text":"第一名","name":"userRankLabel","fontSize":12,"color":"#86583b","bold":true}},{"type":"Label","props":{"y":25,"x":95,"text":"名字标准的八个字","name":"userNameLabel","fontSize":12,"color":"#86583b","bold":true}},{"type":"Image","props":{"y":41,"x":97,"skin":"ui/baseUI/game_icon_gold.png"}},{"type":"Label","props":{"y":45,"x":130,"text":"123456","name":"userScoreLabel","fontSize":12,"color":"#86583b","bold":true}}]}]},{"type":"List","props":{"y":47,"x":0,"width":285,"vScrollBarSkin":" ","spaceY":-4,"name":"loseList","height":345},"child":[{"type":"Box","props":{"runtime":"managers.baoziwang.RankCell","renderType":"render"},"child":[{"type":"Image","props":{"y":5,"x":15,"width":266,"skin":"ui/baseUI/ttz_wzwj_1.png","sizeGrid":"20,15,15,20","height":60}},{"type":"Box","props":{"y":-3,"x":10,"width":84,"visible":true,"scaleY":0.9,"scaleX":0.9,"runtime":"managers.baoziwang.PortraitCell","name":"portraitBox","height":84},"child":[{"type":"Image","props":{"width":61,"visible":true,"skin":"ui/baseUI/lob_men_1.jpg","name":"portraitImage","height":61,"centerY":0.5,"centerX":0.5},"child":[{"type":"Image","props":{"y":2.5,"x":2.5,"width":56,"visible":true,"skin":"ui/baseUI/game_user_head_zz.png","renderType":"mask","height":56}}]},{"type":"Image","props":{"width":84,"visible":true,"skin":"ui/baseUI/game_user_head_box_1.png","name":"portraitBg","height":84}}]},{"type":"Label","props":{"y":9,"x":95,"text":"第一名","name":"userRankLabel","fontSize":12,"color":"#86583b","bold":true}},{"type":"Label","props":{"y":25,"x":95,"text":"名字标准的八个字","name":"userNameLabel","fontSize":12,"color":"#86583b","bold":true}},{"type":"Image","props":{"y":41,"x":97,"skin":"ui/baseUI/game_icon_gold.png"}},{"type":"Label","props":{"y":45,"x":130,"text":"123456","name":"userScoreLabel","fontSize":12,"color":"#86583b","bold":true}}]}]}]},{"type":"Box","props":{"y":13,"x":37,"name":"yesterdayBox"},"child":[{"type":"Tab","props":{"y":14,"x":55,"space":20,"selectedIndex":0,"name":"tabBtn"},"child":[{"type":"Button","props":{"skin":"ui/baseUI/rank_tab_win.png","name":"item0"}},{"type":"Button","props":{"y":1,"x":84,"skin":"ui/baseUI/rank_tab_lose.png","name":"item1"}}]},{"type":"List","props":{"y":47,"x":0,"width":285,"vScrollBarSkin":" ","spaceY":-4,"name":"winList","height":345},"child":[{"type":"Box","props":{"runtime":"managers.baoziwang.RankCell","renderType":"render"},"child":[{"type":"Image","props":{"y":5,"x":15,"width":266,"skin":"ui/baseUI/ttz_wzwj_1.png","sizeGrid":"20,15,15,20","height":60}},{"type":"Box","props":{"y":-3,"x":10,"width":84,"visible":true,"scaleY":0.9,"scaleX":0.9,"runtime":"managers.baoziwang.PortraitCell","name":"portraitBox","height":84},"child":[{"type":"Image","props":{"width":61,"visible":true,"skin":"ui/baseUI/lob_men_1.jpg","name":"portraitImage","height":61,"centerY":0.5,"centerX":0.5},"child":[{"type":"Image","props":{"y":2.5,"x":2.5,"width":56,"visible":true,"skin":"ui/baseUI/game_user_head_zz.png","renderType":"mask","height":56}}]},{"type":"Image","props":{"width":84,"visible":true,"skin":"ui/baseUI/game_user_head_box_1.png","name":"portraitBg","height":84}}]},{"type":"Label","props":{"y":9,"x":95,"text":"第一名","name":"userRankLabel","fontSize":12,"color":"#86583b","bold":true}},{"type":"Label","props":{"y":25,"x":95,"text":"名字标准的八个字","name":"userNameLabel","fontSize":12,"color":"#86583b","bold":true}},{"type":"Image","props":{"y":41,"x":97,"skin":"ui/baseUI/game_icon_gold.png"}},{"type":"Label","props":{"y":45,"x":130,"text":"123456","name":"userScoreLabel","fontSize":12,"color":"#86583b","bold":true}}]}]},{"type":"List","props":{"y":47,"x":0,"width":285,"vScrollBarSkin":" ","spaceY":-4,"name":"loseList","height":345},"child":[{"type":"Box","props":{"runtime":"managers.baoziwang.RankCell","renderType":"render"},"child":[{"type":"Image","props":{"y":5,"x":15,"width":266,"skin":"ui/baseUI/ttz_wzwj_1.png","sizeGrid":"20,15,15,20","height":60}},{"type":"Box","props":{"y":-3,"x":10,"width":84,"visible":true,"scaleY":0.9,"scaleX":0.9,"runtime":"managers.baoziwang.PortraitCell","name":"portraitBox","height":84},"child":[{"type":"Image","props":{"width":61,"visible":true,"skin":"ui/baseUI/lob_men_1.jpg","name":"portraitImage","height":61,"centerY":0.5,"centerX":0.5},"child":[{"type":"Image","props":{"y":2.5,"x":2.5,"width":56,"visible":true,"skin":"ui/baseUI/game_user_head_zz.png","renderType":"mask","height":56}}]},{"type":"Image","props":{"width":84,"visible":true,"skin":"ui/baseUI/game_user_head_box_1.png","name":"portraitBg","height":84}}]},{"type":"Label","props":{"y":9,"x":95,"text":"第一名","name":"userRankLabel","fontSize":12,"color":"#86583b","bold":true}},{"type":"Label","props":{"y":25,"x":95,"text":"名字标准的八个字","name":"userNameLabel","fontSize":12,"color":"#86583b","bold":true}},{"type":"Image","props":{"y":41,"x":97,"skin":"ui/baseUI/game_icon_gold.png"}},{"type":"Label","props":{"y":45,"x":130,"text":"123456","name":"userScoreLabel","fontSize":12,"color":"#86583b","bold":true}}]}]}]}]},{"type":"Box","props":{"y":0,"x":0,"var":"configPanel","runtime":"managers.baoziwang.ConfigPanel"},"child":[{"type":"Image","props":{"y":0,"x":-6,"skin":"ui/baseUI/bank_panel_base.png","scaleY":0.8,"scaleX":0.8}},{"type":"Button","props":{"y":14,"x":721,"stateNum":"1","skin":"ui/baseUI/button_closepanel.png","scaleY":0.8,"scaleX":0.8,"name":"closeBtn"}},{"type":"Box","props":{"name":"configBox"},"child":[{"type":"Label","props":{"y":389,"x":107,"text":"音乐","fontSize":35,"color":"#dbbab9"}},{"type":"Label","props":{"y":450,"x":107,"text":"音效","fontSize":35,"color":"#dbbab9"}},{"type":"Label","props":{"y":259,"x":109,"text":"秒注最大限制:","fontSize":35,"color":"#dbbab9","bold":false}},{"type":"Button","props":{"y":142,"x":272,"stateNum":"1","skin":"ui/baseUI/button_blue_big.png","name":"changePassBtn","labelSize":35,"labelColors":"#ffffff,#00ff00,#ffffff,#ffffff","label":"修改银行密码"}},{"type":"TextInput","props":{"y":324,"x":342,"width":240,"skin":"ui/baseUI/ttz_talk_bg_3.png","sizeGrid":"12,12,12,12","name":"limitNumInput","height":37,"fontSize":25,"color":"#dbbab9"}},{"type":"Button","props":{"y":321,"x":609,"width":93,"stateNum":"1","skin":"ui/baseUI/button_blue_big.png","name":"limitSureBtn","labelSize":25,"labelColors":"#ffffff,#00ff00,#ffffff,#ffffff","label":"确定","height":47}},{"type":"Label","props":{"y":322,"x":109,"text":"设置秒注限制:","fontSize":35,"color":"#dbbab9","bold":false}},{"type":"Label","props":{"y":261,"x":354,"name":"limitNumLabel","fontSize":35,"color":"#dbbab9"}},{"type":"HSlider","props":{"y":391,"x":216,"width":300,"value":100,"tick":4,"skin":"ui/baseUI/BackProgressBar.png","sizeGrid":"0,29,0,24","name":"musicSlider","min":0,"max":100,"height":53}},{"type":"HSlider","props":{"y":456,"x":215,"width":300,"value":100,"skin":"ui/baseUI/BackProgressBar.png","sizeGrid":"0,5,0,5","name":"soundSlider","min":0,"max":100}}]},{"type":"Box","props":{"name":"passBox"},"child":[{"type":"Label","props":{"y":179,"x":80,"text":"请输入原密码","fontSize":35,"color":"#dbbab9"}},{"type":"TextInput","props":{"y":180,"x":330,"width":300,"skin":"ui/baseUI/ttz_talk_bg_3.png","sizeGrid":"12,12,12,12","name":"oldPassInput","height":37,"fontSize":25,"color":"#dbbab9"}},{"type":"Label","props":{"y":266,"x":80,"text":"请输入新密码","fontSize":35,"color":"#dbbab9"}},{"type":"TextInput","props":{"y":269,"x":330,"width":300,"skin":"ui/baseUI/ttz_talk_bg_3.png","sizeGrid":"12,12,12,12","name":"newPassInput","height":37,"fontSize":25,"color":"#dbbab9"}},{"type":"Label","props":{"y":359,"x":80,"text":"再输入一次","fontSize":35,"color":"#dbbab9"}},{"type":"TextInput","props":{"y":356,"x":330,"width":300,"skin":"ui/baseUI/ttz_talk_bg_3.png","sizeGrid":"12,12,12,12","name":"ensureInput","height":37,"fontSize":25,"color":"#dbbab9"}},{"type":"Button","props":{"y":430,"x":220,"width":161,"stateNum":"1","skin":"ui/baseUI/button_blue_big.png","name":"passSureBtn","labelSize":35,"labelColors":"#ffffff,#00ff00,#ffffff,#ffffff","label":"确定","height":71}},{"type":"Button","props":{"y":430,"x":407,"width":161,"stateNum":"1","skin":"ui/baseUI/button_blue_big.png","name":"passReturnBtn","labelSize":35,"labelColors":"#ffffff,#00ff00,#ffffff,#ffffff","label":"返回","height":71}}]}]},{"type":"Box","props":{"y":0,"x":0,"visible":false,"var":"bankPanel","runtime":"managers.baoziwang.BankPanel"},"child":[{"type":"Image","props":{"y":0,"x":-6,"skin":"ui/baseUI/bank_panel_base.png","scaleY":0.8,"scaleX":0.8}},{"type":"Box","props":{"name":"bankTypeBox"},"child":[{"type":"Label","props":{"y":13,"x":360,"text":"银行","fontSize":40,"color":"#dbbab9","bold":true}},{"type":"Button","props":{"y":14,"x":726,"stateNum":"1","skin":"ui/baseUI/button_closepanel.png","scaleY":0.8,"scaleX":0.8,"name":"closeBtn"}},{"type":"Tab","props":{"y":86,"x":239,"width":330,"space":-40,"selectedIndex":0,"name":"bankTab","direction":"horizontal"},"child":[{"type":"Button","props":{"skin":"ui/baseUI/button_bank_all.png","scaleY":0.8,"scaleX":0.8,"name":"item0"}},{"type":"Button","props":{"y":0,"x":169,"skin":"ui/baseUI/button_give.png","scaleY":0.8,"scaleX":0.8,"name":"item1"}}]},{"type":"Label","props":{"y":151,"x":160,"text":"身上携带","fontSize":35,"color":"#dbbab9","bold":true}},{"type":"Label","props":{"y":210,"x":160,"text":"银行存款","fontSize":35,"color":"#dbbab9","bold":true}},{"type":"Image","props":{"y":159,"x":330,"skin":"ui/baseUI/game_icon_gold.png"}},{"type":"Image","props":{"y":219,"x":330,"skin":"ui/baseUI/game_icon_gold.png"}},{"type":"Label","props":{"y":151,"x":380,"text":"0","name":"inPocketGoldLabel","fontSize":35,"color":"#dbbab9","bold":false}},{"type":"Label","props":{"y":212,"x":380,"text":"0","name":"inBankGoldLabel","fontSize":35,"color":"#dbbab9","bold":false}},{"type":"Box","props":{"y":279,"x":157,"width":502,"name":"bankTabBox","height":246},"child":[{"type":"Label","props":{"y":2,"x":-67,"text":"输入金币数量","fontSize":35,"color":"#dbbab9","bold":true}},{"type":"Label","props":{"y":105,"x":1,"text":"银行密码","fontSize":35,"color":"#dbbab9","bold":true}},{"type":"Button","props":{"y":160,"x":161,"stateNum":"1","skin":"ui/baseUI/button_blue_big.png","scaleY":0.8,"scaleX":0.8,"name":"getGoldBtn","labelSize":35,"labelColors":"#f9f6f6","label":"取款"}},{"type":"Button","props":{"y":160,"x":-69,"stateNum":"1","skin":"ui/baseUI/button_blue_big.png","scaleY":0.8,"scaleX":0.8,"name":"saveGoldBtn","labelSize":35,"labelColors":"#f9f6f6","label":"存款"}},{"type":"Button","props":{"y":160,"x":385,"stateNum":"1","skin":"ui/baseUI/button_blue_big.png","scaleY":0.8,"scaleX":0.8,"name":"transToGameBtn","labelSize":35,"labelColors":"#f9f6f6","label":"取款到游戏"}},{"type":"CheckBox","props":{"y":55,"x":179,"stateNum":"2","skin":"ui/baseUI/button_check_group.png","scaleY":0.8,"scaleX":0.8,"name":"allSaveCheckBox"}},{"type":"CheckBox","props":{"y":55,"x":344,"stateNum":"2","skin":"ui/baseUI/button_check_group.png","scaleY":0.8,"scaleX":0.8,"name":"allGetCheckBox"}},{"type":"Label","props":{"y":63,"x":223,"text":"全部存入","fontSize":20,"color":"#dbbab9","bold":true}},{"type":"Label","props":{"y":63,"x":390,"text":"全部取出","fontSize":20,"color":"#dbbab9","bold":true}},{"type":"TextInput","props":{"y":2,"x":180,"width":240,"skin":"ui/baseUI/ttz_talk_bg_3.png","sizeGrid":"12,12,12,12","name":"goldNumInput","height":37,"fontSize":25,"color":"#dbbab9"}},{"type":"TextInput","props":{"y":107,"x":180,"width":240,"skin":"ui/baseUI/ttz_talk_bg_3.png","sizeGrid":"12,12,12,12","name":"savePwdInput","height":37,"fontSize":25,"color":"#dbbab9"}}]},{"type":"Box","props":{"y":279,"x":157,"width":500,"name":"giveTabBox","height":250},"child":[{"type":"Label","props":{"y":2,"x":4,"text":"赠送玩家","fontSize":35,"color":"#dbbab9","bold":true}},{"type":"Label","props":{"y":63,"x":-67,"text":"赠送金币数量","fontSize":35,"color":"#dbbab9","bold":true}},{"type":"Label","props":{"y":122,"x":4,"text":"银行密码","fontSize":35,"color":"#dbbab9","bold":true}},{"type":"TextInput","props":{"y":5,"x":170,"width":240,"skin":"ui/baseUI/ttz_talk_bg_3.png","sizeGrid":"12,12,12,12","name":"targetUserIDInput","height":37,"fontSize":25,"color":"#dbbab9"}},{"type":"TextInput","props":{"y":64,"x":170,"width":240,"skin":"ui/baseUI/ttz_talk_bg_3.png","sizeGrid":"12,12,12,12","name":"giveGoldNumInput","height":37,"fontSize":25,"color":"#dbbab9"}},{"type":"TextInput","props":{"y":123,"x":170,"width":240,"skin":"ui/baseUI/ttz_talk_bg_3.png","sizeGrid":"12,12,12,12","name":"givePwdInput","height":37,"fontSize":25,"color":"#dbbab9"}},{"type":"Button","props":{"y":177,"x":157,"stateNum":"1","skin":"ui/baseUI/button_blue_big.png","scaleY":0.8,"scaleX":0.8,"name":"sureGiveBtn","labelSize":35,"labelColors":"#f9f6f6","label":"确认赠送"}}]}]}]}]};
		override protected function createChildren():void {
			View.regComponent("managers.baoziwang.TableLightBtn",TableLightBtn);
			View.regComponent("managers.baoziwang.BankPanel",BankPanel);
			View.regComponent("managers.baoziwang.ClockBox",ClockBox);
			View.regComponent("managers.baoziwang.PortraitCell",PortraitCell);
			View.regComponent("managers.baoziwang.MainPanelBottom",MainPanelBottom);
			View.regComponent("managers.baoziwang.ChipCell",ChipCell);
			View.regComponent("managers.baoziwang.LaoPaoWang",LaoPaoWang);
			View.regComponent("managers.baoziwang.MainPanelTop",MainPanelTop);
			View.regComponent("managers.baoziwang.TipBox",TipBox);
			View.regComponent("managers.baoziwang.DiceCupBox",DiceCupBox);
			View.regComponent("customUI.BmpFontLabel",BmpFontLabel);
			View.regComponent("managers.baoziwang.RecordCell",RecordCell);
			View.regComponent("managers.baoziwang.ShangZhuangPanel",ShangZhuangPanel);
			View.regComponent("managers.baoziwang.ApplyCell",ApplyCell);
			View.regComponent("managers.baoziwang.ChatAndUserList",ChatAndUserList);
			View.regComponent("managers.baoziwang.UserInfoBox",UserInfoBox);
			View.regComponent("managers.baoziwang.RankPanel",RankPanel);
			View.regComponent("managers.baoziwang.PersonalRecordCell",PersonalRecordCell);
			View.regComponent("managers.baoziwang.RankCell",RankCell);
			View.regComponent("managers.baoziwang.ConfigPanel",ConfigPanel);
			View.regComponent("managers.baoziwang.RecordPanel",RecordPanel);
			super.createChildren();
			createView(uiView);
		}
	}
}