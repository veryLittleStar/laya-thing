package managers.baoziwang
{
	import laya.events.Event;
	import laya.events.Keyboard;
	import laya.maths.Point;
	import laya.media.SoundManager;
	import laya.net.Loader;
	import laya.ui.Image;
	import laya.ui.Label;
	import laya.utils.Browser;
	import laya.utils.Handler;
	import laya.utils.Pool;
	import laya.utils.Tween;
	
	import managers.DataProxy;
	import managers.ManagerBase;
	
	import net.NetDefine;
	import net.NetProxy;
	
	import resource.ResLoader;
	import resource.ResType;
	
	import system.Loading;
	
	import ui.baoziwangUI;
	
	public class BaoziwangManager extends ManagerBase
	{
		private var _ui:baoziwangUI;
		public function get ui():baoziwangUI
		{
			return _ui;
		}
		/////////////////////////////////////////
		private var recordArr:Array = [];
		private var tempChipArr:Array = [];
		private var maxScore:int = 0;
		private var curResult:int = 0;
		private var allJetion0:int = 0;
		private var allJetion1:int = 0;
		private var allJetion2:int = 0;
		private var myJetion0:int = 0;
		private var myJetion1:int = 0;
		private var myJetion2:int = 0;
		/////////////////////////////////////////
		public function BaoziwangManager(uiClass:Class=null)
		{
			super(baoziwangUI);
		}
		
		override protected function getResList():Array
		{
			return [
				{url: "res/atlas/animation/ybao_human.json", type: Loader.ATLAS},
				{url: "res/atlas/animation/ybao_human_big.json", type: Loader.ATLAS},
				{url: "res/atlas/ui/baseUI.json", type: Loader.ATLAS}
			];
		}
		
		override protected function initPanel():void
		{
			_ui = _view as baoziwangUI;
			_ui.tipBox.visible = false;
			_ui.mainPanelTop.init();
			_ui.mainPanelBottom.init();
			_ui.clockBox.init();
			_ui.diceCupBox.init();
			_ui.tipBox.init();
			_ui.laoPaoWang.init();
			_ui.chatAndUserList.init();
			_ui.recordPanel.init();
			connectLoginServer();
			Laya.stage.on(Event.KEY_UP,this,key_up);
			_ui.recordBtn.on(Event.MOUSE_UP,this,recordBtnMouseUp);
			_ui.xLightBtn.on(Event.CLICK,this,lightBtnClick);
			_ui.bLightBtn.on(Event.CLICK,this,lightBtnClick);
			_ui.dLightBtn.on(Event.CLICK,this,lightBtnClick);
			SoundManager.playMusic("music/ybao_bg.mp3");
		}
		
		private function recordBtnMouseUp(event:Event = null):void
		{
			event.stopPropagation();
			if(_ui.recordPanel.visible)
			{
				_ui.recordPanel.closeMe();
			}
			else
			{
				_ui.recordPanel.openMe(recordArr);
			}
		}
		
		private function connectLoginServer():void
		{
			Loading.getInstance().openMe();
			var data:Object = {};
			data.host = Browser.window.initConfig.loginHost;
			data.port = Browser.window.initConfig.loginPort;
			NetProxy.getInstance().execute(NetDefine.CONNECT_SOCKET,data);
		}
		
		private function lightBtnClick(event:Event):void
		{
			switch(event.currentTarget)
			{
				case _ui.xLightBtn:
					placeJetionReq(BaoziwangDefine.RESULT_SMALL);
					break;
				case _ui.bLightBtn:
					placeJetionReq(BaoziwangDefine.RESULT_BAOZI);
					break;
				case _ui.dLightBtn:
					placeJetionReq(BaoziwangDefine.RESULT_BIG);
					break;
			}
		}
		
		private function placeJetionReq(area:int):void
		{
			var body:Object = {};
			body.cbJettonArea 	= area;
			if(_ui.mainPanelBottom.selectChipScore)
			{
				body.lJettonScore	= _ui.mainPanelBottom.selectChipScore;
			}
			else
			{
				body.lJettonScore	= 100;
			}
			
			NetProxy.getInstance().sendToServer(BaoziwangDefine.MSG_BZW_PLACE_JETION_REQ,body);
		}
		
		private function key_up(event:Event):void
		{
			switch(event.keyCode)
			{
				case Keyboard.A:
					break;
			}
		}
		
		public function gameFreeRec(obj:Object):void
		{
			//obj.cbTimeLeave
			//obj.nListUserCount
			
			var leftTime:int = obj.cbTimeLeave*1000;
			_ui.clockBox.countDown(2,leftTime - 2500);
			Laya.timer.once(leftTime - 2500,this,yaoTouzi);
		}
		
		private function yaoTouzi():void
		{
			_ui.laoPaoWang.changeMotion("yao",false);
			SoundManager.playSound("music/roll.ogg");
		}
		
		public function gameStartRec(obj:Object):void
		{
			//obj.wBankerUser
			//obj.lBankerScore
			//obj.lUserMaxScore
			//obj.cbTimeLeave
			//obj.nChipRobotCount
			
			var leftTime:int = obj.cbTimeLeave*1000;
			_ui.tipBox.show(1);
			Laya.timer.once(2500,this,xiaZhu,[leftTime-2500]);
			maxScore = obj.lUserMaxScore;
			allJetion0 = 0;
			allJetion1 = 0;
			allJetion2 = 0;
			myJetion0 = 0;
			myJetion1 = 0;
			myJetion2 = 0;
			SoundManager.playSound("music/xzTip.ogg");
		}
		
		private function xiaZhu(leftTime:int):void
		{
			_ui.mainPanelBottom.canBetting = true;
			_ui.clockBox.countDown(1,leftTime);
			_ui.xLightBtn.shine();
			_ui.bLightBtn.shine();
			_ui.dLightBtn.shine();
		}
		
		public function gameEndRec(obj:Object):void
		{
			//obj.cbTimeLeave
			//obj.arcbDice
			//obj.lBankerScore					//庄家成绩
			//obj.lBankerTotallScore			//庄家成绩
			//obj.nBankerTime					//做庄次数
			//obj.lUserScore					//玩家成绩
			//obj.lUserReturnScore				//返回积分
			//obj.lRevenue						//游戏税收
			var leftTime:int = obj.cbTimeLeave*1000;
			_ui.tipBox.show(2);
			_ui.mainPanelBottom.canBetting = false;
			Laya.timer.once(2500,this,kaiZhong,[obj.arcbDice,leftTime-2500]);
			curResult = pushRecord(obj.arcbDice);
			SoundManager.playSound("music/kpTip.ogg");
		}
		
		/**开盅*/
		public function kaiZhong(arr:Array,leftTime:int):void
		{
//			_ui.clockBox.countDown(2,leftTime);
			_ui.diceCupBox.openDiceCup(arr);
			_ui.laoPaoWang.changeMotion("open",false);
			Laya.timer.once(8000,this,shouChouMa);
		}
		
		private function shouChouMa():void
		{
			while(tempChipArr.length)
			{
				var chip:LittleChip = tempChipArr.pop();
				var destPoint:Point = new Point();
				var startPoint:Point = new Point();
				startPoint= chip.localToGlobal(startPoint);
				chip.x = startPoint.x;
				chip.y = startPoint.y;
				Laya.stage.addChild(chip);
				if(curResult == chip.info.cbJettonArea)
				{
					if(chip.info.wChairID == DataProxy.chairID)
					{
						destPoint.x = 35;
						destPoint.y = 35;
						destPoint = _ui.mainPanelBottom.localToGlobal(destPoint);
					}
					else
					{
						destPoint.y = Laya.stage.height * 0.66;
						destPoint.x = -chip.width;
					}
				}
				else
				{
					destPoint.x = 410;
					destPoint.y = 30;
					destPoint = _ui.mainPanelTop.localToGlobal(destPoint);
				}
				Tween.to(chip,{x:destPoint.x,y:destPoint.y},300,null,Handler.create(this,chipDisappear,[chip]),0,true);
			}
			_ui.myJetion0.visible = false;
			_ui.myJetion1.visible = false;
			_ui.myJetion2.visible = false;
			_ui.allJetion0.visible = false;
			_ui.allJetion1.visible = false;
			_ui.allJetion2.visible = false;
			SoundManager.playSound("music/ttz_chip_player.ogg");
		}
		
		private function chipDisappear(chip:Image):void
		{
			chip.removeSelf();
			Pool.recover("littleChip",chip);
		}
		
		public function gameSceneRec(obj:Object):void
		{
			//obj.cbGameStatus == 0
			//obj.cbTimeLeave
			//obj.lUserMaxScore
			//obj.wBankerUser
			//obj.cbBankerTime
			//obj.lBankerWinScore
			//obj.lBankerScore
			//obj.bEnableSysBanker
			//obj.lApplyBankerCondition
			//obj.lAreaLimitScore
			//obj.szGameRoomName
			//-----------------------------
			//obj.cbGameStatus	== 100|101
			//obj.cbTimeLeave
			//obj.arlAreaInAllScore
			//obj.arlUserInAllScore
			//obj.lUserMaxScore
			//obj.lApplyBankerCondition
			//obj.lAreaLimitScore
			//obj.arcbDice
			//obj.wBankerUser
			//obj.cbBankerTime
			//obj.lBankerWinScore
			//obj.lBankerScore
			//obj.bEnableSysBanker
			//obj.lEndBankerScore
			//obj.lEndUserScore
			//obj.lEndUserReturnScore
			//obj.lEndRevenue
			//obj.szGameRoomName
			trace(obj.cbGameStatus,"gameSceneRec");
			if(obj.bEnableSysBanker)
			{
				_ui.bankerNameLabel.text = "老炮王";
				_ui.bankerScoreLabel.text = "100亿";
			}
			else
			{
				_ui.bankerNameLabel.text = "";
				_ui.bankerScoreLabel.text = BaoziwangDefine.getScoreStr(obj.lBankerScore);
			}
			
			maxScore = obj.lUserMaxScore;
			
			var leftTime:int = obj.cbTimeLeave*1000;
			if(obj.cbGameStatus == 0)
			{
				_ui.clockBox.countDown(2,leftTime);
				_ui.mainPanelBottom.canBetting = false;
				_ui.myJetion0.visible = _ui.myJetion1.visible = _ui.myJetion2.visible = false;
				_ui.allJetion0.visible = _ui.allJetion1.visible = _ui.allJetion2.visible = false;
			}
			else
			{
				if(obj.cbGameStatus == 100)
				{
					_ui.clockBox.countDown(1,leftTime);
					_ui.mainPanelBottom.canBetting = true;
				}
				if(obj.cbGameStatus == 101)
				{
					_ui.clockBox.countDown(2,leftTime);
					_ui.mainPanelBottom.canBetting = false;
				}
				//obj.arlAreaInAllScore
				//obj.arlUserInAllScore
				var i:int;
				for(i = 0; i < obj.arlAreaInAllScore.length; i++)
				{
					var mjLabel:Label = _ui["myJetion"+i] as Label;
					if(obj.arlUserInAllScore[i])
					{
						mjLabel.visible = true;
						mjLabel.text = BaoziwangDefine.getScoreStr1(obj.arlUserInAllScore[i]);
					}
					else
					{
						mjLabel.visible = false;
					}
				}
				
				for(i = 0; i < obj.arlAreaInAllScore.length; i++)
				{
					var ajLabel:Label = _ui["allJetion"+i] as Label;
					if(obj.arlAreaInAllScore[i])
					{
						ajLabel.visible = true;
						ajLabel.text = BaoziwangDefine.getScoreStr1(obj.arlAreaInAllScore[i]);
					}
					else
					{
						ajLabel.visible = false;
					}
				}
			}
		}
		
		public function gameRecordRec(obj:Object):void
		{
			//obj.arRecord
			//	obj.cbResult
			//	obj.cbDice0
			//	obj.cbDice1
			//	obj.cbDice2
			
			recordArr.splice(0);
			var arr:Array = obj.arRecord;
			var i:int = 0;
			for(i = arr.length - 1;i >= 0; i--)
			{
				recordArr.push(arr[i]);
			}
			_ui.mainPanelTop.recordInit(recordArr);
		}
		
		private function pushRecord(arr:Array):int
		{
			if(recordArr.length >= 50)
			{
				recordArr.pop();
			}
			var obj:Object = {};
			obj.cbDice0 = arr[0];
			obj.cbDice1 = arr[1];
			obj.cbDice2 = arr[2];
			if(obj.cbDice0 == obj.cbDice1 && obj.cbDice1 == obj.cbDice2)
			{
				obj.cbResult = BaoziwangDefine.RESULT_BAOZI;
			}
			else
			{
				if((obj.cbDice0 + obj.cbDice1 + obj.cbDice2) <= 10)
				{
					obj.cbResult = BaoziwangDefine.RESULT_SMALL;
				}
				else
				{
					obj.cbResult = BaoziwangDefine.RESULT_BIG;
				}
			}
			recordArr.unshift(obj);
			_ui.mainPanelTop.pushRecord(obj.cbResult);
			return obj.cbResult;
		}
		
		public function updateUserInfo(userID:int):void
		{
			if(userID == DataProxy.userID)
			{
				_ui.myNameLabel.text = DataProxy.nickName;
				_ui.myMoneyLabel.text = BaoziwangDefine.getScoreStr(DataProxy.userScore);
				if(DataProxy.userScore == 0)
				{
					trace(11111111111111111);
				}
				
			}
			_ui.chatAndUserList.updateUserInfo(userID);
		}
		
		public function placeJetionRec(obj:Object):void
		{
			//obj["wChairID"] 			//用户位置
			//obj["cbJettonArea"]		//筹码区域
			//obj["lJettonScore"]		//加注数目
			//obj["cbAndroid"]			//机器人
			var chipIndex:int = BaoziwangDefine.getChipIndex(obj.lJettonScore);
			if(chipIndex)
			{
				var chipPoint:Point;
				var destPoint:Point;
				var chip:LittleChip = Pool.getItemByClass("littleChip",LittleChip);
				chip.updateInfo(obj);
				tempChipArr.push(chip);
				destPoint = getRandomPointByArea(obj.cbJettonArea);
				
				if(obj.wChairID == DataProxy.chairID)
				{
					chipPoint = _ui.mainPanelBottom.getChipPosByScore(obj.lJettonScore);
					if(chipPoint)
					{
						chip.x = chipPoint.x;
						chip.y = chipPoint.y;
						Laya.stage.addChild(chip);
						Tween.to(chip,{x:destPoint.x,y:destPoint.y},300,null,Handler.create(this,chipFlyEnd,[chip]));
					}
				}
				else
				{
					chipPoint = new Point();
					chipPoint.y = Laya.stage.height * 0.6;
					chipPoint.x = -chip.width;
					chip.x = chipPoint.x;
					chip.y = chipPoint.y;
					Laya.stage.addChild(chip);
					Tween.to(chip,{x:destPoint.x,y:destPoint.y},300,null,Handler.create(this,chipFlyEnd,[chip]));
				}
			}
			
			if(obj.wChairID == DataProxy.chairID)
			{
				this["myJetion"+obj.cbJettonArea] += obj.lJettonScore;
				_ui["myJetion"+obj.cbJettonArea].text = BaoziwangDefine.getScoreStr1(this["myJetion"+obj.cbJettonArea]);
				_ui["myJetion"+obj.cbJettonArea].visible = true;
				DataProxy.userScore -= obj.lJettonScore;
				DataProxy.myUserInfo.lScore -= obj.lJettonScore;
				updateUserInfo(DataProxy.userID);
			}
			this["allJetion"+obj.cbJettonArea] += obj.lJettonScore;
			_ui["allJetion"+obj.cbJettonArea].text = BaoziwangDefine.getScoreStr1(this["allJetion"+obj.cbJettonArea]);
			_ui["allJetion"+obj.cbJettonArea].visible = true;
			
			SoundManager.playSound("music/ttz_chip_player.ogg");
		}
		
		private function chipFlyEnd(chip:LittleChip):void
		{
			var point:Point = new Point(chip.x,chip.y);
			point = _ui.table.globalToLocal(point);
			_ui.table.addChild(chip);
			chip.x = point.x;
			chip.y = point.y;
		}
		
		private function getRandomPointByArea(area:int):Point
		{
			var target:Image = _ui.xLightBtn;
			switch(area)
			{
				case BaoziwangDefine.RESULT_SMALL:
					target = _ui.xLightBtn;
					break;
				case BaoziwangDefine.RESULT_BAOZI:
					target = _ui.bLightBtn;
					break;
				case BaoziwangDefine.RESULT_BIG:
					target = _ui.dLightBtn;
					break;
			}
			var point:Point = new Point();
			point.x = target.x + target.width/2 * Math.random() + target.width/4;
			point.y = target.y + target.height/2 * Math.random() + target.height/4;
			return point;
		}
		
		public function placeJetionFailRec(obj:Object):void
		{
			//obj["wPlaceUser"] 			//下注玩家
			//obj["lJettonArea"]			//下注区域
			//obj["lPlaceScore"] 			//当前下注
		}
		
	}
}