.class Lcom/mediatek/FMRadio/FMRadioEMActivity$2;
.super Ljava/lang/Object;
.source "FMRadioEMActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioEMActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .parameter "className"
    .parameter "service"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 381
    const-string v4, "FMRadioEM"

    const-string v7, ">>> FMRadioEMActivity.onServiceConnected"

    invoke-static {v4, v7}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-static {p2}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/FMRadio/IFMRadioService;

    move-result-object v7

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v4, v7}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$902(Lcom/mediatek/FMRadio/FMRadioEMActivity;Lcom/mediatek/FMRadio/IFMRadioService;)Lcom/mediatek/FMRadio/IFMRadioService;

    .line 383
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$900(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Lcom/mediatek/FMRadio/IFMRadioService;

    move-result-object v4

    if-nez v4, :cond_0

    .line 384
    const-string v4, "FMRadioEM"

    const-string v5, "Error: null interface"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-virtual {v4}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->finish()V

    .line 473
    :goto_0
    const-string v4, "FMRadioEM"

    const-string v5, "<<< FMRadioEMActivity.onServiceConnected"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    return-void

    .line 387
    :cond_0
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->isServiceInit()Z
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1000(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 388
    const-string v4, "FMRadioEM"

    const-string v5, "FM service is not init."

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioEMActivity;)I

    move-result v5

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->initService(I)V
    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1100(Lcom/mediatek/FMRadio/FMRadioEMActivity;I)V

    .line 390
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->refreshTextStatus(Z)V
    invoke-static {v4, v6}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$200(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)V

    .line 391
    new-instance v3, Lcom/mediatek/FMRadio/FMRadioEMActivity$InitialThread;

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-direct {v3, v4}, Lcom/mediatek/FMRadio/FMRadioEMActivity$InitialThread;-><init>(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V

    .line 393
    .local v3, thread:Lcom/mediatek/FMRadio/FMRadioEMActivity$InitialThread;
    invoke-virtual {v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity$InitialThread;->start()V

    goto :goto_0

    .line 403
    .end local v3           #thread:Lcom/mediatek/FMRadio/FMRadioEMActivity$InitialThread;
    :cond_1
    const-string v4, "FMRadioEM"

    const-string v7, "FM service is already init."

    invoke-static {v4, v7}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->isDeviceOpen()Z
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1200(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 406
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->getFrequency()I
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1300(Lcom/mediatek/FMRadio/FMRadioEMActivity;)I

    move-result v1

    .line 407
    .local v1, iFreq:I
    const/16 v4, 0x438

    if-gt v1, v4, :cond_2

    const/16 v4, 0x36b

    if-ge v1, v4, :cond_5

    .line 409
    :cond_2
    const-string v4, "FMRadioEM"

    const-string v7, "Error: invalid frequency in service."

    invoke-static {v4, v7}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :goto_1
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->isPowerUp()Z
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1400(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v7

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z
    invoke-static {v4, v7}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$002(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)Z

    .line 422
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->isRDSSupported()I
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1600(Lcom/mediatek/FMRadio/FMRadioEMActivity;)I

    move-result v4

    if-ne v5, v4, :cond_7

    move v4, v5

    :goto_2
    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsRDSSupported:Z
    invoke-static {v7, v4}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1502(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)Z

    .line 424
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsRDSSupported:Z
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1500(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 425
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsRDSEnabled:Z
    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1702(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)Z

    .line 430
    :goto_3
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$000(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 431
    const-string v4, "FMRadioEM"

    const-string v6, "FM is already power up."

    invoke-static {v4, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->refreshTextStatus(Z)V
    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$200(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)V

    .line 435
    :cond_3
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsRDSSupported:Z
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1500(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 436
    const-string v4, "FMRadioEM"

    const-string v5, "RDS is supported."

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->isPSRTEnabled()Z
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1900(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v5

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPSRTEnabled:Z
    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1802(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)Z

    .line 440
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->isAFEnabled()Z
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$2100(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v5

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsAFEnabled:Z
    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$2002(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)Z

    .line 442
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$000(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 444
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->getPS()Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$2200(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mPSString:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$302(Lcom/mediatek/FMRadio/FMRadioEMActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 445
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->getLRText()Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$2300(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mLRTextString:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$502(Lcom/mediatek/FMRadio/FMRadioEMActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 446
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 447
    .local v2, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$400(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 448
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 449
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "MSGID"

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 450
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 451
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 463
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #iFreq:I
    .end local v2           #msg:Landroid/os/Message;
    :cond_4
    :goto_4
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 464
    .restart local v2       #msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$400(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 465
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 466
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v4, "MSGID"

    const/16 v5, 0xd

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 467
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 468
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 411
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    .restart local v1       #iFreq:I
    :cond_5
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioEMActivity;)I

    move-result v4

    if-eq v4, v1, :cond_6

    .line 412
    const-string v4, "FMRadioEM"

    const-string v7, "The frequency in FM service is not same as in database."

    invoke-static {v4, v7}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I
    invoke-static {v4, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$602(Lcom/mediatek/FMRadio/FMRadioEMActivity;I)I

    .line 415
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioEMActivity;)I

    move-result v7

    invoke-static {v4, v7}, Lcom/mediatek/FMRadio/FMRadioStation;->setCurrentStation(Landroid/app/Activity;I)V

    goto/16 :goto_1

    .line 417
    :cond_6
    const-string v4, "FMRadioEM"

    const-string v7, "The frequency in FM service is same as in database."

    invoke-static {v4, v7}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_7
    move v4, v6

    .line 422
    goto/16 :goto_2

    .line 427
    :cond_8
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsRDSEnabled:Z
    invoke-static {v4, v6}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1702(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)Z

    goto/16 :goto_3

    .line 454
    :cond_9
    const-string v4, "FMRadioEM"

    const-string v5, "RDS is not supported."

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 461
    .end local v1           #iFreq:I
    :cond_a
    const-string v4, "FMRadioEM"

    const-string v5, "Error: FM device is not open"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 477
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$902(Lcom/mediatek/FMRadio/FMRadioEMActivity;Lcom/mediatek/FMRadio/IFMRadioService;)Lcom/mediatek/FMRadio/IFMRadioService;

    .line 479
    const-string v0, "FMRadioEM"

    const-string v1, "<<< FMRadioEMActivity.onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return-void
.end method
