.class Lcom/mediatek/FMRadio/FMRadioService$4;
.super Ljava/lang/Object;
.source "FMRadioService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


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
    .line 1762
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioService$4;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 5
    .parameter "focusChange"

    .prologue
    .line 1764
    const-string v2, "FMRadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAudioFocusChange >>>:focusChange="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    const/4 v2, -0x2

    if-ne p1, v2, :cond_3

    .line 1766
    :cond_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$4;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsSearching:Z
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$100(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1768
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$4;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v3, 0x1

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsStopScanCalled:Z
    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$202(Lcom/mediatek/FMRadio/FMRadioService;Z)Z

    .line 1769
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$4;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$300(Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/IFMRadioService$Stub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->stopScan()Z

    .line 1770
    const-string v2, "FMRadioService"

    const-string v3, "FM loss focus,so stop scan channel."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1775
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$4;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1777
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$4;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$300(Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/IFMRadioService$Stub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->powerDown()Z

    .line 1778
    const-string v2, "FMRadioService"

    const-string v3, "FM loss focus,so powerdown FM."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1786
    :goto_1
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$4;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v2, v2, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v2, :cond_3

    .line 1787
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$4;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v2, v2, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v2}, Lcom/mediatek/FMRadio/FMRecorder;->getState()I

    move-result v1

    .line 1788
    .local v1, fmState:I
    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 1789
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService$4;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v2, v2, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v2}, Lcom/mediatek/FMRadio/FMRecorder;->stopRecording()V

    .line 1791
    :cond_2
    const-string v2, "FMRadioService"

    const-string v3, "FM loss focus,so stop recording or playback."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    .end local v1           #fmState:I
    :cond_3
    return-void

    .line 1771
    :catch_0
    move-exception v0

    .line 1772
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioService"

    const-string v3, "Exception: Cannot call binder function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1779
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1780
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "FMRadioService"

    const-string v3, "Exception: Cannot call binder function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1783
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    const-string v2, "FMRadioService"

    const-string v3, "FM is not playing, so do nothing."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
