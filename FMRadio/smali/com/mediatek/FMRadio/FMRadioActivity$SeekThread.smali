.class Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;
.super Ljava/lang/Thread;
.source "FMRadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SeekThread"
.end annotation


# instance fields
.field public currentStation:I

.field public seekDirection:Z

.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/FMRadio/FMRadioActivity;IZ)V
    .locals 0
    .parameter
    .parameter "station"
    .parameter "direction"

    .prologue
    .line 2284
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2285
    iput p2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;->currentStation:I

    .line 2286
    iput-boolean p3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;->seekDirection:Z

    .line 2287
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/16 v9, 0x438

    const/16 v8, 0x36b

    const/high16 v7, 0x4120

    .line 2289
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v5, 0x0

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->rdsset(Z)I
    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8200(Lcom/mediatek/FMRadio/FMRadioActivity;Z)I

    .line 2291
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;->currentStation:I

    int-to-float v5, v5

    div-float/2addr v5, v7

    iget-boolean v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;->seekDirection:Z

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->seek(FZ)F
    invoke-static {v4, v5, v6}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8900(Lcom/mediatek/FMRadio/FMRadioActivity;FZ)F

    move-result v1

    .line 2292
    .local v1, fStation:F
    mul-float v4, v1, v7

    float-to-int v2, v4

    .line 2294
    .local v2, iStation:I
    if-gt v2, v9, :cond_0

    if-ge v2, v8, :cond_1

    .line 2296
    :cond_0
    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;->seekDirection:Z

    if-nez v4, :cond_3

    .line 2297
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/high16 v5, 0x42d8

    iget-boolean v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;->seekDirection:Z

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->seek(FZ)F
    invoke-static {v4, v5, v6}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8900(Lcom/mediatek/FMRadio/FMRadioActivity;FZ)F

    move-result v1

    .line 2298
    mul-float v4, v1, v7

    float-to-int v2, v4

    .line 2306
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v5, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->rdsset(Z)I
    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8200(Lcom/mediatek/FMRadio/FMRadioActivity;Z)I

    .line 2307
    if-gt v2, v9, :cond_2

    if-ge v2, v8, :cond_4

    .line 2309
    :cond_2
    const-string v4, "FMRadioActivity"

    const-string v5, "Error: Can not search previous station."

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 2311
    .local v3, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 2312
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2313
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "MSGID"

    const/4 v5, 0x6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2314
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2315
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 2328
    :goto_1
    return-void

    .line 2301
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v3           #msg:Landroid/os/Message;
    :cond_3
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/high16 v5, 0x42af

    iget-boolean v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;->seekDirection:Z

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->seek(FZ)F
    invoke-static {v4, v5, v6}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8900(Lcom/mediatek/FMRadio/FMRadioActivity;FZ)F

    move-result v1

    .line 2302
    mul-float v4, v1, v7

    float-to-int v2, v4

    goto :goto_0

    .line 2318
    :cond_4
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 2319
    .restart local v3       #msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 2320
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2321
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v4, "MSGID"

    const/4 v5, 0x5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2322
    const-string v4, "SEEK_STATION"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2323
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2324
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 2325
    const-string v4, "FMRadioActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Send message to tune to recently seeked station: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
