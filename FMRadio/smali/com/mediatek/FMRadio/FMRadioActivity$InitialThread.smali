.class Lcom/mediatek/FMRadio/FMRadioActivity$InitialThread;
.super Ljava/lang/Thread;
.source "FMRadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitialThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1653
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1656
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->openDevice()Z
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8500(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1658
    const-string v4, "FMRadioActivity"

    const-string v7, "Error: opendev failed."

    invoke-static {v4, v7}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    :goto_0
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->isRDSSupported()I
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4900(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v4

    if-ne v5, v4, :cond_1

    move v4, v5

    :goto_1
    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRDSSupported:Z
    invoke-static {v7, v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4802(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 1673
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRDSSupported:Z
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4800(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1674
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRDSEnabled:Z
    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$5002(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 1681
    :goto_2
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->isPowerUp()Z
    invoke-static {v6}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4700(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v6

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static {v4, v6}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$302(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 1682
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$300(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1683
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 1684
    .local v2, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 1685
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1686
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "MSGID"

    const/4 v6, 0x7

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1687
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1688
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1720
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    :goto_3
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInited:Z
    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$6002(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 1721
    return-void

    .line 1660
    :cond_0
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 1661
    .restart local v2       #msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 1662
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1663
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v4, "MSGID"

    const/16 v7, 0xd

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1664
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1665
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1666
    const-string v4, "FMRadioActivity"

    const-string v7, "opendev succeed."

    invoke-static {v4, v7}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    :cond_1
    move v4, v6

    .line 1670
    goto :goto_1

    .line 1677
    :cond_2
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRDSEnabled:Z
    invoke-static {v4, v6}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$5002(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    goto :goto_2

    .line 1691
    :cond_3
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->isAntennaAvailable()Z
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8600(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1692
    const/4 v3, -0x1

    .line 1694
    .local v3, ret:I
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1500(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/IFMRadioService;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Lcom/mediatek/FMRadio/IFMRadioService;->switchAntenna(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1698
    :goto_4
    if-eqz v3, :cond_4

    .line 1700
    const-string v4, "FMRadioActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to switch to short antenna: errorcode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    const-string v4, "FMRadioActivity"

    const-string v6, "Antenna is unavailable. Ask if plug in antenna."

    invoke-static {v4, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 1703
    .restart local v2       #msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 1704
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1705
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v4, "MSGID"

    const/16 v6, 0x9

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1706
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1707
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_3

    .line 1695
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 1696
    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "FMRadioActivity"

    const-string v6, "Exception: switchAntenna(1)"

    invoke-static {v4, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1710
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_4
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->playFM()V
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8400(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    goto/16 :goto_3

    .line 1715
    .end local v3           #ret:I
    :cond_5
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->playFM()V
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8400(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    goto/16 :goto_3
.end method
