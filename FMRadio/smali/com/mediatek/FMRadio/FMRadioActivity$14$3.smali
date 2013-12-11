.class Lcom/mediatek/FMRadio/FMRadioActivity$14$3;
.super Ljava/lang/Thread;
.source "FMRadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioActivity$14;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/FMRadio/FMRadioActivity$14;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioActivity$14;)V
    .locals 0
    .parameter

    .prologue
    .line 1137
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14$3;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$14;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 1139
    const-string v11, "FMRadioActivity"

    const-string v12, ">>> searchThread.run()"

    invoke-static {v11, v12}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14$3;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$14;

    iget-object v11, v11, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->startScan()[I
    invoke-static {v11}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7500(Lcom/mediatek/FMRadio/FMRadioActivity;)[I

    move-result-object v5

    .line 1143
    .local v5, iChannels:[I
    const-string v11, "FMRadioActivity"

    const-string v12, "delete previous searched station in thread"

    invoke-static {v11, v12}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14$3;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$14;

    iget-object v11, v11, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-static {v11}, Lcom/mediatek/FMRadio/FMRadioStation;->cleanSearchedStations(Landroid/app/Activity;)V

    .line 1147
    if-eqz v5, :cond_0

    .line 1148
    invoke-static {v5}, Ljava/util/Arrays;->sort([I)V

    .line 1150
    :cond_0
    const/4 v6, 0x0

    .line 1152
    .local v6, iFirstValidChannel:I
    const/4 v4, 0x0

    .line 1153
    .local v4, iChannelNum:I
    if-eqz v5, :cond_5

    .line 1154
    const-string v11, "FMRadioActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Stations found: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v11, v5

    if-ge v3, v11, :cond_5

    .line 1157
    const-string v11, "FMRadioActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Stations found "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget v13, v5, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    aget v11, v5, v3

    const/16 v12, 0x438

    if-gt v11, v12, :cond_1

    aget v11, v5, v3

    const/16 v12, 0x36b

    if-ge v11, v12, :cond_2

    .line 1160
    :cond_1
    const-string v11, "FMRadioActivity"

    const-string v12, "Ignore the invalid station."

    invoke-static {v11, v12}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1162
    :cond_2
    if-nez v6, :cond_3

    .line 1163
    aget v6, v5, v3

    .line 1165
    :cond_3
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14$3;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$14;

    iget-object v11, v11, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    aget v12, v5, v3

    invoke-static {v11, v12}, Lcom/mediatek/FMRadio/FMRadioStation;->isFavoriteStation(Landroid/app/Activity;I)Z

    move-result v11

    if-nez v11, :cond_4

    .line 1166
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14$3;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$14;

    iget-object v11, v11, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v12, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14$3;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$14;

    iget-object v12, v12, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const v13, 0x7f040015

    invoke-virtual {v12, v13}, Lcom/mediatek/FMRadio/FMRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    aget v13, v5, v3

    const/4 v14, 0x3

    invoke-static {v11, v12, v13, v14}, Lcom/mediatek/FMRadio/FMRadioStation;->insertStationToDB(Landroid/app/Activity;Ljava/lang/String;II)V

    .line 1172
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1177
    .end local v3           #i:I
    :cond_5
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14$3;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$14;

    iget-object v11, v11, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsDestroying:Z
    invoke-static {v11}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7100(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v11

    if-nez v11, :cond_d

    .line 1178
    if-eqz v5, :cond_b

    .line 1180
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14$3;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$14;

    iget-object v11, v11, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static {v11}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$300(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1183
    const/4 v7, 0x0

    .line 1184
    .local v7, iFreq:I
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14$3;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$14;

    iget-object v11, v11, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsUserCancelSearch:Z
    invoke-static {v11}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7300(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 1187
    move v7, v6

    .line 1192
    :goto_2
    if-lez v7, :cond_6

    .line 1193
    new-instance v9, Landroid/os/Message;

    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .line 1194
    .local v9, msg:Landroid/os/Message;
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14$3;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$14;

    iget-object v11, v11, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 1195
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1196
    .local v0, bundle:Landroid/os/Bundle;
    const-string v11, "MSGID"

    const/4 v12, 0x2

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1197
    const-string v11, "FIRST_SEARCHED_STATION"

    invoke-virtual {v0, v11, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1198
    invoke-virtual {v9, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1199
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 1200
    const-string v11, "FMRadioActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Playing. Send message to tune station: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v7           #iFreq:I
    .end local v9           #msg:Landroid/os/Message;
    :cond_6
    :goto_3
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14$3;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$14;

    iget-object v11, v11, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogSearchProgress:Landroid/app/ProgressDialog;
    invoke-static {v11}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 1239
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14$3;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$14;

    iget-object v11, v11, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogSearchProgress:Landroid/app/ProgressDialog;
    invoke-static {v11}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1240
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14$3;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$14;

    iget-object v11, v11, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v12, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogSearchProgress:Landroid/app/ProgressDialog;
    invoke-static {v11, v12}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7202(Lcom/mediatek/FMRadio/FMRadioActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1244
    :cond_7
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14$3;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$14;

    iget-object v11, v11, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsUserCancelSearch:Z
    invoke-static {v11}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7300(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 1245
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14$3;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$14;

    iget-object v11, v11, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->isToasting()Z
    invoke-static {v11}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3100(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 1246
    const-string v10, ""

    .line 1247
    .local v10, text:Ljava/lang/String;
    if-nez v4, :cond_c

    .line 1248
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14$3;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$14;

    iget-object v11, v11, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const v12, 0x7f040023

    invoke-virtual {v11, v12}, Lcom/mediatek/FMRadio/FMRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1253
    :goto_4
    new-instance v9, Landroid/os/Message;

    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .line 1254
    .restart local v9       #msg:Landroid/os/Message;
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14$3;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$14;

    iget-object v11, v11, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 1255
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1256
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v11, "MSGID"

    const/16 v12, 0xa

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1257
    const-string v11, "TYPE_TOAST_STRING"

    invoke-virtual {v0, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    invoke-virtual {v9, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1259
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 1263
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v9           #msg:Landroid/os/Message;
    .end local v10           #text:Ljava/lang/String;
    :cond_8
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14$3;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$14;

    iget-object v11, v11, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v12, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsUserCancelSearch:Z
    invoke-static {v11, v12}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7302(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 1264
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14$3;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$14;

    iget-object v11, v11, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v12, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSearching:Z
    invoke-static {v11, v12}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$5102(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 1270
    :goto_5
    const-string v11, "FMRadioActivity"

    const-string v12, "<<< searchThread.run()"

    invoke-static {v11, v12}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    return-void

    .line 1190
    .restart local v7       #iFreq:I
    :cond_9
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14$3;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$14;

    iget-object v11, v11, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v11}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v11

    int-to-short v7, v11

    goto/16 :goto_2

    .line 1204
    .end local v7           #iFreq:I
    :cond_a
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14$3;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$14;

    iget-object v11, v11, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsUserCancelSearch:Z
    invoke-static {v11}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7300(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v11

    if-nez v11, :cond_6

    if-lez v6, :cond_6

    .line 1205
    new-instance v9, Landroid/os/Message;

    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .line 1206
    .restart local v9       #msg:Landroid/os/Message;
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14$3;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$14;

    iget-object v11, v11, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 1207
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1208
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v11, "MSGID"

    const/4 v12, 0x2

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1209
    const-string v11, "FIRST_SEARCHED_STATION"

    invoke-virtual {v0, v11, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1210
    invoke-virtual {v9, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1211
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 1212
    const-string v11, "FMRadioActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Not playing. Send message to tune station: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1219
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v9           #msg:Landroid/os/Message;
    :cond_b
    const-string v11, "FMRadioActivity"

    const-string v12, "No stations found."

    invoke-static {v11, v12}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    const/4 v8, 0x0

    .line 1222
    .local v8, mIsResumeAfterCall:Z
    :try_start_0
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14$3;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$14;

    iget-object v11, v11, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v11}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1500(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/IFMRadioService;

    move-result-object v11

    invoke-interface {v11}, Lcom/mediatek/FMRadio/IFMRadioService;->getResumeAfterCall()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    .line 1226
    :goto_6
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14$3;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$14;

    iget-object v11, v11, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static {v11}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$300(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v11

    if-eqz v11, :cond_6

    if-nez v8, :cond_6

    .line 1228
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14$3;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$14;

    iget-object v11, v11, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v12, 0x0

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->setMute(Z)I
    invoke-static {v11, v12}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7600(Lcom/mediatek/FMRadio/FMRadioActivity;Z)I

    .line 1230
    :try_start_1
    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14$3;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$14;

    iget-object v11, v11, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v11}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1500(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/IFMRadioService;

    move-result-object v11

    invoke-interface {v11}, Lcom/mediatek/FMRadio/IFMRadioService;->resumeFMAudio()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 1231
    :catch_0
    move-exception v2

    .line 1232
    .local v2, ex:Ljava/lang/Exception;
    const-string v11, "FMRadioActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception in resumeFMAudio: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1223
    .end local v2           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1224
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 1250
    .end local v1           #e:Ljava/lang/Exception;
    .end local v8           #mIsResumeAfterCall:Z
    .restart local v10       #text:Ljava/lang/String;
    :cond_c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14$3;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$14;

    iget-object v12, v12, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const v13, 0x7f040022

    invoke-virtual {v12, v13}, Lcom/mediatek/FMRadio/FMRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_4

    .line 1267
    .end local v10           #text:Ljava/lang/String;
    :cond_d
    const-string v11, "FMRadioActivity"

    const-string v12, "FMRadio is being destroyed."

    invoke-static {v11, v12}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method
