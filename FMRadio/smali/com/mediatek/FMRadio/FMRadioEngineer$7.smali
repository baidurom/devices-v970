.class Lcom/mediatek/FMRadio/FMRadioEngineer$7;
.super Ljava/util/TimerTask;
.source "FMRadioEngineer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioEngineer;->showToast(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioEngineer;)V
    .locals 0
    .parameter

    .prologue
    .line 1042
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$7;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$7;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #calls: Lcom/mediatek/FMRadio/FMRadioEngineer;->cancelToast()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$3800(Lcom/mediatek/FMRadio/FMRadioEngineer;)V

    .line 1046
    return-void
.end method
