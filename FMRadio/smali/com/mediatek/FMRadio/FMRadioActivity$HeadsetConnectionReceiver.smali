.class Lcom/mediatek/FMRadio/FMRadioActivity$HeadsetConnectionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadsetConnectionReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioActivity;


# direct methods
.method private constructor <init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$HeadsetConnectionReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/FMRadio/FMRadioActivity;Lcom/mediatek/FMRadio/FMRadioActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 452
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity$HeadsetConnectionReceiver;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 454
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 456
    const-string v1, "state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    const-string v1, "state"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 458
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$HeadsetConnectionReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCanPlay:Z
    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1702(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 459
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$HeadsetConnectionReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->onPauseFM()V
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1800(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 460
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$HeadsetConnectionReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->displayInsertEarphoneDialog()V
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1900(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    const-string v1, "state"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 462
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$HeadsetConnectionReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgInsertEarphone:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2000(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 463
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$HeadsetConnectionReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgInsertEarphone:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2000(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 464
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$HeadsetConnectionReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgInsertEarphone:Landroid/app/AlertDialog;
    invoke-static {v1, v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2002(Lcom/mediatek/FMRadio/FMRadioActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 465
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$HeadsetConnectionReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mAirPlaneModeOn:Z
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2100(Lcom/mediatek/FMRadio/FMRadioActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 466
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$HeadsetConnectionReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->displayAirPlaneModeDialog()V
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2200(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    goto :goto_0

    .line 468
    :cond_2
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$HeadsetConnectionReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCanPlay:Z
    invoke-static {v1, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1702(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 469
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$HeadsetConnectionReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->onPlayFM()V
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2300(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    goto :goto_0

    .line 474
    :cond_3
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    const-string v1, "state"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 476
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$HeadsetConnectionReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCanPlay:Z
    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1702(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 477
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$HeadsetConnectionReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->onPauseFM()V
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1800(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    .line 478
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$HeadsetConnectionReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mAirPlaneModeOn:Z
    invoke-static {v1, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2102(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 479
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$HeadsetConnectionReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->displayAirPlaneModeDialog()V
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2200(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    goto :goto_0

    .line 481
    :cond_4
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$HeadsetConnectionReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgAirPlaneMode:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2400(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 482
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$HeadsetConnectionReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #getter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgAirPlaneMode:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2400(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 483
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$HeadsetConnectionReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgAirPlaneMode:Landroid/app/AlertDialog;
    invoke-static {v1, v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2402(Lcom/mediatek/FMRadio/FMRadioActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 485
    :cond_5
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$HeadsetConnectionReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mAirPlaneModeOn:Z
    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2102(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 486
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$HeadsetConnectionReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #setter for: Lcom/mediatek/FMRadio/FMRadioActivity;->mCanPlay:Z
    invoke-static {v1, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$1702(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z

    .line 487
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity$HeadsetConnectionReceiver;->this$0:Lcom/mediatek/FMRadio/FMRadioActivity;

    #calls: Lcom/mediatek/FMRadio/FMRadioActivity;->onPlayFM()V
    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->access$2300(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    goto/16 :goto_0
.end method
