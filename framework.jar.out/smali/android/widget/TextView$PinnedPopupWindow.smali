.class abstract Landroid/widget/TextView$PinnedPopupWindow;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/widget/TextView$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PinnedPopupWindow"
.end annotation


# instance fields
.field protected mContentView:Landroid/view/ViewGroup;

.field protected mPopupWindow:Landroid/widget/PopupWindow;

.field mPositionX:I

.field mPositionY:I

.field protected mTop:Z

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x2

    .line 9605
    iput-object p1, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9597
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TextView$PinnedPopupWindow;->mTop:Z

    .line 9606
    invoke-virtual {p0}, Landroid/widget/TextView$PinnedPopupWindow;->createPopupWindow()V

    .line 9608
    iget-object v1, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 9609
    iget-object v1, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 9610
    iget-object v1, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 9612
    invoke-virtual {p0}, Landroid/widget/TextView$PinnedPopupWindow;->initContentView()V

    .line 9614
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 9616
    .local v0, wrapContent:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9618
    iget-object v1, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 9619
    return-void
.end method

.method private computeLocalPosition()V
    .locals 6

    .prologue
    .line 9644
    invoke-virtual {p0}, Landroid/widget/TextView$PinnedPopupWindow;->measureContent()V

    .line 9645
    iget-object v3, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    .line 9646
    .local v2, width:I
    invoke-virtual {p0}, Landroid/widget/TextView$PinnedPopupWindow;->getTextOffset()I

    move-result v1

    .line 9647
    .local v1, offset:I
    iget-object v3, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v3, v3, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    int-to-float v4, v2

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPositionX:I

    .line 9648
    iget v3, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPositionX:I

    iget-object v4, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->viewportToContentHorizontalOffset()I
    invoke-static {v4}, Landroid/widget/TextView;->access$2600(Landroid/widget/TextView;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPositionX:I

    .line 9650
    iget-object v3, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v3, v3, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 9651
    .local v0, line:I
    invoke-virtual {p0, v0}, Landroid/widget/TextView$PinnedPopupWindow;->getVerticalLocalPosition(I)I

    move-result v3

    iput v3, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPositionY:I

    .line 9652
    iget v3, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPositionY:I

    iget-object v4, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->viewportToContentVerticalOffset()I
    invoke-static {v4}, Landroid/widget/TextView;->access$2700(Landroid/widget/TextView;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPositionY:I

    .line 9653
    return-void
.end method

.method private updateArrowPosition(IIIZ)V
    .locals 4
    .parameter "beforeClip"
    .parameter "afterClip"
    .parameter "contentWidth"
    .parameter "top"

    .prologue
    .line 9679
    sub-int v0, p2, p1

    .line 9680
    .local v0, shift:I
    iget-object v2, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    check-cast v2, Lcom/android/internal/widget/PopupLayout;

    invoke-virtual {v2}, Lcom/android/internal/widget/PopupLayout;->getDrawableWidth()I

    move-result v1

    .line 9681
    .local v1, width:I
    div-int/lit8 v2, p3, 0x2

    sub-int v0, v2, v0

    .line 9682
    sub-int v2, p3, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 9683
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 9685
    iget-object v2, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    check-cast v2, Lcom/android/internal/widget/PopupLayout;

    if-eqz p4, :cond_0

    iget-object v3, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    :goto_0
    invoke-virtual {v2, v0, v3}, Lcom/android/internal/widget/PopupLayout;->setXY(II)V

    .line 9686
    return-void

    .line 9685
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private updatePosition(II)V
    .locals 8
    .parameter "parentPositionX"
    .parameter "parentPositionY"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 9656
    iget v5, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPositionX:I

    add-int v2, p1, v5

    .line 9657
    .local v2, positionX:I
    iget v5, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPositionY:I

    add-int v3, p2, v5

    .line 9658
    .local v3, positionY:I
    move v0, v2

    .line 9660
    .local v0, beforeClipX:I
    invoke-virtual {p0, v3}, Landroid/widget/TextView$PinnedPopupWindow;->clipVertically(I)I

    move-result v3

    .line 9663
    iget-object v5, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/widget/TextView;->access$2800(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 9664
    .local v1, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v5, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    .line 9665
    .local v4, width:I
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v5, v4

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 9666
    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 9667
    iget-object v5, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    instance-of v5, v5, Lcom/android/internal/widget/PopupLayout;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/widget/TextView$PinnedPopupWindow;->mTop:Z

    invoke-direct {p0, v0, v2, v4, v5}, Landroid/widget/TextView$PinnedPopupWindow;->updateArrowPosition(IIIZ)V

    .line 9669
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView$PinnedPopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 9670
    iget-object v5, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v2, v3, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 9675
    :goto_0
    return-void

    .line 9672
    :cond_1
    iget-object v5, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v6, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v5, v6, v7, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract clipVertically(I)I
.end method

.method protected abstract createPopupWindow()V
.end method

.method protected abstract getTextOffset()I
.end method

.method protected abstract getVerticalLocalPosition(I)I
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 9690
    iget-object v0, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 9691
    iget-object v0, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->getPositionListener()Landroid/widget/TextView$PositionListener;
    invoke-static {v0}, Landroid/widget/TextView;->access$2400(Landroid/widget/TextView;)Landroid/widget/TextView$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/TextView$PositionListener;->removeSubscriber(Landroid/widget/TextView$TextViewPositionListener;)V

    .line 9692
    return-void
.end method

.method protected abstract initContentView()V
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 9725
    iget-object v0, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected measureContent()V
    .locals 5

    .prologue
    const/high16 v4, -0x8000

    .line 9631
    iget-object v1, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/TextView;->access$2500(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 9632
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v1, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->measure(II)V

    .line 9637
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 9622
    iget-object v1, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->getPositionListener()Landroid/widget/TextView$PositionListener;
    invoke-static {v1}, Landroid/widget/TextView;->access$2400(Landroid/widget/TextView;)Landroid/widget/TextView$PositionListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/widget/TextView$PositionListener;->addSubscriber(Landroid/widget/TextView$TextViewPositionListener;Z)V

    .line 9624
    invoke-direct {p0}, Landroid/widget/TextView$PinnedPopupWindow;->computeLocalPosition()V

    .line 9626
    iget-object v1, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->getPositionListener()Landroid/widget/TextView$PositionListener;
    invoke-static {v1}, Landroid/widget/TextView;->access$2400(Landroid/widget/TextView;)Landroid/widget/TextView$PositionListener;

    move-result-object v0

    .line 9627
    .local v0, positionListener:Landroid/widget/TextView$PositionListener;
    invoke-virtual {v0}, Landroid/widget/TextView$PositionListener;->getPositionX()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView$PositionListener;->getPositionY()I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/TextView$PinnedPopupWindow;->updatePosition(II)V

    .line 9628
    return-void
.end method

.method public updatePosition(IIZZ)V
    .locals 3
    .parameter "parentPositionX"
    .parameter "parentPositionY"
    .parameter "parentPositionChanged"
    .parameter "parentScrolled"

    .prologue
    .line 9699
    instance-of v1, p0, Landroid/widget/TextView$ActionPopupWindow;

    if-eqz v1, :cond_4

    .line 9700
    iget-object v1, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView$PinnedPopupWindow;->getTextOffset()I

    move-result v2

    #calls: Landroid/widget/TextView;->isOffsetVisible(I)Z
    invoke-static {v1, v2}, Landroid/widget/TextView;->access$2900(Landroid/widget/TextView;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9701
    invoke-virtual {p0}, Landroid/widget/TextView$PinnedPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9702
    if-eqz p4, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView$PinnedPopupWindow;->computeLocalPosition()V

    .line 9703
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView$PinnedPopupWindow;->updatePosition(II)V

    .line 9722
    :cond_1
    :goto_0
    return-void

    .line 9704
    :cond_2
    iget-object v1, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canCopy()Z
    invoke-static {v1}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9705
    invoke-direct {p0}, Landroid/widget/TextView$PinnedPopupWindow;->computeLocalPosition()V

    .line 9706
    iget-object v1, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->getPositionListener()Landroid/widget/TextView$PositionListener;
    invoke-static {v1}, Landroid/widget/TextView;->access$2400(Landroid/widget/TextView;)Landroid/widget/TextView$PositionListener;

    move-result-object v0

    .line 9707
    .local v0, positionListener:Landroid/widget/TextView$PositionListener;
    invoke-virtual {v0}, Landroid/widget/TextView$PositionListener;->getPositionX()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView$PositionListener;->getPositionY()I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/TextView$PinnedPopupWindow;->updatePosition(II)V

    goto :goto_0

    .line 9710
    .end local v0           #positionListener:Landroid/widget/TextView$PositionListener;
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView$PinnedPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 9716
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView$PinnedPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView$PinnedPopupWindow;->getTextOffset()I

    move-result v2

    #calls: Landroid/widget/TextView;->isOffsetVisible(I)Z
    invoke-static {v1, v2}, Landroid/widget/TextView;->access$2900(Landroid/widget/TextView;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 9717
    if-eqz p4, :cond_5

    invoke-direct {p0}, Landroid/widget/TextView$PinnedPopupWindow;->computeLocalPosition()V

    .line 9718
    :cond_5
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView$PinnedPopupWindow;->updatePosition(II)V

    goto :goto_0

    .line 9720
    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView$PinnedPopupWindow;->hide()V

    goto :goto_0
.end method