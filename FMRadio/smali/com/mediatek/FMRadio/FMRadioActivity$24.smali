.class Lcom/mediatek/FMRadio/FMRadioActivity$24;
.super Ljava/util/TimerTask;
.source "FMRadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioActivity;->showToast(Ljava/lang/CharSequence;)V
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
    .line 2535
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$24;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2538
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$24;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->cancelToast()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$9000(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 2539
    return-void
.end method
