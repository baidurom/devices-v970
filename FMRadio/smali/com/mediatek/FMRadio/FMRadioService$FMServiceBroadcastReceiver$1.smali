.class Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver$1;
.super Ljava/lang/Thread;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver$1;->this$1:Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 257
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver$1;->this$1:Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

    iget-object v1, v1, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$400(Lcom/mediatek/FMRadio/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver$1;->this$1:Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

    iget-object v1, v1, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioService;->access$300(Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/IFMRadioService$Stub;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->setRDS(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FMRadioService"

    const-string v2, "Exception: Cannot call binder function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
