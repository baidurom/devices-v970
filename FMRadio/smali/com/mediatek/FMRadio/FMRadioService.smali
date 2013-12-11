.class public Lcom/mediatek/FMRadio/FMRadioService;
.super Landroid/app/Service;
.source "FMRadioService.java"

# interfaces
.implements Lcom/mediatek/FMRadio/FMRecorder$onRecorderStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;,
        Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_FROMATVSERVICE_POWERUP:Ljava/lang/String; = "com.mediatek.app.mtv.POWER_ON"

.field public static final ACTION_RDS_AF_ACTIVED:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_AF_ACTIVED"

.field public static final ACTION_RDS_PS_CHANGED:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_PS_CHANGED"

.field public static final ACTION_RDS_RT_CHANGED:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_RT_CHANGED"

.field public static final ACTION_RDS_TA_ACTIVED:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_TA_ACTIVED"

.field public static final ACTION_RDS_TA_DEACTIVED:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_TA_DEACTIVED"

.field public static final ACTION_RECORDER_ERROR:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_RECORDER_ERROR"

.field public static final ACTION_RECORDING_MODE_CHANGED:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_RECORDING_MODE_CHANGED"

.field public static final ACTION_RECORDING_STATE_CHANGED:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_RECORDING_STATE_CHANGED"

.field public static final ACTION_STATE_CHANGED:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_STATE_CHANGED"

.field public static final ACTION_TOATVSERVICE_POWERDOWN:Ljava/lang/String; = "com.mediatek.app.mtv.ACTION_REQUEST_SHUTDOWN"

.field public static final ACTION_TOFMSERVICE_POWERDOWN:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_POWERDOWN"

.field public static final ACTION_TOFMTXSERVICE_POWERDOWN:Ljava/lang/String; = "com.mediatek.FMTransmitter.FMTransmitterService.ACTION_TOFMTXSERVICE_POWERDOWN"

.field public static final ACTION_TOMUSICSERVICE_POWERDOWN:Ljava/lang/String; = "com.android.music.musicservicecommand.pause"

.field private static final AUDIO_PATH_EARPHONE:Ljava/lang/String; = "AudioSetForceToSpeaker=0"

.field private static final AUDIO_PATH_LOUDSPEAKER:Ljava/lang/String; = "AudioSetForceToSpeaker=1"

.field public static final CMDPAUSE:Ljava/lang/String; = "pause"

.field public static final CONVERT_RATE:I = 0xa

.field public static final EXTRA_FMRADIO_ISPOWERUP:Ljava/lang/String; = "EXTRA_FMRADIO_ISPOWERUP"

.field public static final EXTRA_RDS_AF_ACTIVED:Ljava/lang/String; = "EXTRA_RDS_AF_ACTIVED"

.field public static final EXTRA_RDS_PS:Ljava/lang/String; = "EXTRA_RDS_PS"

.field public static final EXTRA_RDS_RT:Ljava/lang/String; = "EXTRA_RDS_RT"

.field public static final EXTRA_RDS_TA_ACTIVED:Ljava/lang/String; = "EXTRA_RDS_TA_ACTIVED"

.field public static final EXTRA_RDS_TA_DEACTIVED:Ljava/lang/String; = "EXTRA_RDS_TA_DEACTIVED"

.field public static final EXTRA_RECORDER_ERROR_STATE:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.EXTRA_RECORDER_ERROR_STATE"

.field public static final EXTRA_RECORDING_MODE:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.EXTRA_RECORDING_MODE"

.field public static final EXTRA_RECORDING_STATE:Ljava/lang/String; = "EXTRA_RECORDING_STATE"

.field private static final FM_AUDIO_DISABLE:Ljava/lang/String; = "AudioSetFmEnable=0"

.field private static final FM_AUDIO_ENABLE:Ljava/lang/String; = "AudioSetFmEnable=1"

