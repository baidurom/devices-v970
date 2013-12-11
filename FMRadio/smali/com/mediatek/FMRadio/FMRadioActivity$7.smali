.class Lcom/mediatek/FMRadio/FMRadioActivity$7;
.super Ljava/lang/Object;
.source "FMRadioActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 957
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$7;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 959
    const-string v1, "FMRadioActivity"

    const-string v2, ">>> onClick Decrease"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$7;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 962
    .local v0, iStation:I
    const/16 v1, 0x36b

    if-ge v0, v1, :cond_0

    .line 963
    const/16 v0, 0x438

    .line 965
    :cond_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$7;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v2, 0x0

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->tuneStation(ZI)V
    invoke-static {v1, v2, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$6800(Lcom/mediatek/FMRadio/FMRadioActivity;ZI)V

    .line 966
    const-string v1, "FMRadioActivity"

    const-string v2, "<<< onClick Decrease"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    return-void
.end method
