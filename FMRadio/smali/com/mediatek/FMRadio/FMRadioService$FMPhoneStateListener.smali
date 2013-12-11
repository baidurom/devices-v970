.class Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FMPhoneStateListener"
.end annotation


# instance fields
.field private simId:I

.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioService;


# direct methods
.method private constructor <init>(Lcom/mediatek/FMRadio/FMRadioService;)V
    .locals 1
    .parameter

    .prologue
    .line 442
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 443
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->simId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/FMRadio/FMRadioService;Lcom/mediatek/FMRadio/FMRadioService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 442
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;-><init>(Lcom/mediatek/FMRadio/FMRadioService;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 9
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 450
    const-string v4, "FMRadioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>> onCallStateChanged SIM"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->simId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    if-eq p1, v7, :cond_0

    const/4 v4, 0x2

    if-ne p1, v4, :cond_8

    .line 457
    :cond_0
    if-ne p1, v7, :cond_2

    .line 458
    const-string v4, "FMRadioService"

    const-string v5, "CALL_STATE_RINGING"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :goto_0
    iget v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->simId:I

    if-nez v4, :cond_3

    .line 465
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsSIM1Idle:Z
    invoke-static {v4, v8}, Lcom/mediatek/FMRadio/FMRadioService;->access$1102(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 470
    :goto_1
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsResumeAfterCall:Z
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioService;->access$000(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 471
    const-string v4, "FMRadioService"

    const-string v5, "Already know current is in a call."

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_1
    :goto_2
    const-string v4, "FMRadioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<<< onCallStateChanged SIM"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->simId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    return-void

    .line 460
    :cond_2
    const-string v4, "FMRadioService"

    const-string v5, "CALL_STATE_OFFHOOK"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 467
    :cond_3
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsSIM2Idle:Z
    invoke-static {v4, v8}, Lcom/mediatek/FMRadio/FMRadioService;->access$1202(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    goto :goto_1

    .line 473
    :cond_4
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsSearching:Z
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioService;->access$100(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 475
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v5, 0x1

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsStopScanCalled:Z
    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioService;->access$202(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 476
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioService;->access$300(Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/IFMRadioService$Stub;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->stopScan()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    :cond_5
    :goto_3
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioService;->access$400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 483
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsResumeAfterCall:Z
    invoke-static {v4, v7}, Lcom/mediatek/FMRadio/FMRadioService;->access$002(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 485
    :try_start_1
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioService;->access$300(Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/IFMRadioService$Stub;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->setRDS(Z)I

    .line 486
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioService;->access$300(Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/IFMRadioService$Stub;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->powerDown()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 493
    :goto_4
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v4, v4, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v4, :cond_1

    .line 494
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v4, v4, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v4}, Lcom/mediatek/FMRadio/FMRecorder;->getState()I

    move-result v2

    .line 495
    .local v2, fmState:I
    const/4 v4, 0x7

    if-ne v2, v4, :cond_7

    .line 496
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v4, v4, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v4}, Lcom/mediatek/FMRadio/FMRecorder;->stopPlayback()V

    goto :goto_2

    .line 477
    .end local v2           #fmState:I
    :catch_0
    move-exception v0

    .line 478
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "FMRadioService"

    const-string v5, "Exception: Cannot call binder function."

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 487
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 488
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v4, "FMRadioService"

    const-string v5, "Exception: Cannot call binder function."

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 491
    .end local v0           #e:Ljava/lang/Exception;
    :cond_6
    const-string v4, "FMRadioService"

    const-string v5, "FM is not playing, so do nothing."

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 497
    .restart local v2       #fmState:I
    :cond_7
    const/4 v4, 0x6

    if-ne v2, v4, :cond_1

    .line 498
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v4, v4, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v4}, Lcom/mediatek/FMRadio/FMRecorder;->stopRecording()V

    goto/16 :goto_2

    .line 503
    .end local v2           #fmState:I
    :cond_8
    if-nez p1, :cond_d

    .line 505
    iget v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->simId:I

    if-nez v4, :cond_9

    .line 506
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsSIM1Idle:Z
    invoke-static {v4, v7}, Lcom/mediatek/FMRadio/FMRadioService;->access$1102(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 512
    :goto_5
    const-string v4, "FMRadioService"

    const-string v5, "CALL_STATE_IDLE"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsSIM1Idle:Z
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioService;->access$1100(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsSIM2Idle:Z
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioService;->access$1200(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 515
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsResumeAfterCall:Z
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioService;->access$000(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 516
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsResumeAfterCall:Z
    invoke-static {v4, v8}, Lcom/mediatek/FMRadio/FMRadioService;->access$002(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 517
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioService;->access$400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 518
    const-string v4, "FMRadioService"

    const-string v5, "FM is already playing, no need to resume."

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 508
    :cond_9
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsSIM2Idle:Z
    invoke-static {v4, v7}, Lcom/mediatek/FMRadio/FMRadioService;->access$1202(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    goto :goto_5

    .line 520
    :cond_a
    const-string v4, "FMRadioService"

    const-string v5, "Need to resume FM."

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const-wide/16 v4, 0x3e8

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 523
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioService;->access$300(Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/IFMRadioService$Stub;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioService;->access$1300(Lcom/mediatek/FMRadio/FMRadioService;)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x4120

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->powerUp(F)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 524
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioService;->access$300(Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/IFMRadioService$Stub;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->setRDS(Z)I

    .line 525
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioService;->access$1000(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    if-nez v4, :cond_1

    .line 527
    const/4 v3, -0x1

    .line 529
    .local v3, ret:I
    :try_start_3
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioService;->access$300(Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/IFMRadioService$Stub;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->switchAntenna(I)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v3

    .line 533
    :goto_6
    :try_start_4
    const-string v4, "FMRadioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "switchAntenna for resume FM after call: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    .line 536
    .end local v3           #ret:I
    :catch_2
    move-exception v0

    .line 537
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v4, "FMRadioService"

    const-string v5, "Exception: Cannot call binder function."

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 530
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #ret:I
    :catch_3
    move-exception v1

    .line 531
    .local v1, ex:Ljava/lang/Exception;
    :try_start_5
    const-string v4, "FMRadioService"

    const-string v5, "Exception: switchAntenna"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_6

    .line 541
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v3           #ret:I
    :cond_b
    const-string v4, "FMRadioService"

    const-string v5, "Do not need to resume, so do nothing."

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 544
    :cond_c
    const-string v4, "FMRadioService"

    const-string v5, "The other SIM is not idle. So do nothing."

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 547
    :cond_d
    const-string v4, "FMRadioService"

    const-string v5, "Error: Invalid call status."

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public setSIMID(I)V
    .locals 0
    .parameter "iSIMID"

    .prologue
    .line 446
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->simId:I

    .line 447
    return-void
.end method
