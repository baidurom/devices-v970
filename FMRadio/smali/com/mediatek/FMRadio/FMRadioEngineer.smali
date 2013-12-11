.class public Lcom/mediatek/FMRadio/FMRadioEngineer;
.super Landroid/app/Activity;
.source "FMRadioEngineer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/FMRadio/FMRadioEngineer$InitialThread;,
        Lcom/mediatek/FMRadio/FMRadioEngineer$FMBroadcastReceiver;,
        Lcom/mediatek/FMRadio/FMRadioEngineer$HeadsetConnectionReceiver;
    }
.end annotation


# static fields
.field public static final MSGID_ANTENNA_UNAVAILABE:I = 0xa

.field public static final MSGID_INIT_OK:I = 0xd

.field public static final MSGID_OK:I = 0x2

.field public static final MSGID_PLAY_FAIL:I = 0x9

.field public static final MSGID_PLAY_FINISH:I = 0x8

.field public static final MSGID_RETRY:I = 0x1

.field public static final MSGID_SEARCH_FINISH:I = 0x3

.field public static final MSGID_SEEK_FAIL:I = 0x7

.field public static final MSGID_SEEK_FINISH:I = 0x6

.field public static final MSGID_SHOW_TOAST:I = 0xb

.field public static final MSGID_UPDATE_CURRENT_STATION:I = 0x5

.field public static final MSGID_UPDATE_RDS:I = 0x4

.field public static final TAG:Ljava/lang/String; = "FMRadioEngineer"

.field public static final TOAST_TIMER_DELAY:J = 0x1388L

.field public static final TYPE_MSGID:Ljava/lang/String; = "MSGID"

.field public static final TYPE_TOAST_STRING:Ljava/lang/String; = "TYPE_TOAST_STRING"

