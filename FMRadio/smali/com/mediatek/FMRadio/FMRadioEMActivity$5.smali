.class Lcom/mediatek/FMRadio/FMRadioEMActivity$5;
.super Ljava/util/TimerTask;
.source "FMRadioEMActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioEMActivity;->showToast(Ljava/lang/CharSequence;)V
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
    .line 925
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->cancelToast()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$4500(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V

    .line 929
    return-void
.end method
