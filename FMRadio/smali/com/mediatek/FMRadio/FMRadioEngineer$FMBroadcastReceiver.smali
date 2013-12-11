.class Lcom/mediatek/FMRadio/FMRadioEngineer$FMBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioEngineer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioEngineer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FMBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;


# direct methods
.method private constructor <init>(Lcom/mediatek/FMRadio/FMRadioEngineer;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/FMRadio/FMRadioEngineer;Lcom/mediatek/FMRadio/FMRadioEngineer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEngineer$FMBroadcastReceiver;-><init>(Lcom/mediatek/FMRadio/FMRadioEngineer;)V

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

    .line 124
    const-string v5, "FMRadioEngineer"

    const-string v6, ">>> FMRadioEMActivity.onReceive"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, action:Ljava/lang/String;
    const-string v5, "FMRadioEngineer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Context: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v5, "FMRadioEngineer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string v5, "com.mediatek.FMRadio.FMRadioService.ACTION_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 129
    const-string v5, "EXTRA_FMRADIO_ISPOWERUP"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 130
    .local v1, bIsPowerUp:Z
    if-eqz v1, :cond_0

    .line 131
    const-string v5, "FMRadioEngineer"

    const-string v6, "FM Radio is power up."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #setter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->mbPlaying:Z
    invoke-static {v5, v12}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$002(Lcom/mediatek/FMRadio/FMRadioEngineer;Z)Z

    .line 133
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #calls: Lcom/mediatek/FMRadio/FMRadioEngineer;->refreshTextStatus(Z)V
    invoke-static {v5, v12}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$100(Lcom/mediatek/FMRadio/FMRadioEngineer;Z)V

    .line 219
    .end local v1           #bIsPowerUp:Z
    :goto_0
    const-string v5, "FMRadioEngineer"

    const-string v6, "<<< FMRadioEMActivity.onReceive"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void

    .line 136
    .restart local v1       #bIsPowerUp:Z
    :cond_0
    const-string v5, "FMRadioEngineer"

    const-string v6, "FM Radio is power down."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #setter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->mbPlaying:Z
    invoke-static {v5, v8}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$002(Lcom/mediatek/FMRadio/FMRadioEngineer;Z)Z

    .line 138
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #calls: Lcom/mediatek/FMRadio/FMRadioEngineer;->refreshTextStatus(Z)V
    invoke-static {v5, v8}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$100(Lcom/mediatek/FMRadio/FMRadioEngineer;Z)V

    goto :goto_0

    .line 141
    .end local v1           #bIsPowerUp:Z
    :cond_1
    const-string v5, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_PS_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 142
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    const-string v6, "EXTRA_RDS_PS"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->msPS:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$202(Lcom/mediatek/FMRadio/FMRadioEngineer;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    const-string v5, "FMRadioEngineer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->msPS:Ljava/lang/String;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$200(Lcom/mediatek/FMRadio/FMRadioEngineer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 147
    .local v4, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$300(Lcom/mediatek/FMRadio/FMRadioEngineer;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 148
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 149
    .local v2, bundle:Landroid/os/Bundle;
    const-string v5, "MSGID"

    const/4 v6, 0x4

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 150
    invoke-virtual {v4, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 151
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 153
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v4           #msg:Landroid/os/Message;
    :cond_2
    const-string v5, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_RT_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 154
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    const-string v6, "EXTRA_RDS_RT"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->msLRText:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$402(Lcom/mediatek/FMRadio/FMRadioEngineer;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    const-string v5, "FMRadioEngineer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLRText: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->msLRText:Ljava/lang/String;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$400(Lcom/mediatek/FMRadio/FMRadioEngineer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 159
    .restart local v4       #msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$300(Lcom/mediatek/FMRadio/FMRadioEngineer;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 160
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 161
    .restart local v2       #bundle:Landroid/os/Bundle;
    const-string v5, "MSGID"

    const/4 v6, 0x4

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 162
    invoke-virtual {v4, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 163
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 165
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v4           #msg:Landroid/os/Message;
    :cond_3
    const-string v5, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_AF_ACTIVED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 166
    const-string v5, "EXTRA_RDS_AF_ACTIVED"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 167
    .local v3, iFreq:I
    if-lt v3, v10, :cond_4

    if-gt v3, v11, :cond_4

    .line 170
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #setter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->miCurrentStation:I
    invoke-static {v5, v3}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$502(Lcom/mediatek/FMRadio/FMRadioEngineer;I)I

    .line 171
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 172
    .restart local v4       #msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$300(Lcom/mediatek/FMRadio/FMRadioEngineer;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 173
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 174
    .restart local v2       #bundle:Landroid/os/Bundle;
    const-string v5, "MSGID"

    invoke-virtual {v2, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 175
    invoke-virtual {v4, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 176
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 179
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v4           #msg:Landroid/os/Message;
    :cond_4
    const-string v5, "FMRadioEngineer"

    const-string v6, "Error: invalid alternative frequency"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 182
    .end local v3           #iFreq:I
    :cond_5
    const-string v5, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_TA_ACTIVED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 183
    const-string v5, "EXTRA_RDS_TA_ACTIVED"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 184
    .restart local v3       #iFreq:I
    if-lt v3, v10, :cond_6

    if-gt v3, v11, :cond_6

    .line 187
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #setter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->miCurrentStation:I
    invoke-static {v5, v3}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$502(Lcom/mediatek/FMRadio/FMRadioEngineer;I)I

    .line 188
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 189
    .restart local v4       #msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$300(Lcom/mediatek/FMRadio/FMRadioEngineer;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 190
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 191
    .restart local v2       #bundle:Landroid/os/Bundle;
    const-string v5, "MSGID"

    invoke-virtual {v2, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 192
    invoke-virtual {v4, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 193
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 196
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v4           #msg:Landroid/os/Message;
    :cond_6
    const-string v5, "FMRadioEngineer"

    const-string v6, "Error: invalid activeTA frequency"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 199
    .end local v3           #iFreq:I
    :cond_7
    const-string v5, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_TA_DEACTIVED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 200
    const-string v5, "EXTRA_RDS_TA_DEACTIVED"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 201
    .restart local v3       #iFreq:I
    if-lt v3, v10, :cond_8

    if-gt v3, v11, :cond_8

    .line 204
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #setter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->miCurrentStation:I
    invoke-static {v5, v3}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$502(Lcom/mediatek/FMRadio/FMRadioEngineer;I)I

    .line 205
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 206
    .restart local v4       #msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$FMBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$300(Lcom/mediatek/FMRadio/FMRadioEngineer;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 207
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 208
    .restart local v2       #bundle:Landroid/os/Bundle;
    const-string v5, "MSGID"

    invoke-virtual {v2, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 209
    invoke-virtual {v4, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 210
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 213
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v4           #msg:Landroid/os/Message;
    :cond_8
    const-string v5, "FMRadioEngineer"

    const-string v6, "Error: invalid activeTA frequency"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 217
    .end local v3           #iFreq:I
    :cond_9
    const-string v5, "FMRadioEngineer"

    const-string v6, "Error: undefined action."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
