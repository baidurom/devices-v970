.class Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FMBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioActivity;


# direct methods
.method private constructor <init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/FMRadio/FMRadioActivity;Lcom/mediatek/FMRadio/FMRadioActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 271
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 273
    const-string v18, "FMRadioActivity"

    const-string v19, ">>> FMRadioActivity.onReceive"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 275
    .local v3, action:Ljava/lang/String;
    const-string v18, "FMRadioActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Action: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const-string v18, "com.mediatek.FMRadio.FMRadioService.ACTION_STATE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 277
    const-string v18, "EXTRA_FMRADIO_ISPOWERUP"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 279
    .local v11, isPowerUp:Z
    if-eqz v11, :cond_0

    .line 280
    const-string v18, "FMRadioActivity"

    const-string v19, "FM Radio is power up."

    invoke-static/range {v18 .. v19}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v18, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayStop:Landroid/widget/ImageButton;
    invoke-static/range {v18 .. v18}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v18

    const v19, 0x7f02002f

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static/range {v18 .. v19}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$302(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v18, v0

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshButtonStatus()V
    invoke-static/range {v18 .. v18}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$400(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 285
    .local v7, endTime:J
    const-string v18, "FMRadioActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[Performance test][FMRadio][FMRadio] power up end ["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    .end local v7           #endTime:J
    .end local v11           #isPowerUp:Z
    :goto_0
    const-string v18, "FMRadioActivity"

    const-string v19, "<<< FMRadioActivity.onReceive"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return-void

    .line 287
    .restart local v11       #isPowerUp:Z
    :cond_0
    const-string v18, "FMRadioActivity"

    const-string v19, "FM Radio is power down."

    invoke-static/range {v18 .. v19}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v18, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayStop:Landroid/widget/ImageButton;
    invoke-static/range {v18 .. v18}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v18

    const v19, 0x7f020020

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static/range {v18 .. v19}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$302(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v18, v0

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshButtonStatus()V
    invoke-static/range {v18 .. v18}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$400(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 292
    .restart local v7       #endTime:J
    const-string v18, "FMRadioActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[Performance test][FMRadio][FMRadio] power down end ["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 294
    .end local v7           #endTime:J
    .end local v11           #isPowerUp:Z
    :cond_1
    const-string v18, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_PS_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v18, v0

    const-string v19, "EXTRA_RDS_PS"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mPSString:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$502(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 296
    const-string v18, "FMRadioActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getPS: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mPSString:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$500(Lcom/mediatek/FMRadio/FMRadioActivity;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 300
    .local v12, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v18, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 301
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 302
    .local v6, bundle:Landroid/os/Bundle;
    const-string v18, "MSGID"

    const/16 v19, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 303
    invoke-virtual {v12, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 304
    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 306
    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v12           #msg:Landroid/os/Message;
    :cond_2
    const-string v18, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_RT_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v18, v0

    const-string v19, "EXTRA_RDS_RT"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mLRTextString:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$702(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 308
    const-string v18, "FMRadioActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getLRText: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mLRTextString:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$700(Lcom/mediatek/FMRadio/FMRadioActivity;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 312
    .restart local v12       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v18, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 313
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 314
    .restart local v6       #bundle:Landroid/os/Bundle;
    const-string v18, "MSGID"

    const/16 v19, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 315
    invoke-virtual {v12, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 316
    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 318
    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v12           #msg:Landroid/os/Message;
    :cond_3
    const-string v18, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_AF_ACTIVED"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 319
    const-string v18, "EXTRA_RDS_AF_ACTIVED"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 320
    .local v10, iFreq:I
    const/16 v18, 0x36b

    move/from16 v0, v18

    if-lt v10, v0, :cond_4

    const/16 v18, 0x438

    move/from16 v0, v18

    if-gt v10, v0, :cond_4

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v0, v10}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$802(Lcom/mediatek/FMRadio/FMRadioActivity;I)I

    .line 324
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 325
    .restart local v12       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v18, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 326
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 327
    .restart local v6       #bundle:Landroid/os/Bundle;
    const-string v18, "MSGID"

    const/16 v19, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 328
    invoke-virtual {v12, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 329
    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 332
    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v12           #msg:Landroid/os/Message;
    :cond_4
    const-string v18, "FMRadioActivity"

    const-string v19, "Error: invalid alternative frequency"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 335
    .end local v10           #iFreq:I
    :cond_5
    const-string v18, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_TA_ACTIVED"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 336
    const-string v18, "EXTRA_RDS_TA_ACTIVED"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 337
    .restart local v10       #iFreq:I
    const/16 v18, 0x36b

    move/from16 v0, v18

    if-lt v10, v0, :cond_6

    const/16 v18, 0x438

    move/from16 v0, v18

    if-gt v10, v0, :cond_6

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v0, v10}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$802(Lcom/mediatek/FMRadio/FMRadioActivity;I)I

    .line 341
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 342
    .restart local v12       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v18, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 343
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 344
    .restart local v6       #bundle:Landroid/os/Bundle;
    const-string v18, "MSGID"

    const/16 v19, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 345
    invoke-virtual {v12, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 346
    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 349
    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v12           #msg:Landroid/os/Message;
    :cond_6
    const-string v18, "FMRadioActivity"

    const-string v19, "Error: invalid activeTA frequency"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 352
    .end local v10           #iFreq:I
    :cond_7
    const-string v18, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_TA_DEACTIVED"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 353
    const-string v18, "EXTRA_RDS_TA_DEACTIVED"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 354
    .restart local v10       #iFreq:I
    const/16 v18, 0x36b

    move/from16 v0, v18

    if-lt v10, v0, :cond_8

    const/16 v18, 0x438

    move/from16 v0, v18

    if-gt v10, v0, :cond_8

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v0, v10}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$802(Lcom/mediatek/FMRadio/FMRadioActivity;I)I

    .line 358
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 359
    .restart local v12       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v18, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 360
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 361
    .restart local v6       #bundle:Landroid/os/Bundle;
    const-string v18, "MSGID"

    const/16 v19, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 362
    invoke-virtual {v12, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 363
    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 366
    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v12           #msg:Landroid/os/Message;
    :cond_8
    const-string v18, "FMRadioActivity"

    const-string v19, "Error: invalid activeTA frequency"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 368
    .end local v10           #iFreq:I
    :cond_9
    const-string v18, "com.mediatek.FMRadio.FMRadioService.ACTION_RECORDING_STATE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 369
    const-string v18, "EXTRA_RECORDING_STATE"

    const/16 v19, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 370
    .local v15, recorderState:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordState:I
    invoke-static {v0, v15}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$902(Lcom/mediatek/FMRadio/FMRadioActivity;I)I

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v18, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsActivityBackground:Z
    invoke-static/range {v18 .. v18}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1000(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v18

    if-nez v18, :cond_a

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshRecordingStatus(I)V
    invoke-static {v0, v15}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1100(Lcom/mediatek/FMRadio/FMRadioActivity;I)V

    .line 376
    :goto_1
    packed-switch v15, :pswitch_data_0

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v18, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mRefresher:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1300(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0xb

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 374
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsFreshRecordingStatus:Z
    invoke-static/range {v18 .. v19}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1202(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    goto :goto_1

    .line 378
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v19, v0

    const v20, 0x7f04002d

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/FMRadio/FMRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    .line 381
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v18, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mRefresher:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1300(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0xb

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 390
    .end local v15           #recorderState:I
    :cond_b
    const-string v18, "com.mediatek.FMRadio.FMRadioService.ACTION_RECORDER_ERROR"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 392
    const-string v18, "com.mediatek.FMRadio.FMRadioService.EXTRA_RECORDER_ERROR_STATE"

    const/16 v19, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 393
    .local v9, errorState:I
    const-string v18, "FMRadioActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ACTION_RECORDER_ERROR: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    packed-switch v9, :pswitch_data_1

    :pswitch_2
    goto/16 :goto_0

    .line 396
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v19, v0

    const v20, 0x7f04002e

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/FMRadio/FMRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 399
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v19, v0

    const v20, 0x7f04002f

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/FMRadio/FMRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 402
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v19, v0

    const v20, 0x7f040030

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/FMRadio/FMRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 405
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v19, v0

    const v20, 0x7f040031

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/FMRadio/FMRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 408
    .end local v9           #errorState:I
    :cond_c
    const-string v18, "com.mediatek.FMRadio.FMRadioService.ACTION_RECORDING_MODE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 409
    const-string v18, "com.mediatek.FMRadio.FMRadioService.EXTRA_RECORDING_MODE"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    .line 410
    .local v16, recordingMode:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v18, v0

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshButtonStatus()V
    invoke-static/range {v18 .. v18}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$400(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 411
    if-eqz v16, :cond_d

    .line 412
    const-string v18, "FMRadioActivity"

    const-string v19, "A2DP disconnected"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 414
    :cond_d
    const-string v18, "FMRadioActivity"

    const-string v19, "A2DP connected"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z
    invoke-static/range {v18 .. v19}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1402(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 418
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v18, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static/range {v18 .. v18}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1500(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/IFMRadioService;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lcom/mediatek/FMRadio/IFMRadioService;->setRecordingMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/FMRadio/FMRadioActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    .line 432
    .local v4, actionBar:Landroid/app/ActionBar;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v18, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z
    invoke-static/range {v18 .. v18}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1400(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v18, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z
    invoke-static/range {v18 .. v18}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1400(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v18, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z
    invoke-static/range {v18 .. v18}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1400(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v18

    if-eqz v18, :cond_e

    const v18, 0x7f04002b

    :goto_3
    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v18, v0

    const v19, 0x7f06003e

    invoke-virtual/range {v18 .. v19}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 436
    .local v14, rec_bar:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v18, v0

    const v19, 0x7f060038

    invoke-virtual/range {v18 .. v19}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 437
    .local v5, bottom_bar:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v18, v0

    const v19, 0x7f060042

    invoke-virtual/range {v18 .. v19}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/RelativeLayout;

    .line 439
    .local v17, rl_recinfo:Landroid/widget/RelativeLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v18, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z
    invoke-static/range {v18 .. v18}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1400(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v18

    if-eqz v18, :cond_f

    const/16 v18, 0x8

    :goto_4
    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v18, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z
    invoke-static/range {v18 .. v18}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1400(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v18

    if-eqz v18, :cond_10

    const/16 v18, 0x0

    :goto_5
    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v18, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z
    invoke-static/range {v18 .. v18}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1400(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v18

    if-eqz v18, :cond_11

    const/16 v18, 0x0

    :goto_6
    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v18, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;
    invoke-static/range {v18 .. v18}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1600(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v18, v0

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z
    invoke-static/range {v18 .. v18}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1400(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v18

    if-eqz v18, :cond_12

    const/16 v18, 0x8

    :goto_7
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/FMRadio/FMRadioActivity;->invalidateOptionsMenu()V

    goto/16 :goto_0

    .line 419
    .end local v4           #actionBar:Landroid/app/ActionBar;
    .end local v5           #bottom_bar:Landroid/widget/LinearLayout;
    .end local v14           #rec_bar:Landroid/widget/LinearLayout;
    .end local v17           #rl_recinfo:Landroid/widget/RelativeLayout;
    :catch_0
    move-exception v13

    .line 420
    .local v13, re:Landroid/os/RemoteException;
    const-string v18, "FMRadioActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "failed to setRecordingMode: + "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 434
    .end local v13           #re:Landroid/os/RemoteException;
    .restart local v4       #actionBar:Landroid/app/ActionBar;
    :cond_e
    const/high16 v18, 0x7f04

    goto/16 :goto_3

    .line 439
    .restart local v5       #bottom_bar:Landroid/widget/LinearLayout;
    .restart local v14       #rec_bar:Landroid/widget/LinearLayout;
    .restart local v17       #rl_recinfo:Landroid/widget/RelativeLayout;
    :cond_f
    const/16 v18, 0x0

    goto :goto_4

    .line 440
    :cond_10
    const/16 v18, 0x8

    goto :goto_5

    .line 441
    :cond_11
    const/16 v18, 0x8

    goto :goto_6

    .line 442
    :cond_12
    const/16 v18, 0x0

    goto :goto_7

    .line 446
    .end local v4           #actionBar:Landroid/app/ActionBar;
    .end local v5           #bottom_bar:Landroid/widget/LinearLayout;
    .end local v14           #rec_bar:Landroid/widget/LinearLayout;
    .end local v16           #recordingMode:Z
    .end local v17           #rl_recinfo:Landroid/widget/RelativeLayout;
    :cond_13
    const-string v18, "FMRadioActivity"

    const-string v19, "Error: undefined action."

    invoke-static/range {v18 .. v19}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 376
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 394
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
