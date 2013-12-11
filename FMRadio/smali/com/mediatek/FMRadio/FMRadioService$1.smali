.class Lcom/mediatek/FMRadio/FMRadioService$1;
.super Lcom/mediatek/FMRadio/IFMRadioService$Stub;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioService;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 553
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {p0}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public activeAF()I
    .locals 4

    .prologue
    .line 909
    const-string v1, "FMRadioService"

    const-string v2, ">>> FMRadioService.activeAF"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->activeAF()S

    move-result v0

    .line 911
    .local v0, frequency:I
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.activeAF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    return v0
.end method

.method public activeTA()I
    .locals 4

    .prologue
    .line 916
    const-string v1, "FMRadioService"

    const-string v2, ">>> FMRadioService.activeTA"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->activeTA()S

    move-result v0

    .line 918
    .local v0, frequency:I
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.activeTA: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    return v0
.end method

.method public closeDevice()Z
    .locals 4

    .prologue
    .line 573
    const-string v1, "FMRadioService"

    const-string v2, ">>> FMRadioService.closeDevice"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const/4 v0, 0x0

    .line 575
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$1400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 577
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService$1;->isRDSSupported()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 578
    const-string v1, "FMRadioService"

    const-string v2, "RDS is supported. Stop the RDS thread."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->stopRDSThread()V
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$1500(Lcom/mediatek/FMRadio/FMRadioService;)V

    .line 583
    :goto_0
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->closedev()Z

    move-result v0

    .line 584
    if-eqz v0, :cond_1

    .line 585
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v2, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z
    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$1402(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 593
    :goto_1
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.closeDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    return v0

    .line 581
    :cond_0
    const-string v1, "FMRadioService"

    const-string v2, "RDS is not supported."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 587
    :cond_1
    const-string v1, "FMRadioService"

    const-string v2, "Error: closedev failed."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 590
    :cond_2
    const-string v1, "FMRadioService"

    const-string v2, "Error: device is already closed."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public deactiveTA()I
    .locals 4

    .prologue
    .line 923
    const-string v1, "FMRadioService"

    const-string v2, ">>> FMRadioService.deactiveTA"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->deactiveTA()S

    move-result v0

    .line 925
    .local v0, frequency:I
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.deactiveTA: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    return v0
.end method

.method public enableAF(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 986
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioService.enableAF: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsAFEnabled:Z
    invoke-static {v0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->access$2902(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 989
    const-string v0, "FMRadioService"

    const-string v1, "<<< FMRadioService.enableAF"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    return-void
.end method

.method public enablePSRT(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 975
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioService.enablePSRT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPSRTEnabled:Z
    invoke-static {v0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->access$2802(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 977
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPSRTEnabled:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$2800(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 979
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const-string v1, ""

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setPS(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$1700(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 980
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const-string v1, ""

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setLRText(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$1800(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 982
    :cond_0
    const-string v0, "FMRadioService"

    const-string v1, "<<< FMRadioService.enablePSRT"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    return-void
.end method

.method public enableTA(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 993
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioService.enableTA: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsTAEnabled:Z
    invoke-static {v0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->access$3002(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 995
    const-string v0, "FMRadioService"

    const-string v1, "<<< FMRadioService.enableTA"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    return-void
.end method

.method public getFrequency()I
    .locals 3

    .prologue
    .line 1017
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.getFrequency"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< FMRadioService.getFrequency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$1300(Lcom/mediatek/FMRadio/FMRadioService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$1300(Lcom/mediatek/FMRadio/FMRadioService;)I

    move-result v0

    return v0
.end method

.method public getHardwareVersion()[I
    .locals 1

    .prologue
    .line 1206
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->getHardwareVersion()[I

    move-result-object v0

    return-object v0
.end method

.method public getLRText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 903
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.getLRText"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< FMRadioService.getLRText: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mLRTextString:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$2600(Lcom/mediatek/FMRadio/FMRadioService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mLRTextString:Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$2600(Lcom/mediatek/FMRadio/FMRadioService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPS()Ljava/lang/String;
    .locals 3

    .prologue
    .line 897
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.getPS"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< FMRadioService.getPS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mPSString:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$2500(Lcom/mediatek/FMRadio/FMRadioService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mPSString:Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$2500(Lcom/mediatek/FMRadio/FMRadioService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackPosition()I
    .locals 1

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v0, :cond_0

    .line 1180
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->getPosition()I

    move-result v0

    .line 1182
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRecordTime()J
    .locals 2

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v0, :cond_0

    .line 1144
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->recordTime()J

    move-result-wide v0

    .line 1147
    :goto_0
    return-wide v0

    .line 1146
    :cond_0
    const-string v0, "FMRadioService"

    const-string v1, "FMRecorder is null !!"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getRecorderState()I
    .locals 1

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v0, :cond_0

    .line 1172
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->getState()I

    move-result v0

    .line 1174
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getRecordingMode()Z
    .locals 1

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsRecording:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$3400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v0

    return v0
.end method

.method public getRecordingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v0, :cond_0

    .line 1188
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->getRecordingName()Ljava/lang/String;

    move-result-object v0

    .line 1190
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResumeAfterCall()Z
    .locals 1

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsResumeAfterCall:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$000(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v0

    return v0
.end method

.method public getStereoMono()Z
    .locals 2

    .prologue
    .line 1056
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.getStereoMono"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->stereoMono()Z

    move-result v0

    return v0
.end method

.method public initService(I)V
    .locals 3
    .parameter "iCurrentStation"

    .prologue
    .line 962
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioService.initService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsServiceInit:Z
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$2702(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 964
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static {v0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->access$1302(Lcom/mediatek/FMRadio/FMRadioService;I)I

    .line 965
    const-string v0, "FMRadioService"

    const-string v1, "<<< FMRadioService.initService"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    return-void
.end method

.method public isAFEnabled()Z
    .locals 3

    .prologue
    .line 1005
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.isAFEnabled"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< FMRadioService.isAFEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsAFEnabled:Z
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$2900(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsAFEnabled:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$2900(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v0

    return v0
.end method

.method public isDeviceOpen()Z
    .locals 3

    .prologue
    .line 598
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.isDeviceOpen"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< FMRadioService.isDeviceOpen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$1400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$1400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v0

    return v0
.end method

.method public isEarphoneUsed()Z
    .locals 3

    .prologue
    .line 956
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.isEarphoneUsed"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< FMRadioService.isEarphoneUsed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsEarphoneUsed:Z
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$500(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsEarphoneUsed:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$500(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v0

    return v0
.end method

.method public isFMOverBTActive()Z
    .locals 1

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mUsingFMViaBTController:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$700(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v0

    return v0
.end method

.method public isPSRTEnabled()Z
    .locals 3

    .prologue
    .line 999
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.isPSRTEnabled"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< FMRadioService.isPSRTEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPSRTEnabled:Z
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$2800(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPSRTEnabled:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$2800(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v0

    return v0
.end method

.method public isPowerUp()Z
    .locals 3

    .prologue
    .line 784
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.isPowerUp"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< FMRadioService.isPowerUp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v0

    return v0
.end method

.method public isRDSSupported()I
    .locals 4

    .prologue
    .line 937
    const-string v1, "FMRadioService"

    const-string v2, ">>> FMRadioService.isRDSSupported"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->isRDSsupport()I

    move-result v0

    .line 939
    .local v0, iRet:I
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.isRDSSupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    return v0
.end method

.method public isSIMCardIdle()Z
    .locals 1

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsSIM1Idle:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$1100(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsSIM2Idle:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$1200(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isServiceInit()Z
    .locals 3

    .prologue
    .line 969
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.isServiceInit"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< FMRadioService.isServiceInit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsServiceInit:Z
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$2700(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsServiceInit:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$2700(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v0

    return v0
.end method

.method public isTAEnabled()Z
    .locals 3

    .prologue
    .line 1011
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.isTAEnabled"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< FMRadioService.isTAEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsTAEnabled:Z
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$3000(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsTAEnabled:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$3000(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v0

    return v0
.end method

.method public openDevice()Z
    .locals 4

    .prologue
    .line 555
    const-string v1, "FMRadioService"

    const-string v2, ">>> FMRadioService.openDevice"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const/4 v0, 0x0

    .line 557
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$1400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 558
    const-string v1, "FMRadioService"

    const-string v2, "Error: device is already open."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/4 v0, 0x1

    .line 568
    :goto_0
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.openDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    return v0

    .line 561
    :cond_0
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->opendev()Z

    move-result v0

    .line 562
    if-eqz v0, :cond_1

    .line 563
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v2, 0x1

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z
    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$1402(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    goto :goto_0

    .line 565
    :cond_1
    const-string v1, "FMRadioService"

    const-string v2, "Error: opendev failed."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public powerDown()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 714
    const-string v6, "FMRadioService"

    const-string v7, ">>> FMRadioService.powerDown"

    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const/4 v2, 0x0

    .line 716
    .local v2, bRet:Z
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z
    invoke-static {v6}, Lcom/mediatek/FMRadio/FMRadioService;->access$400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 717
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V
    invoke-static {v6, v8}, Lcom/mediatek/FMRadio/FMRadioService;->access$800(Lcom/mediatek/FMRadio/FMRadioService;Z)V

    .line 718
    invoke-static {v8}, Lcom/mediatek/FMRadio/FMRadioNative;->powerdown(I)Z

    move-result v2

    .line 719
    if-eqz v2, :cond_5

    .line 720
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mUsingFMViaBTController:Z
    invoke-static {v6, v8}, Lcom/mediatek/FMRadio/FMRadioService;->access$702(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 721
    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService$1;->isRDSSupported()I

    move-result v7

    if-ne v6, v7, :cond_4

    .line 722
    const-string v6, "FMRadioService"

    const-string v7, "RDS is supported. Stop the RDS thread."

    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->stopRDSThread()V
    invoke-static {v6}, Lcom/mediatek/FMRadio/FMRadioService;->access$1500(Lcom/mediatek/FMRadio/FMRadioService;)V

    .line 728
    :goto_0
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->removeNotification()V
    invoke-static {v6}, Lcom/mediatek/FMRadio/FMRadioService;->access$2300(Lcom/mediatek/FMRadio/FMRadioService;)V

    .line 730
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z
    invoke-static {v6, v8}, Lcom/mediatek/FMRadio/FMRadioService;->access$402(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 731
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const-string v7, ""

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setPS(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/FMRadioService;->access$1700(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 732
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const-string v7, ""

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setLRText(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/FMRadioService;->access$1800(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 735
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.mediatek.FMRadio.FMRadioService.ACTION_STATE_CHANGED"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 736
    .local v4, intent:Landroid/content/Intent;
    const-string v6, "EXTRA_FMRADIO_ISPOWERUP"

    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioService;->access$400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 737
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v6, v4}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 739
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v6}, Lcom/mediatek/FMRadio/FMRadioService;->access$2000(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 740
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v6}, Lcom/mediatek/FMRadio/FMRadioService;->access$2000(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 741
    const-string v6, "FMRadioService"

    const-string v7, "release wake lock"

    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_0
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mA2dpService:Landroid/bluetooth/IBluetoothA2dp;
    invoke-static {v6}, Lcom/mediatek/FMRadio/FMRadioService;->access$2100(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v6

    if-nez v6, :cond_1

    .line 747
    const-string v6, "bluetooth_a2dp"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 749
    .local v1, b:Landroid/os/IBinder;
    const-string v6, "FMRadioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "powerdown: IBinder="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    if-eqz v1, :cond_1

    .line 751
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-static {v1}, Landroid/bluetooth/IBluetoothA2dp$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v7

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mA2dpService:Landroid/bluetooth/IBluetoothA2dp;
    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/FMRadioService;->access$2102(Lcom/mediatek/FMRadio/FMRadioService;Landroid/bluetooth/IBluetoothA2dp;)Landroid/bluetooth/IBluetoothA2dp;

    .line 752
    const-string v6, "FMRadioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "powerdown: mA2dpService="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mA2dpService:Landroid/bluetooth/IBluetoothA2dp;
    invoke-static {v8}, Lcom/mediatek/FMRadio/FMRadioService;->access$2100(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    .end local v1           #b:Landroid/os/IBinder;
    :cond_1
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mA2dpService:Landroid/bluetooth/IBluetoothA2dp;
    invoke-static {v6}, Lcom/mediatek/FMRadio/FMRadioService;->access$2100(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 756
    const-string v6, "FMRadioService"

    const-string v7, "powerdown: mA2dpService != null"

    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :try_start_0
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mA2dpService:Landroid/bluetooth/IBluetoothA2dp;
    invoke-static {v6}, Lcom/mediatek/FMRadio/FMRadioService;->access$2100(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v6

    invoke-interface {v6}, Landroid/bluetooth/IBluetoothA2dp;->getState()I

    move-result v0

    .line 759
    .local v0, a2dpState:I
    const-string v6, "FMRadioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "powerdown: mA2dpService.getState()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    const/4 v6, 0x2

    if-eq v0, v6, :cond_2

    const/16 v6, 0xa

    if-ne v0, v6, :cond_3

    .line 763
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.mediatek.FMRadio.FMRadioService.ACTION_TOA2DP_FM_POWERDOWN"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 764
    .local v3, i:Landroid/content/Intent;
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v6, v3}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 765
    const-string v6, "FMRadioService"

    const-string v7, "com.mediatek.FMRadio.FMRadioService.ACTION_TOA2DP_FM_POWERDOWN sent to A2dp service!!"

    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    .end local v0           #a2dpState:I
    .end local v3           #i:Landroid/content/Intent;
    .end local v4           #intent:Landroid/content/Intent;
    :cond_3
    :goto_1
    const-string v6, "FMRadioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<<< FMRadioService.powerDown: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    return v2

    .line 725
    :cond_4
    const-string v6, "FMRadioService"

    const-string v7, "RDS is not supported."

    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 767
    .restart local v4       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v5

    .line 768
    .local v5, re:Landroid/os/RemoteException;
    const-string v6, "FMRadioService"

    const-string v7, "binder error!!"

    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 773
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #re:Landroid/os/RemoteException;
    :cond_5
    const-string v6, "FMRadioService"

    const-string v7, "Error: powerdown failed."

    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 776
    :cond_6
    const-string v6, "FMRadioService"

    const-string v7, "Error: device is already power down."

    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public powerUp(F)Z
    .locals 13
    .parameter "frequency"

    .prologue
    const/4 v12, 0x1

    .line 604
    const-string v9, "FMRadioService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ">>> FMRadioService.powerUp: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    new-instance v7, Landroid/content/Intent;

    const-string v9, "com.android.music.musicservicecommand.pause"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 606
    .local v7, it_music:Landroid/content/Intent;
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v9, v7}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 607
    const/4 v2, 0x0

    .line 608
    .local v2, bRet:Z
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/high16 v10, 0x4120

    mul-float/2addr v10, p1

    float-to-int v10, v10

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static {v9, v10}, Lcom/mediatek/FMRadio/FMRadioService;->access$1302(Lcom/mediatek/FMRadio/FMRadioService;I)I

    .line 614
    new-instance v6, Landroid/content/Intent;

    const-string v9, "com.mediatek.FMTransmitter.FMTransmitterService.ACTION_TOFMTXSERVICE_POWERDOWN"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 615
    .local v6, intentToFMTx:Landroid/content/Intent;
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v9, v6}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 618
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsSIM1Idle:Z
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioService;->access$1100(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsSIM2Idle:Z
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioService;->access$1200(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 619
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioService;->access$400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 620
    const-string v9, "FMRadioService"

    const-string v10, "Error: device is already power up."

    invoke-static {v9, v10}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const/4 v2, 0x1

    .line 709
    :goto_0
    const-string v9, "FMRadioService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<<< FMRadioService.powerUp: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    return v2

    .line 626
    :cond_0
    const-wide/16 v9, 0xa

    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 632
    :goto_1
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->powerup(F)Z

    move-result v2

    .line 639
    if-eqz v2, :cond_6

    .line 641
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->showNotification()V
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioService;->access$1600(Lcom/mediatek/FMRadio/FMRadioService;)V

    .line 647
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z
    invoke-static {v9, v12}, Lcom/mediatek/FMRadio/FMRadioService;->access$402(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 648
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const-string v10, ""

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setPS(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/mediatek/FMRadio/FMRadioService;->access$1700(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 649
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const-string v10, ""

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setLRText(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/mediatek/FMRadio/FMRadioService;->access$1800(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 652
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService$1;->isRDSSupported()I

    move-result v9

    if-ne v12, v9, :cond_2

    .line 653
    const-string v9, "FMRadioService"

    const-string v10, "RDS is supported. Start the RDS thread."

    invoke-static {v9, v10}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->startRDSThread()V
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioService;->access$1900(Lcom/mediatek/FMRadio/FMRadioService;)V

    .line 660
    :goto_2
    new-instance v5, Landroid/content/Intent;

    const-string v9, "com.mediatek.FMRadio.FMRadioService.ACTION_STATE_CHANGED"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 661
    .local v5, intent:Landroid/content/Intent;
    const-string v9, "EXTRA_FMRADIO_ISPOWERUP"

    iget-object v10, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z
    invoke-static {v10}, Lcom/mediatek/FMRadio/FMRadioService;->access$400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v10

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 662
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v9, v5}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 664
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioService;->access$2000(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 665
    const-string v9, "FMRadioService"

    const-string v10, "acquire wake lock"

    invoke-static {v9, v10}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    const-string v9, "bluetooth_a2dp"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 671
    .local v1, b:Landroid/os/IBinder;
    const-string v9, "FMRadioService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "powerup: A2dp service IBinder="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    if-eqz v1, :cond_5

    .line 673
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-static {v1}, Landroid/bluetooth/IBluetoothA2dp$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v10

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mA2dpService:Landroid/bluetooth/IBluetoothA2dp;
    invoke-static {v9, v10}, Lcom/mediatek/FMRadio/FMRadioService;->access$2102(Lcom/mediatek/FMRadio/FMRadioService;Landroid/bluetooth/IBluetoothA2dp;)Landroid/bluetooth/IBluetoothA2dp;

    .line 675
    :try_start_1
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mA2dpService:Landroid/bluetooth/IBluetoothA2dp;
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioService;->access$2100(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mICallBack:Landroid/os/IBinder;
    invoke-static {v10}, Lcom/mediatek/FMRadio/FMRadioService;->access$2200(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/os/IBinder;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/bluetooth/IBluetoothA2dp;->setAudioPathToAudioTrack(Landroid/os/IBinder;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 679
    :goto_3
    const-string v9, "FMRadioService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "powerup: mA2dpService="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mA2dpService:Landroid/bluetooth/IBluetoothA2dp;
    invoke-static {v11}, Lcom/mediatek/FMRadio/FMRadioService;->access$2100(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :try_start_2
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mA2dpService:Landroid/bluetooth/IBluetoothA2dp;
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioService;->access$2100(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mA2dpService:Landroid/bluetooth/IBluetoothA2dp;
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioService;->access$2100(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v9

    invoke-interface {v9}, Landroid/bluetooth/IBluetoothA2dp;->getState()I

    move-result v0

    .line 683
    .local v0, a2dpState:I
    :goto_4
    const-string v9, "FMRadioService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "powerup: mA2dpService.getState()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const/4 v9, 0x2

    if-eq v0, v9, :cond_1

    const/16 v9, 0xa

    if-eq v0, v9, :cond_1

    const/16 v9, 0xb

    if-ne v0, v9, :cond_4

    .line 687
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string v9, "com.mediatek.FMRadio.FMRadioService.ACTION_TOA2DP_FM_POWERUP"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 688
    .local v4, i:Landroid/content/Intent;
    const-string v9, "FMRadioService"

    const-string v10, "com.mediatek.FMRadio.FMRadioService.ACTION_TOA2DP_FM_POWERUP sent to A2dp service!!"

    invoke-static {v9, v10}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v9, v4}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 693
    .end local v0           #a2dpState:I
    .end local v4           #i:Landroid/content/Intent;
    :catch_0
    move-exception v8

    .line 694
    .local v8, re:Landroid/os/RemoteException;
    const-string v9, "FMRadioService"

    const-string v10, "binder error!!"

    invoke-static {v9, v10}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 627
    .end local v1           #b:Landroid/os/IBinder;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v8           #re:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 628
    .local v3, e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 629
    const-string v9, "FMRadioService"

    const-string v10, "Exception: Thread.sleep."

    invoke-static {v9, v10}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 656
    .end local v3           #e:Ljava/lang/InterruptedException;
    :cond_2
    const-string v9, "FMRadioService"

    const-string v10, "RDS is not supported."

    invoke-static {v9, v10}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 676
    .restart local v1       #b:Landroid/os/IBinder;
    .restart local v5       #intent:Landroid/content/Intent;
    :catch_2
    move-exception v3

    .line 677
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 681
    .end local v3           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v0, -0x1

    goto :goto_4

    .line 691
    .restart local v0       #a2dpState:I
    :cond_4
    :try_start_3
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v10, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V
    invoke-static {v9, v10}, Lcom/mediatek/FMRadio/FMRadioService;->access$800(Lcom/mediatek/FMRadio/FMRadioService;Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 697
    .end local v0           #a2dpState:I
    :cond_5
    const-string v9, "FMRadioService"

    const-string v10, "Failed to bind to BluetoothA2dpService!!!"

    invoke-static {v9, v10}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V
    invoke-static {v9, v12}, Lcom/mediatek/FMRadio/FMRadioService;->access$800(Lcom/mediatek/FMRadio/FMRadioService;Z)V

    goto/16 :goto_0

    .line 702
    .end local v1           #b:Landroid/os/IBinder;
    .end local v5           #intent:Landroid/content/Intent;
    :cond_6
    const-string v9, "FMRadioService"

    const-string v10, "Error: powerup failed."

    invoke-static {v9, v10}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 706
    :cond_7
    const-string v9, "FMRadioService"

    const-string v10, "Phone call is ongoing."

    invoke-static {v9, v10}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public readCapArray()I
    .locals 2

    .prologue
    .line 1046
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.readCapArray"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->readCapArray()S

    move-result v0

    return v0
.end method

.method public readRDS()I
    .locals 4

    .prologue
    .line 890
    const-string v1, "FMRadioService"

    const-string v2, ">>> FMRadioService.readRDS"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->readrds()S

    move-result v0

    .line 892
    .local v0, iEvents:I
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.readRDS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    return v0
.end method

.method public readRdsBler()I
    .locals 2

    .prologue
    .line 1066
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.readRdsBler"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->readRdsBler()S

    move-result v0

    return v0
.end method

.method public readRssi()I
    .locals 2

    .prologue
    .line 1051
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.readRssi"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->readRssi()I

    move-result v0

    return v0
.end method

.method public resumeFMAudio()V
    .locals 2

    .prologue
    .line 1027
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.resumeFMAudio"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mUsingFMViaBTController:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$700(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v1, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$800(Lcom/mediatek/FMRadio/FMRadioService;Z)V

    .line 1034
    :goto_0
    const-string v0, "FMRadioService"

    const-string v1, "<<< FMRadioService.resumeFMAudio"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    return-void

    .line 1031
    :cond_0
    const-string v0, "FMRadioService"

    const-string v1, "resumeFMAudio: FM over BT via controller ongoing, so do NOT enable FMPlayer!!"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public saveRecording(Ljava/lang/String;)V
    .locals 2
    .parameter "newName"

    .prologue
    .line 1129
    const-string v0, "FMRadioService"

    const-string v1, ">>> saveRecording"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v0, :cond_1

    .line 1131
    if-eqz p1, :cond_0

    .line 1132
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/FMRadio/FMRecorder;->saveRecording(Landroid/content/Context;Ljava/lang/String;)V

    .line 1139
    :goto_0
    const-string v0, "FMRadioService"

    const-string v1, "<<< saveRecording"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    return-void

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->discardRecording()V

    goto :goto_0

    .line 1137
    :cond_1
    const-string v0, "FMRadioService"

    const-string v1, "FMRecorder is null !!"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public seek(FZ)F
    .locals 8
    .parameter "frequency"
    .parameter "isUp"

    .prologue
    .line 801
    const-string v5, "FMRadioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">>> FMRadioService.seek: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 803
    .local v3, startSeekTime:J
    const-string v5, "FMRadioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Performance test][FMRadio] Test FMRadio Native seek time start ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    invoke-static {p1, p2}, Lcom/mediatek/FMRadio/FMRadioNative;->seek(FZ)F

    move-result v2

    .line 805
    .local v2, fRet:F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 806
    .local v0, endSeekTime:J
    const-string v5, "FMRadioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Performance test][FMRadio] Test FMRadio Native seek time end ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    const-string v5, "FMRadioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<<< FMRadioService.seek: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    return v2
.end method

.method public setFrequency(I)V
    .locals 1
    .parameter "station"

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static {v0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->access$1302(Lcom/mediatek/FMRadio/FMRadioService;I)I

    .line 1024
    return-void
.end method

.method public setMute(Z)I
    .locals 4
    .parameter "mute"

    .prologue
    .line 930
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioService.setMute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->setmute(Z)I

    move-result v0

    .line 932
    .local v0, iRet:I
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.setMute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    return v0
.end method

.method public setRDS(Z)I
    .locals 4
    .parameter "on"

    .prologue
    .line 881
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioService.setRDS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->rdsset(Z)I

    move-result v0

    .line 883
    .local v0, iRet:I
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const-string v2, ""

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setPS(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$1700(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 884
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const-string v2, ""

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setLRText(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$1800(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 885
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.setRDS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    return v0
.end method

.method public setRecordingMode(Z)V
    .locals 3
    .parameter "isRecording"

    .prologue
    .line 1152
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> setRecordingMode: isRecording="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsRecording:Z
    invoke-static {v0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->access$3402(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 1154
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v0, :cond_1

    .line 1155
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 1156
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->stopRecording()V

    .line 1157
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->stopPlayback()V

    .line 1163
    :cond_0
    :goto_0
    const-string v0, "FMRadioService"

    const-string v1, "<<< setRecordingMode"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    return-void

    .line 1159
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v0, :cond_0

    .line 1161
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->resetRecorder()V

    goto :goto_0
.end method

.method public setStereoMono(Z)Z
    .locals 3
    .parameter "isMono"

    .prologue
    .line 1061
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioService.setStereoMono: isMono="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->setStereoMono(Z)Z

    move-result v0

    return v0
.end method

.method public setStopPressed(Z)V
    .locals 1
    .parameter "isStopPressed"

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsStopPressed:Z
    invoke-static {v0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->access$3302(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 1211
    return-void
.end method

.method public startPlayback()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1093
    const-string v1, "FMRadioService"

    const-string v2, ">>> startPlayback"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v1, v1, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v1, :cond_2

    .line 1095
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1096
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v2, 0x0

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V
    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$800(Lcom/mediatek/FMRadio/FMRadioService;Z)V

    .line 1098
    :cond_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$1000(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mRecordingAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$3200(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 1100
    .local v0, audioFocus:I
    if-ne v4, v0, :cond_1

    .line 1101
    const-string v1, "FMRadioService"

    const-string v2, "Record player get audio focus"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v1, v1, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/FMRecorder;->startPlayback()V

    .line 1110
    .end local v0           #audioFocus:I
    :goto_0
    const-string v1, "FMRadioService"

    const-string v2, "<<< startPlayback"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    return-void

    .line 1104
    .restart local v0       #audioFocus:I
    :cond_1
    const-string v1, "FMRadioService"

    const-string v2, "Record player request audio focus failed"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1108
    .end local v0           #audioFocus:I
    :cond_2
    const-string v1, "FMRadioService"

    const-string v2, "FMRecorder is null !!"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startRecording()V
    .locals 3

    .prologue
    .line 1071
    const-string v0, "FMRadioService"

    const-string v1, ">>> startRecording"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mDefaultSDCardPath:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$3102(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)Ljava/lang/String;

    .line 1073
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default sd card file path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mDefaultSDCardPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$3100(Lcom/mediatek/FMRadio/FMRadioService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-nez v0, :cond_0

    .line 1075
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    new-instance v1, Lcom/mediatek/FMRadio/FMRecorder;

    invoke-direct {v1}, Lcom/mediatek/FMRadio/FMRecorder;-><init>()V

    iput-object v1, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    .line 1076
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRecorder;->registerRecorderStateListener(Lcom/mediatek/FMRadio/FMRecorder$onRecorderStateChangedListener;)V

    .line 1078
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->startRecording()V

    .line 1079
    const-string v0, "FMRadioService"

    const-string v1, "<<< startRecording"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    return-void
.end method

.method public startScan()[I
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 812
    const-string v5, "FMRadioService"

    const-string v6, ">>> FMRadioService.startScan"

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const/4 v2, 0x0

    .line 815
    .local v2, iChannels:[I
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioService;->access$400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 816
    invoke-virtual {p0, v8}, Lcom/mediatek/FMRadio/FMRadioService$1;->setRDS(Z)I

    .line 817
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V
    invoke-static {v5, v8}, Lcom/mediatek/FMRadio/FMRadioService;->access$800(Lcom/mediatek/FMRadio/FMRadioService;Z)V

    .line 838
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsSearching:Z
    invoke-static {v5, v9}, Lcom/mediatek/FMRadio/FMRadioService;->access$102(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 839
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->autoscan()[S

    move-result-object v4

    .line 840
    .local v4, shortChannels:[S
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsSearching:Z
    invoke-static {v5, v8}, Lcom/mediatek/FMRadio/FMRadioService;->access$102(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 842
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioService;->access$400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 843
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsSIM1Idle:Z
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioService;->access$1100(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsSIM2Idle:Z
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioService;->access$1200(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 844
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsStopScanCalled:Z
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioService;->access$200(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 845
    invoke-virtual {p0, v9}, Lcom/mediatek/FMRadio/FMRadioService$1;->setRDS(Z)I

    .line 847
    const-string v5, "FMRadioService"

    const-string v6, "startScan: scan complete, but don\'t enable audio yet!"

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsStopScanCalled:Z
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioService;->access$200(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 859
    const/4 v4, 0x0

    .line 860
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsStopScanCalled:Z
    invoke-static {v5, v8}, Lcom/mediatek/FMRadio/FMRadioService;->access$202(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 863
    :cond_2
    if-eqz v4, :cond_6

    .line 864
    array-length v5, v4

    new-array v2, v5, [I

    .line 865
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    array-length v5, v4

    if-ge v1, v5, :cond_6

    .line 866
    aget-short v5, v4, v1

    aput v5, v2, v1

    .line 865
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 819
    .end local v1           #i:I
    .end local v4           #shortChannels:[S
    :cond_3
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioService;->access$1300(Lcom/mediatek/FMRadio/FMRadioService;)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x4120

    div-float/2addr v5, v6

    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioNative;->powerup(F)Z

    .line 822
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioService;->access$1000(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v5

    if-nez v5, :cond_0

    .line 823
    const/4 v3, -0x1

    .line 825
    .local v3, ret:I
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p0, v5}, Lcom/mediatek/FMRadio/FMRadioService$1;->switchAntenna(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 829
    :goto_3
    const-string v5, "FMRadioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startScan: switchAntenna(1): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 826
    :catch_0
    move-exception v0

    .line 827
    .local v0, ex:Ljava/lang/Exception;
    const-string v5, "FMRadioService"

    const-string v6, "Exception: switchAntenna(1)"

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 850
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v3           #ret:I
    .restart local v4       #shortChannels:[S
    :cond_4
    const-string v5, "FMRadioService"

    const-string v6, "A phone call is ongoing."

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 854
    :cond_5
    invoke-static {v8}, Lcom/mediatek/FMRadio/FMRadioNative;->powerdown(I)Z

    goto :goto_1

    .line 869
    :cond_6
    const-string v5, "FMRadioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<<< FMRadioService.startScan: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    return-object v2
.end method

.method public stopPlayback()V
    .locals 2

    .prologue
    .line 1114
    const-string v0, "FMRadioService"

    const-string v1, ">>> stopPlayback"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v0, :cond_1

    .line 1116
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$1000(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mRecordingAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$3200(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1117
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->stopPlayback()V

    .line 1118
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsStopPressed:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$3300(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1119
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v1, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$800(Lcom/mediatek/FMRadio/FMRadioService;Z)V

    .line 1124
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsStopPressed:Z
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$3302(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 1125
    const-string v0, "FMRadioService"

    const-string v1, "<<< stopPlayback"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    return-void

    .line 1122
    :cond_1
    const-string v0, "FMRadioService"

    const-string v1, "FMRecorder is null !!"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopRecording()V
    .locals 2

    .prologue
    .line 1083
    const-string v0, "FMRadioService"

    const-string v1, ">>> stopRecording"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-nez v0, :cond_0

    .line 1085
    const-string v0, "FMRadioService"

    const-string v1, "stopRecording called without a valid recorder!!"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    :goto_0
    return-void

    .line 1088
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder;->stopRecording()V

    .line 1089
    const-string v0, "FMRadioService"

    const-string v1, "<<< stopRecording"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopScan()Z
    .locals 4

    .prologue
    .line 874
    const-string v1, "FMRadioService"

    const-string v2, ">>> FMRadioService.stopScan"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->stopscan()Z

    move-result v0

    .line 876
    .local v0, bRet:Z
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.stopScan: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    return v0
.end method

.method public switchAntenna(I)I
    .locals 4
    .parameter "antenna"

    .prologue
    .line 1038
    const-string v1, "FMRadioService"

    const-string v2, ">>> FMRadioService.switchAntenna"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->switchAntenna(I)I

    move-result v0

    .line 1040
    .local v0, ret:I
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.switchAntenna: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    return v0
.end method

.method public tune(F)Z
    .locals 4
    .parameter "frequency"

    .prologue
    .line 790
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioService.tune: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioNative;->tune(F)Z

    move-result v0

    .line 792
    .local v0, bRet:Z
    if-eqz v0, :cond_0

    .line 793
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/high16 v2, 0x4120

    mul-float/2addr v2, p1

    float-to-int v2, v2

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$1302(Lcom/mediatek/FMRadio/FMRadioService;I)I

    .line 794
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->updateNotification()V
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$2400(Lcom/mediatek/FMRadio/FMRadioService;)V

    .line 796
    :cond_0
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.tune: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    return v0
.end method

.method public useEarphone(Z)V
    .locals 3
    .parameter "use"

    .prologue
    .line 944
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> FMRadioService.useEarphone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    if-eqz p1, :cond_0

    .line 946
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$1000(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v0

    const-string v1, "AudioSetForceToSpeaker=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 947
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsEarphoneUsed:Z
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$502(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 952
    :goto_0
    const-string v0, "FMRadioService"

    const-string v1, "<<< FMRadioService.useEarphone"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    return-void

    .line 949
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioService;->access$1000(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v0

    const-string v1, "AudioSetForceToSpeaker=1"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 950
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService$1;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsEarphoneUsed:Z
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$502(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    goto :goto_0
.end method
