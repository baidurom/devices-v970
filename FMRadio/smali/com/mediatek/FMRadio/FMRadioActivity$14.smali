.class Lcom/mediatek/FMRadio/FMRadioActivity$14;
.super Landroid/os/Handler;
.source "FMRadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1086
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    .line 1088
    const-string v9, "FMRadioActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ">>> handleMessage ID: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "MSGID"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsDestroying:Z
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7100(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1090
    const-string v9, "FMRadioActivity"

    const-string v10, "Warning: app is being destroyed."

    invoke-static {v9, v10}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    const-string v9, "FMRadioActivity"

    const-string v10, "<<< handleMessage"

    invoke-static {v9, v10}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    :goto_0
    return-void

    .line 1095
    :cond_0
    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "MSGID"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-ne v9, v10, :cond_3

    .line 1096
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSearching:Z
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$5100(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1098
    const-string v9, "FMRadioActivity"

    const-string v10, "Warning: Already searching."

    invoke-static {v9, v10}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    :cond_1
    :goto_1
    const-string v9, "FMRadioActivity"

    const-string v10, "<<< handleMessage"

    invoke-static {v9, v10}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1100
    :cond_2
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v10, 0x1

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSearching:Z
    invoke-static {v9, v10}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$5102(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 1101
    const-string v9, "FMRadioActivity"

    const-string v10, "Start searching."

    invoke-static {v9, v10}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    new-instance v10, Landroid/app/ProgressDialog;

    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct {v10, v11}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogSearchProgress:Landroid/app/ProgressDialog;
    invoke-static {v9, v10}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7202(Lcom/mediatek/FMRadio/FMRadioActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1105
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogSearchProgress:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1106
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const v10, 0x7f040011

    invoke-virtual {v9, v10}, Lcom/mediatek/FMRadio/FMRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1107
    .local v7, text:Ljava/lang/String;
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogSearchProgress:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1108
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogSearchProgress:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v9

    const v10, 0x7f040010

    invoke-virtual {v9, v10}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 1109
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogSearchProgress:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1111
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogSearchProgress:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1113
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogSearchProgress:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const v11, 0x7f04000f

    invoke-virtual {v10, v11}, Lcom/mediatek/FMRadio/FMRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/mediatek/FMRadio/FMRadioActivity$14$1;

    invoke-direct {v11, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$14$1;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity$14;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1123
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogSearchProgress:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v9

    new-instance v10, Lcom/mediatek/FMRadio/FMRadioActivity$14$2;

    invoke-direct {v10, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$14$2;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity$14;)V

    invoke-virtual {v9, v10}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1134
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogSearchProgress:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->show()V

    .line 1137
    new-instance v8, Lcom/mediatek/FMRadio/FMRadioActivity$14$3;

    invoke-direct {v8, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$14$3;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity$14;)V

    .line 1273
    .local v8, threadSearch:Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    .line 1275
    .end local v7           #text:Ljava/lang/String;
    .end local v8           #threadSearch:Ljava/lang/Thread;
    :cond_3
    const/4 v9, 0x2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "MSGID"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-ne v9, v10, :cond_4

    .line 1277
    const/4 v5, 0x1

    .line 1279
    .local v5, isSIMCardIdle:Z
    :try_start_0
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1500(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/IFMRadioService;

    move-result-object v9

    invoke-interface {v9}, Lcom/mediatek/FMRadio/IFMRadioService;->isSIMCardIdle()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 1283
    :goto_2
    if-eqz v5, :cond_1

    .line 1284
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "FIRST_SEARCHED_STATION"

    const/16 v12, 0x36b

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->tuneToStation(I)V
    invoke-static {v9, v10}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7700(Lcom/mediatek/FMRadio/FMRadioActivity;I)V

    .line 1289
    :try_start_1
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1500(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/IFMRadioService;

    move-result-object v9

    invoke-interface {v9}, Lcom/mediatek/FMRadio/IFMRadioService;->resumeFMAudio()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1293
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1294
    .local v1, endTime:J
    const-string v9, "FMRadioActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[Performance test][FMRadio] scan channel end ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1296
    .local v4, intent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const-class v10, Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1297
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v10, 0x1

    invoke-virtual {v9, v4, v10}, Lcom/mediatek/FMRadio/FMRadioActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 1280
    .end local v1           #endTime:J
    .end local v4           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1281
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1290
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 1291
    .local v3, ex:Ljava/lang/Exception;
    const-string v9, "FMRadioActivity"

    const-string v10, "Exception: resumeFMAudio"

    invoke-static {v9, v10}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1299
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v5           #isSIMCardIdle:Z
    :cond_4
    const/4 v9, 0x3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "MSGID"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-ne v9, v10, :cond_5

    .line 1301
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->showRDS()V
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7800(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    goto/16 :goto_1

    .line 1302
    :cond_5
    const/4 v9, 0x4

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "MSGID"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-ne v9, v10, :cond_7

    .line 1305
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v10, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v10}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v10

    invoke-static {v9, v10}, Lcom/mediatek/FMRadio/FMRadioStation;->setCurrentStation(Landroid/app/Activity;I)V

    .line 1307
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationValue:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4600(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/TextView;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v10}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x4120

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1309
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v10, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v10}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v10

    invoke-static {v9, v10}, Lcom/mediatek/FMRadio/FMRadioStation;->isFavoriteStation(Landroid/app/Activity;I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1310
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1600(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v9

    const v10, 0x7f02000b

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1312
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/TextView;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v11}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v11

    const/4 v12, 0x2

    invoke-static {v10, v11, v12}, Lcom/mediatek/FMRadio/FMRadioStation;->getStationName(Landroid/app/Activity;II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1316
    :cond_6
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1600(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v9

    const v10, 0x7f020009

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1318
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/TextView;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1320
    :cond_7
    const/4 v9, 0x5

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "MSGID"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-ne v9, v10, :cond_8

    .line 1322
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "SEEK_STATION"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->tuneToStation(I)V
    invoke-static {v9, v10}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7700(Lcom/mediatek/FMRadio/FMRadioActivity;I)V

    .line 1323
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1324
    .restart local v1       #endTime:J
    const-string v9, "FMRadioActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[Performance test][FMRadio] seek previous channel end ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    const-string v9, "FMRadioActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[Performance test][FMRadio] seek next channel end ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->seekStation(ZIZ)V
    invoke-static {v9, v10, v11, v12}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$6900(Lcom/mediatek/FMRadio/FMRadioActivity;ZIZ)V

    goto/16 :goto_1

    .line 1327
    .end local v1           #endTime:J
    :cond_8
    const/4 v9, 0x6

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "MSGID"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-ne v9, v10, :cond_9

    .line 1329
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->seekStation(ZIZ)V
    invoke-static {v9, v10, v11, v12}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$6900(Lcom/mediatek/FMRadio/FMRadioActivity;ZIZ)V

    .line 1330
    const-string v9, "FMRadioPerformanceTest"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[mtk performance result]: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1331
    :cond_9
    const/16 v9, 0xc

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "MSGID"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-ne v9, v10, :cond_b

    .line 1332
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "TUNE_STATION"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1333
    .local v6, station:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1334
    .restart local v1       #endTime:J
    const-string v9, "FMRadioActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[Performance test][FMRadio] increase frequency end ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    const-string v9, "FMRadioActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[Performance test][FMRadio] decrease frequency end ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    const-string v9, "FMRadioActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[Performance test][FMRadio] open channel end ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationValue:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4600(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/TextView;

    move-result-object v9

    int-to-float v10, v6

    const/high16 v11, 0x4120

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1340
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-static {v9, v6}, Lcom/mediatek/FMRadio/FMRadioStation;->isFavoriteStation(Landroid/app/Activity;I)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1341
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1600(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v9

    const v10, 0x7f02000b

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1342
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/TextView;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v11, 0x2

    invoke-static {v10, v6, v11}, Lcom/mediatek/FMRadio/FMRadioStation;->getStationName(Landroid/app/Activity;II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1350
    :goto_4
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v10, 0x1

    const/4 v11, 0x0

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->tuneStation(ZI)V
    invoke-static {v9, v10, v11}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$6800(Lcom/mediatek/FMRadio/FMRadioActivity;ZI)V

    goto/16 :goto_1

    .line 1346
    :cond_a
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1600(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v9

    const v10, 0x7f020009

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1348
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/TextView;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1351
    .end local v1           #endTime:J
    .end local v6           #station:I
    :cond_b
    const/4 v9, 0x7

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "MSGID"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-ne v9, v10, :cond_c

    .line 1353
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayStop:Landroid/widget/ImageButton;
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v9

    const v10, 0x7f02002f

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1354
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshButtonStatus()V
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$400(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 1355
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->stopAnimation()V
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7900(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 1356
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayStop:Landroid/widget/ImageButton;
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1357
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1600(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_1

    .line 1358
    :cond_c
    const/16 v9, 0x8

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "MSGID"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-ne v9, v10, :cond_d

    .line 1360
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->stopAnimation()V
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7900(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 1361
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayStop:Landroid/widget/ImageButton;
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1362
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1600(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_1

    .line 1363
    :cond_d
    const/16 v9, 0x9

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "MSGID"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-ne v9, v10, :cond_e

    .line 1365
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/mediatek/FMRadio/FMRadioActivity;->showDialog(I)V

    .line 1366
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->stopAnimation()V
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7900(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 1367
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayStop:Landroid/widget/ImageButton;
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1368
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1600(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_1

    .line 1370
    :cond_e
    const/16 v9, 0xa

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "MSGID"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-ne v9, v10, :cond_f

    .line 1371
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "TYPE_TOAST_STRING"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1372
    .restart local v7       #text:Ljava/lang/String;
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->showToast(Ljava/lang/CharSequence;)V
    invoke-static {v9, v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3400(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1374
    .end local v7           #text:Ljava/lang/String;
    :cond_f
    const/16 v9, 0xd

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "MSGID"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-ne v9, v10, :cond_10

    .line 1376
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8000(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/PopupMenu;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 1377
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8000(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/PopupMenu;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v9

    const v10, 0x7f06004d

    invoke-interface {v9, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 1380
    :cond_10
    const-string v9, "FMRadioActivity"

    const-string v10, "Error: undefined message ID."

    invoke-static {v9, v10}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
