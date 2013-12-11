.class Lcom/mediatek/FMRadio/FMRadioEMActivity$InitialThread;
.super Ljava/lang/Thread;
.source "FMRadioEMActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioEMActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitialThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 696
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 698
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 701
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->openDevice()Z
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$4300(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 703
    const-string v4, "FMRadioEM"

    const-string v7, "Error: opendev failed."

    invoke-static {v4, v7}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :goto_0
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 708
    .local v3, msgi:Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$400(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 709
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 710
    .local v1, bundlei:Landroid/os/Bundle;
    const-string v4, "MSGID"

    const/16 v7, 0xd

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 711
    invoke-virtual {v3, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 712
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 715
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->isRDSSupported()I
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1600(Lcom/mediatek/FMRadio/FMRadioEMActivity;)I

    move-result v4

    if-ne v5, v4, :cond_1

    move v4, v5

    :goto_1
    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsRDSSupported:Z
    invoke-static {v7, v4}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1502(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)Z

    .line 718
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsRDSSupported:Z
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1500(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 719
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsRDSEnabled:Z
    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1702(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)Z

    .line 725
    :goto_2
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->isPowerUp()Z
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1400(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v5

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z
    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$002(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)Z

    .line 726
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$000(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 727
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 728
    .local v2, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$400(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 729
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 730
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "MSGID"

    const/16 v5, 0x8

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 731
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 732
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 739
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    :goto_3
    const-string v4, "FMRadioEM"

    const-string v5, "InitialThread terminated."

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    return-void

    .line 705
    .end local v1           #bundlei:Landroid/os/Bundle;
    .end local v3           #msgi:Landroid/os/Message;
    :cond_0
    const-string v4, "FMRadioEM"

    const-string v7, "opendev succeed."

    invoke-static {v4, v7}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .restart local v1       #bundlei:Landroid/os/Bundle;
    .restart local v3       #msgi:Landroid/os/Message;
    :cond_1
    move v4, v6

    .line 715
    goto :goto_1

    .line 721
    :cond_2
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsRDSEnabled:Z
    invoke-static {v4, v6}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$1702(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)Z

    goto :goto_2

    .line 734
    :cond_3
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->playFM()V
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$4400(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V

    goto :goto_3
.end method
