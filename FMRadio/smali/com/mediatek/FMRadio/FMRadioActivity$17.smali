.class Lcom/mediatek/FMRadio/FMRadioActivity$17;
.super Ljava/lang/Object;
.source "FMRadioActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioActivity;->displayAirPlaneModeDialog()V
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
    .line 1865
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$17;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$17;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsExitPressed:Z
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8702(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 1869
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$17;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->finish()V

    .line 1870
    return-void
.end method