.field public static final MESSAGE_FROMSOUNDER_TOFM_POWERDOWN:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field public static final MSG_FM_POWER_DOWN:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOA2DP_FM_POWERDOWN"

.field public static final MSG_FM_POWER_UP:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOA2DP_FM_POWERUP"

.field private static final NOTIFICATION_ID:I = 0x1

.field public static final RDS_EVENT_AF:I = 0x80

.field public static final RDS_EVENT_AFON_LIST:I = 0x200

.field public static final RDS_EVENT_AF_LIST:I = 0x100

.field public static final RDS_EVENT_FLAGS:I = 0x1

.field public static final RDS_EVENT_LAST_RADIOTEXT:I = 0x40

.field public static final RDS_EVENT_LOCDATETIME:I = 0x20

.field public static final RDS_EVENT_NO_RDS:I = 0x4000

.field public static final RDS_EVENT_PI_CODE:I = 0x2

.field public static final RDS_EVENT_PROGRAMNAME:I = 0x8

.field public static final RDS_EVENT_PTY_CODE:I = 0x4

.field public static final RDS_EVENT_RDS:I = 0x2000

.field public static final RDS_EVENT_RDS_TIMER:I = 0x8000

.field public static final RDS_EVENT_TAON:I = 0x400

.field public static final RDS_EVENT_TAON_OFF:I = 0x800

.field public static final RDS_EVENT_UTCDATETIME:I = 0x10

.field public static final TAG:Ljava/lang/String; = "FMRadioService"

.field private static sFMService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mediatek/FMRadio/FMRadioService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mA2dpService:Landroid/bluetooth/IBluetoothA2dp;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;

.field private mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

.field private mCurrentStation:I

.field private mDefaultSDCardPath:Ljava/lang/String;

.field private mFMAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mFMPlayer:Landroid/media/MediaPlayer;

.field mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

.field private mICallBack:Landroid/os/IBinder;

.field private mIsAFEnabled:Z

.field private mIsConnectBluetooth:Z

.field private mIsDeviceOpen:Z

.field private mIsEarphoneUsed:Z

.field private mIsExit:Z

.field private mIsPSRTEnabled:Z

.field private mIsPowerUp:Z

.field private mIsRecording:Z

.field private mIsResumeAfterCall:Z

.field private mIsSIM1Idle:Z

.field private mIsSIM2Idle:Z

.field private mIsSearching:Z

.field private mIsServiceInit:Z

.field private mIsStopPressed:Z

.field private mIsStopScanCalled:Z

.field private mIsTAEnabled:Z

.field private mLRTextString:Ljava/lang/String;

.field private mPSString:Ljava/lang/String;

.field private mPhoneStateListener1:Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;

.field private mPhoneStateListener2:Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;

.field private mRDSThread:Ljava/lang/Thread;

.field private mRecordingAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mSDListener:Landroid/content/BroadcastReceiver;

