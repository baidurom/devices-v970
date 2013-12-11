.class Lcom/mediatek/FMRadio/FMRadioActivity$21;
.super Ljava/lang/Object;
.source "FMRadioActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


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
    .line 1937
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$21;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 3
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 1939
    const-string v0, "FMRadioActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> onClick RDS settings choice item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " checked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    packed-switch p2, :pswitch_data_0

    .line 1963
    const-string v0, "FMRadioActivity"

    const-string v1, "Error: invalid item"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    :goto_0
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< onClick RDS settings choice item"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    return-void

    .line 1943
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$21;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPSRTEnabled:Z
    invoke-static {v0, p3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3702(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 1944
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$21;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$21;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPSRTEnabled:Z
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3700(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioStation;->setEnablePSRT(Landroid/app/Activity;Z)V

    .line 1945
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$21;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$21;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPSRTEnabled:Z
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3700(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->enablePSRT(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3900(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    goto :goto_0

    .line 1950
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$21;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsAFEnabled:Z
    invoke-static {v0, p3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3802(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 1951
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$21;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$21;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsAFEnabled:Z
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3800(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioStation;->setEnableAF(Landroid/app/Activity;Z)V

    .line 1952
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$21;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$21;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsAFEnabled:Z
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$3800(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->enableAF(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$4000(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V

    goto :goto_0

    .line 1940
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
