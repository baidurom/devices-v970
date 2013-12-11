.class Lcom/mediatek/FMRadio/FMRadioActivity$18;
.super Ljava/lang/Object;
.source "FMRadioActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 1910
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1912
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> onClick Negative"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1914
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsExitPressed:Z
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8702(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 1915
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$18;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->finish()V

    .line 1916
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< onClick Negative"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    return-void
.end method
