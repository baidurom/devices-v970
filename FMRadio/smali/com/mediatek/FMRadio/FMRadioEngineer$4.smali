.class Lcom/mediatek/FMRadio/FMRadioEngineer$4;
.super Ljava/lang/Object;
.source "FMRadioEngineer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioEngineer;->initViewAndAdapter()V
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
    .line 730
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 733
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    iget-object v2, v2, Lcom/mediatek/FMRadio/FMRadioEngineer;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    .line 734
    .local v1, inputType:I
    if-nez v1, :cond_0

    .line 736
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    iget-object v2, v2, Lcom/mediatek/FMRadio/FMRadioEngineer;->mEditText:Landroid/widget/EditText;

    const/16 v3, 0x2002

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 739
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Lcom/mediatek/FMRadio/FMRadioEngineer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 740
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$4;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    iget-object v2, v2, Lcom/mediatek/FMRadio/FMRadioEngineer;->mEditText:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 743
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method
