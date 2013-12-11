.class Lcom/mediatek/FMRadio/FMRadioEMActivity$1;
.super Ljava/lang/Object;
.source "FMRadioEMActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioEMActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 284
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f060020

    if-ne v3, v4, :cond_2

    .line 285
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-virtual {v3, v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->switchAntenna(I)I

    .line 290
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f060023

    if-ne v3, v4, :cond_3

    .line 291
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-virtual {v3, v7}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->setStereoMono(Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 292
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    const-string v4, "Set Stereo Mono failed."

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 315
    :cond_1
    :goto_1
    return-void

    .line 287
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f060021

    if-ne v3, v4, :cond_0

    .line 288
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-virtual {v3, v7}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->switchAntenna(I)I

    goto :goto_0

    .line 295
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f060024

    if-ne v3, v4, :cond_4

    .line 296
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    invoke-virtual {v3, v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->setStereoMono(Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 297
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    const-string v4, "Set Stereo Mono failed."

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 299
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f06001e

    if-ne v3, v4, :cond_1

    .line 300
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditFreq:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$700(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, s:Ljava/lang/String;
    const/4 v1, 0x0

    .line 303
    .local v1, freq:F
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 309
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    const/high16 v4, 0x4120

    mul-float/2addr v4, v1

    float-to-int v4, v4

    #calls: Lcom/mediatek/FMRadio/FMRadioEMActivity;->tuneToStation(I)V
    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$800(Lcom/mediatek/FMRadio/FMRadioEMActivity;I)V

    goto :goto_1

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, e:Ljava/lang/NumberFormatException;
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    const-string v4, "bad float format."

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 306
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditFreq:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$700(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/EditText;

    move-result-object v3

    const-string v4, "%d"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioEMActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I
    invoke-static {v6}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->access$600(Lcom/mediatek/FMRadio/FMRadioEMActivity;)I

    move-result v6

    div-int/lit8 v6, v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method