.field private static final default_frequency:[F


# instance fields
.field private final FM_SAVE_INSTANCE_STATE_INITED:Ljava/lang/String;

.field private final FM_SAVE_INSTANCE_STATE_PLAYING:Ljava/lang/String;

.field private final INVALID_FREQUENCY:F

.field private final MAX_FREQUENCY:F

.field private final MIN_FREQUENCY:F

.field button_1:Landroid/widget/Button;

.field button_2:Landroid/widget/Button;

.field button_3:Landroid/widget/Button;

.field button_4:Landroid/widget/Button;

.field button_ok:Landroid/widget/Button;

.field button_set:Landroid/widget/Button;

.field private mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioEngineer$FMBroadcastReceiver;

.field mEditText:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioEngineer$HeadsetConnectionReceiver;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mService:Lcom/mediatek/FMRadio/IFMRadioService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mTimer:Ljava/util/Timer;

.field private mToast:Landroid/widget/Toast;

.field private mbAFEnabled:Z

.field private mbDestroying:Z

.field private mbExitPressed:Z

.field private mbInited:Z

.field private mbPSRTEnabled:Z

.field private mbPlaying:Z

.field private mbRDSEnabled:Z

.field private mbRDSSupported:Z

.field private mbServiceBinded:Z

.field private mbServiceStarted:Z

.field private miCurrentStation:I

.field private msLRText:Ljava/lang/String;

.field private msPS:Ljava/lang/String;

.field private needWiredHeadset:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/FMRadio/FMRadioEngineer;->default_frequency:[F

    return-void

    nop

    :array_0
    .array-data 0x4
        0x9at 0x99t 0xb2t 0x42t
        0x66t 0x66t 0xbdt 0x42t
        0x33t 0x33t 0xc4t 0x42t
        0x33t 0x33t 0xcbt 0x42t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    const-string v0, "FM_SAVE_INSTANCE_STATE_INITED"

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->FM_SAVE_INSTANCE_STATE_INITED:Ljava/lang/String;

    .line 53
    const-string v0, "FM_SAVE_INSTANCE_STATE_PLAYING"

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->FM_SAVE_INSTANCE_STATE_PLAYING:Ljava/lang/String;

    .line 55
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbServiceStarted:Z

    .line 56
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbServiceBinded:Z

    .line 57
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    .line 58
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 60
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mHandler:Landroid/os/Handler;

    .line 61
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbInited:Z

    .line 63
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbPlaying:Z

    .line 64
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbExitPressed:Z

    .line 66
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbDestroying:Z

    .line 69
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbPSRTEnabled:Z

    .line 70
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbAFEnabled:Z

    .line 73
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbRDSSupported:Z

    .line 75
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbRDSEnabled:Z

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->msPS:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->msLRText:Ljava/lang/String;

    .line 85
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mToast:Landroid/widget/Toast;

    .line 86
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mTimer:Ljava/util/Timer;

    .line 89
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->miCurrentStation:I

    .line 92
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mSavedInstanceState:Landroid/os/Bundle;

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->needWiredHeadset:Z

    .line 223
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioEngineer$FMBroadcastReceiver;

    .line 224
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioEngineer$HeadsetConnectionReceiver;

    .line 1764
    const/high16 v0, 0x42af

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->MIN_FREQUENCY:F

    .line 1765
    const/high16 v0, 0x42d8

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->MAX_FREQUENCY:F

    .line 1766
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->INVALID_FREQUENCY:F

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/FMRadio/FMRadioEngineer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbPlaying:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/FMRadio/FMRadioEngineer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbPlaying:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/FMRadio/FMRadioEngineer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->refreshTextStatus(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/FMRadio/FMRadioEngineer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->isDeviceOpen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/mediatek/FMRadio/FMRadioEngineer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->getFrequency()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/mediatek/FMRadio/FMRadioEngineer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->isPowerUp()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/mediatek/FMRadio/FMRadioEngineer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbRDSSupported:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/mediatek/FMRadio/FMRadioEngineer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbRDSSupported:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/mediatek/FMRadio/FMRadioEngineer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->isRDSSupported()I

    move-result v0

    return v0
.end method

.method static synthetic access$1502(Lcom/mediatek/FMRadio/FMRadioEngineer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbRDSEnabled:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/mediatek/FMRadio/FMRadioEngineer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbPSRTEnabled:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/mediatek/FMRadio/FMRadioEngineer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbPSRTEnabled:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/mediatek/FMRadio/FMRadioEngineer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->isPSRTEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/mediatek/FMRadio/FMRadioEngineer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbAFEnabled:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/mediatek/FMRadio/FMRadioEngineer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbAFEnabled:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/mediatek/FMRadio/FMRadioEngineer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->isAFEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/FMRadio/FMRadioEngineer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->msPS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mediatek/FMRadio/FMRadioEngineer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->getPS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/FMRadio/FMRadioEngineer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->msPS:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/mediatek/FMRadio/FMRadioEngineer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->getLRText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2202(Lcom/mediatek/FMRadio/FMRadioEngineer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbInited:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/mediatek/FMRadio/FMRadioEngineer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbDestroying:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/mediatek/FMRadio/FMRadioEngineer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->isAntennaAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/mediatek/FMRadio/FMRadioEngineer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->showRDS()V

    return-void
.end method

.method static synthetic access$2800(Lcom/mediatek/FMRadio/FMRadioEngineer;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->showToast(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/mediatek/FMRadio/FMRadioEngineer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->enablePSRT(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/FMRadio/FMRadioEngineer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/mediatek/FMRadio/FMRadioEngineer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->enableAF(Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/mediatek/FMRadio/FMRadioEngineer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->isEarphoneUsed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200()[F
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/mediatek/FMRadio/FMRadioEngineer;->default_frequency:[F

    return-object v0
.end method

.method static synthetic access$3300(Lcom/mediatek/FMRadio/FMRadioEngineer;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->playFrequency(F)V

    return-void
.end method

.method static synthetic access$3400(Lcom/mediatek/FMRadio/FMRadioEngineer;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->checkInputFrequency(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/mediatek/FMRadio/FMRadioEngineer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->openDevice()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/mediatek/FMRadio/FMRadioEngineer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->playFM()V

    return-void
.end method

.method static synthetic access$3700(Lcom/mediatek/FMRadio/FMRadioEngineer;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/mediatek/FMRadio/FMRadioEngineer;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/mediatek/FMRadio/FMRadioEngineer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->cancelToast()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/FMRadio/FMRadioEngineer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->msLRText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mediatek/FMRadio/FMRadioEngineer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->msLRText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mediatek/FMRadio/FMRadioEngineer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->miCurrentStation:I

    return v0
.end method

.method static synthetic access$502(Lcom/mediatek/FMRadio/FMRadioEngineer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->miCurrentStation:I

    return p1
.end method

.method static synthetic access$600(Lcom/mediatek/FMRadio/FMRadioEngineer;)Lcom/mediatek/FMRadio/IFMRadioService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    return-object v0
.end method

.method static synthetic access$602(Lcom/mediatek/FMRadio/FMRadioEngineer;Lcom/mediatek/FMRadio/IFMRadioService;)Lcom/mediatek/FMRadio/IFMRadioService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mediatek/FMRadio/FMRadioEngineer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->isServiceInit()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/mediatek/FMRadio/FMRadioEngineer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->initService(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/FMRadio/FMRadioEngineer;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mSavedInstanceState:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$902(Lcom/mediatek/FMRadio/FMRadioEngineer;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mSavedInstanceState:Landroid/os/Bundle;

    return-object p1
.end method

.method private activeAF()I
    .locals 5

    .prologue
    .line 1354
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.activeAF"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    const/4 v1, 0x0

    .line 1356
    .local v1, iRet:I
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1357
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.activeAF: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    return v1

    .line 1361
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->activeAF()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1363
    :catch_0
    move-exception v0

    .line 1364
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private activeTA()I
    .locals 5

    .prologue
    .line 1372
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.activeTA"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    const/4 v1, 0x0

    .line 1374
    .local v1, iRet:I
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1375
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.activeTA: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    return v1

    .line 1379
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->activeTA()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1381
    :catch_0
    move-exception v0

    .line 1382
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private cancelToast()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1056
    const-string v0, "FMRadioEngineer"

    const-string v1, ">>> FMRadioEMActivity.cancelToast"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1058
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1059
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mTimer:Ljava/util/Timer;

    .line 1064
    :goto_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 1065
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1066
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mToast:Landroid/widget/Toast;

    .line 1071
    :goto_1
    const-string v0, "FMRadioEngineer"

    const-string v1, "<<< FMRadioEMActivity.cancelToast"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    return-void

    .line 1062
    :cond_0
    const-string v0, "FMRadioEngineer"

    const-string v1, "Warning: The timer is null."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1069
    :cond_1
    const-string v0, "FMRadioEngineer"

    const-string v1, "Warning: The toast is null."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private checkInputFrequency(F)F
    .locals 4
    .parameter "fre"

    .prologue
    const/high16 v3, 0x4120

    .line 1774
    const/high16 v2, 0x42af

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_0

    const/high16 v2, 0x42d8

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    .line 1776
    :cond_0
    const/4 v0, 0x0

    .line 1781
    :goto_0
    return v0

    .line 1779
    :cond_1
    mul-float v2, p1, v3

    float-to-int v1, v2

    .line 1780
    .local v1, fre_int:I
    int-to-float v2, v1

    div-float v0, v2, v3

    .line 1781
    .local v0, fre_float:F
    goto :goto_0
.end method

.method private closeDevice()Z
    .locals 5

    .prologue
    .line 1118
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.closeDevice"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    const/4 v0, 0x0

    .line 1120
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1121
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.closeDevice: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    return v0

    .line 1125
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->closeDevice()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1127
    :catch_0
    move-exception v1

    .line 1128
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deactiveTA()I
    .locals 5

    .prologue
    .line 1390
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.deactiveTA"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    const/4 v1, 0x0

    .line 1392
    .local v1, iRet:I
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1393
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.deactiveTA: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    return v1

    .line 1397
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->deactiveTA()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1399
    :catch_0
    move-exception v0

    .line 1400
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enableAF(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 1528
    const-string v1, "FMRadioEngineer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioEMActivity.enableAF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 1530
    const-string v1, "FMRadioEngineer"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    :goto_0
    const-string v1, "FMRadioEngineer"

    const-string v2, "<<< FMRadioEMActivity.enableAF"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    return-void

    .line 1534
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->enableAF(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1536
    :catch_0
    move-exception v0

    .line 1537
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FMRadioEngineer"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enablePSRT(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 1512
    const-string v1, "FMRadioEngineer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioEMActivity.enablePSRT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 1514
    const-string v1, "FMRadioEngineer"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    :goto_0
    const-string v1, "FMRadioEngineer"

    const-string v2, "<<< FMRadioEMActivity.enablePSRT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    return-void

    .line 1518
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->enablePSRT(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1520
    :catch_0
    move-exception v0

    .line 1521
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FMRadioEngineer"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enableTA(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 1544
    const-string v1, "FMRadioEngineer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioEMActivity.enableTA: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 1546
    const-string v1, "FMRadioEngineer"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    :goto_0
    const-string v1, "FMRadioEngineer"

    const-string v2, "<<< FMRadioEMActivity.enableTA"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    return-void

    .line 1550
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->enableTA(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1552
    :catch_0
    move-exception v0

    .line 1553
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FMRadioEngineer"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private generateFreStringWithMHz(F)Ljava/lang/String;
    .locals 2
    .parameter "fre"

    .prologue
    .line 1761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f04005d

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFrequency()I
    .locals 5

    .prologue
    .line 1614
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.getFrequency"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    const/4 v1, 0x0

    .line 1616
    .local v1, iRet:I
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1617
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.getFrequency: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    return v1

    .line 1621
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->getFrequency()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1623
    :catch_0
    move-exception v0

    .line 1624
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getLRText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1336
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.getLRText"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    const/4 v1, 0x0

    .line 1338
    .local v1, sRT:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1339
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.getLRText: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    return-object v1

    .line 1343
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->getLRText()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1345
    :catch_0
    move-exception v0

    .line 1346
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getPS()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1318
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.getPS"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    const/4 v1, 0x0

    .line 1320
    .local v1, sPS:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1321
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.getPS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    return-object v1

    .line 1325
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->getPS()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1327
    :catch_0
    move-exception v0

    .line 1328
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initService(I)V
    .locals 4
    .parameter "iCurrentStation"

    .prologue
    .line 1478
    const-string v1, "FMRadioEngineer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioEMActivity.initService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 1480
    const-string v1, "FMRadioEngineer"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    :goto_0
    const-string v1, "FMRadioEngineer"

    const-string v2, "<<< FMRadioEMActivity.initService"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    return-void

    .line 1484
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->initService(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1486
    :catch_0
    move-exception v0

    .line 1487
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FMRadioEngineer"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initViewAndAdapter()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 626
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->setContentView(I)V

    .line 627
    const v1, 0x7f04005c

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->setTitle(I)V

    .line 629
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->needWiredHeadsetInit()V

    .line 631
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->isAntennaAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->needWiredHeadset:Z

    if-eqz v1, :cond_0

    .line 633
    const v1, 0x7f04005f

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->showToast(Ljava/lang/CharSequence;)V

    .line 636
    :cond_0
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioEngineer$3;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioEngineer$3;-><init>(Lcom/mediatek/FMRadio/FMRadioEngineer;)V

    .line 705
    .local v0, mOnClickListener:Landroid/view/View$OnClickListener;
    const v1, 0x7f06000b

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->button_1:Landroid/widget/Button;

    .line 706
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->button_1:Landroid/widget/Button;

    sget-object v2, Lcom/mediatek/FMRadio/FMRadioEngineer;->default_frequency:[F

    aget v2, v2, v4

    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioEngineer;->generateFreStringWithMHz(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 707
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->button_1:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 709
    const v1, 0x7f06000c

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->button_2:Landroid/widget/Button;

    .line 710
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->button_2:Landroid/widget/Button;

    sget-object v2, Lcom/mediatek/FMRadio/FMRadioEngineer;->default_frequency:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioEngineer;->generateFreStringWithMHz(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 711
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->button_2:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 713
    const v1, 0x7f06000d

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->button_3:Landroid/widget/Button;

    .line 714
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->button_3:Landroid/widget/Button;

    sget-object v2, Lcom/mediatek/FMRadio/FMRadioEngineer;->default_frequency:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioEngineer;->generateFreStringWithMHz(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 715
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->button_3:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 717
    const v1, 0x7f06000e

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->button_4:Landroid/widget/Button;

    .line 718
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->button_4:Landroid/widget/Button;

    sget-object v2, Lcom/mediatek/FMRadio/FMRadioEngineer;->default_frequency:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioEngineer;->generateFreStringWithMHz(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 719
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->button_4:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 721
    const v1, 0x7f060010

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->button_set:Landroid/widget/Button;

    .line 722
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->button_set:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 724
    const v1, 0x7f060011

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->button_ok:Landroid/widget/Button;

    .line 725
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->button_ok:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 727
    const v1, 0x7f06000f

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mEditText:Landroid/widget/EditText;

    .line 728
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 729
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/mediatek/FMRadio/FMRadioEngineer$4;

    invoke-direct {v2, p0}, Lcom/mediatek/FMRadio/FMRadioEngineer$4;-><init>(Lcom/mediatek/FMRadio/FMRadioEngineer;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 747
    return-void
.end method

.method private isAFEnabled()Z
    .locals 5

    .prologue
    .line 1578
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.isAFEnabled"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    const/4 v0, 0x0

    .line 1580
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1581
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.isAFEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    return v0

    .line 1585
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->isAFEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1587
    :catch_0
    move-exception v1

    .line 1588
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isAntennaAvailable()Z
    .locals 2

    .prologue
    .line 807
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 808
    .local v0, mAudioManager:Landroid/media/AudioManager;
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->needWiredHeadset:Z

    if-eqz v1, :cond_0

    .line 810
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    .line 814
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isDeviceOpen()Z
    .locals 5

    .prologue
    .line 1136
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.isDeviceOpen"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    const/4 v0, 0x0

    .line 1138
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1139
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.isDeviceOpen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    return v0

    .line 1143
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->isDeviceOpen()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1145
    :catch_0
    move-exception v1

    .line 1146
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isEarphoneUsed()Z
    .locals 5

    .prologue
    .line 1460
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.isEarphoneUsed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    const/4 v0, 0x1

    .line 1462
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1463
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.isEarphoneUsed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    return v0

    .line 1467
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->isEarphoneUsed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1469
    :catch_0
    move-exception v1

    .line 1470
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isPSRTEnabled()Z
    .locals 5

    .prologue
    .line 1560
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.isPSRTEnabled"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    const/4 v0, 0x0

    .line 1562
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1563
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.isPSRTEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    return v0

    .line 1567
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->isPSRTEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1569
    :catch_0
    move-exception v1

    .line 1570
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isPowerUp()Z
    .locals 5

    .prologue
    .line 1192
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.isPowerUp"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    const/4 v0, 0x0

    .line 1194
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1195
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.isPowerUp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    return v0

    .line 1199
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->isPowerUp()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1201
    :catch_0
    move-exception v1

    .line 1202
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isRDSSupported()I
    .locals 5

    .prologue
    .line 1426
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.isRDSSupported"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    const/4 v1, -0x1

    .line 1428
    .local v1, iRet:I
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1429
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.isRDSSupported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    return v1

    .line 1433
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->isRDSSupported()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1435
    :catch_0
    move-exception v0

    .line 1436
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isServiceInit()Z
    .locals 5

    .prologue
    .line 1494
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.isServiceInit"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    const/4 v0, 0x0

    .line 1496
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1497
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.isServiceInit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    return v0

    .line 1501
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->isServiceInit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1503
    :catch_0
    move-exception v1

    .line 1504
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isTAEnabled()Z
    .locals 5

    .prologue
    .line 1596
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.isTAEnabled"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    const/4 v0, 0x0

    .line 1598
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1599
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.isTAEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    return v0

    .line 1603
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->isTAEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1605
    :catch_0
    move-exception v1

    .line 1606
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isToasting()Z
    .locals 4

    .prologue
    .line 1075
    const-string v1, "FMRadioEngineer"

    const-string v2, ">>> FMRadioEMActivity.isToasting"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    const/4 v0, 0x1

    .line 1077
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mToast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mTimer:Ljava/util/Timer;

    if-nez v1, :cond_0

    .line 1078
    const/4 v0, 0x0

    .line 1080
    :cond_0
    const-string v1, "FMRadioEngineer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioEMActivity.isToasting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    return v0
.end method

.method private needWiredHeadsetInit()V
    .locals 1

    .prologue
    .line 1745
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->needWiredHeadset:Z

    .line 1746
    return-void
.end method

.method private onPauseFM()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 887
    const-string v0, "FMRadioEngineer"

    const-string v1, ">>> onPauseFM"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->setMute(Z)I

    .line 890
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioEngineer;->rdsset(Z)I

    .line 891
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->powerDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbPlaying:Z

    .line 894
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioEngineer;->refreshTextStatus(Z)V

    .line 903
    :goto_0
    const-string v0, "FMRadioEngineer"

    const-string v1, "<<< onPauseFM"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    return-void

    .line 900
    :cond_0
    const-string v0, "FMRadioEngineer"

    const-string v1, "Error: Can not power down."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onPlayFM()V
    .locals 2

    .prologue
    .line 820
    const-string v0, "FMRadioEngineer"

    const-string v1, ">>> onPlayFM"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->refreshTextStatus(Z)V

    .line 823
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioEngineer$5;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioEngineer$5;-><init>(Lcom/mediatek/FMRadio/FMRadioEngineer;)V

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioEngineer$5;->start()V

    .line 840
    const-string v0, "FMRadioEngineer"

    const-string v1, "<<< onPlayFM"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    return-void
.end method

.method private onUseEarphone()V
    .locals 2

    .prologue
    .line 907
    const-string v0, "FMRadioEngineer"

    const-string v1, ">>> onUseEarphone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->useEarphone(Z)V

    .line 910
    const-string v0, "FMRadioEngineer"

    const-string v1, "<<< onUseEarphone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    return-void
.end method

.method private onUseLoudspeaker()V
    .locals 2

    .prologue
    .line 914
    const-string v0, "FMRadioEngineer"

    const-string v1, ">>> onUseLoudspeaker"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->useEarphone(Z)V

    .line 917
    const-string v0, "FMRadioEngineer"

    const-string v1, "<<< onUseLoudspeaker"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    return-void
.end method

.method private openDevice()Z
    .locals 5

    .prologue
    .line 1100
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.openDevice"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    const/4 v0, 0x0

    .line 1102
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1103
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.openDevice: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    return v0

    .line 1107
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->openDevice()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1109
    :catch_0
    move-exception v1

    .line 1110
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private playFM()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 844
    const-string v3, "FMRadioEngineer"

    const-string v4, ">>> PlayFM"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioEngineer;->setMute(Z)I

    .line 847
    invoke-direct {p0, v6}, Lcom/mediatek/FMRadio/FMRadioEngineer;->rdsset(Z)I

    .line 848
    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->miCurrentStation:I

    int-to-float v3, v3

    const/high16 v4, 0x4120

    div-float/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioEngineer;->powerUp(F)Z

    move-result v0

    .line 849
    .local v0, bRes:Z
    if-eqz v0, :cond_1

    .line 850
    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioEngineer;->rdsset(Z)I

    .line 852
    iput-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbPlaying:Z

    .line 853
    invoke-direct {p0, v6}, Lcom/mediatek/FMRadio/FMRadioEngineer;->setMute(Z)I

    .line 855
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->isAntennaAvailable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 856
    invoke-virtual {p0, v5}, Lcom/mediatek/FMRadio/FMRadioEngineer;->switchAntenna(I)I

    .line 859
    :cond_0
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 860
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 861
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 862
    .local v1, bundle:Landroid/os/Bundle;
    const-string v3, "MSGID"

    const/16 v4, 0x8

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 863
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 864
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 883
    :goto_0
    const-string v3, "FMRadioEngineer"

    const-string v4, "<<< PlayFM"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    return-void

    .line 870
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    :cond_1
    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioEngineer;->setMute(Z)I

    .line 871
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->powerDown()Z

    .line 872
    iput-boolean v6, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbPlaying:Z

    .line 874
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 875
    .restart local v2       #msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 876
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 877
    .restart local v1       #bundle:Landroid/os/Bundle;
    const-string v3, "MSGID"

    const/16 v4, 0x9

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 878
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 879
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 881
    const-string v3, "FMRadioEngineer"

    const-string v4, "Error: Can not power up."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private playFrequency(F)V
    .locals 5
    .parameter "fre"

    .prologue
    .line 1750
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->tune(F)Z

    move-result v0

    .line 1752
    .local v0, r:Z
    if-nez v0, :cond_0

    .line 1754
    const v1, 0x7f040060

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->generateFreStringWithMHz(F)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->showToast(Ljava/lang/CharSequence;)V

    .line 1757
    :cond_0
    return-void
.end method

.method private powerDown()Z
    .locals 5

    .prologue
    .line 1174
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.powerDown"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    const/4 v0, 0x0

    .line 1176
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1177
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.powerDown: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    return v0

    .line 1181
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->powerDown()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1183
    :catch_0
    move-exception v1

    .line 1184
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private powerUp(F)Z
    .locals 5
    .parameter "frequency"

    .prologue
    .line 1154
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.powerUp"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    const/4 v0, 0x0

    .line 1157
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1158
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.powerUp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    return v0

    .line 1162
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->powerUp(F)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1164
    :catch_0
    move-exception v1

    .line 1165
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private rdsset(Z)I
    .locals 2
    .parameter "rdson"

    .prologue
    .line 1001
    const/4 v0, -0x1

    .line 1002
    .local v0, iRet:I
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbRDSEnabled:Z

    if-eqz v1, :cond_0

    .line 1015
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->setRDS(Z)I

    move-result v0

    .line 1020
    :cond_0
    return v0
.end method

.method private readRDS()I
    .locals 5

    .prologue
    .line 1300
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.readRDS"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    const/4 v1, 0x0

    .line 1302
    .local v1, iRet:I
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1303
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.readRDS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    return v1

    .line 1307
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->readRDS()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1309
    :catch_0
    move-exception v0

    .line 1310
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private refreshTextStatus(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 971
    return-void
.end method

.method private seek(FZ)F
    .locals 5
    .parameter "frequency"
    .parameter "isUp"

    .prologue
    .line 1228
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.seek"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    const/4 v1, 0x0

    .line 1230
    .local v1, fRet:F
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1231
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.seek: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    return v1

    .line 1235
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2, p1, p2}, Lcom/mediatek/FMRadio/IFMRadioService;->seek(FZ)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1237
    :catch_0
    move-exception v0

    .line 1238
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setMute(Z)I
    .locals 5
    .parameter "mute"

    .prologue
    .line 1408
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.setMute"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    const/4 v1, -0x1

    .line 1410
    .local v1, iRet:I
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1411
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.setMute: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    return v1

    .line 1415
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->setMute(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1417
    :catch_0
    move-exception v0

    .line 1418
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setRDS(Z)I
    .locals 5
    .parameter "on"

    .prologue
    .line 1282
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.setRDS"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    const/4 v1, -0x1

    .line 1284
    .local v1, iRet:I
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1285
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.setRDS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    return v1

    .line 1289
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->setRDS(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1291
    :catch_0
    move-exception v0

    .line 1292
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showRDS()V
    .locals 2

    .prologue
    .line 1085
    const-string v0, "FMRadioEngineer"

    const-string v1, "showRDS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    return-void
.end method

.method private showToast(Ljava/lang/CharSequence;)V
    .locals 6
    .parameter "text"

    .prologue
    const-wide/16 v2, 0x1388

    .line 1039
    const-string v0, "FMRadioEngineer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> FMRadioEMActivity.showToast: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mTimer:Ljava/util/Timer;

    .line 1042
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/mediatek/FMRadio/FMRadioEngineer$7;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioEngineer$7;-><init>(Lcom/mediatek/FMRadio/FMRadioEngineer;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 1050
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mToast:Landroid/widget/Toast;

    .line 1051
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1052
    const-string v0, "FMRadioEngineer"

    const-string v1, "<<< FMRadioEMActivity.showToast"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    return-void
.end method

.method private startScan()[I
    .locals 5

    .prologue
    .line 1246
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.startScan"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    const/4 v1, 0x0

    .line 1248
    .local v1, iChannels:[I
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1249
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.startScan: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    return-object v1

    .line 1253
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->startScan()[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1255
    :catch_0
    move-exception v0

    .line 1256
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopScan()Z
    .locals 5

    .prologue
    .line 1264
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.stopScan"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    const/4 v0, 0x0

    .line 1266
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1267
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.stopScan: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    return v0

    .line 1271
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->stopScan()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1273
    :catch_0
    move-exception v1

    .line 1274
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private tune(F)Z
    .locals 5
    .parameter "frequency"

    .prologue
    .line 1210
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.tune"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    const/4 v0, 0x0

    .line 1212
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1213
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.tune: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    return v0

    .line 1217
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->tune(F)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1219
    :catch_0
    move-exception v1

    .line 1220
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private tuneToStation(I)V
    .locals 5
    .parameter "iStation"

    .prologue
    const/high16 v4, 0x4120

    .line 921
    const-string v1, "FMRadioEngineer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> tuneToStation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-float v3, p1

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbPlaying:Z

    if-eqz v1, :cond_1

    .line 923
    const-string v1, "FMRadioEngineer"

    const-string v2, "FM is playing."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->rdsset(Z)I

    .line 925
    int-to-float v1, p1

    div-float/2addr v1, v4

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->tune(F)Z

    move-result v0

    .line 926
    .local v0, bRes:Z
    if-eqz v0, :cond_0

    .line 927
    const-string v1, "FMRadioEngineer"

    const-string v2, "Tune to the station succeeded."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->rdsset(Z)I

    .line 929
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->miCurrentStation:I

    .line 932
    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->miCurrentStation:I

    invoke-static {p0, v1}, Lcom/mediatek/FMRadio/FMRadioStation;->setCurrentStation(Landroid/app/Activity;I)V

    .line 947
    .end local v0           #bRes:Z
    :goto_0
    const-string v1, "FMRadioEngineer"

    const-string v2, "<<< tuneToStation"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    return-void

    .line 935
    .restart local v0       #bRes:Z
    :cond_0
    const-string v1, "FMRadioEngineer"

    const-string v2, "Error: Can not tune to the station."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 939
    .end local v0           #bRes:Z
    :cond_1
    const-string v1, "FMRadioEngineer"

    const-string v2, "FM is paused."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->miCurrentStation:I

    .line 942
    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->miCurrentStation:I

    invoke-static {p0, v1}, Lcom/mediatek/FMRadio/FMRadioStation;->setCurrentStation(Landroid/app/Activity;I)V

    .line 944
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->onPlayFM()V

    goto :goto_0
.end method

.method private useEarphone(Z)V
    .locals 4
    .parameter "use"

    .prologue
    .line 1444
    const-string v1, "FMRadioEngineer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioEMActivity.useEarphone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 1446
    const-string v1, "FMRadioEngineer"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    :goto_0
    const-string v1, "FMRadioEngineer"

    const-string v2, "<<< FMRadioEMActivity.useEarphone"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    return-void

    .line 1450
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->useEarphone(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1452
    :catch_0
    move-exception v0

    .line 1453
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FMRadioEngineer"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getStereoMono()Z
    .locals 5

    .prologue
    .line 1671
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.getStereoMono"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    const/4 v1, 0x0

    .line 1673
    .local v1, iRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1674
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.getStereoMono: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    return v1

    .line 1678
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->getStereoMono()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1680
    :catch_0
    move-exception v0

    .line 1681
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 982
    const-string v0, "FMRadioEngineer"

    const-string v1, ">>> FMRadioEMActivity.onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 997
    const-string v0, "FMRadioEngineer"

    const-string v1, "<<< FMRadioEMActivity.onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 1024
    const-string v0, "FMRadioEngineer"

    const-string v1, ">>> FMRadioEMActivity.onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1026
    const-string v0, "FMRadioEngineer"

    const-string v1, "<<< FMRadioEMActivity.onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 228
    const-string v4, "FMRadioEngineer"

    const-string v5, "onCreat"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mSavedInstanceState:Landroid/os/Bundle;

    .line 230
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 232
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->initViewAndAdapter()V

    .line 235
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v4}, Lcom/mediatek/FMRadio/FMRadioEngineer;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    .line 236
    .local v0, cn:Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 237
    const-string v4, "FMRadioEngineer"

    const-string v5, "Error: Cannot start FM service"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :goto_0
    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbServiceBinded:Z

    if-nez v4, :cond_1

    .line 384
    const-string v4, "FMRadioEngineer"

    const-string v5, "Error: Cannot bind FM service"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->finish()V

    .line 386
    const-string v4, "FMRadioEngineer"

    const-string v5, "<<< FMRadioEMActivity.onCreat"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :goto_1
    return-void

    .line 240
    :cond_0
    const-string v4, "FMRadioEngineer"

    const-string v5, "Start FM service successfully."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iput-boolean v6, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbServiceStarted:Z

    .line 243
    new-instance v4, Lcom/mediatek/FMRadio/FMRadioEngineer$1;

    invoke-direct {v4, p0}, Lcom/mediatek/FMRadio/FMRadioEngineer$1;-><init>(Lcom/mediatek/FMRadio/FMRadioEngineer;)V

    iput-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 378
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v4, v5, v6}, Lcom/mediatek/FMRadio/FMRadioEngineer;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbServiceBinded:Z

    goto :goto_0

    .line 390
    :cond_1
    const-string v4, "FMRadioEngineer"

    const-string v5, "Bind FM service successfully."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 395
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v4, "com.mediatek.FMRadio.FMRadioService.ACTION_STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 396
    const-string v4, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_PS_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 397
    const-string v4, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_RT_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 398
    const-string v4, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_AF_ACTIVED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 399
    const-string v4, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_TA_ACTIVED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 400
    const-string v4, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_TA_DEACTIVED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    new-instance v4, Lcom/mediatek/FMRadio/FMRadioEngineer$FMBroadcastReceiver;

    invoke-direct {v4, p0, v7}, Lcom/mediatek/FMRadio/FMRadioEngineer$FMBroadcastReceiver;-><init>(Lcom/mediatek/FMRadio/FMRadioEngineer;Lcom/mediatek/FMRadio/FMRadioEngineer$1;)V

    iput-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioEngineer$FMBroadcastReceiver;

    .line 402
    const-string v4, "FMRadioEngineer"

    const-string v5, "Register broadcast receiver."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioEngineer$FMBroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 406
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 407
    .local v2, filterHeadset:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 408
    new-instance v4, Lcom/mediatek/FMRadio/FMRadioEngineer$HeadsetConnectionReceiver;

    invoke-direct {v4, p0, v7}, Lcom/mediatek/FMRadio/FMRadioEngineer$HeadsetConnectionReceiver;-><init>(Lcom/mediatek/FMRadio/FMRadioEngineer;Lcom/mediatek/FMRadio/FMRadioEngineer$1;)V

    iput-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioEngineer$HeadsetConnectionReceiver;

    .line 409
    const-string v4, "FMRadioEngineer"

    const-string v5, "Register HeadsetConnectionReceiver"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioEngineer$HeadsetConnectionReceiver;

    invoke-virtual {p0, v4, v2}, Lcom/mediatek/FMRadio/FMRadioEngineer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 413
    invoke-static {p0}, Lcom/mediatek/FMRadio/FMRadioStation;->getCurrentStation(Landroid/app/Activity;)I

    move-result v4

    iput v4, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->miCurrentStation:I

    .line 420
    new-instance v4, Lcom/mediatek/FMRadio/FMRadioEngineer$2;

    invoke-direct {v4, p0}, Lcom/mediatek/FMRadio/FMRadioEngineer$2;-><init>(Lcom/mediatek/FMRadio/FMRadioEngineer;)V

    iput-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mHandler:Landroid/os/Handler;

    .line 540
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/mediatek/FMRadio/FMRadioEngineer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 544
    .local v3, pm:Landroid/os/PowerManager;
    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbPlaying:Z

    invoke-direct {p0, v4}, Lcom/mediatek/FMRadio/FMRadioEngineer;->refreshTextStatus(Z)V

    .line 545
    const-string v4, "FMRadioEngineer"

    const-string v5, "<<< FMRadioEMActivity.onCreat"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 571
    const-string v1, "FMRadioEngineer"

    const-string v2, ">>> FMRadioEMActivity.onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iput-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbDestroying:Z

    .line 576
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioEngineer$FMBroadcastReceiver;

    if-eqz v1, :cond_0

    .line 577
    const-string v1, "FMRadioEngineer"

    const-string v2, "Unregister broadcast receiver."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioEngineer$FMBroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 579
    iput-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioEngineer$FMBroadcastReceiver;

    .line 582
    :cond_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioEngineer$HeadsetConnectionReceiver;

    if-eqz v1, :cond_1

    .line 583
    const-string v1, "FMRadioEngineer"

    const-string v2, "Unregister headset broadcast receiver."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioEngineer$HeadsetConnectionReceiver;

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 585
    iput-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioEngineer$HeadsetConnectionReceiver;

    .line 589
    :cond_1
    iput-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbExitPressed:Z

    .line 590
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbExitPressed:Z

    if-eqz v1, :cond_2

    .line 592
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbPlaying:Z

    if-eqz v1, :cond_2

    .line 593
    const-string v1, "FMRadioEngineer"

    const-string v2, "FM is Playing. So stop it."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-direct {p0, v4}, Lcom/mediatek/FMRadio/FMRadioEngineer;->setMute(Z)I

    .line 595
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioEngineer;->rdsset(Z)I

    .line 596
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->powerDown()Z

    .line 597
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbPlaying:Z

    .line 602
    :cond_2
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbServiceBinded:Z

    if-eqz v1, :cond_3

    .line 603
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->unbindService(Landroid/content/ServiceConnection;)V

    .line 604
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbServiceBinded:Z

    .line 607
    :cond_3
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbExitPressed:Z

    if-eqz v1, :cond_5

    .line 608
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbServiceStarted:Z

    if-eqz v1, :cond_5

    .line 609
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->stopService(Landroid/content/Intent;)Z

    move-result v0

    .line 610
    .local v0, bRes:Z
    if-nez v0, :cond_4

    .line 611
    const-string v1, "FMRadioEngineer"

    const-string v2, "Error: Cannot stop the FM service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_4
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbServiceStarted:Z

    .line 620
    .end local v0           #bRes:Z
    :cond_5
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 621
    const-string v1, "FMRadioEngineer"

    const-string v2, "<<< FMRadioEMActivity.onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 1093
    const-string v0, "FMRadioEngineer"

    const-string v1, ">>> FMRadioEMActivity.onLowMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 1095
    const-string v0, "FMRadioEngineer"

    const-string v1, "<<< FMRadioEMActivity.onLowMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 560
    const-string v0, "FMRadioEngineer"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 563
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 554
    const-string v0, "FMRadioEngineer"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 557
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 974
    const-string v0, "FMRadioEngineer"

    const-string v1, ">>> FMRadioEMActivity.onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 976
    const-string v0, "FM_SAVE_INSTANCE_STATE_INITED"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 977
    const-string v0, "FM_SAVE_INSTANCE_STATE_PLAYING"

    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbPlaying:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 978
    const-string v0, "FMRadioEngineer"

    const-string v1, "<<< FMRadioEMActivity.onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 549
    const-string v0, "FMRadioEngineer"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 551
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 566
    const-string v0, "FMRadioEngineer"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 568
    return-void
.end method

.method public readCapArray()I
    .locals 5

    .prologue
    .line 1635
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.readCapArray"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    const/4 v1, 0x0

    .line 1637
    .local v1, iRet:I
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1638
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.readCapArray: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    return v1

    .line 1642
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->readCapArray()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1644
    :catch_0
    move-exception v0

    .line 1645
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public readRdsBler()I
    .locals 5

    .prologue
    .line 1707
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.readRdsBler"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    const/4 v1, 0x0

    .line 1709
    .local v1, iRet:I
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1710
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.readRdsBler: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    return v1

    .line 1714
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->readRdsBler()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1716
    :catch_0
    move-exception v0

    .line 1717
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public readRssi()I
    .locals 5

    .prologue
    .line 1653
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.readRssi"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    const/4 v1, 0x0

    .line 1655
    .local v1, iRet:I
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1656
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.readRssi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    return v1

    .line 1660
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->readRssi()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1662
    :catch_0
    move-exception v0

    .line 1663
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showToast(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mediatek/FMRadio/FMRadioEngineer$6;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/FMRadio/FMRadioEngineer$6;-><init>(Lcom/mediatek/FMRadio/FMRadioEngineer;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1036
    return-void
.end method

.method public switchAntenna(I)I
    .locals 5
    .parameter "type"

    .prologue
    .line 1689
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.switchAntenna"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    const/4 v1, 0x2

    .line 1691
    .local v1, iRet:I
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1692
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.switchAntenna: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    return v1

    .line 1696
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->switchAntenna(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1698
    :catch_0
    move-exception v0

    .line 1699
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
