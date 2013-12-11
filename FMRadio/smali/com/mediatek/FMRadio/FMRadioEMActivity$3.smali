.class Lcom/mediatek/FMRadio/FMRadioEMActivity$3;
.super Landroid/os/Handler;
.source "FMRadioEMActivity.java"


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
    .line 519
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/16 v8, 0xc

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 521
    const-string v2, "FMRadioEM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> handleMessage ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "MSGID"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsDestroying:Z
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$2600(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 523
    const-string v2, "FMRadioEM"

    const-string v3, "Warning: app is being destroyed."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const-string v2, "FMRadioEM"

    const-string v3, "<<< handleMessage"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :goto_0
    return-void

    .line 528
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "MSGID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v6, v2, :cond_2

    .line 529
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->isAntennaAvailable()Z
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$2700(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 530
    const-string v2, "FMRadioEM"

    const-string v3, "The antenna is still not pluged in."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_1
    :goto_1
    const-string v2, "FMRadioEM"

    const-string v3, "<<< handleMessage"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 534
    :cond_2
    const/4 v2, 0x2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "MSGID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 535
    const-string v2, "FMRadioEM"

    const-string v3, "should search channel"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 536
    :cond_3
    const/4 v2, 0x4

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "MSGID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 537
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->showRDS()V
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$2800(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V

    goto :goto_1

    .line 538
    :cond_4
    const/4 v2, 0x5

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "MSGID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 540
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioEMActivity;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioStation;->setCurrentStation(Landroid/app/Activity;I)V

    goto :goto_1

    .line 542
    :cond_5
    const/16 v2, 0x8

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "MSGID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 543
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->refreshTextStatus(Z)V
    invoke-static {v2, v6}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$200(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)V

    goto :goto_1

    .line 544
    :cond_6
    const/16 v2, 0x9

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "MSGID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_7

    .line 545
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->refreshTextStatus(Z)V
    invoke-static {v2, v7}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$200(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)V

    goto :goto_1

    .line 546
    :cond_7
    const/16 v2, 0xb

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "MSGID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_8

    .line 547
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "TYPE_TOAST_STRING"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 548
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->showToast(Ljava/lang/CharSequence;)V
    invoke-static {v2, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$2900(Lcom/mediatek/FMRadio/FMRadioEMActivity;Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 549
    .end local v1           #text:Ljava/lang/String;
    :cond_8
    const/16 v2, 0xd

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "MSGID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_a

    .line 550
    const-string v2, "FMRadioEM"

    const-string v3, "ENTER MSGID_INIT_OK"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioStation;->getEnablePSRT(Landroid/app/Activity;)Z

    move-result v3

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPSRTEnabled:Z
    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1802(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)Z

    .line 553
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPSRTEnabled:Z
    invoke-static {v2, v6}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1802(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)Z

    .line 554
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioStation;->getEnableAF(Landroid/app/Activity;)Z

    move-result v3

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsAFEnabled:Z
    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$2002(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)Z

    .line 555
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPSRTEnabled:Z
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1800(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioStation;->setEnablePSRT(Landroid/app/Activity;Z)V

    .line 556
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPSRTEnabled:Z
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1800(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v3

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->enablePSRT(Z)V
    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3000(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)V

    .line 557
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsAFEnabled:Z
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$2000(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v3

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->enableAF(Z)V
    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3100(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)V

    .line 560
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->isEarphoneUsed()Z
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3200(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 561
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-virtual {v2, v7}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->switchAntenna(I)I

    .line 562
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRgAntenna:Landroid/widget/RadioGroup;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/RadioGroup;

    move-result-object v2

    const v3, 0x7f060021

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 567
    :goto_2
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextChipID:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3300(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-virtual {v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getChipId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextECOVersion:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3400(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-virtual {v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getECOVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextPatchVersion:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3500(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-virtual {v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getPatchVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextDSPVersion:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3600(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-virtual {v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getDSPVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    const-string v2, "FMRadioEM"

    const-string v3, "Leave MSGID_INIT_OK"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 564
    :cond_9
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-virtual {v2, v6}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->switchAntenna(I)I

    .line 565
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRgAntenna:Landroid/widget/RadioGroup;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/RadioGroup;

    move-result-object v2

    const v3, 0x7f060020

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_2

    .line 574
    :cond_a
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v8, v2, :cond_e

    .line 575
    const-string v2, "FMRadioEM"

    const-string v3, "MSGID_TICK_EVENT msg arrived."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->isDeviceOpen()Z
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1200(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 577
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsBler:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3700(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "%d%%"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-virtual {v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->readRdsBler()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRssi:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3800(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "%d"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-virtual {v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->readRssi()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-virtual {v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getStereoMono()Z

    move-result v0

    .line 580
    .local v0, stereo:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextStereoMono:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$3900(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v0, :cond_c

    const-string v2, "Stereo"

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdAntennaL:Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$4000(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 583
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextCapArray:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$4100(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "N/A"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    .end local v0           #stereo:Z
    :cond_b
    :goto_4
    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v8, v2, v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 580
    .restart local v0       #stereo:Z
    :cond_c
    const-string v2, "Mono"

    goto :goto_3

    .line 585
    :cond_d
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextCapArray:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$4100(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-virtual {v4}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->readCapArray()I

    move-result v4

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->formatCapArray(I)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$4200(Lcom/mediatek/FMRadio/FMRadioEMActivity;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 591
    .end local v0           #stereo:Z
    :cond_e
    const-string v2, "FMRadioEM"

    const-string v3, "Error: undefined message ID."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
