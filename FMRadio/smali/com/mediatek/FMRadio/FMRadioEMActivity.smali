.class public Lcom/mediatek/FMRadio/FMRadioEMActivity;
.super Landroid/app/Activity;
.source "FMRadioEMActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/FMRadio/FMRadioEMActivity$InitialThread;,
        Lcom/mediatek/FMRadio/FMRadioEMActivity$FMBroadcastReceiver;,
        Lcom/mediatek/FMRadio/FMRadioEMActivity$HeadsetConnectionReceiver;
    }
.end annotation


# static fields
.field private static final FM_SAVE_INSTANCE_STATE_EARPHONEUSED:Ljava/lang/String; = "FM_SAVE_INSTANCE_STATE_EARPHONEUSED"

.field private static final FM_SAVE_INSTANCE_STATE_INITED:Ljava/lang/String; = "FM_SAVE_INSTANCE_STATE_INITED"

.field private static final FM_SAVE_INSTANCE_STATE_PLAYING:Ljava/lang/String; = "FM_SAVE_INSTANCE_STATE_PLAYING"

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

.field public static final MSGID_TICK_EVENT:I = 0xc

.field public static final MSGID_UPDATE_CURRENT_STATION:I = 0x5

.field public static final MSGID_UPDATE_RDS:I = 0x4

.field public static final TAG:Ljava/lang/String; = "FMRadioEM"

.field public static final TOAST_TIMER_DELAY:J = 0x7d0L

.field public static final TYPE_MSGID:Ljava/lang/String; = "MSGID"

.field public static final TYPE_TOAST_STRING:Ljava/lang/String; = "TYPE_TOAST_STRING"


# instance fields
.field private btnClickListener:Landroid/view/View$OnClickListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioEMActivity$FMBroadcastReceiver;

.field private mButtonTune:Landroid/widget/Button;

.field private mCurrentStation:I

.field private mEditFreq:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioEMActivity$HeadsetConnectionReceiver;

.field private mIsAFEnabled:Z

.field private mIsDestroying:Z

.field private mIsExitPressed:Z

.field private mIsPSRTEnabled:Z

.field private mIsPlaying:Z

.field private mIsRDSEnabled:Z

.field private mIsRDSSupported:Z

.field private mIsServiceBinded:Z

.field private mIsServiceStarted:Z

.field private mLRTextString:Ljava/lang/String;

.field private mPSString:Ljava/lang/String;

.field private mRdAntennaL:Landroid/widget/RadioButton;

.field private mRdAntennaS:Landroid/widget/RadioButton;

.field private mRdMono:Landroid/widget/RadioButton;

.field private mRdStereo:Landroid/widget/RadioButton;

.field private mRgAntenna:Landroid/widget/RadioGroup;

.field private mRgSM:Landroid/widget/RadioGroup;

.field private mService:Lcom/mediatek/FMRadio/IFMRadioService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mTextCapArray:Landroid/widget/TextView;

.field private mTextChipID:Landroid/widget/TextView;

.field private mTextDSPVersion:Landroid/widget/TextView;

.field private mTextECOVersion:Landroid/widget/TextView;

.field private mTextPatchVersion:Landroid/widget/TextView;

.field private mTextRdsBler:Landroid/widget/TextView;

.field private mTextRdsPS:Landroid/widget/TextView;

.field private mTextRdsRT:Landroid/widget/TextView;

.field private mTextRssi:Landroid/widget/TextView;

.field private mTextStereoMono:Landroid/widget/TextView;

