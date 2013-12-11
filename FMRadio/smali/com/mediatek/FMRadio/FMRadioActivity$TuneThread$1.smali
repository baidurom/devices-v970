.class Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread$1;
.super Ljava/lang/Thread;
.source "FMRadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;)V
    .locals 0
    .parameter

    .prologue
    .line 2376
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread$1;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2378
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread$1;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->playFM()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8400(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 2379
    return-void
.end method
