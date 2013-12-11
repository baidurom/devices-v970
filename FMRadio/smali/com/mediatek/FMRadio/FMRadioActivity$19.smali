.class Lcom/mediatek/FMRadio/FMRadioActivity$19;
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
    .line 1886
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$19;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1888
    const-string v2, "FMRadioActivity"

    const-string v3, ">>> onClick Positive"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$19;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->isAntennaAvailable()Z
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$8600(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1892
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$19;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->onPlayFM()V
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2300(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 1905
    :cond_0
    :goto_0
    const-string v2, "FMRadioActivity"

    const-string v3, "<<< onClick Positive"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    return-void

    .line 1894
    :cond_1
    const/4 v1, -0x1

    .line 1896
    .local v1, ret:I
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$19;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1500(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/IFMRadioService;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/mediatek/FMRadio/IFMRadioService;->switchAntenna(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1900
    :goto_1
    if-nez v1, :cond_0

    .line 1902
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$19;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->onPlayFM()V
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2300(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    goto :goto_0

    .line 1897
    :catch_0
    move-exception v0

    .line 1898
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "FMRadioActivity"

    const-string v3, "Exception: switchAntenna(1)"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
