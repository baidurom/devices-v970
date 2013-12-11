.class Lcom/mediatek/FMRadio/FMRadioActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioActivity;
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
    .line 249
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 252
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-virtual {v1, p2}, Lcom/mediatek/FMRadio/FMRadioActivity;->isRecordingCardUnmount(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 268
    :cond_1
    :goto_0
    return-void

    .line 258
    :cond_2
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgSaveRecording:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$000(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 259
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const/4 v2, 0x1

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecordingCardEject:Z
    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$102(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 260
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgSaveRecording:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$000(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 261
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    const v3, 0x7f04002c

    invoke-virtual {v2, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 263
    :cond_3
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onreceive.mIsRecordingCardEject: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecordingCardEject:Z
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 264
    :cond_4
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecordingCardEject:Z
    invoke-static {v1, v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$102(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 266
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onreceive.mIsRecordingCardEject = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity$1;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecordingCardEject:Z
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$100(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