.field private mUsingFMViaBTController:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private playerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/FMRadio/FMRadioService;->sFMService:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 120
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mA2dpService:Landroid/bluetooth/IBluetoothA2dp;

    .line 121
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsStopPressed:Z

    .line 123
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mUsingFMViaBTController:Z

    .line 124
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mICallBack:Landroid/os/IBinder;

    .line 126
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    .line 127
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSDListener:Landroid/content/BroadcastReceiver;

    .line 149
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

    .line 152
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPSString:Ljava/lang/String;

    .line 153
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mLRTextString:Ljava/lang/String;

    .line 156
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPSRTEnabled:Z

    .line 157
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsAFEnabled:Z

    .line 158
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsTAEnabled:Z

    .line 160
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSearching:Z

    .line 161
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsStopScanCalled:Z

    .line 162
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRDSThread:Ljava/lang/Thread;

    .line 163
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsExit:Z

    .line 164
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsEarphoneUsed:Z

    .line 165
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z

    .line 166
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    .line 167
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I

    .line 168
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsServiceInit:Z

    .line 169
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    .line 170
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    .line 171
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 180
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSIM1Idle:Z

    .line 181
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSIM2Idle:Z

    .line 183
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsRecording:Z

    .line 184
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsConnectBluetooth:Z

    .line 185
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mDefaultSDCardPath:Ljava/lang/String;

    .line 187
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsResumeAfterCall:Z

    .line 188
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPhoneStateListener1:Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;

    .line 189
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPhoneStateListener2:Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;

    .line 553
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioService$1;-><init>(Lcom/mediatek/FMRadio/FMRadioService;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;

    .line 1762
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioService$4;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioService$4;-><init>(Lcom/mediatek/FMRadio/FMRadioService;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1796
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioService$5;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioService$5;-><init>(Lcom/mediatek/FMRadio/FMRadioService;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRecordingAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1808
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioService$6;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioService$6;-><init>(Lcom/mediatek/FMRadio/FMRadioService;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->playerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsResumeAfterCall:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsResumeAfterCall:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSearching:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSearching:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSIM1Idle:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSIM1Idle:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSIM2Idle:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsSIM2Idle:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/mediatek/FMRadio/FMRadioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I

    return v0
.end method

.method static synthetic access$1302(Lcom/mediatek/FMRadio/FMRadioService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I

    return p1
.end method

.method static synthetic access$1400(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/mediatek/FMRadio/FMRadioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->stopRDSThread()V

    return-void
.end method

.method static synthetic access$1600(Lcom/mediatek/FMRadio/FMRadioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->showNotification()V

    return-void
.end method

.method static synthetic access$1700(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->setPS(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->setLRText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/mediatek/FMRadio/FMRadioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->startRDSThread()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsStopScanCalled:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsStopScanCalled:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/bluetooth/IBluetoothA2dp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mA2dpService:Landroid/bluetooth/IBluetoothA2dp;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/mediatek/FMRadio/FMRadioService;Landroid/bluetooth/IBluetoothA2dp;)Landroid/bluetooth/IBluetoothA2dp;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mA2dpService:Landroid/bluetooth/IBluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/os/IBinder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mICallBack:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/mediatek/FMRadio/FMRadioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->removeNotification()V

    return-void
.end method

.method static synthetic access$2400(Lcom/mediatek/FMRadio/FMRadioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->updateNotification()V

    return-void
.end method

.method static synthetic access$2500(Lcom/mediatek/FMRadio/FMRadioService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPSString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/mediatek/FMRadio/FMRadioService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mLRTextString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsServiceInit:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsServiceInit:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPSRTEnabled:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPSRTEnabled:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsAFEnabled:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsAFEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/IFMRadioService$Stub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsTAEnabled:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsTAEnabled:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/mediatek/FMRadio/FMRadioService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mDefaultSDCardPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/mediatek/FMRadio/FMRadioService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mDefaultSDCardPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRecordingAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsStopPressed:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsStopPressed:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsRecording:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsRecording:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsExit:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/mediatek/FMRadio/FMRadioService;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->playerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    return v0
.end method

.method static synthetic access$402(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsEarphoneUsed:Z

    return v0
.end method

.method static synthetic access$502(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsEarphoneUsed:Z

    return p1
.end method

.method static synthetic access$602(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsConnectBluetooth:Z

    return p1
.end method

.method static synthetic access$700(Lcom/mediatek/FMRadio/FMRadioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mUsingFMViaBTController:Z

    return v0
.end method

.method static synthetic access$702(Lcom/mediatek/FMRadio/FMRadioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mUsingFMViaBTController:Z

    return p1
.end method

.method static synthetic access$800(Lcom/mediatek/FMRadio/FMRadioService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method private enableFMAudio(Z)V
    .locals 4
    .parameter "bEnable"

    .prologue
    .line 1579
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioService.enableFMAudio: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    if-eqz p1, :cond_2

    .line 1581
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->isGetAudioFocus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1582
    const-string v1, "FMRadioService"

    const-string v2, "powerup: Can not get audio focus."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    :goto_0
    return-void

    .line 1586
    :cond_0
    const-string v1, "FMRadioService"

    const-string v2, "FM get audio Focus"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1588
    const-string v1, "FMRadioService"

    const-string v2, "warning: FM audio is already enabled."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    :goto_1
    const-string v1, "FMRadioService"

    const-string v2, "<<< FMRadioService.enableFMAudio"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1591
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1598
    :goto_2
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 1599
    const-string v1, "FMRadioService"

    const-string v2, "Start FM audio."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1592
    :catch_0
    move-exception v0

    .line 1593
    .local v0, e:Ljava/io/IOException;
    const-string v1, "FMRadioService"

    const-string v2, "Exception: Cannot call MediaPlayer prepare."

    invoke-static {v1, v2, v0}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1594
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1595
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "FMRadioService"

    const-string v2, "Exception: Cannot call MediaPlayer prepare."

    invoke-static {v1, v2, v0}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1602
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :cond_2
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1603
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1604
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    goto :goto_1

    .line 1606
    :cond_3
    const-string v1, "FMRadioService"

    const-string v2, "warning: FM audio is already disabled."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static onStateChanged(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    .line 1652
    const-string v2, "FMRadioService"

    const-string v3, ">>> onStateChanged"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    sget-object v2, Lcom/mediatek/FMRadio/FMRadioService;->sFMService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/FMRadio/FMRadioService;

    .line 1654
    .local v1, sService:Lcom/mediatek/FMRadio/FMRadioService;
    if-nez v1, :cond_0

    .line 1655
    const-string v2, "FMRadioService"

    const-string v3, "onStateChanged: service ref is null!!"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    :goto_0
    return-void

    .line 1658
    :cond_0
    if-nez p0, :cond_1

    .line 1660
    const-string v2, "FMRadioService"

    const-string v3, "onStateChanged: FM has been powered down"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    iget-boolean v2, v1, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-eqz v2, :cond_1

    .line 1663
    invoke-direct {v1, v4}, Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V

    .line 1664
    invoke-direct {v1}, Lcom/mediatek/FMRadio/FMRadioService;->removeNotification()V

    .line 1665
    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/mediatek/FMRadio/FMRadioService;->setPS(Ljava/lang/String;)V

    .line 1666
    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/mediatek/FMRadio/FMRadioService;->setLRText(Ljava/lang/String;)V

    .line 1667
    iput-boolean v4, v1, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    .line 1670
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1671
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "EXTRA_FMRADIO_ISPOWERUP"

    iget-boolean v3, v1, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1672
    invoke-virtual {v1, v0}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1675
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const-string v2, "FMRadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< onStateChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private registerSDListener()V
    .locals 3

    .prologue
    .line 1679
    const-string v1, "FMRadioService"

    const-string v2, "registerSDListener >>> "

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSDListener:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 1681
    new-instance v1, Lcom/mediatek/FMRadio/FMRadioService$3;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioService$3;-><init>(Lcom/mediatek/FMRadio/FMRadioService;)V

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSDListener:Landroid/content/BroadcastReceiver;

    .line 1714
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1715
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1716
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1717
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1718
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1719
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSDListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/FMRadio/FMRadioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1720
    const-string v1, "FMRadioService"

    const-string v2, "registerSDListener <<< "

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    return-void
.end method

.method private removeNotification()V
    .locals 2

    .prologue
    .line 1636
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.removeNotification"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->stopForeground(Z)V

    .line 1638
    const-string v0, "FMRadioService"

    const-string v1, "<<< FMRadioService.removeNotification"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    return-void
.end method

.method private setLRText(Ljava/lang/String;)V
    .locals 4
    .parameter "sLRText"

    .prologue
    .line 1564
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioService.setLRText: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,current: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mLRTextString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mLRTextString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1566
    const-string v1, "FMRadioService"

    const-string v2, "New RT is the same as current."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    :goto_0
    const-string v1, "FMRadioService"

    const-string v2, "<<< FMRadioService.setLRText"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    return-void

    .line 1568
    :cond_0
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mLRTextString:Ljava/lang/String;

    .line 1571
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_RT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1572
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "EXTRA_RDS_RT"

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mLRTextString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1573
    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private setPS(Ljava/lang/String;)V
    .locals 4
    .parameter "sPS"

    .prologue
    .line 1549
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioService.setPS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,current: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPSString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPSString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1551
    const-string v1, "FMRadioService"

    const-string v2, "New PS is the same as current."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    :goto_0
    const-string v1, "FMRadioService"

    const-string v2, "<<< FMRadioService.setPS"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    return-void

    .line 1553
    :cond_0
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPSString:Ljava/lang/String;

    .line 1556
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_PS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1557
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "EXTRA_RDS_PS"

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPSString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1558
    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private showNotification()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1619
    const-string v4, "FMRadioService"

    const-string v5, ">>> FMRadioService.showNotification"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1621
    .local v1, notificationIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/mediatek/FMRadio/FMRadioActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1622
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1624
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/Notification;

    const v4, 0x7f020035

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1626
    .local v0, notification:Landroid/app/Notification;
    iget v4, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x22

    iput v4, v0, Landroid/app/Notification;->flags:I

    .line 1627
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/mediatek/FMRadio/FMRadioService;->mCurrentStation:I

    int-to-float v5, v5

    const/high16 v6, 0x4120

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " MHz"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1628
    .local v3, text:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f04

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1630
    const-string v4, "FMRadioService"

    const-string v5, "Add notification to the title bar."

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    const/4 v4, 0x1

    invoke-virtual {p0, v4, v0}, Lcom/mediatek/FMRadio/FMRadioService;->startForeground(ILandroid/app/Notification;)V

    .line 1632
    const-string v4, "FMRadioService"

    const-string v5, "<<< FMRadioService.showNotification"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    return-void
.end method

.method private startRDSThread()V
    .locals 2

    .prologue
    .line 1402
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.startRDSThread"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsExit:Z

    .line 1404
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRDSThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 1405
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioService$2;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioService$2;-><init>(Lcom/mediatek/FMRadio/FMRadioService;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRDSThread:Ljava/lang/Thread;

    .line 1528
    const-string v0, "FMRadioService"

    const-string v1, "Start RDS Thread."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRDSThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1533
    :goto_0
    const-string v0, "FMRadioService"

    const-string v1, "<<< FMRadioService.startRDSThread"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    return-void

    .line 1531
    :cond_0
    const-string v0, "FMRadioService"

    const-string v1, "Error: RDS thread is already started."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopRDSThread()V
    .locals 2

    .prologue
    .line 1537
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.stopRDSThread"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRDSThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 1539
    const-string v0, "FMRadioService"

    const-string v1, "Error: RDS thread is not started."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    :goto_0
    const-string v0, "FMRadioService"

    const-string v1, "<<< FMRadioService.stopRDSThread"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    return-void

    .line 1542
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsExit:Z

    .line 1543
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mRDSThread:Ljava/lang/Thread;

    goto :goto_0
.end method

.method private updateNotification()V
    .locals 2

    .prologue
    .line 1642
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.updateNotification"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-eqz v0, :cond_0

    .line 1644
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->showNotification()V

    .line 1648
    :goto_0
    const-string v0, "FMRadioService"

    const-string v1, "<<< FMRadioService.updateNotification"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    return-void

    .line 1646
    :cond_0
    const-string v0, "FMRadioService"

    const-string v1, "FM is not power up."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public isGetAudioFocus()Z
    .locals 8

    .prologue
    const/16 v7, 0xa

    const/4 v4, 0x1

    .line 1855
    const/16 v0, 0xa

    .line 1856
    .local v0, REQUEST_AUDIO_FOCUS_TIMES:I
    const/4 v2, 0x0

    .line 1858
    .local v2, count:I
    :cond_0
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v5, v6, v7, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    .line 1859
    .local v1, audioFocus:I
    if-ne v4, v1, :cond_1

    .line 1871
    :goto_0
    return v4

    .line 1864
    :cond_1
    const-wide/16 v5, 0x64

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1869
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 1870
    if-lt v2, v7, :cond_0

    .line 1871
    const/4 v4, 0x0

    goto :goto_0

    .line 1865
    :catch_0
    move-exception v3

    .line 1866
    .local v3, e:Ljava/lang/Exception;
    const-string v5, "FMRadioService"

    const-string v6, "FMRadioService.isGetAudioFocus sleep error."

    invoke-static {v5, v6, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public isRecordingCardUnmount(Landroid/content/Intent;)Z
    .locals 5
    .parameter "intent"

    .prologue
    .line 1844
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1845
    .local v1, unmountSDCard:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService;->mDefaultSDCardPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 1846
    .local v0, result:Z
    :goto_0
    const-string v2, "FMRadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unmount sd card is recording sd card: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    return v0

    .line 1845
    .end local v0           #result:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .parameter "intent"

    .prologue
    .line 1372
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.onBind"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    const-string v0, "FMRadioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< FMRadioService.onBind: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 1378
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1381
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-eqz v0, :cond_0

    .line 1382
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->showNotification()V

    .line 1385
    :cond_0
    const-string v0, "FMRadioService"

    const-string v1, "<<< FMRadioService.onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    return-void
.end method

.method public onCreate()V
    .locals 10

    .prologue
    const/16 v9, 0x20

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1216
    const-string v4, "FMRadioService"

    const-string v5, ">>> FMRadioService.onCreate"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 1218
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v4, Lcom/mediatek/FMRadio/FMRadioService;->sFMService:Ljava/lang/ref/WeakReference;

    .line 1219
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcom/mediatek/FMRadio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    .line 1220
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/mediatek/FMRadio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 1221
    .local v2, powerManager:Landroid/os/PowerManager;
    const-string v4, "FMRadioService"

    invoke-virtual {v2, v6, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1222
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1223
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    .line 1224
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p0, v6}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 1225
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioService;->playerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1227
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    const-string v5, "MEDIATEK://MEDIAPLAYER_PLAYERTYPE_FM"

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1240
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1243
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1244
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v4, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_POWERDOWN"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1245
    const-string v4, "com.android.music.musicservicecommand"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1246
    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1247
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1248
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1255
    const-string v4, "android.server.a2dp.action.FM_OVER_BT_CONTROLLER"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1256
    const-string v4, "android.server.a2dp.action.FM_OVER_BT_HOST"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1257
    const-string v4, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1259
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1260
    new-instance v4, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

    invoke-direct {v4, p0, v8}, Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;-><init>(Lcom/mediatek/FMRadio/FMRadioService;Lcom/mediatek/FMRadio/FMRadioService$1;)V

    iput-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

    .line 1261
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1262
    const-string v4, "FMRadioService"

    const-string v5, "Register broadcast receiver."

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/mediatek/FMRadio/FMRadioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1266
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/mediatek/FMRadio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 1268
    .local v3, tm:Landroid/telephony/TelephonyManager;
    const-string v4, "FMRadioService"

    const-string v5, "Dual SIM phone"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    new-instance v4, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;

    invoke-direct {v4, p0, v8}, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;-><init>(Lcom/mediatek/FMRadio/FMRadioService;Lcom/mediatek/FMRadio/FMRadioService$1;)V

    iput-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPhoneStateListener1:Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;

    .line 1270
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPhoneStateListener1:Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;

    invoke-virtual {v4, v7}, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->setSIMID(I)V

    .line 1271
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPhoneStateListener1:Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;

    invoke-virtual {v3, v4, v9, v7}, Landroid/telephony/TelephonyManager;->listenGemini(Landroid/telephony/PhoneStateListener;II)V

    .line 1273
    new-instance v4, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;

    invoke-direct {v4, p0, v8}, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;-><init>(Lcom/mediatek/FMRadio/FMRadioService;Lcom/mediatek/FMRadio/FMRadioService$1;)V

    iput-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPhoneStateListener2:Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;

    .line 1274
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPhoneStateListener2:Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;

    invoke-virtual {v4, v6}, Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;->setSIMID(I)V

    .line 1275
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPhoneStateListener2:Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;

    invoke-virtual {v3, v4, v9, v6}, Landroid/telephony/TelephonyManager;->listenGemini(Landroid/telephony/PhoneStateListener;II)V

    .line 1285
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->registerSDListener()V

    .line 1287
    const-string v4, "FMRadioService"

    const-string v5, "<<< FMRadioService.onCreate"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v3           #tm:Landroid/telephony/TelephonyManager;
    :goto_0
    return-void

    .line 1228
    :catch_0
    move-exception v0

    .line 1230
    .local v0, ex:Ljava/io/IOException;
    const-string v4, "FMRadioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDataSource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1232
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1234
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v4, "FMRadioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDataSource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1236
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1237
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v4, "FMRadioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDataSource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1291
    sput-object v7, Lcom/mediatek/FMRadio/FMRadioService;->sFMService:Ljava/lang/ref/WeakReference;

    .line 1292
    const-string v4, "FMRadioService"

    const-string v5, ">>> FMRadioService.onDestroy"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;

    invoke-virtual {v4}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->isRDSSupported()I

    move-result v4

    if-ne v9, v4, :cond_9

    .line 1295
    const-string v4, "FMRadioService"

    const-string v5, "RDS is supported. Stop the RDS thread."

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService;->stopRDSThread()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1304
    :goto_0
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

    if-eqz v4, :cond_0

    .line 1305
    const-string v4, "FMRadioService"

    const-string v5, "Unregister broadcast receiver."

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

    invoke-virtual {p0, v4}, Lcom/mediatek/FMRadio/FMRadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1307
    iput-object v7, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

    .line 1309
    :cond_0
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

    if-eqz v4, :cond_1

    .line 1310
    const-string v4, "FMRadioService"

    const-string v5, "Unregister broadcast receiver."

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

    invoke-virtual {p0, v4}, Lcom/mediatek/FMRadio/FMRadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1312
    iput-object v7, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioService$FMServiceBroadcastReceiver;

    .line 1316
    :cond_1
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v4, :cond_2

    .line 1317
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v4}, Lcom/mediatek/FMRadio/FMRecorder;->getState()I

    move-result v2

    .line 1318
    .local v2, fmState:I
    const/4 v4, 0x7

    if-ne v2, v4, :cond_a

    .line 1319
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v4}, Lcom/mediatek/FMRadio/FMRecorder;->stopPlayback()V

    .line 1320
    const-string v4, "FMRadioService"

    const-string v5, "Stop playback FMRecorder."

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    .end local v2           #fmState:I
    :cond_2
    :goto_1
    :try_start_1
    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsEarphoneUsed:Z

    if-nez v4, :cond_3

    .line 1330
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->useEarphone(Z)V

    .line 1332
    :cond_3
    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-eqz v4, :cond_4

    .line 1333
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;

    invoke-virtual {v4}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->powerDown()Z

    .line 1335
    :cond_4
    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsDeviceOpen:Z

    if-eqz v4, :cond_5

    .line 1336
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mBinder:Lcom/mediatek/FMRadio/IFMRadioService$Stub;

    invoke-virtual {v4}, Lcom/mediatek/FMRadio/IFMRadioService$Stub;->closeDevice()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1343
    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_6

    .line 1344
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    .line 1348
    :cond_6
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/mediatek/FMRadio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 1350
    .local v3, tm:Landroid/telephony/TelephonyManager;
    const-string v4, "FMRadioService"

    const-string v5, "Dual SIM phone"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPhoneStateListener1:Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;

    invoke-virtual {v3, v4, v8, v8}, Landroid/telephony/TelephonyManager;->listenGemini(Landroid/telephony/PhoneStateListener;II)V

    .line 1353
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mPhoneStateListener2:Lcom/mediatek/FMRadio/FMRadioService$FMPhoneStateListener;

    invoke-virtual {v3, v4, v8, v9}, Landroid/telephony/TelephonyManager;->listenGemini(Landroid/telephony/PhoneStateListener;II)V

    .line 1360
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v4, :cond_7

    .line 1361
    iput-object v7, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    .line 1363
    :cond_7
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSDListener:Landroid/content/BroadcastReceiver;

    if-eqz v4, :cond_8

    .line 1364
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mSDListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4}, Lcom/mediatek/FMRadio/FMRadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1367
    :cond_8
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1368
    const-string v4, "FMRadioService"

    const-string v5, "<<< FMRadioService.onDestroy"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    return-void

    .line 1298
    .end local v3           #tm:Landroid/telephony/TelephonyManager;
    :cond_9
    :try_start_2
    const-string v4, "FMRadioService"

    const-string v5, "RDS is not supported."

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1300
    :catch_0
    move-exception v1

    .line 1301
    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "FMRadioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in isRDSSupported: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1321
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v2       #fmState:I
    :cond_a
    const/4 v4, 0x6

    if-ne v2, v4, :cond_2

    .line 1322
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v4}, Lcom/mediatek/FMRadio/FMRecorder;->discardRecording()V

    .line 1323
    const-string v4, "FMRadioService"

    const-string v5, "Discard Recording."

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1338
    .end local v2           #fmState:I
    :catch_1
    move-exception v0

    .line 1339
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "FMRadioService"

    const-string v5, "Exception: Cannot call binder function."

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 1389
    const-string v0, "FMRadioService"

    const-string v1, ">>> FMRadioService.onLowMemory"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 1391
    const-string v0, "FMRadioService"

    const-string v1, "<<< FMRadioService.onLowMemory"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    return-void
.end method

.method public onRecorderError(I)V
    .locals 4
    .parameter "error"

    .prologue
    .line 1740
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRecorderError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1742
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_RECORDER_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1743
    const-string v1, "com.mediatek.FMRadio.FMRadioService.EXTRA_RECORDER_ERROR_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1744
    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1745
    packed-switch p1, :pswitch_data_0

    .line 1758
    :pswitch_0
    const-string v1, "FMRadioService"

    const-string v2, "onRecorderError: unknown error!!"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 1754
    :pswitch_2
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mUsingFMViaBTController:Z

    if-nez v1, :cond_0

    .line 1755
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V

    goto :goto_0

    .line 1745
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onRecorderStateChanged(I)V
    .locals 4
    .parameter "state"

    .prologue
    .line 1724
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> onRecorderStateChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsPowerUp:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsConnectBluetooth:Z

    if-nez v1, :cond_2

    .line 1726
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/FMRecorder;->getPlayCompleted()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mIsRecording:Z

    if-nez v1, :cond_2

    .line 1727
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->enableFMAudio(Z)V

    .line 1728
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioService;->mFMRecorder:Lcom/mediatek/FMRadio/FMRecorder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mediatek/FMRadio/FMRecorder;->setPlayCompleted(Z)V

    .line 1732
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1733
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_RECORDING_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1734
    const-string v1, "EXTRA_RECORDING_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1735
    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1736
    const-string v1, "FMRadioService"

    const-string v2, "<<< onRecorderStateChanged"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 1395
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioService.onStartCommand intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " startId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 1397
    .local v0, iRet:I
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioService.onStartCommand: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    return v0
.end method
