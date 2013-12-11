.class public Lcom/mediatek/FMRadio/FMRadioActivity;
.super Landroid/app/Activity;
.source "FMRadioActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;,
        Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;,
        Lcom/mediatek/FMRadio/FMRadioActivity$InitialThread;,
        Lcom/mediatek/FMRadio/FMRadioActivity$HeadsetConnectionReceiver;,
        Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final DLGID_NOANTENNA:I = 0x1

.field public static final DLGID_RDS_SETTING:I = 0x3

.field public static final DLGID_SAVE_RECORDING:I = 0x4

.field public static final DLGID_SEARCHING:I = 0x2

.field private static final FM_INSTANCE_STATE_RECORDING_DLGSTATE:Ljava/lang/String; = "FM_INSTANCE_STATE_RECORDING_NAME"

.field public static final MSGID_ANTENNA_UNAVAILABE:I = 0x9

.field public static final MSGID_OK:I = 0x1

.field public static final MSGID_OPEN_DEVICE:I = 0xd

.field public static final MSGID_PLAY_FAIL:I = 0x8

.field public static final MSGID_PLAY_FINISH:I = 0x7

.field public static final MSGID_REFRESH:I = 0xb

.field public static final MSGID_SEARCH_FINISH:I = 0x2

.field public static final MSGID_SEEK_FAIL:I = 0x6

.field public static final MSGID_SEEK_FINISH:I = 0x5

.field public static final MSGID_SHOW_TOAST:I = 0xa

.field public static final MSGID_TUNE_FINISH:I = 0xc

.field public static final MSGID_UPDATE_CURRENT_STATION:I = 0x4

.field public static final MSGID_UPDATE_RDS:I = 0x3

.field private static final REFS_NAME:Ljava/lang/String; = "FMRecord"

.field private static final REQUEST_CODE_FAVORITE:I = 0x1

.field private static final START_PLAY_TIME:Ljava/lang/String; = "startPlayTime"

.field private static final START_RECORD_TIME:Ljava/lang/String; = "startRecordTime"

.field public static final TAG:Ljava/lang/String; = "FMRadioActivity"

.field private static final TIME_FORMAT_LONG:Ljava/lang/String; = "%02d:%02d:%02d"

.field private static final TIME_FORMAT_SHORT:Ljava/lang/String; = "%02d:%02d"

.field public static final TOAST_TIMER_DELAY:J = 0x7d0L

.field public static final TYPE_FIRST_SEARCHED_STATION:Ljava/lang/String; = "FIRST_SEARCHED_STATION"

.field public static final TYPE_MSGID:Ljava/lang/String; = "MSGID"

.field public static final TYPE_SEEK_STATION:Ljava/lang/String; = "SEEK_STATION"

.field public static final TYPE_TOAST_STRING:Ljava/lang/String; = "TYPE_TOAST_STRING"

.field public static final TYPE_TUNE_STATION:Ljava/lang/String; = "TUNE_STATION"


# instance fields
.field private buttonClickListener:Landroid/view/View$OnClickListener;

.field private mAirPlaneModeOn:Z

.field private mAnimImage:Landroid/widget/ImageView;

.field private mAnimation:Landroid/view/animation/Animation;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;

.field private mButtonAddToFavorite:Landroid/widget/ImageButton;

.field private mButtonDecrease:Landroid/widget/ImageButton;

.field private mButtonIncrease:Landroid/widget/ImageButton;

.field private mButtonNextStation:Landroid/widget/ImageButton;

.field private mButtonPlayStop:Landroid/widget/ImageButton;

.field private mButtonPlayback:Landroid/widget/ImageButton;

.field private mButtonPrevStation:Landroid/widget/ImageButton;

.field private mButtonRecord:Landroid/widget/ImageButton;

.field private mButtonStop:Landroid/widget/ImageButton;

.field private mCanPlay:Z

.field private mCurrentStation:I

.field private mDialogNoAntenna:Landroid/app/AlertDialog;

.field private mDialogRDSSetting:Landroid/app/AlertDialog;

.field private mDialogSearchProgress:Landroid/app/ProgressDialog;

.field private mDlgAirPlaneMode:Landroid/app/AlertDialog;

.field private mDlgInsertEarphone:Landroid/app/AlertDialog;

.field private mDlgSaveRecording:Landroid/app/Dialog;

.field private mEdRecordingName:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioActivity$HeadsetConnectionReceiver;

.field private mIsAFEnabled:Z

.field private mIsActivityBackground:Z

.field private mIsConfigChange:Z

.field private mIsDestroying:Z

.field private mIsExit:Z

.field private mIsExitPressed:Z

.field private mIsFreshRecordingStatus:Z

.field private mIsInited:Z

.field private mIsOnPowerUp:Z

.field private mIsPSRTEnabled:Z

.field private mIsPlaying:Z

.field private mIsRDSEnabled:Z

.field private mIsRDSSupported:Z

.field private mIsRecording:Z

.field private mIsRecordingCardEject:Z

.field private mIsSDListenerRegistered:Z

.field private mIsSearching:Z

.field private mIsSeeking:Z

.field private mIsServiceBinded:Z

.field private mIsServiceStarted:Z

.field private mIsShowSaveDialog:Z

.field private mIsStorageWarning:Z

.field private mIsTAEnabled:Z

.field private mIsTuning:Z

.field private mIsUserCancelSearch:Z

.field private mIsstop:Z

.field private mLRTextString:Ljava/lang/String;

.field private mMainView:Landroid/widget/RelativeLayout;

.field private mMenuItemChannelList:Landroid/view/MenuItem;

.field private mMenuItemEarLoud:Landroid/view/MenuItem;

.field private mMenuItemOverflow:Landroid/view/MenuItem;

.field private mPSString:Ljava/lang/String;

.field private mPlayStartTime:J

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mPrevRecorderState:I

.field private mRLRecordInfo:Landroid/widget/RelativeLayout;

.field private mRecordStartTime:J

.field private mRecordState:I

.field private mRefresher:Landroid/os/Handler;

.field private mSDDirectory:Ljava/lang/String;

.field private mSDListener:Landroid/content/BroadcastReceiver;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSeekThread:Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;

.field private mService:Lcom/mediatek/FMRadio/IFMRadioService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mStorageWarningTextView:Landroid/widget/TextView;

.field private mTextFM:Landroid/widget/TextView;

.field private mTextMHz:Landroid/widget/TextView;

.field private mTextRDS:Landroid/widget/TextView;

.field private mTextStationName:Landroid/widget/TextView;

.field private mTextStationValue:Landroid/widget/TextView;

.field private mTimer:Ljava/util/Timer;

.field private mToast:Landroid/widget/Toast;

.field private mTuneThread:Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;

.field private mTxtRecInfoLeft:Landroid/widget/TextView;

.field private mTxtRecInfoRight:Landroid/widget/TextView;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 133
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsServiceStarted:Z

    .line 134
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsServiceBinded:Z

    .line 135
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    .line 137
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogNoAntenna:Landroid/app/AlertDialog;

    .line 138
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogRDSSetting:Landroid/app/AlertDialog;

    .line 139
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogSearchProgress:Landroid/app/ProgressDialog;

    .line 140
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;

    .line 141
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInited:Z

    .line 143
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsUserCancelSearch:Z

    .line 144
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    .line 145
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsExitPressed:Z

    .line 147
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z

    .line 150
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsOnPowerUp:Z

    .line 152
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSearching:Z

    .line 154
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSeeking:Z

    .line 156
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsTuning:Z

    .line 158
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsDestroying:Z

    .line 161
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPSRTEnabled:Z

    .line 162
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsAFEnabled:Z

    .line 163
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsTAEnabled:Z

    .line 166
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRDSSupported:Z

    .line 168
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRDSEnabled:Z

    .line 170
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsExit:Z

    .line 171
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAirPlaneModeOn:Z

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCanPlay:Z

    .line 174
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPSString:Ljava/lang/String;

    .line 175
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mLRTextString:Ljava/lang/String;

    .line 179
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mToast:Landroid/widget/Toast;

    .line 180
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTimer:Ljava/util/Timer;

    .line 182
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;

    .line 183
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationValue:Landroid/widget/TextView;

    .line 184
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextRDS:Landroid/widget/TextView;

    .line 185
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextFM:Landroid/widget/TextView;

    .line 186
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextMHz:Landroid/widget/TextView;

    .line 188
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonDecrease:Landroid/widget/ImageButton;

    .line 189
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPrevStation:Landroid/widget/ImageButton;

    .line 190
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonNextStation:Landroid/widget/ImageButton;

    .line 191
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonIncrease:Landroid/widget/ImageButton;

    .line 192
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayStop:Landroid/widget/ImageButton;

    .line 193
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    .line 195
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemChannelList:Landroid/view/MenuItem;

    .line 196
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemEarLoud:Landroid/view/MenuItem;

    .line 197
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemOverflow:Landroid/view/MenuItem;

    .line 198
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 200
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonRecord:Landroid/widget/ImageButton;

    .line 201
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonStop:Landroid/widget/ImageButton;

    .line 202
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayback:Landroid/widget/ImageButton;

    .line 203
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRLRecordInfo:Landroid/widget/RelativeLayout;

    .line 204
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoLeft:Landroid/widget/TextView;

    .line 205
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoRight:Landroid/widget/TextView;

    .line 208
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mEdRecordingName:Landroid/widget/EditText;

    .line 209
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgSaveRecording:Landroid/app/Dialog;

    .line 210
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPrevRecorderState:I

    .line 211
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSDDirectory:Ljava/lang/String;

    .line 212
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSDListenerRegistered:Z

    .line 215
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecordingCardEject:Z

    .line 217
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAnimation:Landroid/view/animation/Animation;

    .line 218
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAnimImage:Landroid/widget/ImageView;

    .line 220
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMainView:Landroid/widget/RelativeLayout;

    .line 222
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 225
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    .line 226
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 228
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 230
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsStorageWarning:Z

    .line 231
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsActivityBackground:Z

    .line 232
    iput v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordState:I

    .line 233
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsFreshRecordingStatus:Z

    .line 234
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsShowSaveDialog:Z

    .line 235
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsConfigChange:Z

    .line 241
    iput-wide v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordStartTime:J

    .line 242
    iput-wide v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPlayStartTime:J

    .line 245
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsstop:Z

    .line 249
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$1;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSDListener:Landroid/content/BroadcastReceiver;

    .line 451
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioActivity$HeadsetConnectionReceiver;

    .line 493
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;

    .line 495
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioActivity$2;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$2;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRefresher:Landroid/os/Handler;

    .line 543
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioActivity$3;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$3;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->buttonClickListener:Landroid/view/View$OnClickListener;

    .line 645
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioActivity$4;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$4;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 1837
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgInsertEarphone:Landroid/app/AlertDialog;

    .line 1838
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgAirPlaneMode:Landroid/app/AlertDialog;

    .line 2279
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSeekThread:Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;

    .line 2349
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTuneThread:Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;

    .line 2350
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgSaveRecording:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecordingCardEject:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsActivityBackground:Z

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecordingCardEject:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/mediatek/FMRadio/FMRadioActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshRecordingStatus(I)V

    return-void
.end method

.method static synthetic access$1202(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsFreshRecordingStatus:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRefresher:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/IFMRadioService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/mediatek/FMRadio/FMRadioActivity;Lcom/mediatek/FMRadio/IFMRadioService;)Lcom/mediatek/FMRadio/IFMRadioService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCanPlay:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCanPlay:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->onPauseFM()V

    return-void
