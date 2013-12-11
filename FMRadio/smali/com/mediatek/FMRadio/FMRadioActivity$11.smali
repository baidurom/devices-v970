.class Lcom/mediatek/FMRadio/FMRadioActivity$11;
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
    .line 1021
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

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

    .line 1023
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$300(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1024
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const v3, 0x7f020030

    const v4, 0x7f02002f

    move-object v1, p1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->changeBackground(Landroid/view/View;IIIZ)V
    invoke-static/range {v0 .. v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$6600(Lcom/mediatek/FMRadio/FMRadioActivity;Landroid/view/View;IIIZ)V

    .line 1029
    :goto_0
    return v5

    .line 1027
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$11;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const v3, 0x7f020021

    const v4, 0x7f020020

    move-object v1, p1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->changeBackground(Landroid/view/View;IIIZ)V
    invoke-static/range {v0 .. v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$6600(Lcom/mediatek/FMRadio/FMRadioActivity;Landroid/view/View;IIIZ)V

    goto :goto_0
.end method
