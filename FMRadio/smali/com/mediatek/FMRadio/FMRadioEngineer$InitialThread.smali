.class Lcom/mediatek/FMRadio/FMRadioEngineer$InitialThread;
.super Ljava/lang/Thread;
.source "FMRadioEngineer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioEngineer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitialThread"
.end annotation


# instance fields
.field private savedInstanceState:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;


# direct methods
.method public constructor <init>(Lcom/mediatek/FMRadio/FMRadioEngineer;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter "params"

    .prologue
    .line 752
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 753
    iput-object p2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$InitialThread;->savedInstanceState:Landroid/os/Bundle;

    .line 754
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 757
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #calls: Lcom/mediatek/FMRadio/FMRadioEngineer;->openDevice()Z
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$3500(Lcom/mediatek/FMRadio/FMRadioEngineer;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 759
    const-string v4, "FMRadioEngineer"

    const-string v7, "Error: opendev failed."

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :goto_0
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 765
    .local v3, msgi:Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$300(Lcom/mediatek/FMRadio/FMRadioEngineer;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 766
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 767
    .local v1, bundlei:Landroid/os/Bundle;
    const-string v4, "MSGID"

    const/16 v7, 0xd

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 768
    invoke-virtual {v3, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 769
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 772
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #calls: Lcom/mediatek/FMRadio/FMRadioEngineer;->isRDSSupported()I
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$1400(Lcom/mediatek/FMRadio/FMRadioEngineer;)I

    move-result v4

    if-ne v5, v4, :cond_1

    move v4, v5

    :goto_1
    #setter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->mbRDSSupported:Z
    invoke-static {v7, v4}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$1302(Lcom/mediatek/FMRadio/FMRadioEngineer;Z)Z

    .line 775
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->mbRDSSupported:Z
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$1300(Lcom/mediatek/FMRadio/FMRadioEngineer;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 776
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #setter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->mbRDSEnabled:Z
    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$1502(Lcom/mediatek/FMRadio/FMRadioEngineer;Z)Z

    .line 783
    :goto_2
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #calls: Lcom/mediatek/FMRadio/FMRadioEngineer;->isPowerUp()Z
    invoke-static {v6}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$1200(Lcom/mediatek/FMRadio/FMRadioEngineer;)Z

    move-result v6

    #setter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->mbPlaying:Z
    invoke-static {v4, v6}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$002(Lcom/mediatek/FMRadio/FMRadioEngineer;Z)Z

    .line 784
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->mbPlaying:Z
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$000(Lcom/mediatek/FMRadio/FMRadioEngineer;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 785
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 786
    .local v2, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$300(Lcom/mediatek/FMRadio/FMRadioEngineer;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 787
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 788
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "MSGID"

    const/16 v6, 0x8

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 789
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 790
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 799
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    :goto_3
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #setter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->mbInited:Z
    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$2202(Lcom/mediatek/FMRadio/FMRadioEngineer;Z)Z

    .line 800
    const-string v4, "FMRadioEngineer"

    const-string v5, "InitialThread terminated."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    return-void

    .line 762
    .end local v1           #bundlei:Landroid/os/Bundle;
    .end local v3           #msgi:Landroid/os/Message;
    :cond_0
    const-string v4, "FMRadioEngineer"

    const-string v7, "opendev succeed."

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .restart local v1       #bundlei:Landroid/os/Bundle;
    .restart local v3       #msgi:Landroid/os/Message;
    :cond_1
    move v4, v6

    .line 772
    goto :goto_1

    .line 779
    :cond_2
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #setter for: Lcom/mediatek/FMRadio/FMRadioEngineer;->mbRDSEnabled:Z
    invoke-static {v4, v6}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$1502(Lcom/mediatek/FMRadio/FMRadioEngineer;Z)Z

    goto :goto_2

    .line 794
    :cond_3
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$InitialThread;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #calls: Lcom/mediatek/FMRadio/FMRadioEngineer;->playFM()V
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$3600(Lcom/mediatek/FMRadio/FMRadioEngineer;)V

    goto :goto_3
.end method
