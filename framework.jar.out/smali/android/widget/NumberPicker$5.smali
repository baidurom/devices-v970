.class Landroid/widget/NumberPicker$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Landroid/widget/NumberPicker;

.field final synthetic val$showDecrementButton:Landroid/animation/ObjectAnimator;

.field final synthetic val$showIncrementButton:Landroid/animation/ObjectAnimator;


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;Landroid/animation/ObjectAnimator;Landroid/animation/ObjectAnimator;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 680
    iput-object p1, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    iput-object p2, p0, Landroid/widget/NumberPicker$5;->val$showIncrementButton:Landroid/animation/ObjectAnimator;

    iput-object p3, p0, Landroid/widget/NumberPicker$5;->val$showDecrementButton:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 681
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/NumberPicker$5;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 697
    iget-object v0, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    #getter for: Landroid/widget/NumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$500(Landroid/widget/NumberPicker;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/NumberPicker$5;->mCanceled:Z

    .line 700
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 685
    iget-boolean v0, p0, Landroid/widget/NumberPicker$5;->mCanceled:Z

    if-nez v0, :cond_0

    .line 687
    iget-object v0, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    const/4 v1, 0x1

    #calls: Landroid/widget/NumberPicker;->setSelectorWheelState(I)V
    invoke-static {v0, v1}, Landroid/widget/NumberPicker;->access$400(Landroid/widget/NumberPicker;I)V

    .line 689
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/NumberPicker$5;->mCanceled:Z

    .line 690
    iget-object v0, p0, Landroid/widget/NumberPicker$5;->val$showIncrementButton:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Landroid/widget/NumberPicker$5;->val$showIncrementButton:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 691
    iget-object v0, p0, Landroid/widget/NumberPicker$5;->val$showDecrementButton:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Landroid/widget/NumberPicker$5;->val$showDecrementButton:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 693
    return-void
.end method