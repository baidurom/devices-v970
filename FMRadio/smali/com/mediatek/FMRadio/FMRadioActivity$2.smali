.class Lcom/mediatek/FMRadio/FMRadioActivity$2;
.super Landroid/os/Handler;
.source "FMRadioActivity.java"


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
    .line 495
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .parameter "msg"

    .prologue
    .line 498
    const-string v12, "FMRadioActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Refresher: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    const/16 v13, 0xb

    if-ne v12, v13, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/FMRadio/FMRadioActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z
    invoke-static {v12}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1400(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 503
    :cond_1
    const/4 v12, 0x6

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordState:I
    invoke-static {v13}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v13

    if-ne v12, v13, :cond_4

    .line 504
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/FMRadio/FMRadioActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordStartTime:J
    invoke-static {v14}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2500(Lcom/mediatek/FMRadio/FMRadioActivity;)J

    move-result-wide v14

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    long-to-int v7, v12

    .line 505
    .local v7, recordTime:I
    div-int/lit16 v2, v7, 0xe10

    .line 506
    .local v2, hour:I
    div-int/lit8 v12, v7, 0x3c

    rem-int/lit8 v4, v12, 0x3c

    .line 507
    .local v4, minute:I
    rem-int/lit8 v8, v7, 0x3c

    .line 508
    .local v8, sec:I
    const/4 v10, 0x0

    .line 509
    .local v10, timeString:Ljava/lang/String;
    if-lez v2, :cond_3

    .line 510
    const-string v12, "%02d:%02d:%02d"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 514
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/FMRadio/FMRadioActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoLeft:Landroid/widget/TextView;
    invoke-static {v12}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2600(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    const-string v12, "FMRadioActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Recording time = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/FMRadio/FMRadioActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoLeft:Landroid/widget/TextView;
    invoke-static {v14}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2600(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/FMRadio/FMRadioActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->checkRemainingStorage()Z
    invoke-static {v12}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2700(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 518
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/FMRadio/FMRadioActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v12}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1500(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/IFMRadioService;

    move-result-object v12

    invoke-interface {v12}, Lcom/mediatek/FMRadio/IFMRadioService;->stopRecording()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    .end local v2           #hour:I
    .end local v4           #minute:I
    .end local v7           #recordTime:I
    .end local v8           #sec:I
    .end local v10           #timeString:Ljava/lang/String;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/FMRadio/FMRadioActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mRefresher:Landroid/os/Handler;
    invoke-static {v12}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1300(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0xb

    const-wide/16 v14, 0x3e8

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 512
    .restart local v2       #hour:I
    .restart local v4       #minute:I
    .restart local v7       #recordTime:I
    .restart local v8       #sec:I
    .restart local v10       #timeString:Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v12, "%02d:%02d"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 520
    .end local v2           #hour:I
    .end local v4           #minute:I
    .end local v7           #recordTime:I
    .end local v8           #sec:I
    .end local v10           #timeString:Ljava/lang/String;
    :cond_4
    const/4 v12, 0x7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/FMRadio/FMRadioActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordState:I
    invoke-static {v13}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v13

    if-ne v12, v13, :cond_0

    .line 521
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/FMRadio/FMRadioActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mPlayStartTime:J
    invoke-static {v14}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2800(Lcom/mediatek/FMRadio/FMRadioActivity;)J

    move-result-wide v14

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    long-to-int v6, v12

    .line 522
    .local v6, playTime:I
    div-int/lit16 v3, v6, 0xe10

    .line 523
    .local v3, hour_play:I
    div-int/lit8 v12, v6, 0x3c

    rem-int/lit8 v5, v12, 0x3c

    .line 524
    .local v5, minute_play:I
    rem-int/lit8 v9, v6, 0x3c

    .line 525
    .local v9, sec_play:I
    const/4 v11, 0x0

    .line 526
    .local v11, timeString_play:Ljava/lang/String;
    if-lez v3, :cond_5

    .line 527
    const-string v12, "%02d:%02d:%02d"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 531
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/FMRadio/FMRadioActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoRight:Landroid/widget/TextView;
    invoke-static {v12}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2900(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    const-string v12, "FMRadioActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Playing time = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/FMRadio/FMRadioActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoRight:Landroid/widget/TextView;
    invoke-static {v14}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2900(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 536
    .end local v3           #hour_play:I
    .end local v5           #minute_play:I
    .end local v6           #playTime:I
    .end local v9           #sec_play:I
    .end local v11           #timeString_play:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 537
    .local v1, ex:Ljava/lang/Exception;
    const-string v12, "FMRadioActivity"

    const-string v13, "Exception in refresher: "

    invoke-static {v12, v13, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 529
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v3       #hour_play:I
    .restart local v5       #minute_play:I
    .restart local v6       #playTime:I
    .restart local v9       #sec_play:I
    .restart local v11       #timeString_play:Ljava/lang/String;
    :cond_5
    :try_start_2
    const-string v12, "%02d:%02d"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v11

    goto :goto_3
.end method
