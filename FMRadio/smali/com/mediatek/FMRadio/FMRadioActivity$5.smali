.class Lcom/mediatek/FMRadio/FMRadioActivity$5;
.super Ljava/lang/Object;
.source "FMRadioActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 854
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    .line 856
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioStation;->isFavoriteStation(Landroid/app/Activity;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 859
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const v3, 0x7f02000c

    const v4, 0x7f02000b

    move-object v1, p1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->changeBackground(Landroid/view/View;IIIZ)V
    invoke-static/range {v0 .. v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$6600(Lcom/mediatek/FMRadio/FMRadioActivity;Landroid/view/View;IIIZ)V

    .line 868
    :cond_1
    :goto_0
    return v5

    .line 862
    :cond_2
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$5;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const v3, 0x7f02000a

    const v4, 0x7f020009

    move-object v1, p1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->changeBackground(Landroid/view/View;IIIZ)V
    invoke-static/range {v0 .. v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$6600(Lcom/mediatek/FMRadio/FMRadioActivity;Landroid/view/View;IIIZ)V

    goto :goto_0
.end method
