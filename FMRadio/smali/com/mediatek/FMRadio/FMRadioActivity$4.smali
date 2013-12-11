.class Lcom/mediatek/FMRadio/FMRadioActivity$4;
.super Ljava/lang/Object;
.source "FMRadioActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 645
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 11
    .parameter "className"
    .parameter "service"

    .prologue
    .line 647
    const-string v7, "FMRadioActivity"

    const-string v8, ">>> FMRadioActivity.onServiceConnected"

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-static {p2}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/FMRadio/IFMRadioService;

    move-result-object v8

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1502(Lcom/mediatek/FMRadio/FMRadioActivity;Lcom/mediatek/FMRadio/IFMRadioService;)Lcom/mediatek/FMRadio/IFMRadioService;

    .line 649
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1500(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/IFMRadioService;

    move-result-object v7

    if-nez v7, :cond_1

    .line 650
    const-string v7, "FMRadioActivity"

    const-string v8, "Error: null interface"

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-virtual {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->finish()V

    .line 812
    :cond_0
    :goto_0
    const-string v7, "FMRadioActivity"

    const-string v8, "<<< FMRadioActivity.onServiceConnected"

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    return-void

    .line 654
    :cond_1
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->isServiceInit()Z
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3500(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 655
    const-string v7, "FMRadioActivity"

    const-string v8, "FM service is not init."

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v8

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->initService(I)V
    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3600(Lcom/mediatek/FMRadio/FMRadioActivity;I)V

    .line 659
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-static {v8}, Lcom/mediatek/FMRadio/FMRadioStation;->getEnablePSRT(Landroid/app/Activity;)Z

    move-result v8

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPSRTEnabled:Z
    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3702(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 660
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-static {v8}, Lcom/mediatek/FMRadio/FMRadioStation;->getEnableAF(Landroid/app/Activity;)Z

    move-result v8

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsAFEnabled:Z
    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3802(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 662
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPSRTEnabled:Z
    invoke-static {v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3700(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v8

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->enablePSRT(Z)V
    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3900(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 663
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsAFEnabled:Z
    invoke-static {v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3800(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v8

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->enableAF(Z)V
    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4000(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 666
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v8, 0x0

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshButtonStatus(Z)V
    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4100(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 667
    new-instance v6, Lcom/mediatek/FMRadio/FMRadioActivity$InitialThread;

    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct {v6, v7}, Lcom/mediatek/FMRadio/FMRadioActivity$InitialThread;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 668
    .local v6, thread:Lcom/mediatek/FMRadio/FMRadioActivity$InitialThread;
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v8, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mSavedInstanceState:Landroid/os/Bundle;
    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4202(Lcom/mediatek/FMRadio/FMRadioActivity;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 669
    invoke-virtual {v6}, Lcom/mediatek/FMRadio/FMRadioActivity$InitialThread;->start()V

    .line 679
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->startAnimation()V
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4300(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 792
    .end local v6           #thread:Lcom/mediatek/FMRadio/FMRadioActivity$InitialThread;
    :goto_1
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemEarLoud:Landroid/view/MenuItem;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$6100(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/view/MenuItem;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 793
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->isEarphoneUsed()Z
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$6200(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 794
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemEarLoud:Landroid/view/MenuItem;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$6100(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/view/MenuItem;

    move-result-object v7

    const v8, 0x7f020015

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 795
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->onUseEarphone()V
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$6300(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 803
    :cond_2
    :goto_2
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mSavedInstanceState:Landroid/os/Bundle;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 804
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mSavedInstanceState:Landroid/os/Bundle;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "FM_INSTANCE_STATE_RECORDING_NAME"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 805
    .local v0, bIsSaveDlgShown:Z
    if-eqz v0, :cond_0

    .line 806
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mSDDirectory:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3002(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 807
    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->checkRemainingStorage()Z
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2700(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v7

    if-nez v7, :cond_11

    const/4 v7, 0x1

    :goto_3
    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsStorageWarning:Z
    invoke-static {v8, v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$6502(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 808
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v8, 0x4

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->removeAndShowDialog(I)V
    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$5800(Lcom/mediatek/FMRadio/FMRadioActivity;I)V

    goto/16 :goto_0

    .line 682
    .end local v0           #bIsSaveDlgShown:Z
    :cond_3
    const-string v7, "FMRadioActivity"

    const-string v8, "FM service is already init."

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->isDeviceOpen()Z
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4400(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 685
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->getFrequency()I
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4500(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v4

    .line 686
    .local v4, iFreq:I
    const/16 v7, 0x438

    if-gt v4, v7, :cond_4

    const/16 v7, 0x36b

    if-ge v4, v7, :cond_9

    .line 688
    :cond_4
    const-string v7, "FMRadioActivity"

    const-string v8, "Error: invalid frequency in service."

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :goto_4
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->isPowerUp()Z
    invoke-static {v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4700(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v8

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$302(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 719
    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v7, 0x1

    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->isRDSSupported()I
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4900(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v9

    if-ne v7, v9, :cond_c

    const/4 v7, 0x1

    :goto_5
    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRDSSupported:Z
    invoke-static {v8, v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4802(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 721
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRDSSupported:Z
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4800(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 722
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v8, 0x1

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRDSEnabled:Z
    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$5002(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 728
    :goto_6
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$300(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1400(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSearching:Z
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$5100(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 729
    const-string v7, "FMRadioActivity"

    const-string v8, "FM is already power up."

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :try_start_0
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1500(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/IFMRadioService;

    move-result-object v7

    invoke-interface {v7}, Lcom/mediatek/FMRadio/IFMRadioService;->resumeFMAudio()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    :goto_7
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayStop:Landroid/widget/ImageButton;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v7

    const v8, 0x7f02002f

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 738
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshButtonStatus()V
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$400(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 741
    :cond_5
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRDSSupported:Z
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4800(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 742
    const-string v7, "FMRadioActivity"

    const-string v8, "RDS is supported."

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->isPSRTEnabled()Z
    invoke-static {v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$5200(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v8

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPSRTEnabled:Z
    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3702(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 746
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->isAFEnabled()Z
    invoke-static {v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$5300(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v8

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsAFEnabled:Z
    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3802(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 749
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$300(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 751
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->getPS()Ljava/lang/String;
    invoke-static {v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$5400(Lcom/mediatek/FMRadio/FMRadioActivity;)Ljava/lang/String;

    move-result-object v8

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mPSString:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$502(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 752
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->getLRText()Ljava/lang/String;
    invoke-static {v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$5500(Lcom/mediatek/FMRadio/FMRadioActivity;)Ljava/lang/String;

    move-result-object v8

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mLRTextString:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$702(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 753
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 754
    .local v5, msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 755
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 756
    .local v1, bundle:Landroid/os/Bundle;
    const-string v7, "MSGID"

    const/4 v8, 0x3

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 757
    invoke-virtual {v5, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 758
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 767
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v5           #msg:Landroid/os/Message;
    :cond_6
    :goto_8
    :try_start_1
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1500(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/IFMRadioService;

    move-result-object v8

    invoke-interface {v8}, Lcom/mediatek/FMRadio/IFMRadioService;->getRecordingMode()Z

    move-result v8

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z
    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1402(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 768
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z
    invoke-static {v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1400(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v8

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->changeRecordingMode(Z)V
    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$5600(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    .line 769
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1400(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 770
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v8, -0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->refreshRecordingStatus(I)V
    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1100(Lcom/mediatek/FMRadio/FMRadioActivity;I)V

    .line 773
    :cond_7
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsShowSaveDialog:Z
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$5700(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 774
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v8, 0x4

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->removeAndShowDialog(I)V
    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$5800(Lcom/mediatek/FMRadio/FMRadioActivity;I)V

    .line 775
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v8, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsShowSaveDialog:Z
    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$5702(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 776
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v8, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsConfigChange:Z
    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$5902(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 784
    :cond_8
    :goto_9
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v8, 0x1

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInited:Z
    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$6002(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    goto/16 :goto_1

    .line 691
    :cond_9
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v7

    if-eq v7, v4, :cond_b

    .line 692
    const-string v7, "FMRadioActivity"

    const-string v8, "The frequency in FM service is not same as in database."

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v7, v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$802(Lcom/mediatek/FMRadio/FMRadioActivity;I)I

    .line 696
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioStation;->setCurrentStation(Landroid/app/Activity;I)V

    .line 698
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationValue:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4600(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x4120

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioStation;->isFavoriteStation(Landroid/app/Activity;I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 701
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1600(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v7

    const v8, 0x7f02000b

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 703
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v9

    const/4 v10, 0x2

    invoke-static {v8, v9, v10}, Lcom/mediatek/FMRadio/FMRadioStation;->getStationName(Landroid/app/Activity;II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 708
    :cond_a
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1600(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v7

    const v8, 0x7f020009

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 710
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/TextView;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 714
    :cond_b
    const-string v7, "FMRadioActivity"

    const-string v8, "The frequency in FM service is same as in database."

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 719
    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 725
    :cond_d
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v8, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRDSEnabled:Z
    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$5002(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    goto/16 :goto_6

    .line 734
    :catch_0
    move-exception v2

    .line 735
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 762
    .end local v2           #e:Ljava/lang/Exception;
    :cond_e
    const-string v7, "FMRadioActivity"

    const-string v8, "RDS is not supported."

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 778
    :catch_1
    move-exception v3

    .line 779
    .local v3, ex:Ljava/lang/Exception;
    const-string v7, "FMRadioActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRecordingMode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 788
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v4           #iFreq:I
    :cond_f
    const-string v7, "FMRadioActivity"

    const-string v8, "Error: FM device is not open"

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 798
    :cond_10
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemEarLoud:Landroid/view/MenuItem;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$6100(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/view/MenuItem;

    move-result-object v7

    const v8, 0x7f02001a

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 799
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->onUseLoudspeaker()V
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$6400(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    goto/16 :goto_2

    .line 807
    .restart local v0       #bIsSaveDlgShown:Z
    :cond_11
    const/4 v7, 0x0

    goto/16 :goto_3
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 816
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1502(Lcom/mediatek/FMRadio/FMRadioActivity;Lcom/mediatek/FMRadio/IFMRadioService;)Lcom/mediatek/FMRadio/IFMRadioService;

    .line 818
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< FMRadioActivity.onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    return-void
.end method
