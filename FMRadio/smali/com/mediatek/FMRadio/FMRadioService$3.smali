.class Lcom/mediatek/FMRadio/FMRadioService$3;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioService;->registerSDListener()V
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
    .line 1681
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioService$3;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1684
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$3;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v3, v3, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-nez v3, :cond_1

    .line 1685
    const-string v3, "FMRadioService"

    const-string v4, "SD receiver: FMRecorder is not present!!"

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    :cond_0
    :goto_0
    return-void

    .line 1688
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1689
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1690
    const-string v3, "FMRadioService"

    const-string v4, "MEDIA_MOUNTED"

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$3;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v3, v3, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v3}, Lcom/mediatek/FMRadio/FMRecorder;->onSDInserted()V

    goto :goto_0

    .line 1692
    :cond_2
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1695
    :cond_3
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$3;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v3, p2}, Lcom/mediatek/FMRadio/FMRadioService;->isRecordingCardUnmount(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1698
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$3;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v3, v3, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v3}, Lcom/mediatek/FMRadio/FMRecorder;->getState()I

    move-result v2

    .line 1699
    .local v2, oldState:I
    const-string v3, "FMRadioService"

    const-string v4, "MEDIA_EJECT"

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$3;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v3, v3, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v3}, Lcom/mediatek/FMRadio/FMRecorder;->onSDRemoved()V

    .line 1702
    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    .line 1703
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$3;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService;->onRecorderError(I)V

    .line 1704
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$3;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v3, v3, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v3}, Lcom/mediatek/FMRadio/FMRecorder;->discardRecording()V

    .line 1706
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.mediatek.FMRadio.FMRadioService.ACTION_RECORDING_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1707
    .local v1, i:Landroid/content/Intent;
    const-string v3, "EXTRA_RECORDING_STATE"

    const/4 v4, 0x5

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1708
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$3;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v3, v1}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
