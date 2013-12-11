.class Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;
.super Ljava/lang/Thread;
.source "FMRadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TuneThread"
.end annotation


# instance fields
.field public currentStation:I

.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/FMRadio/FMRadioActivity;I)V
    .locals 0
    .parameter
    .parameter "station"

    .prologue
    .line 2353
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2354
    iput p2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;->currentStation:I

    .line 2355
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2357
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$300(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2358
    const-string v3, "FMRadioActivity"

    const-string v4, "FM is playing."

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v4, 0x0

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->rdsset(Z)I
    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8200(Lcom/mediatek/FMRadio/FMRadioActivity;Z)I

    .line 2360
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;->currentStation:I

    int-to-float v4, v4

    const/high16 v5, 0x4120

    div-float/2addr v4, v5

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->tune(F)Z
    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8300(Lcom/mediatek/FMRadio/FMRadioActivity;F)Z

    move-result v0

    .line 2361
    .local v0, bRes:Z
    if-eqz v0, :cond_0

    .line 2362
    const-string v3, "FMRadioActivity"

    const-string v4, "Tune to the station succeeded."

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2363
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v4, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->rdsset(Z)I
    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8200(Lcom/mediatek/FMRadio/FMRadioActivity;Z)I

    .line 2364
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;->currentStation:I

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$802(Lcom/mediatek/FMRadio/FMRadioActivity;I)I

    .line 2367
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioStation;->setCurrentStation(Landroid/app/Activity;I)V

    .line 2392
    .end local v0           #bRes:Z
    :goto_0
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 2393
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 2394
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2395
    .local v1, bundle:Landroid/os/Bundle;
    const-string v3, "MSGID"

    const/16 v4, 0xc

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2396
    const-string v3, "TUNE_STATION"

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2397
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2398
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2399
    return-void

    .line 2369
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    .restart local v0       #bRes:Z
    :cond_0
    const-string v3, "FMRadioActivity"

    const-string v4, "Error: Can not tune to the station."

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2372
    .end local v0           #bRes:Z
    :cond_1
    const-string v3, "FMRadioActivity"

    const-string v4, "FM is paused."

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2373
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;->currentStation:I

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$802(Lcom/mediatek/FMRadio/FMRadioActivity;I)I

    .line 2375
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioStation;->setCurrentStation(Landroid/app/Activity;I)V

    .line 2376
    new-instance v3, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread$1;

    invoke-direct {v3, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread$1;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;)V

    invoke-virtual {v3}, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread$1;->start()V

    goto :goto_0
.end method
