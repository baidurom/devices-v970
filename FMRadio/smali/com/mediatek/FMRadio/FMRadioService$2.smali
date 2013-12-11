.class Lcom/mediatek/FMRadio/FMRadioService$2;
.super Ljava/lang/Thread;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioService;->startRDSThread()V
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
    .line 1405
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/16 v9, 0x438

    const/16 v8, 0x36b

    .line 1407
    const-string v5, "FMRadioService"

    const-string v6, ">>> RDS Thread run()"

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    :goto_0
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->readrds()S

    move-result v3

    .line 1410
    .local v3, iRDSEvents:I
    if-eqz v3, :cond_0

    .line 1411
    const-string v5, "FMRadioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<<< FMRadioNative.readrds events: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    :cond_0
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsExit:Z
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioService;->access$3700(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1524
    const-string v5, "FMRadioService"

    const-string v6, "<<< RDS Thread run()"

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    return-void

    .line 1417
    :cond_1
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPSRTEnabled:Z
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioService;->access$2800(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x8

    and-int/lit8 v6, v3, 0x8

    if-ne v5, v6, :cond_2

    .line 1419
    const-string v5, "FMRadioService"

    const-string v6, "RDS_EVENT_PROGRAMNAME"

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->getPS()[B

    move-result-object v1

    .line 1421
    .local v1, bytePS:[B
    if-eqz v1, :cond_7

    .line 1422
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([B)V

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setPS(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioService;->access$1700(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 1427
    .end local v1           #bytePS:[B
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPSRTEnabled:Z
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioService;->access$2800(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x40

    and-int/lit8 v6, v3, 0x40

    if-ne v5, v6, :cond_3

    .line 1429
    const-string v5, "FMRadioService"

    const-string v6, "RDS_EVENT_LAST_RADIOTEXT"

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->getLRText()[B

    move-result-object v0

    .line 1431
    .local v0, byteLRText:[B
    if-eqz v0, :cond_8

    .line 1432
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setLRText(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioService;->access$1800(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 1437
    .end local v0           #byteLRText:[B
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsAFEnabled:Z
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioService;->access$2900(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x80

    and-int/lit16 v6, v3, 0x80

    if-ne v5, v6, :cond_4

    .line 1438
    const-string v5, "FMRadioService"

    const-string v6, "RDS_EVENT_AF"

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->activeAF()S

    move-result v2

    .line 1440
    .local v2, iFreq:I
    const-string v5, "FMRadioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Frequency: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    if-lt v2, v8, :cond_a

    if-gt v2, v9, :cond_a

    .line 1445
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioService;->access$1300(Lcom/mediatek/FMRadio/FMRadioService;)I

    move-result v5

    if-eq v5, v2, :cond_9

    .line 1446
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const-string v6, ""

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setPS(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioService;->access$1700(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 1447
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const-string v6, ""

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setLRText(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioService;->access$1800(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 1449
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static {v5, v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$1302(Lcom/mediatek/FMRadio/FMRadioService;I)I

    .line 1450
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->updateNotification()V
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioService;->access$2400(Lcom/mediatek/FMRadio/FMRadioService;)V

    .line 1453
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_AF_ACTIVED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1454
    .local v4, intent:Landroid/content/Intent;
    const-string v5, "EXTRA_RDS_AF_ACTIVED"

    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static {v6}, Lcom/mediatek/FMRadio/FMRadioService;->access$1300(Lcom/mediatek/FMRadio/FMRadioService;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1455
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v5, v4}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1463
    .end local v2           #iFreq:I
    .end local v4           #intent:Landroid/content/Intent;
    :cond_4
    :goto_3
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsTAEnabled:Z
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioService;->access$3000(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x400

    and-int/lit16 v6, v3, 0x400

    if-ne v5, v6, :cond_5

    .line 1464
    const-string v5, "FMRadioService"

    const-string v6, "RDS_EVENT_TAON"

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->activeTA()S

    move-result v2

    .line 1466
    .restart local v2       #iFreq:I
    const-string v5, "FMRadioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Frequency: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    if-lt v2, v8, :cond_c

    if-gt v2, v9, :cond_c

    .line 1471
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioService;->access$1300(Lcom/mediatek/FMRadio/FMRadioService;)I

    move-result v5

    if-eq v5, v2, :cond_b

    .line 1472
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const-string v6, ""

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setPS(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioService;->access$1700(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 1473
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const-string v6, ""

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setLRText(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioService;->access$1800(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 1475
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static {v5, v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$1302(Lcom/mediatek/FMRadio/FMRadioService;I)I

    .line 1476
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->updateNotification()V
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioService;->access$2400(Lcom/mediatek/FMRadio/FMRadioService;)V

    .line 1479
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_TA_ACTIVED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1480
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v5, "EXTRA_RDS_TA_ACTIVED"

    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static {v6}, Lcom/mediatek/FMRadio/FMRadioService;->access$1300(Lcom/mediatek/FMRadio/FMRadioService;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1481
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v5, v4}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1489
    .end local v2           #iFreq:I
    .end local v4           #intent:Landroid/content/Intent;
    :cond_5
    :goto_4
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsTAEnabled:Z
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioService;->access$3000(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0x800

    and-int/lit16 v6, v3, 0x800

    if-ne v5, v6, :cond_6

    .line 1490
    const-string v5, "FMRadioService"

    const-string v6, "RDS_EVENT_TAON_OFF"

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioNative;->deactiveTA()S

    move-result v2

    .line 1492
    .restart local v2       #iFreq:I
    const-string v5, "FMRadioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Frequency: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    if-lt v2, v8, :cond_e

    if-gt v2, v9, :cond_e

    .line 1497
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioService;->access$1300(Lcom/mediatek/FMRadio/FMRadioService;)I

    move-result v5

    if-eq v5, v2, :cond_d

    .line 1498
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const-string v6, ""

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setPS(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioService;->access$1700(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 1499
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    const-string v6, ""

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->setLRText(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioService;->access$1800(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 1501
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static {v5, v2}, Lcom/mediatek/FMRadio/FMRadioService;->access$1302(Lcom/mediatek/FMRadio/FMRadioService;I)I

    .line 1502
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #calls: Lcom/mediatek/FMRadio/FMRadioService;->updateNotification()V
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioService;->access$2400(Lcom/mediatek/FMRadio/FMRadioService;)V

    .line 1505
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_TA_DEACTIVED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1506
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v5, "EXTRA_RDS_TA_DEACTIVED"

    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I
    invoke-static {v6}, Lcom/mediatek/FMRadio/FMRadioService;->access$1300(Lcom/mediatek/FMRadio/FMRadioService;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1507
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService$2;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v5, v4}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1519
    .end local v2           #iFreq:I
    .end local v4           #intent:Landroid/content/Intent;
    :cond_6
    :goto_5
    const-wide/16 v5, 0x64

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1520
    :catch_0
    move-exception v5

    goto/16 :goto_0

    .line 1424
    .restart local v1       #bytePS:[B
    :cond_7
    const-string v5, "FMRadioService"

    const-string v6, "Error: No program name."

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1434
    .end local v1           #bytePS:[B
    .restart local v0       #byteLRText:[B
    :cond_8
    const-string v5, "FMRadioService"

    const-string v6, "Error: No LRText."

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1457
    .end local v0           #byteLRText:[B
    .restart local v2       #iFreq:I
    :cond_9
    const-string v5, "FMRadioService"

    const-string v6, "Error: the new frequency is the same as current."

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1460
    :cond_a
    const-string v5, "FMRadioService"

    const-string v6, "Error: invalid alternative frequency"

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1483
    :cond_b
    const-string v5, "FMRadioService"

    const-string v6, "Error: the new frequency is the same as current."

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1486
    :cond_c
    const-string v5, "FMRadioService"

    const-string v6, "Error: invalid activeTA frequency"

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1509
    :cond_d
    const-string v5, "FMRadioService"

    const-string v6, "Error: the new frequency is the same as current."

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1512
    :cond_e
    const-string v5, "FMRadioService"

    const-string v6, "Error: invalid deactiveTA frequency"

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method
