.class Lcom/mediatek/FMRadio/FMRadioActivity$3;
.super Ljava/lang/Object;
.source "FMRadioActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioActivity;
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
    .line 543
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v6, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 546
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 642
    :goto_0
    return-void

    .line 548
    :sswitch_0
    const-string v4, "FMRadioActivity"

    const-string v5, "btn record: CLICK!!"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$300(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 550
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const v6, 0x7f040032

    invoke-virtual {v5, v6}, Lcom/mediatek/FMRadio/FMRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 553
    :cond_0
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mSDDirectory:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3002(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 554
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const-string v5, "FMRecord"

    invoke-virtual {v4, v5, v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 555
    .local v2, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 556
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordStartTime:J
    invoke-static {v4, v5, v6}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2502(Lcom/mediatek/FMRadio/FMRadioActivity;J)J

    .line 557
    const-string v4, "startRecordTime"

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordStartTime:J
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2500(Lcom/mediatek/FMRadio/FMRadioActivity;)J

    move-result-wide v5

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 558
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 560
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1500(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/IFMRadioService;

    move-result-object v4

    invoke-interface {v4}, Lcom/mediatek/FMRadio/IFMRadioService;->startRecording()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 561
    :catch_0
    move-exception v1

    .line 562
    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "FMRadioActivity"

    const-string v5, "failed to startRecording: "

    invoke-static {v4, v5, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 566
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v2           #sharedPreferences:Landroid/content/SharedPreferences;
    :sswitch_1
    const-string v4, "FMRadioActivity"

    const-string v5, "btn stop: CLICK!!"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :try_start_1
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1500(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/IFMRadioService;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/mediatek/FMRadio/IFMRadioService;->setStopPressed(Z)V

    .line 569
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1500(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/IFMRadioService;

    move-result-object v4

    invoke-interface {v4}, Lcom/mediatek/FMRadio/IFMRadioService;->stopRecording()V

    .line 570
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1500(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/IFMRadioService;

    move-result-object v4

    invoke-interface {v4}, Lcom/mediatek/FMRadio/IFMRadioService;->stopPlayback()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 571
    :catch_1
    move-exception v1

    .line 572
    .restart local v1       #ex:Ljava/lang/Exception;
    const-string v4, "FMRadioActivity"

    const-string v5, "failed to stopRecording/stopPlayback"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 576
    .end local v1           #ex:Ljava/lang/Exception;
    :sswitch_2
    const-string v4, "FMRadioActivity"

    const-string v5, "btn playback: CLICK!!"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const-string v5, "FMRecord"

    invoke-virtual {v4, v5, v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 578
    .restart local v2       #sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 579
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mPlayStartTime:J
    invoke-static {v4, v5, v6}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2802(Lcom/mediatek/FMRadio/FMRadioActivity;J)J

    .line 580
    const-string v4, "startPlayTime"

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mPlayStartTime:J
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2800(Lcom/mediatek/FMRadio/FMRadioActivity;)J

    move-result-wide v5

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 581
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 583
    :try_start_2
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1500(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/IFMRadioService;

    move-result-object v4

    invoke-interface {v4}, Lcom/mediatek/FMRadio/IFMRadioService;->startPlayback()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 584
    :catch_2
    move-exception v1

    .line 585
    .restart local v1       #ex:Ljava/lang/Exception;
    const-string v4, "FMRadioActivity"

    const-string v5, "failed to startPlayback"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 589
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v2           #sharedPreferences:Landroid/content/SharedPreferences;
    :sswitch_3
    const-string v4, "FMRadioActivity"

    const-string v5, ">>> onClick AddToFavorite"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->isToasting()Z
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3100(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 592
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioStation;->isFavoriteStation(Landroid/app/Activity;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 594
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v5

    invoke-static {v4, v5, v7}, Lcom/mediatek/FMRadio/FMRadioStation;->getStationName(Landroid/app/Activity;II)Ljava/lang/String;

    move-result-object v3

    .line 595
    .local v3, stationName:Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v5

    invoke-static {v4, v5, v7}, Lcom/mediatek/FMRadio/FMRadioStation;->deleteStationInDB(Landroid/app/Activity;II)V

    .line 600
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v5

    invoke-static {v4, v3, v5, v6}, Lcom/mediatek/FMRadio/FMRadioStation;->insertStationToDB(Landroid/app/Activity;Ljava/lang/String;II)V

    .line 606
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1600(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v4

    const v5, 0x7f020009

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 607
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/TextView;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const v6, 0x7f04001f

    const v7, 0x7f04001e

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->getProjectString(II)Ljava/lang/String;
    invoke-static {v5, v6, v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3300(Lcom/mediatek/FMRadio/FMRadioActivity;II)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->showToast(Ljava/lang/CharSequence;)V
    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3400(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/CharSequence;)V

    .line 638
    .end local v3           #stationName:Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v4, "FMRadioActivity"

    const-string v5, "<<< onClick AddToFavorite"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 612
    :cond_2
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-static {v4, v7}, Lcom/mediatek/FMRadio/FMRadioStation;->getStationCount(Landroid/app/Activity;I)I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_3

    .line 613
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const v6, 0x7f04001b

    const v7, 0x7f04001a

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->getProjectString(II)Ljava/lang/String;
    invoke-static {v5, v6, v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3300(Lcom/mediatek/FMRadio/FMRadioActivity;II)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->showToast(Ljava/lang/CharSequence;)V
    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3400(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 616
    :cond_3
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v5

    invoke-static {v4, v5, v6}, Lcom/mediatek/FMRadio/FMRadioStation;->getStationName(Landroid/app/Activity;II)Ljava/lang/String;

    move-result-object v3

    .line 618
    .restart local v3       #stationName:Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v5

    invoke-static {v4, v5, v6}, Lcom/mediatek/FMRadio/FMRadioStation;->deleteStationInDB(Landroid/app/Activity;II)V

    .line 623
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v5

    invoke-static {v4, v3, v5, v7}, Lcom/mediatek/FMRadio/FMRadioStation;->insertStationToDB(Landroid/app/Activity;Ljava/lang/String;II)V

    .line 629
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1600(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v4

    const v5, 0x7f02000b

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 630
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v6}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v6

    invoke-static {v5, v6, v7}, Lcom/mediatek/FMRadio/FMRadioStation;->getStationName(Landroid/app/Activity;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const v6, 0x7f040021

    const v7, 0x7f040020

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->getProjectString(II)Ljava/lang/String;
    invoke-static {v5, v6, v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3300(Lcom/mediatek/FMRadio/FMRadioActivity;II)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->showToast(Ljava/lang/CharSequence;)V
    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3400(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 546
    :sswitch_data_0
    .sparse-switch
        0x7f060037 -> :sswitch_3
        0x7f06003f -> :sswitch_0
        0x7f060040 -> :sswitch_1
        0x7f060041 -> :sswitch_2
    .end sparse-switch
.end method
