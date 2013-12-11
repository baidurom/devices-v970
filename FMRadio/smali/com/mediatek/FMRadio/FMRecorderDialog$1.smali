.class Lcom/mediatek/FMRadio/FMRecorderDialog$1;
.super Ljava/lang/Object;
.source "FMRecorderDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRecorderDialog;->setTextChangedCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRecorderDialog;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRecorderDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRecorderDialog$1;->this$0:Lcom/mediatek/FMRadio/FMRecorderDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 104
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 109
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v2, 0x1

    .line 115
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorderDialog$1;->this$0:Lcom/mediatek/FMRadio/FMRecorderDialog;

    #setter for: Lcom/mediatek/FMRadio/FMRecorderDialog;->mIsNeedCheckFilenameExist:Z
    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRecorderDialog;->access$002(Lcom/mediatek/FMRadio/FMRecorderDialog;Z)Z

    .line 117
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".*[/\\\\:*?\"<>|].*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorderDialog$1;->this$0:Lcom/mediatek/FMRadio/FMRecorderDialog;

    #getter for: Lcom/mediatek/FMRadio/FMRecorderDialog;->mButtonSave:Landroid/widget/Button;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRecorderDialog;->access$100(Lcom/mediatek/FMRadio/FMRecorderDialog;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorderDialog$1;->this$0:Lcom/mediatek/FMRadio/FMRecorderDialog;

    #getter for: Lcom/mediatek/FMRadio/FMRecorderDialog;->mButtonSave:Landroid/widget/Button;
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRecorderDialog;->access$100(Lcom/mediatek/FMRadio/FMRecorderDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
