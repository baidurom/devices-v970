.class Lcom/mediatek/FMRadio/FMRadioEMActivity$4;
.super Ljava/lang/Thread;
.source "FMRadioEMActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioEMActivity;->onPlayFM()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 757
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->playFM()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$4400(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V

    .line 760
    return-void
.end method