.field private mTimer:Ljava/util/Timer;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 109
    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsServiceStarted:Z

    .line 110
    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsServiceBinded:Z

    .line 111
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    .line 112
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 114
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;

    .line 117
    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z

    .line 118
    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsExitPressed:Z

    .line 122
    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsDestroying:Z

    .line 125
    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPSRTEnabled:Z

    .line 126
    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsAFEnabled:Z

    .line 130
    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsRDSSupported:Z

    .line 132
    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsRDSEnabled:Z

    .line 135
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mPSString:Ljava/lang/String;

    .line 136
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mLRTextString:Ljava/lang/String;

    .line 140
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mToast:Landroid/widget/Toast;

    .line 141
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTimer:Ljava/util/Timer;

    .line 143
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextStereoMono:Landroid/widget/TextView;

    .line 144
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRssi:Landroid/widget/TextView;

    .line 145
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextCapArray:Landroid/widget/TextView;

    .line 146
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsBler:Landroid/widget/TextView;

    .line 147
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsPS:Landroid/widget/TextView;

    .line 148
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsRT:Landroid/widget/TextView;

    .line 149
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextChipID:Landroid/widget/TextView;

    .line 150
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextECOVersion:Landroid/widget/TextView;

    .line 151
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextPatchVersion:Landroid/widget/TextView;

    .line 152
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextDSPVersion:Landroid/widget/TextView;

    .line 153
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditFreq:Landroid/widget/EditText;

    .line 154
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mButtonTune:Landroid/widget/Button;

    .line 155
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdAntennaS:Landroid/widget/RadioButton;

    .line 156
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdAntennaL:Landroid/widget/RadioButton;

    .line 157
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRgAntenna:Landroid/widget/RadioGroup;

    .line 158
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdStereo:Landroid/widget/RadioButton;

    .line 159
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdMono:Landroid/widget/RadioButton;

    .line 160
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRgSM:Landroid/widget/RadioGroup;

    .line 163
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I

    .line 164
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 279
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioEMActivity$FMBroadcastReceiver;

    .line 280
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioEMActivity$HeadsetConnectionReceiver;

    .line 282
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity$1;-><init>(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->btnClickListener:Landroid/view/View$OnClickListener;

    .line 693
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRgAntenna:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->isServiceInit()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/mediatek/FMRadio/FMRadioEMActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->initService(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->isDeviceOpen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/mediatek/FMRadio/FMRadioEMActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getFrequency()I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->isPowerUp()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsRDSSupported:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsRDSSupported:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/mediatek/FMRadio/FMRadioEMActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->isRDSSupported()I

    move-result v0

    return v0
.end method

.method static synthetic access$1702(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsRDSEnabled:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPSRTEnabled:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPSRTEnabled:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->isPSRTEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->refreshTextStatus(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsAFEnabled:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsAFEnabled:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->isAFEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getPS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getLRText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsDestroying:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->isAntennaAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->showRDS()V

    return-void
.end method

.method static synthetic access$2900(Lcom/mediatek/FMRadio/FMRadioEMActivity;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->showToast(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mPSString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->enablePSRT(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/mediatek/FMRadio/FMRadioEMActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mPSString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/mediatek/FMRadio/FMRadioEMActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->enableAF(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->isEarphoneUsed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextChipID:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextECOVersion:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextPatchVersion:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextDSPVersion:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsBler:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRssi:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextStereoMono:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdAntennaL:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextCapArray:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/mediatek/FMRadio/FMRadioEMActivity;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->formatCapArray(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->openDevice()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->playFM()V

    return-void
.end method

.method static synthetic access$4500(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->cancelToast()V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mLRTextString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/FMRadio/FMRadioEMActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mLRTextString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mediatek/FMRadio/FMRadioEMActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I

    return v0
.end method

.method static synthetic access$602(Lcom/mediatek/FMRadio/FMRadioEMActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I

    return p1
.end method

.method static synthetic access$700(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditFreq:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/FMRadio/FMRadioEMActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->tuneToStation(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/FMRadio/FMRadioEMActivity;)Lcom/mediatek/FMRadio/IFMRadioService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    return-object v0
.end method

.method static synthetic access$902(Lcom/mediatek/FMRadio/FMRadioEMActivity;Lcom/mediatek/FMRadio/IFMRadioService;)Lcom/mediatek/FMRadio/IFMRadioService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    return-object p1
.end method

.method private activeAF()I
    .locals 5

    .prologue
    .line 1248
    const-string v2, "FMRadioEM"

    const-string v3, ">>> FMRadioEMActivity.activeAF"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    const/4 v1, 0x0

    .line 1250
    .local v1, iRet:I
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1251
    const-string v2, "FMRadioEM"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    :goto_0
    const-string v2, "FMRadioEM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.activeAF: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    return v1

    .line 1254
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->activeAF()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1255
    :catch_0
    move-exception v0

    .line 1256
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEM"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private activeTA()I
    .locals 5

    .prologue
    .line 1264
    const-string v2, "FMRadioEM"

    const-string v3, ">>> FMRadioEMActivity.activeTA"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    const/4 v1, 0x0

    .line 1266
    .local v1, iRet:I
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1267
    const-string v2, "FMRadioEM"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    :goto_0
    const-string v2, "FMRadioEM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.activeTA: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    return v1

    .line 1270
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->activeTA()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1271
    :catch_0
    move-exception v0

    .line 1272
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEM"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private cancelToast()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 939
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.cancelToast"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 942
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTimer:Ljava/util/Timer;

    .line 946
    :goto_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 947
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 948
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mToast:Landroid/widget/Toast;

    .line 952
    :goto_1
    const-string v0, "FMRadioEM"

    const-string v1, "<<< FMRadioEMActivity.cancelToast"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    return-void

    .line 944
    :cond_0
    const-string v0, "FMRadioEM"

    const-string v1, "Warning: The timer is null."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 950
    :cond_1
    const-string v0, "FMRadioEM"

    const-string v1, "Warning: The toast is null."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private closeDevice()Z
    .locals 5

    .prologue
    .line 1040
    const-string v2, "FMRadioEM"

    const-string v3, ">>> FMRadioEMActivity.closeDevice"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    const/4 v0, 0x0

    .line 1042
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1043
    const-string v2, "FMRadioEM"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    :goto_0
    const-string v2, "FMRadioEM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.closeDevice: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    return v0

    .line 1046
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->closeDevice()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1047
    :catch_0
    move-exception v1

    .line 1048
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEM"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deactiveTA()I
    .locals 5

    .prologue
    .line 1280
    const-string v2, "FMRadioEM"

    const-string v3, ">>> FMRadioEMActivity.deactiveTA"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    const/4 v1, 0x0

    .line 1282
    .local v1, iRet:I
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1283
    const-string v2, "FMRadioEM"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    :goto_0
    const-string v2, "FMRadioEM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.deactiveTA: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    return v1

    .line 1286
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->deactiveTA()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1287
    :catch_0
    move-exception v0

    .line 1288
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEM"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enableAF(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 1402
    const-string v1, "FMRadioEM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioEMActivity.enableAF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 1404
    const-string v1, "FMRadioEM"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    :goto_0
    const-string v1, "FMRadioEM"

    const-string v2, "<<< FMRadioEMActivity.enableAF"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    return-void

    .line 1407
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->enableAF(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1408
    :catch_0
    move-exception v0

    .line 1409
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FMRadioEM"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enablePSRT(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 1388
    const-string v1, "FMRadioEM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioEMActivity.enablePSRT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 1390
    const-string v1, "FMRadioEM"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    :goto_0
    const-string v1, "FMRadioEM"

    const-string v2, "<<< FMRadioEMActivity.enablePSRT"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    return-void

    .line 1393
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->enablePSRT(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1394
    :catch_0
    move-exception v0

    .line 1395
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FMRadioEM"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enableTA(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 1416
    const-string v1, "FMRadioEM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioEMActivity.enableTA: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 1418
    const-string v1, "FMRadioEM"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    :goto_0
    const-string v1, "FMRadioEM"

    const-string v2, "<<< FMRadioEMActivity.enableTA"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    return-void

    .line 1421
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->enableTA(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1422
    :catch_0
    move-exception v0

    .line 1423
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FMRadioEM"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private formatCapArray(I)Ljava/lang/String;
    .locals 9
    .parameter "raw"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    .line 606
    new-array v1, v8, [F

    fill-array-data v1, :array_0

    .line 609
    .local v1, pF:[F
    const/4 v2, 0x0

    .line 610
    .local v2, sum:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v8, :cond_1

    .line 611
    float-to-double v5, v2

    add-int/lit8 v3, v0, 0x6

    shr-int v3, p1, v3

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v7, :cond_0

    aget v3, v1, v0

    float-to-double v3, v3

    :goto_1
    add-double/2addr v3, v5

    double-to-float v2, v3

    .line 610
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 611
    :cond_0
    const-wide/16 v3, 0x0

    goto :goto_1

    .line 613
    :cond_1
    const-string v3, "%.2f"

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 606
    :array_0
    .array-data 0x4
        0xe7t 0xfbt 0x29t 0x3et
        0xe7t 0xfbt 0xa9t 0x3et
        0xe7t 0xfbt 0x29t 0x3ft
        0x71t 0x3dt 0xaat 0x3ft
        0x71t 0x3dt 0x2at 0x40t
        0x85t 0xebt 0xa9t 0x40t
        0x9at 0x99t 0x29t 0x41t
        0xcdt 0xcct 0x94t 0x41t
    .end array-data
.end method

.method private getFrequency()I
    .locals 5

    .prologue
    .line 1478
    const-string v2, "FMRadioEM"

    const-string v3, ">>> FMRadioEMActivity.getFrequency"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    const/4 v1, 0x0

    .line 1480
    .local v1, iRet:I
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1481
    const-string v2, "FMRadioEM"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    :goto_0
    const-string v2, "FMRadioEM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.getFrequency: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    return v1

    .line 1484
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->getFrequency()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1485
    :catch_0
    move-exception v0

    .line 1486
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEM"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getLRText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1232
    const-string v2, "FMRadioEM"

    const-string v3, ">>> FMRadioEMActivity.getLRText"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    const/4 v1, 0x0

    .line 1234
    .local v1, sRT:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1235
    const-string v2, "FMRadioEM"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    :goto_0
    const-string v2, "FMRadioEM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.getLRText: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    return-object v1

    .line 1238
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->getLRText()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1239
    :catch_0
    move-exception v0

    .line 1240
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEM"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getPS()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1216
    const-string v2, "FMRadioEM"

    const-string v3, ">>> FMRadioEMActivity.getPS"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    const/4 v1, 0x0

    .line 1218
    .local v1, sPS:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1219
    const-string v2, "FMRadioEM"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    :goto_0
    const-string v2, "FMRadioEM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.getPS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    return-object v1

    .line 1222
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->getPS()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1223
    :catch_0
    move-exception v0

    .line 1224
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEM"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initService(I)V
    .locals 4
    .parameter "iCurrentStation"

    .prologue
    .line 1358
    const-string v1, "FMRadioEM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioEMActivity.initService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 1360
    const-string v1, "FMRadioEM"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    :goto_0
    const-string v1, "FMRadioEM"

    const-string v2, "<<< FMRadioEMActivity.initService"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    return-void

    .line 1363
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->initService(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1364
    :catch_0
    move-exception v0

    .line 1365
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FMRadioEM"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isAFEnabled()Z
    .locals 5

    .prologue
    .line 1446
    const-string v2, "FMRadioEM"

    const-string v3, ">>> FMRadioEMActivity.isAFEnabled"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    const/4 v0, 0x0

    .line 1448
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1449
    const-string v2, "FMRadioEM"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    :goto_0
    const-string v2, "FMRadioEM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.isAFEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    return v0

    .line 1452
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->isAFEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1453
    :catch_0
    move-exception v1

    .line 1454
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEM"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isAntennaAvailable()Z
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method

.method private isDeviceOpen()Z
    .locals 5

    .prologue
    .line 1056
    const-string v2, "FMRadioEM"

    const-string v3, ">>> FMRadioEMActivity.isDeviceOpen"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    const/4 v0, 0x0

    .line 1058
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1059
    const-string v2, "FMRadioEM"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    :goto_0
    const-string v2, "FMRadioEM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.isDeviceOpen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    return v0

    .line 1062
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->isDeviceOpen()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1063
    :catch_0
    move-exception v1

    .line 1064
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEM"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isEarphoneUsed()Z
    .locals 5

    .prologue
    .line 1342
    const-string v2, "FMRadioEM"

    const-string v3, ">>> FMRadioEMActivity.isEarphoneUsed"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    const/4 v0, 0x1

    .line 1344
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1345
    const-string v2, "FMRadioEM"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    :goto_0
    const-string v2, "FMRadioEM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.isEarphoneUsed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    return v0

    .line 1348
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->isEarphoneUsed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1349
    :catch_0
    move-exception v1

    .line 1350
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEM"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isPSRTEnabled()Z
    .locals 5

    .prologue
    .line 1430
    const-string v2, "FMRadioEM"

    const-string v3, ">>> FMRadioEMActivity.isPSRTEnabled"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    const/4 v0, 0x0

    .line 1432
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1433
    const-string v2, "FMRadioEM"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    :goto_0
    const-string v2, "FMRadioEM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.isPSRTEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    return v0

    .line 1436
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->isPSRTEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1437
    :catch_0
    move-exception v1

    .line 1438
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEM"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isPowerUp()Z
    .locals 5

    .prologue
    .line 1104
    const-string v2, "FMRadioEM"

    const-string v3, ">>> FMRadioEMActivity.isPowerUp"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    const/4 v0, 0x0

    .line 1106
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1107
    const-string v2, "FMRadioEM"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :goto_0
    const-string v2, "FMRadioEM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.isPowerUp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    return v0

    .line 1110
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->isPowerUp()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1111
    :catch_0
    move-exception v1

    .line 1112
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEM"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isRDSSupported()I
    .locals 5

    .prologue
    .line 1312
    const-string v2, "FMRadioEM"

    const-string v3, ">>> FMRadioEMActivity.isRDSSupported"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    const/4 v1, -0x1

    .line 1314
    .local v1, iRet:I
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1315
    const-string v2, "FMRadioEM"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    :goto_0
    const-string v2, "FMRadioEM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.isRDSSupported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    return v1

    .line 1318
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->isRDSSupported()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1319
    :catch_0
    move-exception v0

    .line 1320
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEM"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isServiceInit()Z
    .locals 5

    .prologue
    .line 1372
    const-string v2, "FMRadioEM"

    const-string v3, ">>> FMRadioEMActivity.isServiceInit"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    const/4 v0, 0x0

    .line 1374
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1375
    const-string v2, "FMRadioEM"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    :goto_0
    const-string v2, "FMRadioEM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.isServiceInit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    return v0

    .line 1378
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->isServiceInit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1379
    :catch_0
    move-exception v1

    .line 1380
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEM"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isTAEnabled()Z
    .locals 5

    .prologue
    .line 1462
    const-string v2, "FMRadioEM"

    const-string v3, ">>> FMRadioEMActivity.isTAEnabled"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    const/4 v0, 0x0

    .line 1464
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1465
    const-string v2, "FMRadioEM"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    :goto_0
    const-string v2, "FMRadioEM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.isTAEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    return v0

    .line 1468
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->isTAEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1469
    :catch_0
    move-exception v1

    .line 1470
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEM"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isToasting()Z
    .locals 4

    .prologue
    .line 956
    const-string v1, "FMRadioEM"

    const-string v2, ">>> FMRadioEMActivity.isToasting"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const/4 v0, 0x1

    .line 958
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mToast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTimer:Ljava/util/Timer;

    if-nez v1, :cond_0

    .line 959
    const/4 v0, 0x0

    .line 961
    :cond_0
    const-string v1, "FMRadioEM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioEMActivity.isToasting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    return v0
.end method

.method private onPauseFM()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 819
    const-string v0, "FMRadioEM"

    const-string v1, ">>> onPauseFM"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->setMute(Z)I

    .line 822
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->rdsset(Z)I

    .line 823
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->powerDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z

    .line 825
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->refreshTextStatus(Z)V

    .line 830
    :goto_0
    const-string v0, "FMRadioEM"

    const-string v1, "<<< onPauseFM"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    return-void

    .line 827
    :cond_0
    const-string v0, "FMRadioEM"

    const-string v1, "Error: Can not power down."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onPlayFM()V
    .locals 2

    .prologue
    .line 754
    const-string v0, "FMRadioEM"

    const-string v1, ">>> onPlayFM"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->refreshTextStatus(Z)V

    .line 757
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;-><init>(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity$4;->start()V

    .line 773
    const-string v0, "FMRadioEM"

    const-string v1, "<<< onPlayFM"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    return-void
.end method

.method private onUseEarphone()V
    .locals 2

    .prologue
    .line 834
    const-string v0, "FMRadioEM"

    const-string v1, ">>> onUseEarphone"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->useEarphone(Z)V

    .line 836
    const-string v0, "FMRadioEM"

    const-string v1, "<<< onUseEarphone"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    return-void
.end method

.method private onUseLoudspeaker()V
    .locals 2

    .prologue
    .line 840
    const-string v0, "FMRadioEM"

    const-string v1, ">>> onUseLoudspeaker"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->useEarphone(Z)V

    .line 842
    const-string v0, "FMRadioEM"

    const-string v1, "<<< onUseLoudspeaker"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    return-void
.end method

.method private openDevice()Z
    .locals 5

    .prologue
    .line 1024
    const-string v2, "FMRadioEM"

    const-string v3, ">>> FMRadioEMActivity.openDevice"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    const/4 v0, 0x0

    .line 1026
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1027
    const-string v2, "FMRadioEM"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :goto_0
    const-string v2, "FMRadioEM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.openDevice: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    return v0

    .line 1030
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->openDevice()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1031
    :catch_0
    move-exception v1

    .line 1032
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEM"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private playFM()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 777
    const-string v3, "FMRadioEM"

    const-string v4, ">>> PlayFM"

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->setMute(Z)I

    .line 780
    invoke-direct {p0, v6}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->rdsset(Z)I

    .line 781
    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I

    int-to-float v3, v3

    const/high16 v4, 0x4120

    div-float/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->powerUp(F)Z

    move-result v0

    .line 782
    .local v0, bRes:Z
    if-eqz v0, :cond_1

    .line 783
    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->rdsset(Z)I

    .line 785
    iput-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z

    .line 786
    invoke-direct {p0, v6}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->setMute(Z)I

    .line 788
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->isAntennaAvailable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 789
    invoke-virtual {p0, v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->switchAntenna(I)I

    .line 792
    :cond_0
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 793
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 794
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 795
    .local v1, bundle:Landroid/os/Bundle;
    const-string v3, "MSGID"

    const/16 v4, 0x8

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 796
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 797
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 815
    :goto_0
    const-string v3, "FMRadioEM"

    const-string v4, "<<< PlayFM"

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    return-void

    .line 802
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    :cond_1
    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->setMute(Z)I

    .line 803
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->powerDown()Z

    .line 804
    iput-boolean v6, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z

    .line 806
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 807
    .restart local v2       #msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 808
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 809
    .restart local v1       #bundle:Landroid/os/Bundle;
    const-string v3, "MSGID"

    const/16 v4, 0x9

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 810
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 811
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 813
    const-string v3, "FMRadioEM"

    const-string v4, "Error: Can not power up."

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private powerDown()Z
    .locals 5

    .prologue
    .line 1088
    const-string v2, "FMRadioEM"

    const-string v3, ">>> FMRadioEMActivity.powerDown"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    const/4 v0, 0x0

    .line 1090
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1091
    const-string v2, "FMRadioEM"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    :goto_0
    const-string v2, "FMRadioEM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.powerDown: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    return v0

    .line 1094
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->powerDown()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1095
    :catch_0
    move-exception v1

    .line 1096
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEM"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private powerUp(F)Z
    .locals 5
    .parameter "frequency"

    .prologue
    .line 1072
    const-string v2, "FMRadioEM"

    const-string v3, ">>> FMRadioEMActivity.powerUp"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    const/4 v0, 0x0

    .line 1074
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1075
    const-string v2, "FMRadioEM"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    :goto_0
    const-string v2, "FMRadioEM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.powerUp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    return v0

    .line 1078
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->powerUp(F)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1079
    :catch_0
    move-exception v1

    .line 1080
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEM"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private rdsset(Z)I
    .locals 2
    .parameter "rdson"

    .prologue
    .line 905
    const/4 v0, -0x1

    .line 906
    .local v0, iRet:I
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsRDSEnabled:Z

    if-eqz v1, :cond_0

    .line 907
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->setRDS(Z)I

    move-result v0

    .line 912
    :cond_0
    return v0
.end method

.method private readRDS()I
    .locals 5

    .prologue
    .line 1200
    const-string v2, "FMRadioEM"

    const-string v3, ">>> FMRadioEMActivity.readRDS"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    const/4 v1, 0x0

    .line 1202
    .local v1, iRet:I
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1203
    const-string v2, "FMRadioEM"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    :goto_0
    const-string v2, "FMRadioEM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.readRDS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    return v1

    .line 1206
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->readRDS()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1207
    :catch_0
    move-exception v0

    .line 1208
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEM"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private refreshTextStatus(Z)V
    .locals 3
    .parameter "on"

    .prologue
    .line 874
    if-nez p1, :cond_0

    .line 875
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextStereoMono:Landroid/widget/TextView;

    const-string v2, "X"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 876
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRssi:Landroid/widget/TextView;

    const-string v2, "X"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 877
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextCapArray:Landroid/widget/TextView;

    const-string v2, "X"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 878
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsBler:Landroid/widget/TextView;

    const-string v2, "X"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 879
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsPS:Landroid/widget/TextView;

    const-string v2, "X"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 880
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsRT:Landroid/widget/TextView;

    const-string v2, "X"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 881
    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I

    int-to-float v1, v1

    const/high16 v2, 0x4120

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 882
    .local v0, freq:Ljava/lang/Float;
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditFreq:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 883
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRgAntenna:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 884
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mButtonTune:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 888
    .end local v0           #freq:Ljava/lang/Float;
    :goto_0
    return-void

    .line 886
    :cond_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mButtonTune:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private seek(FZ)F
    .locals 5
    .parameter "frequency"
    .parameter "isUp"

    .prologue
    .line 1136
    const-string v2, "FMRadioEM"

    const-string v3, ">>> FMRadioEMActivity.seek"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    const/4 v1, 0x0

    .line 1138
    .local v1, fRet:F
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1139
    const-string v2, "FMRadioEM"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    :goto_0
    const-string v2, "FMRadioEM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.seek: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    return v1

    .line 1142
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2, p1, p2}, Lcom/mediatek/FMRadio/IFMRadioService;->seek(FZ)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1143
    :catch_0
    move-exception v0

    .line 1144
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEM"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setMute(Z)I
    .locals 5
    .parameter "mute"

    .prologue
    .line 1296
    const-string v2, "FMRadioEM"

    const-string v3, ">>> FMRadioEMActivity.setMute"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    const/4 v1, -0x1

    .line 1298
    .local v1, iRet:I
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1299
    const-string v2, "FMRadioEM"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    :goto_0
    const-string v2, "FMRadioEM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.setMute: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    return v1

    .line 1302
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->setMute(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1303
    :catch_0
    move-exception v0

    .line 1304
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEM"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setRDS(Z)I
    .locals 5
    .parameter "on"

    .prologue
    .line 1184
    const-string v2, "FMRadioEM"

    const-string v3, ">>> FMRadioEMActivity.setRDS"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    const/4 v1, -0x1

    .line 1186
    .local v1, iRet:I
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1187
    const-string v2, "FMRadioEM"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    :goto_0
    const-string v2, "FMRadioEM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.setRDS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    return v1

    .line 1190
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->setRDS(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1191
    :catch_0
    move-exception v0

    .line 1192
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEM"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showRDS()V
    .locals 2

    .prologue
    .line 966
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.showRDS"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsPS:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mPSString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 968
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsRT:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mLRTextString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 969
    const-string v0, "FMRadioEM"

    const-string v1, "<<< FMRadioEMActivity.showRDS"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    return-void
.end method

.method private showToast(Ljava/lang/CharSequence;)V
    .locals 6
    .parameter "text"

    .prologue
    const-wide/16 v2, 0x7d0

    .line 922
    const-string v0, "FMRadioEM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> FMRadioEMActivity.showToast: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTimer:Ljava/util/Timer;

    .line 925
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/mediatek/FMRadio/FMRadioEMActivity$5;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity$5;-><init>(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 933
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mToast:Landroid/widget/Toast;

    .line 934
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 935
    const-string v0, "FMRadioEM"

    const-string v1, "<<< FMRadioEMActivity.showToast"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    return-void
.end method

.method private startScan()[I
    .locals 5

    .prologue
    .line 1152
    const-string v2, "FMRadioEM"

    const-string v3, ">>> FMRadioEMActivity.startScan"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    const/4 v1, 0x0

    .line 1154
    .local v1, iChannels:[I
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1155
    const-string v2, "FMRadioEM"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    :goto_0
    const-string v2, "FMRadioEM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.startScan: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    return-object v1

    .line 1158
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->startScan()[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1159
    :catch_0
    move-exception v0

    .line 1160
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEM"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopScan()Z
    .locals 5

    .prologue
    .line 1168
    const-string v2, "FMRadioEM"

    const-string v3, ">>> FMRadioEMActivity.stopScan"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    const/4 v0, 0x0

    .line 1170
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1171
    const-string v2, "FMRadioEM"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    :goto_0
    const-string v2, "FMRadioEM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.stopScan: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    return v0

    .line 1174
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->stopScan()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1175
    :catch_0
    move-exception v1

    .line 1176
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEM"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private tune(F)Z
    .locals 5
    .parameter "frequency"

    .prologue
    .line 1120
    const-string v2, "FMRadioEM"

    const-string v3, ">>> FMRadioEMActivity.tune"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    const/4 v0, 0x0

    .line 1122
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1123
    const-string v2, "FMRadioEM"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    :goto_0
    const-string v2, "FMRadioEM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.tune: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    return v0

    .line 1126
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->tune(F)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1127
    :catch_0
    move-exception v1

    .line 1128
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEM"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private tuneToStation(I)V
    .locals 5
    .parameter "iStation"

    .prologue
    const/high16 v4, 0x4120

    .line 846
    const-string v1, "FMRadioEM"

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

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z

    if-eqz v1, :cond_1

    .line 848
    const-string v1, "FMRadioEM"

    const-string v2, "FM is playing."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->rdsset(Z)I

    .line 850
    int-to-float v1, p1

    div-float/2addr v1, v4

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->tune(F)Z

    move-result v0

    .line 851
    .local v0, bRes:Z
    if-eqz v0, :cond_0

    .line 852
    const-string v1, "FMRadioEM"

    const-string v2, "Tune to the station succeeded."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->rdsset(Z)I

    .line 854
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I

    .line 856
    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I

    invoke-static {p0, v1}, Lcom/mediatek/FMRadio/FMRadioStation;->setCurrentStation(Landroid/app/Activity;I)V

    .line 869
    .end local v0           #bRes:Z
    :goto_0
    const-string v1, "FMRadioEM"

    const-string v2, "<<< tuneToStation"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    return-void

    .line 858
    .restart local v0       #bRes:Z
    :cond_0
    const-string v1, "FMRadioEM"

    const-string v2, "Error: Can not tune to the station."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 861
    .end local v0           #bRes:Z
    :cond_1
    const-string v1, "FMRadioEM"

    const-string v2, "FM is paused."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I

    .line 864
    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I

    invoke-static {p0, v1}, Lcom/mediatek/FMRadio/FMRadioStation;->setCurrentStation(Landroid/app/Activity;I)V

    .line 866
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->onPlayFM()V

    goto :goto_0
.end method

.method private useEarphone(Z)V
    .locals 4
    .parameter "use"

    .prologue
    .line 1328
    const-string v1, "FMRadioEM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioEMActivity.useEarphone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 1330
    const-string v1, "FMRadioEM"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    :goto_0
    const-string v1, "FMRadioEM"

    const-string v2, "<<< FMRadioEMActivity.useEarphone"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    return-void

    .line 1333
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->useEarphone(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1334
    :catch_0
    move-exception v0

    .line 1335
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FMRadioEM"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getChipId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 978
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getHardwareVersion()[I

    move-result-object v1

    .line 979
    .local v1, hardwareVersion:[I
    const/4 v0, 0x0

    .line 980
    .local v0, chipId:I
    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 981
    const/4 v2, 0x0

    aget v0, v1, v2

    .line 983
    :cond_0
    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getStringValue(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getDSPVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1013
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getHardwareVersion()[I

    move-result-object v2

    .line 1014
    .local v2, hardwareVersion:[I
    const/4 v0, 0x0

    .line 1015
    .local v0, dspVersion:I
    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v4, 0x3

    if-lt v3, v4, :cond_0

    .line 1016
    const/4 v3, 0x2

    aget v0, v2, v3

    .line 1018
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "V"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getStringValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1019
    .local v1, dspVersionStr:Ljava/lang/String;
    return-object v1
.end method

.method public getECOVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 987
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getHardwareVersion()[I

    move-result-object v2

    .line 988
    .local v2, hardwareVersion:[I
    const/4 v0, 0x0

    .line 989
    .local v0, ecoVersion:I
    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 990
    const/4 v3, 0x1

    aget v0, v2, v3

    .line 992
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "E"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getStringValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 993
    .local v1, ecoVersionStr:Ljava/lang/String;
    return-object v1
.end method

.method public getHardwareVersion()[I
    .locals 5

    .prologue
    .line 1595
    const-string v2, "FMRadioEM"

    const-string v3, ">>> FMRadioEMActivity.getHardwareversion"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    const/4 v1, 0x0

    .line 1597
    .local v1, hardwareVersion:[I
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1598
    const-string v2, "FMRadioEM"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    :goto_0
    const-string v2, "FMRadioEM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.getHardwareversion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    return-object v1

    .line 1601
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->getHardwareVersion()[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1602
    :catch_0
    move-exception v0

    .line 1603
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEM"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPatchVersion()Ljava/lang/String;
    .locals 7

    .prologue
    .line 997
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getHardwareVersion()[I

    move-result-object v1

    .line 998
    .local v1, hardwareVersion:[I
    const/4 v4, 0x0

    .line 999
    .local v4, patchVersion:I
    if-eqz v1, :cond_0

    array-length v5, v1

    const/4 v6, 0x4

    if-lt v5, v6, :cond_0

    .line 1000
    const/4 v5, 0x3

    aget v4, v1, v5

    .line 1002
    :cond_0
    invoke-virtual {p0, v4}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getStringValue(I)Ljava/lang/String;

    move-result-object v3

    .line 1003
    .local v3, patchStr:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1005
    .local v2, patch:F
    :try_start_0
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    const/high16 v6, 0x42c8

    div-float v2, v5, v6

    .line 1009
    :goto_0
    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1006
    :catch_0
    move-exception v0

    .line 1007
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getStereoMono()Z
    .locals 5

    .prologue
    .line 1529
    const-string v2, "FMRadioEM"

    const-string v3, ">>> FMRadioEMActivity.getStereoMono"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    const/4 v1, 0x0

    .line 1531
    .local v1, iRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1532
    const-string v2, "FMRadioEM"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    :goto_0
    const-string v2, "FMRadioEM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.getStereoMono: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    return v1

    .line 1535
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->getStereoMono()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1536
    :catch_0
    move-exception v0

    .line 1537
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEM"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 8
    .parameter "a"

    .prologue
    .line 1611
    const-string v3, ""

    .line 1612
    .local v3, value:Ljava/lang/String;
    move v4, p1

    .line 1613
    .local v4, x:I
    const/4 v5, 0x0

    .line 1614
    .local v5, y:I
    :goto_0
    if-lez v4, :cond_0

    .line 1615
    rem-int/lit8 v5, v4, 0x10

    .line 1616
    div-int/lit8 v4, v4, 0x10

    .line 1617
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1619
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1620
    .local v0, c:[C
    const-string v2, ""

    .line 1621
    .local v2, result:Ljava/lang/String;
    array-length v6, v0

    add-int/lit8 v1, v6, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_1

    .line 1622
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-char v7, v0, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1621
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1624
    :cond_1
    return-object v2
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 899
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.onBackPressed"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 901
    const-string v0, "FMRadioEM"

    const-string v1, "<<< FMRadioEMActivity.onBackPressed"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 916
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 918
    const-string v0, "FMRadioEM"

    const-string v1, "<<< FMRadioEMActivity.onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 320
    const-string v3, "FMRadioEM"

    const-string v4, ">>> FMRadioEMActivity.onCreate"

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 325
    const v3, 0x7f030005

    invoke-virtual {p0, v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->setContentView(I)V

    .line 327
    const v3, 0x7f060025

    invoke-virtual {p0, v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextStereoMono:Landroid/widget/TextView;

    .line 328
    const v3, 0x7f060026

    invoke-virtual {p0, v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRssi:Landroid/widget/TextView;

    .line 329
    const v3, 0x7f060027

    invoke-virtual {p0, v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextCapArray:Landroid/widget/TextView;

    .line 330
    const v3, 0x7f060028

    invoke-virtual {p0, v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsBler:Landroid/widget/TextView;

    .line 331
    const v3, 0x7f060029

    invoke-virtual {p0, v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsPS:Landroid/widget/TextView;

    .line 332
    const v3, 0x7f06002a

    invoke-virtual {p0, v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsRT:Landroid/widget/TextView;

    .line 333
    const v3, 0x7f06002b

    invoke-virtual {p0, v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextChipID:Landroid/widget/TextView;

    .line 334
    const v3, 0x7f06002c

    invoke-virtual {p0, v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextECOVersion:Landroid/widget/TextView;

    .line 335
    const v3, 0x7f06002d

    invoke-virtual {p0, v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextPatchVersion:Landroid/widget/TextView;

    .line 336
    const v3, 0x7f06002e

    invoke-virtual {p0, v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextDSPVersion:Landroid/widget/TextView;

    .line 337
    const v3, 0x7f06001d

    invoke-virtual {p0, v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditFreq:Landroid/widget/EditText;

    .line 338
    const v3, 0x7f06001e

    invoke-virtual {p0, v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mButtonTune:Landroid/widget/Button;

    .line 339
    const v3, 0x7f060020

    invoke-virtual {p0, v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdAntennaS:Landroid/widget/RadioButton;

    .line 340
    const v3, 0x7f060021

    invoke-virtual {p0, v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdAntennaL:Landroid/widget/RadioButton;

    .line 341
    const v3, 0x7f06001f

    invoke-virtual {p0, v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    iput-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRgAntenna:Landroid/widget/RadioGroup;

    .line 342
    const v3, 0x7f060023

    invoke-virtual {p0, v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdStereo:Landroid/widget/RadioButton;

    .line 343
    const v3, 0x7f060024

    invoke-virtual {p0, v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdMono:Landroid/widget/RadioButton;

    .line 344
    const v3, 0x7f060022

    invoke-virtual {p0, v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    iput-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRgSM:Landroid/widget/RadioGroup;

    .line 346
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextStereoMono:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRssi:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextCapArray:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsBler:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsPS:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mTextRdsRT:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mEditFreq:Landroid/widget/EditText;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mButtonTune:Landroid/widget/Button;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdAntennaS:Landroid/widget/RadioButton;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdAntennaL:Landroid/widget/RadioButton;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRgAntenna:Landroid/widget/RadioGroup;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdStereo:Landroid/widget/RadioButton;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdMono:Landroid/widget/RadioButton;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRgSM:Landroid/widget/RadioGroup;

    if-nez v3, :cond_1

    .line 360
    :cond_0
    const-string v3, "FMRadioEM"

    const-string v4, "clocwork worked..."

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_1
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdAntennaS:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdAntennaL:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdStereo:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mRdMono:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mButtonTune:Landroid/widget/Button;

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->btnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    .line 373
    .local v0, cn:Landroid/content/ComponentName;
    if-nez v0, :cond_2

    .line 374
    const-string v3, "FMRadioEM"

    const-string v4, "Error: Cannot start FM service"

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :goto_0
    iget-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsServiceBinded:Z

    if-nez v3, :cond_3

    .line 488
    const-string v3, "FMRadioEM"

    const-string v4, "Error: Cannot bind FM service"

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->finish()V

    .line 490
    const-string v3, "FMRadioEM"

    const-string v4, "<<< FMRadioEMActivity.onCreate"

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :goto_1
    return-void

    .line 376
    :cond_2
    const-string v3, "FMRadioEM"

    const-string v4, "Start FM service successfully."

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iput-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsServiceStarted:Z

    .line 379
    new-instance v3, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;

    invoke-direct {v3, p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity$2;-><init>(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V

    iput-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 482
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v3, v4, v5}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsServiceBinded:Z

    goto :goto_0

    .line 493
    :cond_3
    const-string v3, "FMRadioEM"

    const-string v4, "Bind FM service successfully."

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 498
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "com.mediatek.FMRadio.FMRadioService.ACTION_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 499
    const-string v3, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_PS_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 500
    const-string v3, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_RT_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 501
    const-string v3, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_AF_ACTIVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 502
    const-string v3, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_TA_ACTIVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 503
    const-string v3, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_TA_DEACTIVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 504
    new-instance v3, Lcom/mediatek/FMRadio/FMRadioEMActivity$FMBroadcastReceiver;

    invoke-direct {v3, p0, v6}, Lcom/mediatek/FMRadio/FMRadioEMActivity$FMBroadcastReceiver;-><init>(Lcom/mediatek/FMRadio/FMRadioEMActivity;Lcom/mediatek/FMRadio/FMRadioEMActivity$1;)V

    iput-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioEMActivity$FMBroadcastReceiver;

    .line 505
    const-string v3, "FMRadioEM"

    const-string v4, "Register broadcast receiver."

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioEMActivity$FMBroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 509
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 510
    .local v2, filterHeadset:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 511
    new-instance v3, Lcom/mediatek/FMRadio/FMRadioEMActivity$HeadsetConnectionReceiver;

    invoke-direct {v3, p0, v6}, Lcom/mediatek/FMRadio/FMRadioEMActivity$HeadsetConnectionReceiver;-><init>(Lcom/mediatek/FMRadio/FMRadioEMActivity;Lcom/mediatek/FMRadio/FMRadioEMActivity$1;)V

    iput-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioEMActivity$HeadsetConnectionReceiver;

    .line 512
    const-string v3, "FMRadioEM"

    const-string v4, "Register HeadsetConnectionReceiver"

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioEMActivity$HeadsetConnectionReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 516
    invoke-static {p0}, Lcom/mediatek/FMRadio/FMRadioStation;->getCurrentStation(Landroid/app/Activity;)I

    move-result v3

    iput v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mCurrentStation:I

    .line 519
    new-instance v3, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;

    invoke-direct {v3, p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity$3;-><init>(Lcom/mediatek/FMRadio/FMRadioEMActivity;)V

    iput-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;

    .line 600
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 602
    iget-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z

    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->refreshTextStatus(Z)V

    .line 603
    const-string v3, "FMRadioEM"

    const-string v4, "<<< FMRadioEMActivity.onCreate"

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 643
    const-string v1, "FMRadioEM"

    const-string v2, ">>> FMRadioEMActivity.onDestroy"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iput-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsDestroying:Z

    .line 648
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioEMActivity$FMBroadcastReceiver;

    if-eqz v1, :cond_0

    .line 649
    const-string v1, "FMRadioEM"

    const-string v2, "Unregister broadcast receiver."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioEMActivity$FMBroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 651
    iput-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioEMActivity$FMBroadcastReceiver;

    .line 654
    :cond_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioEMActivity$HeadsetConnectionReceiver;

    if-eqz v1, :cond_1

    .line 655
    const-string v1, "FMRadioEM"

    const-string v2, "Unregister headset broadcast receiver."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioEMActivity$HeadsetConnectionReceiver;

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 657
    iput-object v5, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioEMActivity$HeadsetConnectionReceiver;

    .line 661
    :cond_1
    iput-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsExitPressed:Z

    .line 662
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsExitPressed:Z

    if-eqz v1, :cond_2

    .line 664
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z

    if-eqz v1, :cond_2

    .line 665
    const-string v1, "FMRadioEM"

    const-string v2, "FM is Playing. So stop it."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    invoke-direct {p0, v4}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->setMute(Z)I

    .line 667
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->rdsset(Z)I

    .line 668
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->powerDown()Z

    .line 669
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z

    .line 674
    :cond_2
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsServiceBinded:Z

    if-eqz v1, :cond_3

    .line 675
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 676
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsServiceBinded:Z

    .line 679
    :cond_3
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsExitPressed:Z

    if-eqz v1, :cond_5

    .line 680
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsServiceStarted:Z

    if-eqz v1, :cond_5

    .line 681
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEMActivity;->stopService(Landroid/content/Intent;)Z

    move-result v0

    .line 682
    .local v0, bRes:Z
    if-nez v0, :cond_4

    .line 683
    const-string v1, "FMRadioEM"

    const-string v2, "Error: Cannot stop the FM service."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_4
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsServiceStarted:Z

    .line 689
    .end local v0           #bRes:Z
    :cond_5
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 690
    const-string v1, "FMRadioEM"

    const-string v2, "<<< FMRadioEMActivity.onDestroy"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 973
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.onLowMemory"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 975
    const-string v0, "FMRadioEM"

    const-string v1, "<<< FMRadioEMActivity.onLowMemory"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 630
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.onPause"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 632
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 633
    const-string v0, "FMRadioEM"

    const-string v1, "<<< FMRadioEMActivity.onPause"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 623
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.onResume"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 625
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 626
    const-string v0, "FMRadioEM"

    const-string v1, "<<< FMRadioEMActivity.onResume"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 891
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 893
    const-string v0, "FM_SAVE_INSTANCE_STATE_INITED"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 894
    const-string v0, "FM_SAVE_INSTANCE_STATE_PLAYING"

    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mIsPlaying:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 895
    const-string v0, "FMRadioEM"

    const-string v1, "<<< FMRadioEMActivity.onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 617
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.onStart"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 619
    const-string v0, "FMRadioEM"

    const-string v1, "<<< FMRadioEMActivity.onStart"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 637
    const-string v0, "FMRadioEM"

    const-string v1, ">>> FMRadioEMActivity.onStop"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 639
    const-string v0, "FMRadioEM"

    const-string v1, "<<< FMRadioEMActivity.onStop"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    return-void
.end method

.method public readCapArray()I
    .locals 5

    .prologue
    .line 1497
    const-string v2, "FMRadioEM"

    const-string v3, ">>> FMRadioEMActivity.readCapArray"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    const/4 v1, 0x0

    .line 1499
    .local v1, iRet:I
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1500
    const-string v2, "FMRadioEM"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    :goto_0
    const-string v2, "FMRadioEM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.readCapArray: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    return v1

    .line 1503
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->readCapArray()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1504
    :catch_0
    move-exception v0

    .line 1505
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEM"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public readRdsBler()I
    .locals 5

    .prologue
    .line 1578
    const-string v2, "FMRadioEM"

    const-string v3, ">>> FMRadioEMActivity.readRdsBler"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    const/4 v1, 0x0

    .line 1580
    .local v1, iRet:I
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1581
    const-string v2, "FMRadioEM"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    :goto_0
    const-string v2, "FMRadioEM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.readRdsBler: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    return v1

    .line 1585
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->readRdsBler()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1586
    :catch_0
    move-exception v0

    .line 1587
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEM"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public readRssi()I
    .locals 5

    .prologue
    .line 1513
    const-string v2, "FMRadioEM"

    const-string v3, ">>> FMRadioEMActivity.readRssi"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    const/4 v1, 0x0

    .line 1515
    .local v1, iRet:I
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1516
    const-string v2, "FMRadioEM"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    :goto_0
    const-string v2, "FMRadioEM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.readRssi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    return v1

    .line 1519
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->readRssi()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1520
    :catch_0
    move-exception v0

    .line 1521
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEM"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setStereoMono(Z)Z
    .locals 5
    .parameter "isMono"

    .prologue
    .line 1545
    const-string v2, "FMRadioEM"

    const-string v3, ">>> FMRadioEMActivity.setStereoMono"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    const/4 v1, 0x0

    .line 1547
    .local v1, iRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1548
    const-string v2, "FMRadioEM"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    :goto_0
    const-string v2, "FMRadioEM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.setStereoMono: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    return v1

    .line 1551
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->setStereoMono(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1553
    :catch_0
    move-exception v0

    .line 1554
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEM"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public switchAntenna(I)I
    .locals 5
    .parameter "type"

    .prologue
    .line 1562
    const-string v2, "FMRadioEM"

    const-string v3, ">>> FMRadioEMActivity.switchAntenna"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    const/4 v1, 0x2

    .line 1564
    .local v1, iRet:I
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 1565
    const-string v2, "FMRadioEM"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    :goto_0
    const-string v2, "FMRadioEM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.switchAntenna: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    return v1

    .line 1568
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEMActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->switchAntenna(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1569
    :catch_0
    move-exception v0

    .line 1570
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEM"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
