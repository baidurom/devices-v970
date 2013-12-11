.class Lcom/mediatek/FMRadio/FMRadioEMActivity$FMBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioEMActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioEMActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FMBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;


# direct methods
.method private constructor <init>(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/FMRadio/FMRadioEMActivity;Lcom/mediatek/FMRadio/FMRadioEMActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEMActivity$FMBroadcastReceiver;-><init>(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, 0x1

    const/16 v11, 0x438

    const/16 v10, 0x36b

    const/4 v9, 0x5

    const/4 v8, 0x0

    .line 190
    const-string v5, "FMRadioEM"

    const-string v6, ">>> FMRadioEMActivity.onReceive"

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, action:Ljava/lang/String;
    const-string v5, "FMRadioEM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Context: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string v5, "FMRadioEM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const-string v5, "com.mediatek.FMRadio.FMRadioService.ACTION_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 195
    const-string v5, "EXTRA_FMRADIO_ISPOWERUP"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 196
    .local v1, bIsPowerUp:Z
    if-eqz v1, :cond_0

    .line 197
    const-string v5, "FMRadioEM"

    const-string v6, "FM Radio is power up."

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z
    invoke-static {v5, v12}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$002(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)Z

    .line 199
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->refreshTextStatus(Z)V
    invoke-static {v5, v12}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$200(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)V

    .line 275
    .end local v1           #bIsPowerUp:Z
    :goto_0
    const-string v5, "FMRadioEM"

    const-string v6, "<<< FMRadioEMActivity.onReceive"

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return-void

    .line 201
    .restart local v1       #bIsPowerUp:Z
    :cond_0
    const-string v5, "FMRadioEM"

    const-string v6, "FM Radio is power down."

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z
    invoke-static {v5, v8}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$002(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)Z

    .line 203
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->refreshTextStatus(Z)V
    invoke-static {v5, v8}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$200(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)V

    goto :goto_0

    .line 205
    .end local v1           #bIsPowerUp:Z
    :cond_1
    const-string v5, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_PS_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 206
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    const-string v6, "EXTRA_RDS_PS"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mPSString:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$302(Lcom/mediatek/FMRadio/FMRadioEMActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 207
    const-string v5, "FMRadioEM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mPSString:Ljava/lang/String;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$300(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 211
    .local v4, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$400(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 212
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 213
    .local v2, bundle:Landroid/os/Bundle;
    const-string v5, "MSGID"

    const/4 v6, 0x4

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 214
    invoke-virtual {v4, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 215
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 216
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v4           #msg:Landroid/os/Message;
    :cond_2
    const-string v5, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_RT_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 217
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    const-string v6, "EXTRA_RDS_RT"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mLRTextString:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$502(Lcom/mediatek/FMRadio/FMRadioEMActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 218
    const-string v5, "FMRadioEM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLRText: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mLRTextString:Ljava/lang/String;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$500(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 222
    .restart local v4       #msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$400(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 223
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 224
    .restart local v2       #bundle:Landroid/os/Bundle;
    const-string v5, "MSGID"

    const/4 v6, 0x4

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 225
    invoke-virtual {v4, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 226
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 227
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v4           #msg:Landroid/os/Message;
    :cond_3
    const-string v5, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_AF_ACTIVED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 228
    const-string v5, "EXTRA_RDS_AF_ACTIVED"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 229
    .local v3, iFreq:I
    if-lt v3, v10, :cond_4

    if-gt v3, v11, :cond_4

    .line 232
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I
    invoke-static {v5, v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$602(Lcom/mediatek/FMRadio/FMRadioEMActivity;I)I

    .line 233
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 234
    .restart local v4       #msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$400(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 235
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 236
    .restart local v2       #bundle:Landroid/os/Bundle;
    const-string v5, "MSGID"

    invoke-virtual {v2, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    invoke-virtual {v4, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 238
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 240
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v4           #msg:Landroid/os/Message;
    :cond_4
    const-string v5, "FMRadioEM"

    const-string v6, "Error: invalid alternative frequency"

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 242
    .end local v3           #iFreq:I
    :cond_5
    const-string v5, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_TA_ACTIVED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 243
    const-string v5, "EXTRA_RDS_TA_ACTIVED"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 244
    .restart local v3       #iFreq:I
    if-lt v3, v10, :cond_6

    if-gt v3, v11, :cond_6

    .line 247
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I
    invoke-static {v5, v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$602(Lcom/mediatek/FMRadio/FMRadioEMActivity;I)I

    .line 248
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 249
    .restart local v4       #msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$400(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 250
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 251
    .restart local v2       #bundle:Landroid/os/Bundle;
    const-string v5, "MSGID"

    invoke-virtual {v2, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 252
    invoke-virtual {v4, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 253
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 255
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v4           #msg:Landroid/os/Message;
    :cond_6
    const-string v5, "FMRadioEM"

    const-string v6, "Error: invalid activeTA frequency"

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 257
    .end local v3           #iFreq:I
    :cond_7
    const-string v5, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_TA_DEACTIVED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 258
    const-string v5, "EXTRA_RDS_TA_DEACTIVED"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 259
    .restart local v3       #iFreq:I
    if-lt v3, v10, :cond_8

    if-gt v3, v11, :cond_8

    .line 262
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I
    invoke-static {v5, v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$602(Lcom/mediatek/FMRadio/FMRadioEMActivity;I)I

    .line 263
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 264
    .restart local v4       #msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$400(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 265
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 266
    .restart local v2       #bundle:Landroid/os/Bundle;
    const-string v5, "MSGID"

    invoke-virtual {v2, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 267
    invoke-virtual {v4, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 268
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 270
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v4           #msg:Landroid/os/Message;
    :cond_8
    const-string v5, "FMRadioEM"

    const-string v6, "Error: invalid activeTA frequency"

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 273
    .end local v3           #iFreq:I
    :cond_9
    const-string v5, "FMRadioEM"

    const-string v6, "Error: undefined action."

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
