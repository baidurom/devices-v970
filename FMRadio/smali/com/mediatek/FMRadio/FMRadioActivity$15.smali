.class Lcom/mediatek/FMRadio/FMRadioActivity$15;
.super Ljava/lang/Thread;
.source "FMRadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioActivity;->onDestroy()V
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
    .line 1600
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$15;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1602
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$15;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->stopScan()Z
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7400(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    .line 1603
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$15;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$300(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1604
    const-string v1, "FMRadioActivity"

    const-string v2, "FM is playing."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$15;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v2, 0x0

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->rdsset(Z)I
    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8200(Lcom/mediatek/FMRadio/FMRadioActivity;Z)I

    .line 1606
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$15;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$15;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4120

    div-float/2addr v2, v3

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->tune(F)Z
    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8300(Lcom/mediatek/FMRadio/FMRadioActivity;F)Z

    move-result v0

    .line 1607
    .local v0, bRes:Z
    if-eqz v0, :cond_0

    .line 1608
    const-string v1, "FMRadioActivity"

    const-string v2, "Tune to the station succeeded."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$15;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v2, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->rdsset(Z)I
    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8200(Lcom/mediatek/FMRadio/FMRadioActivity;Z)I

    .line 1618
    .end local v0           #bRes:Z
    :goto_0
    return-void

    .line 1612
    .restart local v0       #bRes:Z
    :cond_0
    const-string v1, "FMRadioActivity"

    const-string v2, "Error: Can not tune to the station."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1615
    .end local v0           #bRes:Z
    :cond_1
    const-string v1, "FMRadioActivity"

    const-string v2, "FM is paused."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$15;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->playFM()V
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8400(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    goto :goto_0
.end method
