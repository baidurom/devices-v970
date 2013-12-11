.class Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FMServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioService;


# direct methods
.method private constructor <init>(Lcom/mediatek/FMRadio/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/FMRadio/FMRadioService;Lcom/mediatek/FMRadio/FMRadioService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;-><init>(Lcom/mediatek/FMRadio/FMRadioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 195
    const-string v13, "FMRadioService"

    const-string v14, ">>> FMRadioService.onReceive"

    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, action:Ljava/lang/String;
    const-string v13, "command"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, command:Ljava/lang/String;
    const-string v13, "FMRadioService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Action/Command: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " / "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-string v13, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_POWERDOWN"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "com.mediatek.app.mtv.POWER_ON"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "com.android.music.musicservicecommand"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const-string v13, "pause"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 203
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v14, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsResumeAfterCall:Z
    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioService;->access$002(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 205
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v13, v13, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v13, :cond_1

    .line 206
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v13, v13, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v13}, Lcom/mediatek/FMRadio/FMRecorder;->getState()I

    move-result v7

    .line 207
    .local v7, fmState:I
    const/4 v13, 0x7

    if-ne v7, v13, :cond_4

    .line 208
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v13, v13, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v13}, Lcom/mediatek/FMRadio/FMRecorder;->stopPlayback()V

    .line 214
    .end local v7           #fmState:I
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsSearching:Z
    invoke-static {v13}, Lcom/mediatek/FMRadio/FMRadioService;->access$100(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 216
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v14, 0x1

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsStopScanCalled:Z
    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioService;->access$202(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 217
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;
    invoke-static {v13}, Lcom/mediatek/FMRadio/FMRadioService;->access$300(Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/IFMRadioService$Stub;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->stopScan()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z
    invoke-static {v13}, Lcom/mediatek/FMRadio/FMRadioService;->access$400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 224
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;
    invoke-static {v13}, Lcom/mediatek/FMRadio/FMRadioService;->access$300(Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/IFMRadioService$Stub;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->powerDown()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 438
    :cond_3
    :goto_2
    const-string v13, "FMRadioService"

    const-string v14, "<<< FMRadioService.onReceive"

    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :goto_3
    return-void

    .line 209
    .restart local v7       #fmState:I
    :cond_4
    const/4 v13, 0x6

    if-ne v7, v13, :cond_1

    .line 210
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v13, v13, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v13}, Lcom/mediatek/FMRadio/FMRecorder;->stopRecording()V

    goto :goto_0

    .line 218
    .end local v7           #fmState:I
    :catch_0
    move-exception v4

    .line 219
    .local v4, e:Ljava/lang/Exception;
    const-string v13, "FMRadioService"

    const-string v14, "Exception: Cannot call binder function."

    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 225
    .end local v4           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 226
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v13, "FMRadioService"

    const-string v14, "Exception: Cannot call binder function."

    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 229
    .end local v4           #e:Ljava/lang/Exception;
    :cond_5
    const-string v13, "FMRadioService"

    const-string v14, "FM is not playing, so do nothing."

    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 231
    :cond_6
    const-string v13, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    const-string v13, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 234
    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsEarphoneUsed:Z
    invoke-static {v13}, Lcom/mediatek/FMRadio/FMRadioService;->access$500(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 235
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;
    invoke-static {v13}, Lcom/mediatek/FMRadio/FMRadioService;->access$300(Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/IFMRadioService$Stub;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->useEarphone(Z)V

    .line 237
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z
    invoke-static {v13}, Lcom/mediatek/FMRadio/FMRadioService;->access$400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 238
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;
    invoke-static {v13}, Lcom/mediatek/FMRadio/FMRadioService;->access$300(Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/IFMRadioService$Stub;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->powerDown()Z

    .line 240
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;
    invoke-static {v13}, Lcom/mediatek/FMRadio/FMRadioService;->access$300(Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/IFMRadioService$Stub;

    move-result-object v13

    invoke-virtual {v13}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->closeDevice()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 245
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v13, v13, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v13, :cond_3

    .line 246
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v13, v13, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v13}, Lcom/mediatek/FMRadio/FMRecorder;->getState()I

    move-result v7

    .line 247
    .restart local v7       #fmState:I
    const/4 v13, 0x7

    if-ne v7, v13, :cond_a

    .line 248
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v13, v13, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v13}, Lcom/mediatek/FMRadio/FMRecorder;->stopPlayback()V

    goto/16 :goto_2

    .line 241
    .end local v7           #fmState:I
    :catch_2
    move-exception v4

    .line 242
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v13, "FMRadioService"

    const-string v14, "Exception: Cannot call binder function."

    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 249
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v7       #fmState:I
    :cond_a
    const/4 v13, 0x6

    if-ne v7, v13, :cond_3

    .line 250
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v13, v13, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v13}, Lcom/mediatek/FMRadio/FMRecorder;->stopRecording()V

    goto/16 :goto_2

    .line 253
    .end local v7           #fmState:I
    :cond_b
    const-string v13, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 254
    new-instance v13, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver$1;-><init>(Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;)V

    invoke-virtual {v13}, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver$1;->start()V

    goto/16 :goto_2

    .line 265
    :cond_c
    const-string v13, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 266
    new-instance v13, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver$2;-><init>(Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;)V

    invoke-virtual {v13}, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver$2;->start()V

    goto/16 :goto_2

    .line 277
    :cond_d
    const-string v13, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 278
    const-string v13, "FMRadioService"

    const-string v14, "ACTION_HEADSET_PLUG"

    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z
    invoke-static {v13}, Lcom/mediatek/FMRadio/FMRadioService;->access$400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v13

    if-nez v13, :cond_e

    .line 281
    const-string v13, "FMRadioService"

    const-string v14, "ACTION_HEADSET_PLUG: FM not powered up yet!!"

    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 284
    :cond_e
    const-string v13, "state"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 285
    .local v12, state:I
    const/4 v10, -0x1

    .line 286
    .local v10, ret:I
    if-nez v12, :cond_f

    .line 289
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;
    invoke-static {v13}, Lcom/mediatek/FMRadio/FMRadioService;->access$300(Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/IFMRadioService$Stub;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->switchAntenna(I)I

    move-result v10

    .line 290
    new-instance v8, Landroid/content/Intent;

    const-string v13, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_POWERDOWN"

    invoke-direct {v8, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 292
    .local v8, i:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v13, v8}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 296
    .end local v8           #i:Landroid/content/Intent;
    :goto_5
    if-eqz v10, :cond_3

    .line 297
    const-string v13, "FMRadioService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ACTION_HEADSET_PLUG: Cannot switch to short antenna: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 293
    :catch_3
    move-exception v5

    .line 294
    .local v5, ex:Ljava/lang/Exception;
    const-string v13, "FMRadioService"

    const-string v14, "Exception: switchAntenna(1)"

    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 299
    .end local v5           #ex:Ljava/lang/Exception;
    :cond_f
    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    .line 302
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;
    invoke-static {v13}, Lcom/mediatek/FMRadio/FMRadioService;->access$300(Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/IFMRadioService$Stub;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->switchAntenna(I)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v10

    .line 306
    :goto_6
    if-eqz v10, :cond_3

    .line 307
    const-string v13, "FMRadioService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ACTION_HEADSET_PLUG: Cannot switch to long antenna: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 303
    :catch_4
    move-exception v5

    .line 304
    .restart local v5       #ex:Ljava/lang/Exception;
    const-string v13, "FMRadioService"

    const-string v14, "Exception: switchAntenna(0)"

    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 310
    .end local v5           #ex:Ljava/lang/Exception;
    .end local v10           #ret:I
    .end local v12           #state:I
    :cond_10
    const-string v13, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 313
    const-string v13, "android.bluetooth.profile.extra.STATE"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 314
    .local v11, sinkState:I
    const-string v13, "FMRadioService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ACTION_SINK_STATE_CHANGED: sinkState="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", ispowerup="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z
    invoke-static {v15}, Lcom/mediatek/FMRadio/FMRadioService;->access$400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z
    invoke-static {v13}, Lcom/mediatek/FMRadio/FMRadioService;->access$400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 317
    sparse-switch v11, :sswitch_data_0

    goto/16 :goto_2

    .line 335
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v14, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsConnectBluetooth:Z
    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioService;->access$602(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 336
    const/4 v13, 0x0

    invoke-static {v13}, Lcom/mediatek/FMRadio/FMRadioNative;->setFMViaBTController(Z)Z

    move-result v13

    if-nez v13, :cond_12

    .line 337
    const-string v13, "FMRadioService"

    const-string v14, "failed to set FM over BT via Host!!"

    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 320
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v14, 0x1

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsConnectBluetooth:Z
    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioService;->access$602(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 321
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mUsingFMViaBTController:Z
    invoke-static {v13}, Lcom/mediatek/FMRadio/FMRadioService;->access$700(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v13

    if-nez v13, :cond_11

    .line 322
    const-string v13, "FMRadioService"

    const-string v14, "ACTION_SINK_STATE_CHANGED: disable FM audio first to avoid I2S noise!!"

    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v14, 0x0

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V
    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioService;->access$800(Lcom/mediatek/FMRadio/FMRadioService;Z)V

    .line 325
    new-instance v8, Landroid/content/Intent;

    const-string v13, "com.mediatek.FMRadio.FMRadioService.ACTION_TOA2DP_FM_POWERUP"

    invoke-direct {v8, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 326
    .restart local v8       #i:Landroid/content/Intent;
    const-string v13, "FMRadioService"

    const-string v14, "com.mediatek.FMRadio.FMRadioService.ACTION_TOA2DP_FM_POWERUP sent to A2dp service!!"

    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v13, v8}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 329
    .end local v8           #i:Landroid/content/Intent;
    :cond_11
    const-string v13, "FMRadioService"

    const-string v14, "SINK_STATE_CHANGED: FM over BT already enabled, ignore this message"

    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 339
    :cond_12
    const-string v13, "FMRadioService"

    const-string v14, "setFMViaBTController(false) succeeded!!"

    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v14, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mUsingFMViaBTController:Z
    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioService;->access$702(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 341
    new-instance v9, Landroid/content/Intent;

    const-string v13, "com.mediatek.FMRadio.FMRadioService.ACTION_RECORDING_MODE_CHANGED"

    invoke-direct {v9, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    .local v9, intent_recorder:Landroid/content/Intent;
    const-string v13, "com.mediatek.FMRadio.FMRadioService.EXTRA_RECORDING_MODE"

    const/4 v14, 0x1

    invoke-virtual {v9, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 343
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v13, v9}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v14, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V
    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioService;->access$800(Lcom/mediatek/FMRadio/FMRadioService;Z)V

    goto/16 :goto_2

    .line 351
    .end local v9           #intent_recorder:Landroid/content/Intent;
    .end local v11           #sinkState:I
    :cond_13
    const-string v13, "android.server.a2dp.action.FM_OVER_BT_CONTROLLER"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 354
    const-string v13, "android.bluetooth.a2dp.extra.RESULT_STATE"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 356
    .local v6, fmOverBTState:I
    const-string v13, "FMRadioService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handling ACTION_FM_OVER_BT_CONTROLLER: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    packed-switch v6, :pswitch_data_0

    goto/16 :goto_2

    .line 359
    :pswitch_0
    const/4 v13, 0x1

    invoke-static {v13}, Lcom/mediatek/FMRadio/FMRadioNative;->setFMViaBTController(Z)Z

    move-result v13

    if-nez v13, :cond_14

    .line 360
    const-string v13, "FMRadioService"

    const-string v14, "failed to set FM over BT via Controller!!"

    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 362
    :cond_14
    const-string v13, "FMRadioService"

    const-string v14, "setFMViaBTController(true) succeeded!!"

    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v14, 0x1

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mUsingFMViaBTController:Z
    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioService;->access$702(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 372
    new-instance v9, Landroid/content/Intent;

    const-string v13, "com.mediatek.FMRadio.FMRadioService.ACTION_RECORDING_MODE_CHANGED"

    invoke-direct {v9, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 373
    .restart local v9       #intent_recorder:Landroid/content/Intent;
    const-string v13, "com.mediatek.FMRadio.FMRadioService.EXTRA_RECORDING_MODE"

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 374
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v13, v9}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v14, 0x0

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V
    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioService;->access$800(Lcom/mediatek/FMRadio/FMRadioService;Z)V

    .line 379
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v13}, Lcom/mediatek/FMRadio/FMRadioService;->access$1000(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mFMAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v14}, Lcom/mediatek/FMRadio/FMRadioService;->access$900(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v14

    const/16 v15, 0xa

    const/16 v16, 0x1

    invoke-virtual/range {v13 .. v16}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v2

    .line 380
    .local v2, audioFocus:I
    const-string v13, "FMRadioService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FM request audioFocus ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 385
    .end local v2           #audioFocus:I
    .end local v9           #intent_recorder:Landroid/content/Intent;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v13}, Lcom/mediatek/FMRadio/FMRadioService;->access$1000(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mFMAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v14}, Lcom/mediatek/FMRadio/FMRadioService;->access$900(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v2

    .line 386
    .restart local v2       #audioFocus:I
    const-string v13, "FMRadioService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FM abandon audioFocus ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v14, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V
    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioService;->access$800(Lcom/mediatek/FMRadio/FMRadioService;Z)V

    goto/16 :goto_2

    .line 390
    .end local v2           #audioFocus:I
    :pswitch_2
    const-string v13, "FMRadioService"

    const-string v14, "ACTION_FM_OVER_BT_CONTROLLER: FM over BT already on-going!"

    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 393
    .end local v6           #fmOverBTState:I
    :cond_15
    const-string v13, "android.server.a2dp.action.FM_OVER_BT_HOST"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    .line 396
    const-string v13, "FMRadioService"

    const-string v14, "ACTION_FM_OVER_BT_HOST"

    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v13, 0x0

    invoke-static {v13}, Lcom/mediatek/FMRadio/FMRadioNative;->setFMViaBTController(Z)Z

    move-result v13

    if-nez v13, :cond_16

    .line 398
    const-string v13, "FMRadioService"

    const-string v14, "failed to set FM over BT via Host!!"

    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 400
    :cond_16
    const-string v13, "FMRadioService"

    const-string v14, "setFMViaBTController(false) succeeded!!"

    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v14, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mUsingFMViaBTController:Z
    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioService;->access$702(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 402
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v14, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V
    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioService;->access$800(Lcom/mediatek/FMRadio/FMRadioService;Z)V

    goto/16 :goto_2

    .line 405
    :cond_17
    const-string v13, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 406
    const-string v13, "FMRadioService"

    const-string v14, "ACTION_AIRPLANE_MODE_CHANGED"

    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z
    invoke-static {v13}, Lcom/mediatek/FMRadio/FMRadioService;->access$400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v13

    if-nez v13, :cond_18

    .line 408
    const-string v13, "FMRadioService"

    const-string v14, "ACTION_AIRPLANE_MODE_CHANGED: FM not powered up yet!!"

    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 411
    :cond_18
    const/4 v10, -0x1

    .line 412
    .restart local v10       #ret:I
    const-string v13, "state"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_19

    .line 414
    :try_start_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;
    invoke-static {v13}, Lcom/mediatek/FMRadio/FMRadioService;->access$300(Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/IFMRadioService$Stub;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->switchAntenna(I)I

    move-result v10

    .line 416
    new-instance v8, Landroid/content/Intent;

    const-string v13, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_POWERDOWN"

    invoke-direct {v8, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 417
    .restart local v8       #i:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v13, v8}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 421
    .end local v8           #i:Landroid/content/Intent;
    :goto_7
    if-eqz v10, :cond_3

    .line 422
    const-string v13, "FMRadioService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ACTION_AIRPLANE_MODE_CHANGED: Cannot switch to short antenna: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 418
    :catch_5
    move-exception v5

    .line 419
    .restart local v5       #ex:Ljava/lang/Exception;
    const-string v13, "FMRadioService"

    const-string v14, "Exception: switchAntenna(1)"

    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 426
    .end local v5           #ex:Ljava/lang/Exception;
    :cond_19
    :try_start_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;
    invoke-static {v13}, Lcom/mediatek/FMRadio/FMRadioService;->access$300(Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/IFMRadioService$Stub;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->switchAntenna(I)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move-result v10

    .line 430
    :goto_8
    if-eqz v10, :cond_3

    .line 431
    const-string v13, "FMRadioService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ACTION_AIRPLANE_MODE_CHANGED: Cannot switch to long antenna: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 427
    :catch_6
    move-exception v5

    .line 428
    .restart local v5       #ex:Ljava/lang/Exception;
    const-string v13, "FMRadioService"

    const-string v14, "Exception: switchAntenna(0)"

    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 436
    .end local v5           #ex:Ljava/lang/Exception;
    .end local v10           #ret:I
    :cond_1a
    const-string v13, "FMRadioService"

    const-string v14, "Error: undefined action."

    invoke-static {v13, v14}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 317
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch

    .line 357
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
