.class Lcom/mediatek/FMRadio/FMRadioActivity$9;
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
    .line 986
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$9;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 988
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> onClick NextStation"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$9;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$9;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v2

    const/4 v3, 0x1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->seekStation(ZIZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$6900(Lcom/mediatek/FMRadio/FMRadioActivity;ZIZ)V

    .line 992
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< onClick NextStation"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    return-void
.end method