.end method

.method static synthetic access$1900(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->displayInsertEarphoneDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayStop:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgInsertEarphone:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/mediatek/FMRadio/FMRadioActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgInsertEarphone:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAirPlaneModeOn:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAirPlaneModeOn:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->displayAirPlaneModeDialog()V

    return-void
.end method

.method static synthetic access$2300(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->onPlayFM()V

    return-void
.end method

.method static synthetic access$2400(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgAirPlaneMode:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/mediatek/FMRadio/FMRadioActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgAirPlaneMode:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/mediatek/FMRadio/FMRadioActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordStartTime:J

    return-wide v0
.end method

.method static synthetic access$2502(Lcom/mediatek/FMRadio/FMRadioActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-wide p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordStartTime:J

    return-wide p1
.end method

.method static synthetic access$2600(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoLeft:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->checkRemainingStorage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/mediatek/FMRadio/FMRadioActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPlayStartTime:J

    return-wide v0
.end method

.method static synthetic access$2802(Lcom/mediatek/FMRadio/FMRadioActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-wide p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPlayStartTime:J

    return-wide p1
.end method

.method static synthetic access$2900(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoRight:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSDDirectory:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->isToasting()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/mediatek/FMRadio/FMRadioActivity;II)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/mediatek/FMRadio/FMRadioActivity;->getProjectString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->showToast(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->isServiceInit()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/mediatek/FMRadio/FMRadioActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->initService(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPSRTEnabled:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPSRTEnabled:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsAFEnabled:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsAFEnabled:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->enablePSRT(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshButtonStatus()V

    return-void
.end method

.method static synthetic access$4000(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->enableAF(Z)V

    return-void
.end method

.method static synthetic access$4100(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshButtonStatus(Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSavedInstanceState:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/mediatek/FMRadio/FMRadioActivity;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSavedInstanceState:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->startAnimation()V

    return-void
.end method

.method static synthetic access$4400(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->isDeviceOpen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/mediatek/FMRadio/FMRadioActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->getFrequency()I

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationValue:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->isPowerUp()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRDSSupported:Z

    return v0
.end method

.method static synthetic access$4802(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRDSSupported:Z

    return p1
.end method

.method static synthetic access$4900(Lcom/mediatek/FMRadio/FMRadioActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->isRDSSupported()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/FMRadio/FMRadioActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPSString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRDSEnabled:Z

    return p1
.end method

.method static synthetic access$502(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPSString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSearching:Z

    return v0
.end method

.method static synthetic access$5102(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSearching:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->isPSRTEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->isAFEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Lcom/mediatek/FMRadio/FMRadioActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->getPS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5500(Lcom/mediatek/FMRadio/FMRadioActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->getLRText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5600(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->changeRecordingMode(Z)V

    return-void
.end method

.method static synthetic access$5700(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsShowSaveDialog:Z

    return v0
.end method

.method static synthetic access$5702(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsShowSaveDialog:Z

    return p1
.end method

.method static synthetic access$5800(Lcom/mediatek/FMRadio/FMRadioActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->removeAndShowDialog(I)V

    return-void
.end method

.method static synthetic access$5902(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsConfigChange:Z

    return p1
.end method

.method static synthetic access$600(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6002(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInited:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemEarLoud:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->isEarphoneUsed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6300(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->onUseEarphone()V

    return-void
.end method

.method static synthetic access$6400(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->onUseLoudspeaker()V

    return-void
.end method

.method static synthetic access$6502(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsStorageWarning:Z

    return p1
.end method

.method static synthetic access$6600(Lcom/mediatek/FMRadio/FMRadioActivity;Landroid/view/View;IIIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 100
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/FMRadio/FMRadioActivity;->changeBackground(Landroid/view/View;IIIZ)V

    return-void
.end method

.method static synthetic access$6800(Lcom/mediatek/FMRadio/FMRadioActivity;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/mediatek/FMRadio/FMRadioActivity;->tuneStation(ZI)V

    return-void
.end method

.method static synthetic access$6900(Lcom/mediatek/FMRadio/FMRadioActivity;ZIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/FMRadio/FMRadioActivity;->seekStation(ZIZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/FMRadio/FMRadioActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mLRTextString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7002(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsstop:Z

    return p1
.end method

.method static synthetic access$702(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mLRTextString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7100(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsDestroying:Z

    return v0
.end method

.method static synthetic access$7200(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogSearchProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$7202(Lcom/mediatek/FMRadio/FMRadioActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogSearchProgress:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$7300(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsUserCancelSearch:Z

    return v0
.end method

.method static synthetic access$7302(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsUserCancelSearch:Z

    return p1
.end method

.method static synthetic access$7400(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->stopScan()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7500(Lcom/mediatek/FMRadio/FMRadioActivity;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->startScan()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7600(Lcom/mediatek/FMRadio/FMRadioActivity;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->setMute(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$7700(Lcom/mediatek/FMRadio/FMRadioActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->tuneToStation(I)V

    return-void
.end method

.method static synthetic access$7800(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->showRDS()V

    return-void
.end method

.method static synthetic access$7900(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->stopAnimation()V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/FMRadio/FMRadioActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    return v0
.end method

.method static synthetic access$8000(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/PopupMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method static synthetic access$802(Lcom/mediatek/FMRadio/FMRadioActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    return p1
.end method

.method static synthetic access$8200(Lcom/mediatek/FMRadio/FMRadioActivity;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->rdsset(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$8300(Lcom/mediatek/FMRadio/FMRadioActivity;F)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->tune(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8400(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->playFM()V

    return-void
.end method

.method static synthetic access$8500(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->openDevice()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8600(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->isAntennaAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8702(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsExitPressed:Z

    return p1
.end method

.method static synthetic access$8800(Lcom/mediatek/FMRadio/FMRadioActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->setFrequency(I)V

    return-void
.end method

.method static synthetic access$8900(Lcom/mediatek/FMRadio/FMRadioActivity;FZ)F
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/mediatek/FMRadio/FMRadioActivity;->seek(FZ)F

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/mediatek/FMRadio/FMRadioActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordState:I

    return v0
.end method

.method static synthetic access$9000(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->cancelToast()V

    return-void
.end method

.method static synthetic access$902(Lcom/mediatek/FMRadio/FMRadioActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordState:I

    return p1
.end method

.method private activeAF()I
    .locals 5

    .prologue
    .line 2896
    const-string v2, "FMRadioActivity"

    const-string v3, ">>> FMRadioActivity.activeAF"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2897
    const/4 v1, 0x0

    .line 2898
    .local v1, iRet:I
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 2899
    const-string v2, "FMRadioActivity"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2909
    :goto_0
    const-string v2, "FMRadioActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioActivity.activeAF: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2910
    return v1

    .line 2903
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->activeAF()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2905
    :catch_0
    move-exception v0

    .line 2906
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioActivity"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private activeTA()I
    .locals 5

    .prologue
    .line 2914
    const-string v2, "FMRadioActivity"

    const-string v3, ">>> FMRadioActivity.activeTA"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2915
    const/4 v1, 0x0

    .line 2916
    .local v1, iRet:I
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 2917
    const-string v2, "FMRadioActivity"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2927
    :goto_0
    const-string v2, "FMRadioActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioActivity.activeTA: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2928
    return v1

    .line 2921
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->activeTA()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2923
    :catch_0
    move-exception v0

    .line 2924
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioActivity"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private cancelToast()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2549
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.cancelToast"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2550
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2551
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2552
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTimer:Ljava/util/Timer;

    .line 2557
    :goto_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 2558
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 2559
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mToast:Landroid/widget/Toast;

    .line 2564
    :goto_1
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< FMRadioActivity.cancelToast"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2565
    return-void

    .line 2555
    :cond_0
    const-string v0, "FMRadioActivity"

    const-string v1, "Warning: The timer is null."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2562
    :cond_1
    const-string v0, "FMRadioActivity"

    const-string v1, "Warning: The toast is null."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private changeBackground(Landroid/view/View;IIIZ)V
    .locals 1
    .parameter "v"
    .parameter "event"
    .parameter "idDown"
    .parameter "idUp"
    .parameter "bBackground"

    .prologue
    .line 2403
    if-nez p2, :cond_2

    .line 2404
    if-eqz p5, :cond_1

    .line 2405
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2421
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 2409
    .restart local p1
    :cond_1
    check-cast p1, Landroid/widget/ImageButton;

    .end local p1
    invoke-virtual {p1, p3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 2412
    .restart local p1
    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 2413
    if-eqz p5, :cond_3

    .line 2414
    invoke-virtual {p1, p4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 2418
    :cond_3
    check-cast p1, Landroid/widget/ImageButton;

    .end local p1
    invoke-virtual {p1, p4}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method private changeRecordingMode(Z)V
    .locals 10
    .parameter "recording"

    .prologue
    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 3188
    const-string v7, "FMRadioActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "changeRecordingMode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3189
    iget-boolean v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z

    if-ne v7, p1, :cond_1

    .line 3190
    const-string v6, "FMRadioActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FM already "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p1, :cond_0

    const-string v5, "in"

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "recording mode!"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3234
    :goto_1
    return-void

    .line 3190
    :cond_0
    const-string v5, "NOT in"

    goto :goto_0

    .line 3193
    :cond_1
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z

    .line 3194
    iget-boolean v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSDListenerRegistered:Z

    if-nez v7, :cond_2

    .line 3195
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 3196
    .local v3, iFilter:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3197
    const-string v7, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3198
    const-string v7, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3199
    const-string v7, "file"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3200
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSDListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3201
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSDListenerRegistered:Z

    .line 3213
    .end local v3           #iFilter:Landroid/content/IntentFilter;
    :cond_2
    :try_start_0
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v7, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->setRecordingMode(Z)V

    .line 3214
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 3215
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->invalidateOptionsMenu()V

    .line 3218
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 3219
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 3220
    if-eqz p1, :cond_3

    const v7, 0x7f04002b

    :goto_2
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setTitle(I)V

    .line 3222
    const v7, 0x7f06003e

    invoke-virtual {p0, v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 3223
    .local v4, rec_bar:Landroid/widget/LinearLayout;
    const v7, 0x7f060038

    invoke-virtual {p0, v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 3225
    .local v1, bottom_bar:Landroid/widget/LinearLayout;
    if-eqz p1, :cond_4

    move v7, v5

    :goto_3
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3226
    if-eqz p1, :cond_5

    move v7, v6

    :goto_4
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3227
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    if-eqz p1, :cond_6

    :goto_5
    invoke-virtual {v7, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3229
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setMotionEventSplittingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3230
    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v1           #bottom_bar:Landroid/widget/LinearLayout;
    .end local v4           #rec_bar:Landroid/widget/LinearLayout;
    :catch_0
    move-exception v2

    .line 3231
    .local v2, ex:Ljava/lang/Exception;
    const-string v5, "FMRadioActivity"

    const-string v6, "setRecordingMode: "

    invoke-static {v5, v6, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3220
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v0       #actionBar:Landroid/app/ActionBar;
    :cond_3
    const/high16 v7, 0x7f04

    goto :goto_2

    .restart local v1       #bottom_bar:Landroid/widget/LinearLayout;
    .restart local v4       #rec_bar:Landroid/widget/LinearLayout;
    :cond_4
    move v7, v6

    .line 3225
    goto :goto_3

    :cond_5
    move v7, v5

    .line 3226
    goto :goto_4

    :cond_6
    move v5, v6

    .line 3227
    goto :goto_5
.end method

.method private checkRemainingStorage()Z
    .locals 10

    .prologue
    .line 3319
    new-instance v4, Landroid/os/StatFs;

    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSDDirectory:Ljava/lang/String;

    invoke-direct {v4, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 3320
    .local v4, fs:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v2, v7

    .line 3321
    .local v2, blocks:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v0, v7

    .line 3322
    .local v0, blockSize:J
    mul-long v5, v2, v0

    .line 3323
    .local v5, spaceLeft:J
    const-string v7, "FMRadioActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkRemainingStorage: available space="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3325
    const-wide/32 v7, 0x80000

    cmp-long v7, v5, v7

    if-lez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private closeDevice()Z
    .locals 5

    .prologue
    .line 2660
    const-string v2, "FMRadioActivity"

    const-string v3, ">>> FMRadioActivity.closeDevice"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2661
    const/4 v0, 0x0

    .line 2662
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 2663
    const-string v2, "FMRadioActivity"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2673
    :goto_0
    const-string v2, "FMRadioActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioActivity.closeDevice: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    return v0

    .line 2667
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->closeDevice()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 2669
    :catch_0
    move-exception v1

    .line 2670
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioActivity"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deactiveTA()I
    .locals 5

    .prologue
    .line 2932
    const-string v2, "FMRadioActivity"

    const-string v3, ">>> FMRadioActivity.deactiveTA"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2933
    const/4 v1, 0x0

    .line 2934
    .local v1, iRet:I
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 2935
    const-string v2, "FMRadioActivity"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2945
    :goto_0
    const-string v2, "FMRadioActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioActivity.deactiveTA: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2946
    return v1

    .line 2939
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->deactiveTA()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2941
    :catch_0
    move-exception v0

    .line 2942
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioActivity"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private displayAirPlaneModeDialog()V
    .locals 3

    .prologue
    .line 1859
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgAirPlaneMode:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 1860
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1861
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f04005b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1862
    const v1, 0x10802ba

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1863
    const v1, 0x7f04005a

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1864
    const v1, 0x104000a

    new-instance v2, Lcom/mediatek/FMRadio/FMRadioActivity$17;

    invoke-direct {v2, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$17;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1872
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgAirPlaneMode:Landroid/app/AlertDialog;

    .line 1873
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgAirPlaneMode:Landroid/app/AlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1874
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgAirPlaneMode:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1876
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method private displayInsertEarphoneDialog()V
    .locals 3

    .prologue
    .line 1840
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgInsertEarphone:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 1841
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1842
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f04000b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1843
    const v1, 0x10802ba

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1844
    const v1, 0x7f040059

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1845
    const v1, 0x104000a

    new-instance v2, Lcom/mediatek/FMRadio/FMRadioActivity$16;

    invoke-direct {v2, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$16;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1853
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgInsertEarphone:Landroid/app/AlertDialog;

    .line 1854
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgInsertEarphone:Landroid/app/AlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1855
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgInsertEarphone:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1857
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method private enableAF(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 3070
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioActivity.enableAF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3071
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 3072
    const-string v1, "FMRadioActivity"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3082
    :goto_0
    const-string v1, "FMRadioActivity"

    const-string v2, "<<< FMRadioActivity.enableAF"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3083
    return-void

    .line 3076
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->enableAF(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3078
    :catch_0
    move-exception v0

    .line 3079
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FMRadioActivity"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enablePSRT(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 3054
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioActivity.enablePSRT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3055
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 3056
    const-string v1, "FMRadioActivity"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3066
    :goto_0
    const-string v1, "FMRadioActivity"

    const-string v2, "<<< FMRadioActivity.enablePSRT"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3067
    return-void

    .line 3060
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->enablePSRT(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3062
    :catch_0
    move-exception v0

    .line 3063
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FMRadioActivity"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enableTA(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 3086
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioActivity.enableTA: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3087
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 3088
    const-string v1, "FMRadioActivity"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3098
    :goto_0
    const-string v1, "FMRadioActivity"

    const-string v2, "<<< FMRadioActivity.enableTA"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3099
    return-void

    .line 3092
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->enableTA(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3094
    :catch_0
    move-exception v0

    .line 3095
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FMRadioActivity"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getFrequency()I
    .locals 5

    .prologue
    .line 3156
    const-string v2, "FMRadioActivity"

    const-string v3, ">>> FMRadioActivity.getFrequency"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3157
    const/4 v1, 0x0

    .line 3158
    .local v1, iRet:I
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 3159
    const-string v2, "FMRadioActivity"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3169
    :goto_0
    const-string v2, "FMRadioActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioActivity.getFrequency: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3170
    return v1

    .line 3163
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->getFrequency()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 3165
    :catch_0
    move-exception v0

    .line 3166
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioActivity"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getLRText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2878
    const-string v2, "FMRadioActivity"

    const-string v3, ">>> FMRadioActivity.getLRText"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2879
    const/4 v1, 0x0

    .line 2880
    .local v1, sRT:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 2881
    const-string v2, "FMRadioActivity"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2891
    :goto_0
    const-string v2, "FMRadioActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioActivity.getLRText: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2892
    return-object v1

    .line 2885
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->getLRText()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 2887
    :catch_0
    move-exception v0

    .line 2888
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioActivity"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getPS()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2860
    const-string v2, "FMRadioActivity"

    const-string v3, ">>> FMRadioActivity.getPS"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2861
    const/4 v1, 0x0

    .line 2862
    .local v1, sPS:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 2863
    const-string v2, "FMRadioActivity"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2873
    :goto_0
    const-string v2, "FMRadioActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioActivity.getPS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2874
    return-object v1

    .line 2867
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->getPS()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 2869
    :catch_0
    move-exception v0

    .line 2870
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioActivity"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getProjectString(II)Ljava/lang/String;
    .locals 1
    .parameter "resId1"
    .parameter "resId2"

    .prologue
    .line 3440
    sget-boolean v0, Lcom/mediatek/FMRadio/FMRadioFavorite;->IS_CMCC:Z

    if-eqz v0, :cond_0

    .line 3441
    invoke-virtual {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3443
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/mediatek/FMRadio/FMRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initService(I)V
    .locals 4
    .parameter "iCurrentStation"

    .prologue
    .line 3020
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioActivity.initService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3021
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 3022
    const-string v1, "FMRadioActivity"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3032
    :goto_0
    const-string v1, "FMRadioActivity"

    const-string v2, "<<< FMRadioActivity.initService"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3033
    return-void

    .line 3026
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->initService(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3028
    :catch_0
    move-exception v0

    .line 3029
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FMRadioActivity"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isAFEnabled()Z
    .locals 5

    .prologue
    .line 3120
    const-string v2, "FMRadioActivity"

    const-string v3, ">>> FMRadioActivity.isAFEnabled"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3121
    const/4 v0, 0x0

    .line 3122
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 3123
    const-string v2, "FMRadioActivity"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3133
    :goto_0
    const-string v2, "FMRadioActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioActivity.isAFEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3134
    return v0

    .line 3127
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->isAFEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 3129
    :catch_0
    move-exception v1

    .line 3130
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioActivity"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isAntennaAvailable()Z
    .locals 1

    .prologue
    .line 1831
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method

.method private isDeviceOpen()Z
    .locals 5

    .prologue
    .line 2678
    const-string v2, "FMRadioActivity"

    const-string v3, ">>> FMRadioActivity.isDeviceOpen"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2679
    const/4 v0, 0x0

    .line 2680
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 2681
    const-string v2, "FMRadioActivity"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2691
    :goto_0
    const-string v2, "FMRadioActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioActivity.isDeviceOpen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    return v0

    .line 2685
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->isDeviceOpen()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 2687
    :catch_0
    move-exception v1

    .line 2688
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioActivity"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isEarphoneUsed()Z
    .locals 5

    .prologue
    .line 3002
    const-string v2, "FMRadioActivity"

    const-string v3, ">>> FMRadioActivity.isEarphoneUsed"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3003
    const/4 v0, 0x1

    .line 3004
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 3005
    const-string v2, "FMRadioActivity"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3015
    :goto_0
    const-string v2, "FMRadioActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioActivity.isEarphoneUsed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3016
    return v0

    .line 3009
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->isEarphoneUsed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 3011
    :catch_0
    move-exception v1

    .line 3012
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioActivity"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isPSRTEnabled()Z
    .locals 5

    .prologue
    .line 3102
    const-string v2, "FMRadioActivity"

    const-string v3, ">>> FMRadioActivity.isPSRTEnabled"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3103
    const/4 v0, 0x0

    .line 3104
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 3105
    const-string v2, "FMRadioActivity"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3115
    :goto_0
    const-string v2, "FMRadioActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioActivity.isPSRTEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3116
    return v0

    .line 3109
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->isPSRTEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 3111
    :catch_0
    move-exception v1

    .line 3112
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioActivity"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isPowerUp()Z
    .locals 5

    .prologue
    .line 2734
    const-string v2, "FMRadioActivity"

    const-string v3, ">>> FMRadioActivity.isPowerUp"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2735
    const/4 v0, 0x0

    .line 2736
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 2737
    const-string v2, "FMRadioActivity"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2747
    :goto_0
    const-string v2, "FMRadioActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioActivity.isPowerUp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    return v0

    .line 2741
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->isPowerUp()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 2743
    :catch_0
    move-exception v1

    .line 2744
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioActivity"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isRDSSupported()I
    .locals 5

    .prologue
    .line 2968
    const-string v2, "FMRadioActivity"

    const-string v3, ">>> FMRadioActivity.isRDSSupported"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2969
    const/4 v1, -0x1

    .line 2970
    .local v1, iRet:I
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 2971
    const-string v2, "FMRadioActivity"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2981
    :goto_0
    const-string v2, "FMRadioActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioActivity.isRDSSupported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2982
    return v1

    .line 2975
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->isRDSSupported()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2977
    :catch_0
    move-exception v0

    .line 2978
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioActivity"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isServiceInit()Z
    .locals 5

    .prologue
    .line 3036
    const-string v2, "FMRadioActivity"

    const-string v3, ">>> FMRadioActivity.isServiceInit"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3037
    const/4 v0, 0x0

    .line 3038
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 3039
    const-string v2, "FMRadioActivity"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3049
    :goto_0
    const-string v2, "FMRadioActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioActivity.isServiceInit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3050
    return v0

    .line 3043
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->isServiceInit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 3045
    :catch_0
    move-exception v1

    .line 3046
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioActivity"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isTAEnabled()Z
    .locals 5

    .prologue
    .line 3138
    const-string v2, "FMRadioActivity"

    const-string v3, ">>> FMRadioActivity.isTAEnabled"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3139
    const/4 v0, 0x0

    .line 3140
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 3141
    const-string v2, "FMRadioActivity"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3151
    :goto_0
    const-string v2, "FMRadioActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioActivity.isTAEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3152
    return v0

    .line 3145
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->isTAEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 3147
    :catch_0
    move-exception v1

    .line 3148
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioActivity"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isToasting()Z
    .locals 4

    .prologue
    .line 2568
    const-string v1, "FMRadioActivity"

    const-string v2, ">>> FMRadioActivity.isToasting"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    const/4 v0, 0x1

    .line 2570
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mToast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTimer:Ljava/util/Timer;

    if-nez v1, :cond_0

    .line 2571
    const/4 v0, 0x0

    .line 2573
    :cond_0
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioActivity.isToasting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2574
    return v0
.end method

.method private onPauseFM()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2167
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> onPauseFM"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->setMute(Z)I

    .line 2170
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->rdsset(Z)I

    .line 2171
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->powerDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2172
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayStop:Landroid/widget/ImageButton;

    const v1, 0x7f020020

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2173
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    .line 2174
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshButtonStatus()V

    .line 2182
    :goto_0
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< onPauseFM"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    return-void

    .line 2180
    :cond_0
    const-string v0, "FMRadioActivity"

    const-string v1, "Error: Can not power down."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onPlayFM()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2069
    const-string v1, "FMRadioActivity"

    const-string v2, ">>> onPlayFM"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    .line 2074
    .local v0, cn:Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 2075
    const-string v1, "FMRadioActivity"

    const-string v2, "Error: Cannot start FM service"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    :goto_0
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsServiceBinded:Z

    if-nez v1, :cond_1

    .line 2085
    const-string v1, "FMRadioActivity"

    const-string v2, "Error: Cannot bind FM service"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->finish()V

    .line 2087
    const-string v1, "FMRadioActivity"

    const-string v2, "<<< FMRadioActivity.onCreate"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    :goto_1
    return-void

    .line 2077
    :cond_0
    const-string v1, "FMRadioActivity"

    const-string v2, "Start FM service successfully."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsServiceStarted:Z

    .line 2079
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1, v2, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsServiceBinded:Z

    goto :goto_0

    .line 2091
    :cond_1
    const-string v1, "FMRadioActivity"

    const-string v2, "Bind FM service successfully."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshButtonStatus(Z)V

    .line 2094
    new-instance v1, Lcom/mediatek/FMRadio/FMRadioActivity$22;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$22;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/FMRadioActivity$22;->start()V

    .line 2109
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->startAnimation()V

    .line 2111
    const-string v1, "FMRadioActivity"

    const-string v2, "<<< onPlayFM"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private onUseEarphone()V
    .locals 5

    .prologue
    .line 2186
    const-string v2, "FMRadioActivity"

    const-string v3, ">>> onUseEarphone"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->useEarphone(Z)V

    .line 2188
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemEarLoud:Landroid/view/MenuItem;

    const v3, 0x7f020015

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2190
    .local v0, endTime:J
    const-string v2, "FMRadioActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Performance test][FMRadio] switch earphone end ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    const-string v2, "FMRadioActivity"

    const-string v3, "<<< onUseEarphone"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    return-void
.end method

.method private onUseLoudspeaker()V
    .locals 5

    .prologue
    .line 2195
    const-string v2, "FMRadioActivity"

    const-string v3, ">>> onUseLoudspeaker"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->useEarphone(Z)V

    .line 2197
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemEarLoud:Landroid/view/MenuItem;

    const v3, 0x7f02001a

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2199
    .local v0, endTime:J
    const-string v2, "FMRadioActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Performance test][FMRadio] switch speaker end ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    const-string v2, "FMRadioActivity"

    const-string v3, "<<< onUseLoudspeaker"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    return-void
.end method

.method private openDevice()Z
    .locals 5

    .prologue
    .line 2642
    const-string v2, "FMRadioActivity"

    const-string v3, ">>> FMRadioActivity.openDevice"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2643
    const/4 v0, 0x0

    .line 2644
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 2645
    const-string v2, "FMRadioActivity"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2655
    :goto_0
    const-string v2, "FMRadioActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioActivity.openDevice: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2656
    return v0

    .line 2649
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->openDevice()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 2651
    :catch_0
    move-exception v1

    .line 2652
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioActivity"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private playFM()V
    .locals 9

    .prologue
    const/high16 v8, 0x4120

    const/4 v7, 0x1

    .line 2115
    const-string v5, "FMRadioActivity"

    const-string v6, ">>> PlayFM"

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    iget v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    int-to-float v5, v5

    div-float/2addr v5, v8

    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->powerUp(F)Z

    move-result v0

    .line 2118
    .local v0, bRes:Z
    if-eqz v0, :cond_1

    .line 2120
    invoke-direct {p0, v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->setMute(Z)I

    .line 2121
    invoke-direct {p0, v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->rdsset(Z)I

    .line 2122
    iput-boolean v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    .line 2124
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->isAntennaAvailable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2126
    const/4 v4, -0x1

    .line 2128
    .local v4, ret:I
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/mediatek/FMRadio/IFMRadioService;->switchAntenna(I)I

    move-result v4

    .line 2131
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    iget v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    int-to-float v6, v6

    div-float/2addr v6, v8

    invoke-interface {v5, v6}, Lcom/mediatek/FMRadio/IFMRadioService;->tune(F)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2135
    :goto_0
    if-eqz v4, :cond_0

    .line 2136
    const-string v5, "FMRadioActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error while trying to switch to short antenna: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    .end local v4           #ret:I
    :cond_0
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->setMute(Z)I

    .line 2140
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 2141
    .local v3, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 2142
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2143
    .local v1, bundle:Landroid/os/Bundle;
    const-string v5, "MSGID"

    const/4 v6, 0x7

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2144
    invoke-virtual {v3, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2145
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 2163
    :goto_1
    const-string v5, "FMRadioActivity"

    const-string v6, "<<< PlayFM"

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    return-void

    .line 2132
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v3           #msg:Landroid/os/Message;
    .restart local v4       #ret:I
    :catch_0
    move-exception v2

    .line 2133
    .local v2, ex:Ljava/lang/Exception;
    const-string v5, "FMRadioActivity"

    const-string v6, "Exception: switchAntenna(1)"

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2151
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v4           #ret:I
    :cond_1
    invoke-direct {p0, v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->setMute(Z)I

    .line 2152
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->powerDown()Z

    .line 2154
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 2155
    .restart local v3       #msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 2156
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2157
    .restart local v1       #bundle:Landroid/os/Bundle;
    const-string v5, "MSGID"

    const/16 v6, 0x8

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2158
    invoke-virtual {v3, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2159
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 2161
    const-string v5, "FMRadioActivity"

    const-string v6, "Error: Can not power up."

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private powerDown()Z
    .locals 5

    .prologue
    .line 2716
    const-string v2, "FMRadioActivity"

    const-string v3, ">>> FMRadioActivity.powerDown"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2717
    const/4 v0, 0x0

    .line 2718
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 2719
    const-string v2, "FMRadioActivity"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2729
    :goto_0
    const-string v2, "FMRadioActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioActivity.powerDown: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2730
    return v0

    .line 2723
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->powerDown()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 2725
    :catch_0
    move-exception v1

    .line 2726
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioActivity"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private powerUp(F)Z
    .locals 5
    .parameter "frequency"

    .prologue
    .line 2696
    const-string v2, "FMRadioActivity"

    const-string v3, ">>> FMRadioActivity.powerUp"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    const/4 v0, 0x0

    .line 2698
    .local v0, bRet:Z
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsOnPowerUp:Z

    .line 2699
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 2700
    const-string v2, "FMRadioActivity"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2710
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsOnPowerUp:Z

    .line 2711
    const-string v2, "FMRadioActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioActivity.powerUp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    return v0

    .line 2704
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->powerUp(F)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 2706
    :catch_0
    move-exception v1

    .line 2707
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioActivity"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private rdsset(Z)I
    .locals 2
    .parameter "rdson"

    .prologue
    .line 2502
    const/4 v0, -0x1

    .line 2503
    .local v0, iRet:I
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRDSEnabled:Z

    if-eqz v1, :cond_0

    .line 2516
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->setRDS(Z)I

    move-result v0

    .line 2521
    :cond_0
    return v0
.end method

.method private readRDS()I
    .locals 5

    .prologue
    .line 2842
    const-string v2, "FMRadioActivity"

    const-string v3, ">>> FMRadioActivity.readRDS"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2843
    const/4 v1, 0x0

    .line 2844
    .local v1, iRet:I
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 2845
    const-string v2, "FMRadioActivity"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2855
    :goto_0
    const-string v2, "FMRadioActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioActivity.readRDS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2856
    return v1

    .line 2849
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->readRDS()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2851
    :catch_0
    move-exception v0

    .line 2852
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioActivity"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private refreshButtonStatus()V
    .locals 5

    .prologue
    .line 2424
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonDecrease:Landroid/widget/ImageButton;

    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2425
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPrevStation:Landroid/widget/ImageButton;

    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2426
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonNextStation:Landroid/widget/ImageButton;

    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2427
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonIncrease:Landroid/widget/ImageButton;

    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2428
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemEarLoud:Landroid/view/MenuItem;

    if-eqz v3, :cond_0

    .line 2429
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemEarLoud:Landroid/view/MenuItem;

    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2431
    :cond_0
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v3, :cond_1

    .line 2432
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 2433
    .local v2, menu:Landroid/view/Menu;
    const v3, 0x7f06004e

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRDSSupported:Z

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2435
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v3}, Lcom/mediatek/FMRadio/IFMRadioService;->isFMOverBTActive()Z

    move-result v1

    .line 2436
    .local v1, isOverBT:Z
    if-eqz v1, :cond_2

    .line 2437
    const v3, 0x7f06004f

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2445
    .end local v1           #isOverBT:Z
    .end local v2           #menu:Landroid/view/Menu;
    :cond_1
    :goto_0
    return-void

    .line 2439
    .restart local v1       #isOverBT:Z
    .restart local v2       #menu:Landroid/view/Menu;
    :cond_2
    const v3, 0x7f06004f

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2441
    .end local v1           #isOverBT:Z
    :catch_0
    move-exception v0

    .line 2442
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FMRadioActivity"

    const-string v4, "Exception: Cannot call service function."

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private refreshButtonStatus(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 2448
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonDecrease:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2449
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPrevStation:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2450
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonNextStation:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2451
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonIncrease:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2453
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayStop:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2454
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2455
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemEarLoud:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 2456
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemEarLoud:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2458
    :cond_0
    return-void
.end method

.method private refreshRecordingStatus(I)V
    .locals 10
    .parameter "stateOverride"

    .prologue
    .line 3237
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v6, :cond_0

    .line 3238
    const-string v6, "FMRadioActivity"

    const-string v7, "mService is null when refreshRecordingStatus()"

    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3315
    :goto_0
    return-void

    .line 3242
    :cond_0
    const/4 v2, -0x1

    .line 3244
    .local v2, recorderState:I
    const/4 v6, -0x1

    if-ne p1, v6, :cond_1

    .line 3245
    :try_start_0
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v6}, Lcom/mediatek/FMRadio/IFMRadioService;->getRecorderState()I

    move-result v2

    .line 3249
    :goto_1
    const-string v6, "FMRadioActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshRecordingStatus: state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3250
    packed-switch v2, :pswitch_data_0

    .line 3311
    :goto_2
    :pswitch_0
    iput v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPrevRecorderState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3312
    :catch_0
    move-exception v0

    .line 3313
    .local v0, ex:Ljava/lang/Exception;
    const-string v6, "FMRadioActivity"

    const-string v7, "refreshRecordingStatus: "

    invoke-static {v6, v7, v0}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3247
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    move v2, p1

    goto :goto_1

    .line 3252
    :pswitch_1
    :try_start_1
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v6}, Lcom/mediatek/FMRadio/IFMRadioService;->getRecordTime()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_5

    .line 3253
    const/4 v1, 0x0

    .line 3254
    .local v1, fileName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 3255
    .local v4, recordingFolderPath:Ljava/io/File;
    const/4 v3, 0x0

    .line 3256
    .local v3, recordingFileToSave:Ljava/io/File;
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v6}, Lcom/mediatek/FMRadio/IFMRadioService;->getRecordingName()Ljava/lang/String;

    move-result-object v1

    .line 3258
    if-eqz v1, :cond_2

    .line 3259
    new-instance v4, Ljava/io/File;

    .end local v4           #recordingFolderPath:Ljava/io/File;
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSDDirectory:Ljava/lang/String;

    const-string v7, "FM Recording"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3260
    .restart local v4       #recordingFolderPath:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    .end local v3           #recordingFileToSave:Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".3gpp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3262
    .restart local v3       #recordingFileToSave:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3263
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayback:Landroid/widget/ImageButton;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3266
    :cond_2
    iget v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPrevRecorderState:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_3

    .line 3267
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->checkRemainingStorage()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3268
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsStorageWarning:Z

    .line 3269
    const/4 v6, 0x4

    invoke-direct {p0, v6}, Lcom/mediatek/FMRadio/FMRadioActivity;->removeAndShowDialog(I)V

    .line 3278
    .end local v1           #fileName:Ljava/lang/String;
    .end local v3           #recordingFileToSave:Ljava/io/File;
    .end local v4           #recordingFolderPath:Ljava/io/File;
    :cond_3
    :goto_3
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonStop:Landroid/widget/ImageButton;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3279
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonRecord:Landroid/widget/ImageButton;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3280
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRLRecordInfo:Landroid/widget/RelativeLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    .line 3271
    .restart local v1       #fileName:Ljava/lang/String;
    .restart local v3       #recordingFileToSave:Ljava/io/File;
    .restart local v4       #recordingFolderPath:Ljava/io/File;
    :cond_4
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsStorageWarning:Z

    .line 3272
    const/4 v6, 0x4

    invoke-direct {p0, v6}, Lcom/mediatek/FMRadio/FMRadioActivity;->removeAndShowDialog(I)V

    goto :goto_3

    .line 3276
    .end local v1           #fileName:Ljava/lang/String;
    .end local v3           #recordingFileToSave:Ljava/io/File;
    .end local v4           #recordingFolderPath:Ljava/io/File;
    :cond_5
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayback:Landroid/widget/ImageButton;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_3

    .line 3283
    :pswitch_2
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoLeft:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3284
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoRight:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3285
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoLeft:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 3286
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonStop:Landroid/widget/ImageButton;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3287
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonRecord:Landroid/widget/ImageButton;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3288
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayback:Landroid/widget/ImageButton;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3289
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRLRecordInfo:Landroid/widget/RelativeLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 3292
    :pswitch_3
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v6}, Lcom/mediatek/FMRadio/IFMRadioService;->getRecordingName()Ljava/lang/String;

    move-result-object v5

    .line 3293
    .local v5, recordingName:Ljava/lang/String;
    if-nez v5, :cond_6

    .line 3294
    const-string v5, ""

    .line 3295
    :cond_6
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoLeft:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3296
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoRight:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3297
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoLeft:Landroid/widget/TextView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 3298
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonStop:Landroid/widget/ImageButton;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3299
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonRecord:Landroid/widget/ImageButton;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3300
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayback:Landroid/widget/ImageButton;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3301
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRLRecordInfo:Landroid/widget/RelativeLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 3305
    .end local v5           #recordingName:Ljava/lang/String;
    :pswitch_4
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonStop:Landroid/widget/ImageButton;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3306
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonRecord:Landroid/widget/ImageButton;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3307
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayback:Landroid/widget/ImageButton;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3308
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRLRecordInfo:Landroid/widget/RelativeLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 3250
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private removeAndShowDialog(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 2021
    invoke-virtual {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->removeDialog(I)V

    .line 2022
    invoke-virtual {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->showDialog(I)V

    .line 2023
    return-void
.end method

.method private seek(FZ)F
    .locals 5
    .parameter "frequency"
    .parameter "isUp"

    .prologue
    .line 2770
    const-string v2, "FMRadioActivity"

    const-string v3, ">>> FMRadioActivity.seek"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2771
    const/4 v1, 0x0

    .line 2772
    .local v1, fRet:F
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 2773
    const-string v2, "FMRadioActivity"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2783
    :goto_0
    const-string v2, "FMRadioActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioActivity.seek: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    return v1

    .line 2777
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2, p1, p2}, Lcom/mediatek/FMRadio/IFMRadioService;->seek(FZ)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2779
    :catch_0
    move-exception v0

    .line 2780
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioActivity"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private seekStation(ZIZ)V
    .locals 3
    .parameter "enable"
    .parameter "station"
    .parameter "direction"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2258
    if-nez p1, :cond_1

    .line 2260
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSeeking:Z

    if-eqz v0, :cond_0

    .line 2261
    const-string v0, "FMRadioActivity"

    const-string v1, "Warning: already seeking"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    :goto_0
    return-void

    .line 2264
    :cond_0
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSeeking:Z

    .line 2265
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->startAnimation()V

    .line 2266
    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshButtonStatus(Z)V

    .line 2268
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;

    invoke-direct {v0, p0, p2, p3}, Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;IZ)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSeekThread:Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;

    .line 2269
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSeekThread:Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;->start()V

    goto :goto_0

    .line 2272
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->stopAnimation()V

    .line 2273
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshButtonStatus(Z)V

    .line 2274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSeekThread:Lcom/mediatek/FMRadio/FMRadioActivity$SeekThread;

    .line 2275
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSeeking:Z

    goto :goto_0
.end method

.method private setFrequency(I)V
    .locals 4
    .parameter "station"

    .prologue
    .line 3174
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioActivity.setFrequency :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3175
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 3176
    const-string v1, "FMRadioActivity"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3184
    :goto_0
    const-string v1, "FMRadioActivity"

    const-string v2, "<<< FMRadioActivity.setFrequency"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3185
    return-void

    .line 3179
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->setFrequency(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3180
    :catch_0
    move-exception v0

    .line 3181
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FMRadioActivity"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setMute(Z)I
    .locals 5
    .parameter "mute"

    .prologue
    .line 2950
    const-string v2, "FMRadioActivity"

    const-string v3, ">>> FMRadioActivity.setMute"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2951
    const/4 v1, -0x1

    .line 2952
    .local v1, iRet:I
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 2953
    const-string v2, "FMRadioActivity"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2963
    :goto_0
    const-string v2, "FMRadioActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioActivity.setMute: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2964
    return v1

    .line 2957
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->setMute(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2959
    :catch_0
    move-exception v0

    .line 2960
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioActivity"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setRDS(Z)I
    .locals 5
    .parameter "on"

    .prologue
    .line 2824
    const-string v2, "FMRadioActivity"

    const-string v3, ">>> FMRadioActivity.setRDS"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2825
    const/4 v1, -0x1

    .line 2826
    .local v1, iRet:I
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 2827
    const-string v2, "FMRadioActivity"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2837
    :goto_0
    const-string v2, "FMRadioActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioActivity.setRDS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2838
    return v1

    .line 2831
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->setRDS(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2833
    :catch_0
    move-exception v0

    .line 2834
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioActivity"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showRDS()V
    .locals 3

    .prologue
    .line 2578
    const-string v1, "FMRadioActivity"

    const-string v2, ">>> FMRadioActivity.showRDS"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2579
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPSString:Ljava/lang/String;

    .line 2580
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mLRTextString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 2581
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 2582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2584
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mLRTextString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2586
    :cond_1
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextRDS:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2587
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextRDS:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2588
    const-string v1, "FMRadioActivity"

    const-string v2, "<<< FMRadioActivity.showRDS"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    return-void
.end method

.method private showToast(Ljava/lang/CharSequence;)V
    .locals 6
    .parameter "text"

    .prologue
    const-wide/16 v2, 0x7d0

    .line 2532
    const-string v0, "FMRadioActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> FMRadioActivity.showToast: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2534
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTimer:Ljava/util/Timer;

    .line 2535
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/mediatek/FMRadio/FMRadioActivity$24;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$24;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 2543
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mToast:Landroid/widget/Toast;

    .line 2544
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2545
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< FMRadioActivity.showToast"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    return-void
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    .line 2059
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAnimImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2060
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAnimImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2061
    return-void
.end method

.method private startScan()[I
    .locals 5

    .prologue
    .line 2788
    const-string v2, "FMRadioActivity"

    const-string v3, ">>> FMRadioActivity.startScan"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2789
    const/4 v1, 0x0

    .line 2790
    .local v1, iChannels:[I
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 2791
    const-string v2, "FMRadioActivity"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2801
    :goto_0
    const-string v2, "FMRadioActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioActivity.startScan: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2802
    return-object v1

    .line 2795
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->startScan()[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 2797
    :catch_0
    move-exception v0

    .line 2798
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioActivity"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 2064
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAnimImage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2065
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAnimImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2066
    return-void
.end method

.method private stopScan()Z
    .locals 5

    .prologue
    .line 2806
    const-string v2, "FMRadioActivity"

    const-string v3, ">>> FMRadioActivity.stopScan"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2807
    const/4 v0, 0x0

    .line 2808
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 2809
    const-string v2, "FMRadioActivity"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2819
    :goto_0
    const-string v2, "FMRadioActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioActivity.stopScan: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2820
    return v0

    .line 2813
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2}, Lcom/mediatek/FMRadio/IFMRadioService;->stopScan()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 2815
    :catch_0
    move-exception v1

    .line 2816
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioActivity"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private tune(F)Z
    .locals 5
    .parameter "frequency"

    .prologue
    .line 2752
    const-string v2, "FMRadioActivity"

    const-string v3, ">>> FMRadioActivity.tune"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2753
    const/4 v0, 0x0

    .line 2754
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v2, :cond_0

    .line 2755
    const-string v2, "FMRadioActivity"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    :goto_0
    const-string v2, "FMRadioActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioActivity.tune: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2766
    return v0

    .line 2759
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v2, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->tune(F)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 2761
    :catch_0
    move-exception v1

    .line 2762
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioActivity"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private tuneStation(ZI)V
    .locals 3
    .parameter "enable"
    .parameter "station"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2331
    if-nez p1, :cond_1

    .line 2333
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsTuning:Z

    if-eqz v0, :cond_0

    .line 2334
    const-string v0, "FMRadioActivity"

    const-string v1, "Warning: already tuning"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    :goto_0
    return-void

    .line 2336
    :cond_0
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsTuning:Z

    .line 2337
    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshButtonStatus(Z)V

    .line 2339
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;

    invoke-direct {v0, p0, p2}, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;I)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTuneThread:Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;

    .line 2340
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTuneThread:Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;->start()V

    goto :goto_0

    .line 2343
    :cond_1
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshButtonStatus(Z)V

    .line 2344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTuneThread:Lcom/mediatek/FMRadio/FMRadioActivity$TuneThread;

    .line 2345
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsTuning:Z

    goto :goto_0
.end method

.method private tuneToStation(I)V
    .locals 4
    .parameter "iStation"

    .prologue
    .line 2204
    const-string v0, "FMRadioActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>> tuneToStation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-float v2, p1

    const/high16 v3, 0x4120

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioActivity$23;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity$23;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;I)V

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioActivity$23;->start()V

    .line 2254
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< tuneToStation"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    return-void
.end method

.method private useEarphone(Z)V
    .locals 4
    .parameter "use"

    .prologue
    .line 2986
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioActivity.useEarphone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2987
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-nez v1, :cond_0

    .line 2988
    const-string v1, "FMRadioActivity"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2998
    :goto_0
    const-string v1, "FMRadioActivity"

    const-string v2, "<<< FMRadioActivity.useEarphone"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2999
    return-void

    .line 2992
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v1, p1}, Lcom/mediatek/FMRadio/IFMRadioService;->useEarphone(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2994
    :catch_0
    move-exception v0

    .line 2995
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FMRadioActivity"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public isRecordingCardUnmount(Landroid/content/Intent;)Z
    .locals 5
    .parameter "intent"

    .prologue
    .line 3449
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3450
    .local v1, unmountSDCard:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSDDirectory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 3451
    .local v0, result:Z
    :goto_0
    const-string v2, "FMRadioActivity"

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

    .line 3452
    return v0

    .line 3450
    .end local v0           #result:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 2025
    const/4 v1, -0x1

    if-ne v1, p2, :cond_1

    .line 2026
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 2027
    const-string v1, "ACTIVITY_RESULT"

    iget v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2029
    .local v0, iStation:I
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->tuneToStation(I)V

    .line 2030
    const-string v1, "FMRadioPerformanceTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[mtk performance result]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    .end local v0           #iStation:I
    :goto_0
    return-void

    .line 2033
    :cond_0
    const-string v1, "FMRadioActivity"

    const-string v2, "Error: Invalid requestcode."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2042
    :cond_1
    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    invoke-static {p0, v1}, Lcom/mediatek/FMRadio/FMRadioStation;->isFavoriteStation(Landroid/app/Activity;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2043
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    const v2, 0x7f02000b

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2044
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;

    iget v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    const/4 v3, 0x2

    invoke-static {p0, v2, v3}, Lcom/mediatek/FMRadio/FMRadioStation;->getStationName(Landroid/app/Activity;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2054
    :goto_1
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The activity for requestcode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not return any data."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2049
    :cond_2
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    const v2, 0x7f020009

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2050
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 2471
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.onBackPressed"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2479
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z

    if-eqz v0, :cond_1

    .line 2480
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->changeRecordingMode(Z)V

    .line 2481
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 2482
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayStop:Landroid/widget/ImageButton;

    const v1, 0x7f02002f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2486
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshButtonStatus()V

    .line 2498
    :goto_1
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< FMRadioActivity.onBackPressed"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    return-void

    .line 2484
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayStop:Landroid/widget/ImageButton;

    const v1, 0x7f020020

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 2488
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 2525
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2527
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->invalidateOptionsMenu()V

    .line 2528
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< FMRadioActivity.onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2529
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 824
    const-string v2, "FMRadioActivity"

    const-string v3, ">>> FMRadioActivity.onCreate"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 826
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 828
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->setVolumeControlStream(I)V

    .line 829
    const v2, 0x7f030006

    invoke-virtual {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->setContentView(I)V

    .line 831
    const v2, 0x7f06003f

    invoke-virtual {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonRecord:Landroid/widget/ImageButton;

    .line 832
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonRecord:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 834
    const v2, 0x7f060040

    invoke-virtual {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonStop:Landroid/widget/ImageButton;

    .line 835
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonStop:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 837
    const v2, 0x7f060041

    invoke-virtual {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayback:Landroid/widget/ImageButton;

    .line 838
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayback:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 841
    invoke-static {p0}, Lcom/mediatek/FMRadio/FMRadioStation;->getCurrentStation(Landroid/app/Activity;)I

    move-result v2

    iput v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    .line 842
    iget v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    invoke-static {p0, v2}, Lcom/mediatek/FMRadio/FMRadioStation;->isFavoriteStation(Landroid/app/Activity;I)Z

    move-result v1

    .line 843
    .local v1, isFavoriteStation:Z
    const v2, 0x7f060037

    invoke-virtual {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    .line 844
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 847
    if-eqz v1, :cond_2

    .line 848
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    const v3, 0x7f02000b

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 853
    :goto_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    new-instance v3, Lcom/mediatek/FMRadio/FMRadioActivity$5;

    invoke-direct {v3, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$5;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 873
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    new-instance v3, Lcom/mediatek/FMRadio/FMRadioActivity$6;

    invoke-direct {v3, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$6;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 906
    const v2, 0x7f060043

    invoke-virtual {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoLeft:Landroid/widget/TextView;

    .line 907
    const v2, 0x7f060044

    invoke-virtual {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoRight:Landroid/widget/TextView;

    .line 908
    const v2, 0x7f060042

    invoke-virtual {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRLRecordInfo:Landroid/widget/RelativeLayout;

    .line 913
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 914
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 915
    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_PS_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 916
    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_RT_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 917
    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_AF_ACTIVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 918
    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_TA_ACTIVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 919
    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_RDS_TA_DEACTIVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 921
    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_RECORDING_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 922
    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_RECORDER_ERROR"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 923
    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_RECORDING_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 925
    new-instance v2, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;Lcom/mediatek/FMRadio/FMRadioActivity$1;)V

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;

    .line 926
    const-string v2, "FMRadioActivity"

    const-string v3, "Register broadcast receiver."

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 932
    const/high16 v2, 0x7f02

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAnimation:Landroid/view/animation/Animation;

    .line 933
    const v2, 0x7f060046

    invoke-virtual {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAnimImage:Landroid/widget/ImageView;

    .line 934
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAnimImage:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 936
    const v2, 0x7f060032

    invoke-virtual {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;

    .line 937
    if-eqz v1, :cond_0

    .line 938
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;

    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    const/4 v4, 0x2

    invoke-static {p0, v3, v4}, Lcom/mediatek/FMRadio/FMRadioStation;->getStationName(Landroid/app/Activity;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 943
    :cond_0
    const v2, 0x7f060033

    invoke-virtual {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationValue:Landroid/widget/TextView;

    .line 944
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationValue:Landroid/widget/TextView;

    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    int-to-float v3, v3

    const/high16 v4, 0x4120

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 946
    const v2, 0x7f060036

    invoke-virtual {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextRDS:Landroid/widget/TextView;

    .line 947
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextRDS:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 949
    const v2, 0x7f060034

    invoke-virtual {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextFM:Landroid/widget/TextView;

    .line 950
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextFM:Landroid/widget/TextView;

    const-string v3, "FM"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 952
    const v2, 0x7f060035

    invoke-virtual {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextMHz:Landroid/widget/TextView;

    .line 953
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextMHz:Landroid/widget/TextView;

    const-string v3, "MHz"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 955
    const v2, 0x7f06003a

    invoke-virtual {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonDecrease:Landroid/widget/ImageButton;

    .line 956
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonDecrease:Landroid/widget/ImageButton;

    new-instance v3, Lcom/mediatek/FMRadio/FMRadioActivity$7;

    invoke-direct {v3, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$7;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 971
    const v2, 0x7f060039

    invoke-virtual {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPrevStation:Landroid/widget/ImageButton;

    .line 972
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPrevStation:Landroid/widget/ImageButton;

    new-instance v3, Lcom/mediatek/FMRadio/FMRadioActivity$8;

    invoke-direct {v3, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$8;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 984
    const v2, 0x7f06003d

    invoke-virtual {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonNextStation:Landroid/widget/ImageButton;

    .line 985
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonNextStation:Landroid/widget/ImageButton;

    new-instance v3, Lcom/mediatek/FMRadio/FMRadioActivity$9;

    invoke-direct {v3, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$9;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 997
    const v2, 0x7f06003c

    invoke-virtual {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonIncrease:Landroid/widget/ImageButton;

    .line 998
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonIncrease:Landroid/widget/ImageButton;

    new-instance v3, Lcom/mediatek/FMRadio/FMRadioActivity$10;

    invoke-direct {v3, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$10;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1013
    const v2, 0x7f06003b

    invoke-virtual {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayStop:Landroid/widget/ImageButton;

    .line 1014
    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    if-eqz v2, :cond_3

    .line 1015
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayStop:Landroid/widget/ImageButton;

    const v3, 0x7f02002f

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1020
    :goto_1
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayStop:Landroid/widget/ImageButton;

    new-instance v3, Lcom/mediatek/FMRadio/FMRadioActivity$11;

    invoke-direct {v3, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$11;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1033
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayStop:Landroid/widget/ImageButton;

    new-instance v3, Lcom/mediatek/FMRadio/FMRadioActivity$12;

    invoke-direct {v3, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$12;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1049
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayStop:Landroid/widget/ImageButton;

    new-instance v3, Lcom/mediatek/FMRadio/FMRadioActivity$13;

    invoke-direct {v3, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$13;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1080
    const v2, 0x7f06002f

    invoke-virtual {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMainView:Landroid/widget/RelativeLayout;

    .line 1086
    new-instance v2, Lcom/mediatek/FMRadio/FMRadioActivity$14;

    invoke-direct {v2, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$14;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;

    .line 1385
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 1387
    iput-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAirPlaneModeOn:Z

    .line 1389
    :cond_1
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 1391
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshButtonStatus()V

    .line 1392
    const-string v2, "FMRadioActivity"

    const-string v3, "<<< FMRadioActivity.onCreate"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    return-void

    .line 851
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_2
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    const v3, 0x7f020009

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_0

    .line 1018
    .restart local v0       #filter:Landroid/content/IntentFilter;
    :cond_3
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayStop:Landroid/widget/ImageButton;

    const v3, 0x7f020020

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter "id"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1878
    const-string v4, "FMRadioActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>> FMRadioActivity.onCreateDialog ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    const/4 v2, 0x0

    .line 1881
    .local v2, dlgRet:Landroid/app/Dialog;
    if-ne p1, v8, :cond_0

    .line 1882
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1883
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f04000a

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f04000b

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f04000c

    new-instance v6, Lcom/mediatek/FMRadio/FMRadioActivity$19;

    invoke-direct {v6, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$19;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f04000d

    new-instance v6, Lcom/mediatek/FMRadio/FMRadioActivity$18;

    invoke-direct {v6, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$18;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogNoAntenna:Landroid/app/AlertDialog;

    .line 1921
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogNoAntenna:Landroid/app/AlertDialog;

    .line 2003
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :goto_0
    const-string v4, "FMRadioActivity"

    const-string v5, "<<< FMRadioActivity.onCreateDialog"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    return-object v2

    .line 1923
    :cond_0
    const/4 v4, 0x3

    if-ne p1, v4, :cond_1

    .line 1924
    new-array v3, v9, [Ljava/lang/CharSequence;

    .line 1927
    .local v3, items:[Ljava/lang/CharSequence;
    const v4, 0x7f040027

    invoke-virtual {p0, v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 1928
    const v4, 0x7f040028

    invoke-virtual {p0, v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 1929
    new-array v1, v9, [Z

    .line 1931
    .local v1, checkedItems:[Z
    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPSRTEnabled:Z

    aput-boolean v4, v1, v7

    .line 1932
    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsAFEnabled:Z

    aput-boolean v4, v1, v8

    .line 1934
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f040026

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/mediatek/FMRadio/FMRadioActivity$21;

    invoke-direct {v5, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$21;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    invoke-virtual {v4, v3, v1, v5}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f04000e

    new-instance v6, Lcom/mediatek/FMRadio/FMRadioActivity$20;

    invoke-direct {v6, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$20;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogRDSSetting:Landroid/app/AlertDialog;

    .line 1981
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogRDSSetting:Landroid/app/AlertDialog;

    .line 1982
    goto :goto_0

    .end local v1           #checkedItems:[Z
    .end local v3           #items:[Ljava/lang/CharSequence;
    :cond_1
    const/4 v4, 0x4

    if-ne p1, v4, :cond_3

    .line 1983
    const-string v4, "FMRadioActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oncreateDialog.mIsRecordingCardEject: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecordingCardEject:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecordingCardEject:Z

    if-eqz v4, :cond_2

    .line 1986
    iput-boolean v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecordingCardEject:Z

    .line 1987
    const/4 v2, 0x0

    goto :goto_0

    .line 1989
    :cond_2
    new-instance v4, Lcom/mediatek/FMRadio/FMRecorderDialog;

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-direct {v4, p0, v5}, Lcom/mediatek/FMRadio/FMRecorderDialog;-><init>(Landroid/content/Context;Lcom/mediatek/FMRadio/IFMRadioService;)V

    iput-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgSaveRecording:Landroid/app/Dialog;

    .line 1990
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgSaveRecording:Landroid/app/Dialog;

    invoke-virtual {v4, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1991
    const-string v4, "FMRadioActivity"

    const-string v5, "Show save recording file dialog."

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgSaveRecording:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x24

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1996
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgSaveRecording:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 2000
    :cond_3
    const-string v4, "FMRadioActivity"

    const-string v5, "Error: Invalid dialog id in main UI."

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 1725
    const-string v1, "FMRadioActivity"

    const-string v2, ">>> FMRadioActivity.onCreateOptionsMenu"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1727
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f05

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1728
    const v1, 0x7f06004a

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemEarLoud:Landroid/view/MenuItem;

    .line 1729
    const v1, 0x7f06004b

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemChannelList:Landroid/view/MenuItem;

    .line 1730
    const v1, 0x7f06004c

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemOverflow:Landroid/view/MenuItem;

    .line 1733
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->isEarphoneUsed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1734
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemEarLoud:Landroid/view/MenuItem;

    const v2, 0x7f020015

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1738
    :goto_0
    const-string v1, "FMRadioActivity"

    const-string v2, "<<< FMRadioActivity.onCreateOptionsMenu"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    const/4 v1, 0x1

    return v1

    .line 1736
    :cond_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemEarLoud:Landroid/view/MenuItem;

    const v2, 0x7f02001a

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1591
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsDestroying:Z

    .line 1594
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSearching:Z

    if-eqz v0, :cond_1

    .line 1595
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogSearchProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1596
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogSearchProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1597
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogSearchProgress:Landroid/app/ProgressDialog;

    .line 1600
    :cond_0
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioActivity$15;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$15;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioActivity$15;->start()V

    .line 1623
    :cond_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;

    if-eqz v0, :cond_2

    .line 1624
    const-string v0, "FMRadioActivity"

    const-string v1, "Unregister broadcast receiver."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1626
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mBroadcastReceiver:Lcom/mediatek/FMRadio/FMRadioActivity$FMBroadcastReceiver;

    .line 1629
    :cond_2
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSDListenerRegistered:Z

    if-eqz v0, :cond_3

    .line 1630
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSDListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1631
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSDListenerRegistered:Z

    .line 1642
    :cond_3
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRefresher:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 1643
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRefresher:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1646
    :cond_4
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1647
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< FMRadioActivity.onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2598
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioActivity.onKeyDown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2599
    const/4 v0, 0x1

    .line 2600
    .local v0, bRet:Z
    const/16 v1, 0x52

    if-ne v1, p1, :cond_1

    .line 2601
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInited:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsOnPowerUp:Z

    if-nez v1, :cond_0

    .line 2602
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 2611
    :cond_0
    :goto_0
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioActivity.onKeyDown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2612
    return v0

    .line 2609
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2634
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioActivity.onKeyLongPress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2635
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 2636
    .local v0, bRet:Z
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioActivity.onKeyLongPress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2616
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioActivity.onKeyUp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    const/4 v0, 0x1

    .line 2618
    .local v0, bRet:Z
    const/16 v1, 0x52

    if-ne v1, p1, :cond_1

    .line 2619
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInited:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsOnPowerUp:Z

    if-nez v1, :cond_0

    .line 2620
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 2629
    :cond_0
    :goto_0
    const-string v1, "FMRadioActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioActivity.onKeyUp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    return v0

    .line 2627
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 2592
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.onLowMemory"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2593
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 2594
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< FMRadioActivity.onLowMemory"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 3350
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 3436
    :goto_0
    return v8

    .line 3355
    :pswitch_0
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 3356
    .local v3, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 3357
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3358
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "MSGID"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3359
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3360
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 3365
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v3           #msg:Landroid/os/Message;
    :pswitch_1
    new-array v2, v5, [Ljava/lang/CharSequence;

    .line 3366
    .local v2, items:[Ljava/lang/CharSequence;
    const v4, 0x7f040027

    invoke-virtual {p0, v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    .line 3367
    const v4, 0x7f040028

    invoke-virtual {p0, v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    .line 3368
    new-array v1, v5, [Z

    .line 3369
    .local v1, checkedItems:[Z
    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPSRTEnabled:Z

    aput-boolean v4, v1, v8

    .line 3370
    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsAFEnabled:Z

    aput-boolean v4, v1, v7

    .line 3371
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f040026

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/mediatek/FMRadio/FMRadioActivity$26;

    invoke-direct {v5, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$26;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    invoke-virtual {v4, v2, v1, v5}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f04000e

    new-instance v6, Lcom/mediatek/FMRadio/FMRadioActivity$25;

    invoke-direct {v6, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$25;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogRDSSetting:Landroid/app/AlertDialog;

    .line 3411
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDialogRDSSetting:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 3416
    .end local v1           #checkedItems:[Z
    .end local v2           #items:[Ljava/lang/CharSequence;
    :pswitch_2
    invoke-direct {p0, v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->changeRecordingMode(Z)V

    .line 3417
    const/4 v4, -0x1

    invoke-direct {p0, v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshRecordingStatus(I)V

    goto :goto_0

    .line 3422
    :pswitch_3
    iput-boolean v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsExitPressed:Z

    .line 3426
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/mediatek/FMRadio/FMRadioActivity$27;

    invoke-direct {v5, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$27;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3350
    :pswitch_data_0
    .packed-switch 0x7f06004d
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v8, 0x1

    .line 1766
    const-string v5, "FMRadioActivity"

    const-string v6, ">>> FMRadioActivity.onOptionsItemSelected"

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 1768
    const/4 v0, 0x1

    .line 1769
    .local v0, bRet:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 1819
    const-string v5, "FMRadioActivity"

    const-string v6, "Error: Invalid options menu item."

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 1821
    const/4 v0, 0x0

    .line 1825
    :goto_0
    const-string v5, "FMRadioActivity"

    const-string v6, "<<< FMRadioActivity.onOptionsItemSelected"

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    return v0

    .line 1772
    :sswitch_0
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->onBackPressed()V

    goto :goto_0

    .line 1777
    :sswitch_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1778
    .local v2, intent:Landroid/content/Intent;
    const-class v5, Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-virtual {v2, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1779
    invoke-virtual {p0, v2, v8}, Lcom/mediatek/FMRadio/FMRadioActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1784
    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_2
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->isEarphoneUsed()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1785
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->onUseLoudspeaker()V

    goto :goto_0

    .line 1787
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->onUseEarphone()V

    goto :goto_0

    .line 1792
    :sswitch_3
    new-instance v5, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f06004c

    invoke-virtual {p0, v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 1793
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v5}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    .line 1794
    .local v4, menu:Landroid/view/Menu;
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v5}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v5

    const v6, 0x7f050001

    invoke-virtual {v5, v6, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1795
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v5, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1798
    const v5, 0x7f06004e

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1804
    const/4 v3, 0x0

    .line 1806
    .local v3, isFMOverBT:Z
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v5}, Lcom/mediatek/FMRadio/IFMRadioService;->isFMOverBTActive()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1810
    :goto_1
    iget-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    if-eqz v5, :cond_1

    if-nez v3, :cond_1

    .line 1811
    const v5, 0x7f06004f

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1813
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->isDeviceOpen()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1814
    const v5, 0x7f06004d

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1816
    :cond_2
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v5}, Landroid/widget/PopupMenu;->show()V

    goto/16 :goto_0

    .line 1807
    :catch_0
    move-exception v1

    .line 1808
    .local v1, ex:Ljava/lang/Exception;
    const-string v5, "FMRadioActivity"

    const-string v6, "Exception while isFMOverBTActive(): "

    invoke-static {v5, v6, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1769
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f06004a -> :sswitch_2
        0x7f06004b -> :sswitch_1
        0x7f06004c -> :sswitch_3
    .end sparse-switch
.end method

.method public onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 1519
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.onPause"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsActivityBackground:Z

    .line 1521
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgSaveRecording:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgSaveRecording:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1522
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgSaveRecording:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1523
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsShowSaveDialog:Z

    .line 1526
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    if-eqz v0, :cond_2

    .line 1527
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayStop:Landroid/widget/ImageButton;

    const v3, 0x7f020030

    const v4, 0x7f02002f

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->changeBackground(Landroid/view/View;IIIZ)V

    .line 1541
    :goto_0
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    invoke-static {p0, v0}, Lcom/mediatek/FMRadio/FMRadioStation;->isFavoriteStation(Landroid/app/Activity;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1542
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    const v3, 0x7f02000c

    const v4, 0x7f02000b

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->changeBackground(Landroid/view/View;IIIZ)V

    .line 1548
    :goto_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioActivity$HeadsetConnectionReceiver;

    if-eqz v0, :cond_1

    .line 1549
    const-string v0, "FMRadioActivity"

    const-string v1, "Unregister broadcast receiver."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioActivity$HeadsetConnectionReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1551
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioActivity$HeadsetConnectionReceiver;

    .line 1553
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1555
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< FMRadioActivity.onPause"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    return-void

    .line 1530
    :cond_2
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayStop:Landroid/widget/ImageButton;

    const v3, 0x7f020021

    const v4, 0x7f020020

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->changeBackground(Landroid/view/View;IIIZ)V

    goto :goto_0

    .line 1545
    :cond_3
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    const v3, 0x7f02000a

    const v4, 0x7f020009

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->changeBackground(Landroid/view/View;IIIZ)V

    goto :goto_1
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 3
    .parameter "id"
    .parameter "dlg"

    .prologue
    .line 2008
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 2009
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsStorageWarning:Z

    if-eqz v0, :cond_0

    .line 2010
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgSaveRecording:Landroid/app/Dialog;

    const v1, 0x7f060018

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mStorageWarningTextView:Landroid/widget/TextView;

    .line 2011
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mStorageWarningTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2018
    :goto_0
    return-void

    .line 2013
    :cond_0
    const-string v0, "FMRadioActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsStorageWarning= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsStorageWarning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2016
    :cond_1
    const-string v0, "FMRadioActivity"

    const-string v1, "Error: invalid id"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const v6, 0x7f06004c

    const v5, 0x7f06004b

    const v4, 0x7f06004a

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1742
    const-string v2, "FMRadioActivity"

    const-string v3, ">>> FMRadioActivity.onPrepareOptionsMenu"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z

    if-eqz v2, :cond_0

    .line 1747
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1748
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1749
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1762
    :goto_0
    return v0

    .line 1752
    :cond_0
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1753
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1754
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1755
    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    if-eqz v2, :cond_1

    .line 1756
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1761
    :goto_1
    const-string v0, "FMRadioActivity"

    const-string v2, "<<< FMRadioActivity.onPrepareOptionsMenu"

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1762
    goto :goto_0

    .line 1758
    :cond_1
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1466
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1467
    const-string v5, "FMRadioActivity"

    const-string v6, ">>> FMRadioActivity.onResume"

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1469
    .local v2, filterHeadset:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1470
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1471
    new-instance v5, Lcom/mediatek/FMRadio/FMRadioActivity$HeadsetConnectionReceiver;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/mediatek/FMRadio/FMRadioActivity$HeadsetConnectionReceiver;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;Lcom/mediatek/FMRadio/FMRadioActivity$1;)V

    iput-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioActivity$HeadsetConnectionReceiver;

    .line 1472
    const-string v5, "FMRadioActivity"

    const-string v6, "Register HeadsetConnectionReceiver"

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioActivity$HeadsetConnectionReceiver;

    invoke-virtual {p0, v5, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1474
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->isAntennaAvailable()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1475
    iput-boolean v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCanPlay:Z

    .line 1476
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->displayInsertEarphoneDialog()V

    .line 1483
    :cond_0
    :goto_0
    iput-boolean v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsActivityBackground:Z

    .line 1484
    iget-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsFreshRecordingStatus:Z

    if-eqz v5, :cond_5

    .line 1485
    iget v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordState:I

    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshRecordingStatus(I)V

    .line 1486
    iput-boolean v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsFreshRecordingStatus:Z

    .line 1490
    :goto_1
    iget-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsShowSaveDialog:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsConfigChange:Z

    if-nez v5, :cond_1

    .line 1491
    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->removeAndShowDialog(I)V

    .line 1492
    iput-boolean v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsShowSaveDialog:Z

    .line 1494
    :cond_1
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    if-eqz v5, :cond_2

    .line 1495
    const/4 v1, 0x0

    .line 1496
    .local v1, fileName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1497
    .local v4, recordingFolderPath:Ljava/io/File;
    const/4 v3, 0x0

    .line 1500
    .local v3, recordingFileToSave:Ljava/io/File;
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v5}, Lcom/mediatek/FMRadio/IFMRadioService;->getRecordingName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1504
    :goto_2
    if-eqz v1, :cond_2

    .line 1505
    new-instance v4, Ljava/io/File;

    .end local v4           #recordingFolderPath:Ljava/io/File;
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSDDirectory:Ljava/lang/String;

    const-string v6, "FM Recording"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    .restart local v4       #recordingFolderPath:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    .end local v3           #recordingFileToSave:Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".3gpp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1508
    .restart local v3       #recordingFileToSave:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1509
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayback:Landroid/widget/ImageButton;

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1513
    .end local v1           #fileName:Ljava/lang/String;
    .end local v3           #recordingFileToSave:Ljava/io/File;
    .end local v4           #recordingFolderPath:Ljava/io/File;
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->invalidateOptionsMenu()V

    .line 1514
    const-string v5, "FMRadioActivity"

    const-string v6, "<<< FMRadioActivity.onResume"

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    return-void

    .line 1477
    :cond_3
    iget-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAirPlaneModeOn:Z

    if-eqz v5, :cond_4

    .line 1478
    iput-boolean v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCanPlay:Z

    .line 1479
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->displayAirPlaneModeDialog()V

    goto :goto_0

    .line 1480
    :cond_4
    iget-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsstop:Z

    if-nez v5, :cond_0

    .line 1481
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->onPlayFM()V

    goto :goto_0

    .line 1488
    :cond_5
    const-string v5, "FMRadioActivity"

    const-string v6, "doesn\'t need to refresh recording status"

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1501
    .restart local v1       #fileName:Ljava/lang/String;
    .restart local v3       #recordingFileToSave:Ljava/io/File;
    .restart local v4       #recordingFolderPath:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1502
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 3332
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3333
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 3335
    .local v2, isInRecordingMode:Z
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/IFMRadioService;

    invoke-interface {v3}, Lcom/mediatek/FMRadio/IFMRadioService;->getRecordingMode()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3340
    :goto_0
    const-string v3, "isInRecordingMode"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3341
    const-string v3, "mPrevRecorderState"

    iget v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPrevRecorderState:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3342
    const-string v3, "mIsFreshRecordingStatus"

    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsFreshRecordingStatus:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3343
    const-string v3, "mRecordState"

    iget v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordState:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3344
    const-string v3, "mIsShowSaveDialog"

    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsShowSaveDialog:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3345
    return-object v0

    .line 3337
    :catch_0
    move-exception v1

    .line 3338
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 2461
    const-string v0, "FMRadioActivity"

    const-string v1, ">>> FMRadioActivity.onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2462
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2463
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgSaveRecording:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mDlgSaveRecording:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2465
    const-string v0, "FM_INSTANCE_STATE_RECORDING_NAME"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2467
    :cond_0
    const-string v0, "FMRadioActivity"

    const-string v1, "<<< FMRadioActivity.onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2468
    return-void
.end method

.method public onStart()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    .line 1396
    const-string v7, "FMRadioActivity"

    const-string v10, ">>> FMRadioActivity.onStart"

    invoke-static {v7, v10}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1420
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1421
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsConfigChange:Z

    .line 1422
    const-string v7, "FMRadioActivity"

    const-string v10, "Configration changes,activity restart,need to reset UI!"

    invoke-static {v7, v10}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1424
    .local v2, bundle:Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSDDirectory:Ljava/lang/String;

    .line 1425
    if-eqz v2, :cond_1

    .line 1426
    const-string v7, "mPrevRecorderState"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPrevRecorderState:I

    .line 1427
    const-string v7, "mRecordState"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordState:I

    .line 1428
    const-string v7, "mIsFreshRecordingStatus"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsFreshRecordingStatus:Z

    .line 1429
    const-string v7, "mIsShowSaveDialog"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsShowSaveDialog:Z

    .line 1430
    const-string v7, "FMRecord"

    invoke-virtual {p0, v7, v9}, Lcom/mediatek/FMRadio/FMRadioActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1431
    .local v6, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v7, "startRecordTime"

    invoke-interface {v6, v7, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordStartTime:J

    .line 1432
    const-string v7, "startPlayTime"

    invoke-interface {v6, v7, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPlayStartTime:J

    .line 1434
    const-string v7, "isInRecordingMode"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1435
    .local v3, isInRecordingMode:Z
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z

    .line 1436
    const-string v7, "FMRadioActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isInRecordingMode = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";mPrevRecorderState = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPrevRecorderState:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    const v7, 0x7f06003e

    invoke-virtual {p0, v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 1440
    .local v4, rec_bar:Landroid/widget/LinearLayout;
    const v7, 0x7f060038

    invoke-virtual {p0, v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1441
    .local v1, bottom_bar:Landroid/widget/LinearLayout;
    const v7, 0x7f060042

    invoke-virtual {p0, v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 1443
    .local v5, rec_info_bar:Landroid/widget/RelativeLayout;
    if-eqz v3, :cond_2

    move v7, v8

    :goto_0
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1444
    if-eqz v3, :cond_3

    move v7, v9

    :goto_1
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1445
    iget-object v10, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    if-eqz v3, :cond_4

    move v7, v8

    :goto_2
    invoke-virtual {v10, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1447
    const/4 v7, 0x6

    iget v10, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordState:I

    if-eq v7, v10, :cond_0

    const/4 v7, 0x7

    iget v10, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordState:I

    if-ne v7, v10, :cond_5

    .line 1448
    :cond_0
    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1454
    :goto_3
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1455
    .local v0, actionBar:Landroid/app/ActionBar;
    iget-boolean v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1456
    iget-boolean v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 1457
    iget-boolean v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsRecording:Z

    if-eqz v7, :cond_6

    const v7, 0x7f04002b

    :goto_4
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setTitle(I)V

    .line 1459
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRefresher:Landroid/os/Handler;

    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1462
    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v1           #bottom_bar:Landroid/widget/LinearLayout;
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v3           #isInRecordingMode:Z
    .end local v4           #rec_bar:Landroid/widget/LinearLayout;
    .end local v5           #rec_info_bar:Landroid/widget/RelativeLayout;
    .end local v6           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_1
    const-string v7, "FMRadioActivity"

    const-string v8, "<<< FMRadioActivity.onStart"

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    return-void

    .restart local v1       #bottom_bar:Landroid/widget/LinearLayout;
    .restart local v2       #bundle:Landroid/os/Bundle;
    .restart local v3       #isInRecordingMode:Z
    .restart local v4       #rec_bar:Landroid/widget/LinearLayout;
    .restart local v5       #rec_info_bar:Landroid/widget/RelativeLayout;
    .restart local v6       #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_2
    move v7, v9

    .line 1443
    goto :goto_0

    :cond_3
    move v7, v8

    .line 1444
    goto :goto_1

    :cond_4
    move v7, v9

    .line 1445
    goto :goto_2

    .line 1450
    :cond_5
    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_3

    .line 1457
    .restart local v0       #actionBar:Landroid/app/ActionBar;
    :cond_6
    const/high16 v7, 0x7f04

    goto :goto_4
.end method

.method public onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1559
    const-string v1, "FMRadioActivity"

    const-string v2, ">>> FMRadioActivity.onStop"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1561
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsExitPressed:Z

    if-eqz v1, :cond_0

    .line 1563
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    if-eqz v1, :cond_0

    .line 1564
    const-string v1, "FMRadioActivity"

    const-string v2, "FM is Playing. So stop it."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->setMute(Z)I

    .line 1566
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->rdsset(Z)I

    .line 1567
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->powerDown()Z

    .line 1568
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    .line 1573
    :cond_0
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsServiceBinded:Z

    if-eqz v1, :cond_1

    .line 1574
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1575
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsServiceBinded:Z

    .line 1578
    :cond_1
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsExitPressed:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    if-nez v1, :cond_4

    .line 1579
    :cond_2
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsServiceStarted:Z

    if-eqz v1, :cond_4

    .line 1580
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->stopService(Landroid/content/Intent;)Z

    move-result v0

    .line 1581
    .local v0, bRes:Z
    if-nez v0, :cond_3

    .line 1582
    const-string v1, "FMRadioActivity"

    const-string v2, "Error: Cannot stop the FM service."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    :cond_3
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsServiceStarted:Z

    .line 1587
    .end local v0           #bRes:Z
    :cond_4
    const-string v1, "FMRadioActivity"

    const-string v2, "<<< FMRadioActivity.onStop"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    return-void
.end method
