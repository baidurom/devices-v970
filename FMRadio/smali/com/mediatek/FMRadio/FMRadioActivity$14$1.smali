.class Lcom/mediatek/FMRadio/FMRadioActivity$14$1;
.super Ljava/lang/Object;
.source "FMRadioActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioActivity$14;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/FMRadio/FMRadioActivity$14;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioActivity$14;)V
    .locals 0
    .parameter

    .prologue
    .line 1113
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14$1;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$14;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14$1;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$14;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsUserCancelSearch:Z
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7302(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 1117
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14$1;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$14;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->stopScan()Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7400(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    .line 1118
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$14$1;->this$1:Lcom/mediatek/FMRadio/FMRadioActivity$14;

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRadioActivity$14;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogSearchProgress:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$7202(Lcom/mediatek/FMRadio/FMRadioActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1120
    return-void
.end method
