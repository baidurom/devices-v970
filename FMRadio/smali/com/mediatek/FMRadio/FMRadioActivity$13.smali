.class Lcom/mediatek/FMRadio/FMRadioActivity$13;
.super Ljava/lang/Object;
.source "FMRadioActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 1050
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const v4, 0x7f02002f

    const v3, 0x7f020021

    const v6, 0x7f020020

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 1054
    const/16 v0, 0x17

    if-ne p2, v0, :cond_3

    .line 1056
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 1058
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$300(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1059
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const v3, 0x7f020030

    move-object v1, p1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->changeBackground(Landroid/view/View;IIIZ)V
    invoke-static/range {v0 .. v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$6600(Lcom/mediatek/FMRadio/FMRadioActivity;Landroid/view/View;IIIZ)V

    .line 1075
    :cond_1
    :goto_0
    return v5

    .line 1062
    :cond_2
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    move-object v1, p1

    move v4, v6

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->changeBackground(Landroid/view/View;IIIZ)V
    invoke-static/range {v0 .. v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$6600(Lcom/mediatek/FMRadio/FMRadioActivity;Landroid/view/View;IIIZ)V

    goto :goto_0

    .line 1068
    :cond_3
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$300(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1069
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const v3, 0x7f020030

    move-object v1, p1

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->changeBackground(Landroid/view/View;IIIZ)V
    invoke-static/range {v0 .. v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$6600(Lcom/mediatek/FMRadio/FMRadioActivity;Landroid/view/View;IIIZ)V

    goto :goto_0

    .line 1072
    :cond_4
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity$13;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    move-object v1, p1

    move v4, v6

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->changeBackground(Landroid/view/View;IIIZ)V
    invoke-static/range {v0 .. v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$6600(Lcom/mediatek/FMRadio/FMRadioActivity;Landroid/view/View;IIIZ)V

    goto :goto_0
.end method
