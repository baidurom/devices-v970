.class public Lcom/mediatek/FMRadio/FMRecorder;
.super Ljava/lang/Object;
.source "FMRecorder.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/FMRadio/FMRecorder$onRecorderStateChangedListener;
    }
.end annotation


# static fields
.field public static final ERROR_PLAYER_INTERNAL:I = 0x4

.field public static final ERROR_RECORDER_INTERNAL:I = 0x3

.field public static final ERROR_SDCARD_INSUFFICIENT_SPACE:I = 0x1

.field public static final ERROR_SDCARD_NOT_PRESENT:I = 0x0

.field public static final ERROR_SDCARD_WRITE_FAILED:I = 0x2

.field private static final LOGTAG:Ljava/lang/String; = "FMRecorder"

.field public static final LOW_SPACE_THRESHOLD:J = 0x80000L

.field public static final RECORDING_FILE_EXTENSION:Ljava/lang/String; = ".3gpp"

.field private static final RECORDING_FILE_PREFIX:Ljava/lang/String; = "FM"

.field public static final STATE_IDLE:I = 0x5

.field public static final STATE_INVALID:I = -0x1

.field public static final STATE_PLAYBACK:I = 0x7

.field public static final STATE_RECORDING:I = 0x6


# instance fields
.field private mConnection:Landroid/media/MediaScannerConnection;

.field private mDeleteUponSDInsertion:Z

.field public mInternalState:I

.field private mIsPlayCompleted:Z

.field private mIsRecordingFileSaved:Z

.field private mOldFilePath:Ljava/lang/String;

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mRecordFile:Ljava/io/File;

.field private mRecordStartTime:J

.field private mRecordTime:J

.field private mRecorder:Landroid/media/MediaRecorder;

.field private mSDCardID:I

.field private mStateListener:Lcom/mediatek/FMRadio/FMRecorder$onRecorderStateChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRecorder;->mDeleteUponSDInsertion:Z

    .line 84
    const/4 v0, 0x5

    iput v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mInternalState:I

    .line 85
    iput v2, p0, Lcom/mediatek/FMRadio/FMRecorder;->mSDCardID:I

    .line 86
    iput-wide v3, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordTime:J

    .line 88
    iput-wide v3, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordStartTime:J

    .line 89
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mOldFilePath:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    .line 91
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRecorder;->mIsRecordingFileSaved:Z

    .line 92
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mStateListener:Lcom/mediatek/FMRadio/FMRecorder$onRecorderStateChangedListener;

    .line 93
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRecorder;->mIsPlayCompleted:Z

    .line 94
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 95
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 97
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mConnection:Landroid/media/MediaScannerConnection;

    .line 387
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/FMRadio/FMRecorder;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/FMRadio/FMRecorder;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/mediatek/FMRadio/FMRecorder;)Landroid/media/MediaScannerConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mConnection:Landroid/media/MediaScannerConnection;

    return-object v0
.end method

.method private addCurrentRecordingToMediaDB(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 480
    const-string v0, "FMRecorder"

    const-string v1, ">> addCurrentRecordingToMediaDB"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 482
    :cond_0
    const-string v0, "FMRecorder"

    const-string v1, "<< addCurrentRecordingToMediaDB: file does not exists"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :goto_0
    return-void

    .line 485
    :cond_1
    new-instance v0, Lcom/mediatek/FMRadio/FMRecorder$1;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/FMRadio/FMRecorder$1;-><init>(Lcom/mediatek/FMRadio/FMRecorder;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRecorder$1;->start()V

    .line 647
    const-string v0, "FMRecorder"

    const-string v1, "<< addCurrentRecordingToMediaDB"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setError(I)V
    .locals 3
    .parameter "error"

    .prologue
    .line 268
    const-string v0, "FMRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mStateListener:Lcom/mediatek/FMRadio/FMRecorder$onRecorderStateChangedListener;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mStateListener:Lcom/mediatek/FMRadio/FMRecorder$onRecorderStateChangedListener;

    invoke-interface {v0, p1}, Lcom/mediatek/FMRadio/FMRecorder$onRecorderStateChangedListener;->onRecorderError(I)V

    .line 272
    :cond_0
    return-void
.end method

.method private setState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 275
    iput p1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mInternalState:I

    .line 276
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mStateListener:Lcom/mediatek/FMRadio/FMRecorder$onRecorderStateChangedListener;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mStateListener:Lcom/mediatek/FMRadio/FMRecorder$onRecorderStateChangedListener;

    invoke-interface {v0, p1}, Lcom/mediatek/FMRadio/FMRecorder$onRecorderStateChangedListener;->onRecorderStateChanged(I)V

    .line 279
    :cond_0
    return-void
.end method


# virtual methods
.method public discardRecording()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 353
    const-string v1, "FMRecorder"

    const-string v2, ">> discardRecording"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mInternalState:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_3

    .line 355
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    .line 356
    const-string v1, "FMRecorder"

    const-string v2, "discardRecording: stop"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 358
    const-string v1, "FMRecorder"

    const-string v2, "discardRecording: release"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iput-object v3, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 365
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 366
    .local v0, bRes:Z
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mIsRecordingFileSaved:Z

    if-nez v1, :cond_2

    .line 367
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 368
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 371
    const-string v1, "FMRecorder"

    const-string v2, "discardRecording: deletion failed! will try deleting it again when card is inserted back"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mOldFilePath:Ljava/lang/String;

    .line 373
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mDeleteUponSDInsertion:Z

    .line 375
    :cond_1
    iput-object v3, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    .line 376
    iput-wide v4, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordStartTime:J

    .line 377
    iput-wide v4, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordTime:J

    .line 379
    :cond_2
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRecorder;->setState(I)V

    .line 380
    const-string v1, "FMRecorder"

    const-string v2, "<< discardRecording"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    return-void

    .line 360
    .end local v0           #bRes:Z
    :cond_3
    iget v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mInternalState:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 362
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 363
    iput-object v3, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method public getPlayCompleted()Z
    .locals 1

    .prologue
    .line 670
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mIsPlayCompleted:Z

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 304
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getRecordingName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 308
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 309
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, fileName:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".3gpp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, ".3gpp"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 313
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 317
    .end local v0           #fileName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mInternalState:I

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 394
    const-string v0, "FMRecorder"

    const-string v1, ">> MediaPlayer.onCompletion"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 397
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 400
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRecorder;->setPlayCompleted(Z)V

    .line 401
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRecorder;->setState(I)V

    .line 402
    const-string v0, "FMRecorder"

    const-string v1, "<< MediaPlayer.onCompletion"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 418
    const-string v0, "FMRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaRecorder.onError: what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRecorder;->setError(I)V

    .line 420
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 421
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 422
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 423
    iget v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mInternalState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 424
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRecorder;->setState(I)V

    .line 426
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 407
    const-string v0, "FMRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer.onError: what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRecorder;->setError(I)V

    .line 409
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 410
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 411
    iget v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mInternalState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 412
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRecorder;->setState(I)V

    .line 413
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onMediaScannerConnected()V
    .locals 3

    .prologue
    .line 470
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mConnection:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    return-void
.end method

.method public onSDInserted()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 436
    const-string v3, "FMRecorder"

    const-string v4, ">> onSDInserted"

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v1

    .line 438
    .local v1, newCardID:I
    const-string v3, "FMRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "new card id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget v3, p0, Lcom/mediatek/FMRadio/FMRecorder;->mSDCardID:I

    if-eq v3, v1, :cond_1

    .line 441
    const-string v3, "FMRecorder"

    const-string v4, "onSDInserted: card has been changed!!"

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iput v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mSDCardID:I

    .line 465
    :cond_0
    :goto_0
    const-string v3, "FMRecorder"

    const-string v4, "<< onSDInserted"

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    return-void

    .line 443
    :cond_1
    iget-boolean v3, p0, Lcom/mediatek/FMRadio/FMRecorder;->mDeleteUponSDInsertion:Z

    if-eqz v3, :cond_0

    .line 446
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRecorder;->mDeleteUponSDInsertion:Z

    .line 448
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRecorder;->mOldFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 449
    .local v2, oldFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    .line 450
    .local v0, isDeleted:Z
    const-string v3, "FMRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSDInserted: delete old recording file="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iput-object v6, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    .line 452
    iput-object v6, p0, Lcom/mediatek/FMRadio/FMRecorder;->mOldFilePath:Ljava/lang/String;

    goto :goto_0
.end method

.method public onSDRemoved()V
    .locals 2

    .prologue
    .line 429
    const-string v0, "FMRecorder"

    const-string v1, ">> onSDRemoved"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordTime:J

    .line 432
    const-string v0, "FMRecorder"

    const-string v1, "<< onSDRemoved"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .parameter "path"
    .parameter "uri"

    .prologue
    .line 475
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 476
    const-string v0, "FMRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScanCompleted: path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    return-void
.end method

.method public recordTime()J
    .locals 4

    .prologue
    .line 283
    iget v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mInternalState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 284
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordTime:J

    .line 286
    :cond_0
    iget-wide v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordTime:J

    return-wide v0
.end method

.method public registerRecorderStateListener(Lcom/mediatek/FMRadio/FMRecorder$onRecorderStateChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 384
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mStateListener:Lcom/mediatek/FMRadio/FMRecorder$onRecorderStateChangedListener;

    .line 385
    return-void
.end method

.method public resetRecorder()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 651
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 653
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 656
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 657
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 659
    :cond_1
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    .line 660
    iput-wide v2, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordStartTime:J

    .line 661
    iput-wide v2, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordTime:J

    .line 662
    const/4 v0, 0x5

    iput v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mInternalState:I

    .line 663
    return-void
.end method

.method public saveRecording(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "newName"

    .prologue
    .line 322
    const-string v2, "FMRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">> saveRecording("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v0, 0x0

    .line 324
    .local v0, parentFile:Ljava/io/File;
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    if-eqz v2, :cond_0

    .line 325
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 327
    :cond_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    if-eqz v2, :cond_1

    if-nez v0, :cond_2

    .line 328
    :cond_1
    const-string v2, "FMRecorder"

    const-string v3, "<< saveRecording: recording file is null!"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :goto_0
    return-void

    .line 331
    :cond_2
    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRecorder;->getRecordingName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 332
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".3gpp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    .local v1, sdFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 334
    const-string v2, "FMRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "A file with the same new name will be deleted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_3

    .line 336
    const-string v2, "FMRecorder"

    const-string v3, "can\'t delete the file already exits"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_3
    if-eqz v0, :cond_5

    .line 340
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".3gpp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 341
    const-string v2, "FMRecorder"

    const-string v3, "can\'t rename file"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_4
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".3gpp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    .line 346
    .end local v1           #sdFile:Ljava/io/File;
    :cond_5
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRecorder;->mIsRecordingFileSaved:Z

    .line 347
    new-instance v2, Landroid/media/MediaScannerConnection;

    invoke-direct {v2, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRecorder;->mConnection:Landroid/media/MediaScannerConnection;

    .line 348
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRecorder;->addCurrentRecordingToMediaDB(Landroid/content/Context;)V

    .line 349
    const-string v2, "FMRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<< saveRecording("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setPlayCompleted(Z)V
    .locals 0
    .parameter "isPlayCompleted"

    .prologue
    .line 666
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mIsPlayCompleted:Z

    .line 667
    return-void
.end method

.method public startPlayback()V
    .locals 4

    .prologue
    .line 228
    const-string v1, "FMRecorder"

    const-string v2, ">> startPlayback"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    if-nez v1, :cond_0

    .line 230
    const-string v1, "FMRecorder"

    const-string v2, "no file to playback!"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :goto_0
    return-void

    .line 234
    :cond_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 237
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 238
    const-string v1, "FMRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer.setDataSource("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 240
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 241
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 242
    const-string v1, "FMRecorder"

    const-string v2, "MediaPlayer.prepare()"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRecorder;->setState(I)V

    .line 250
    const-string v1, "FMRecorder"

    const-string v2, "<< startPlayback"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "FMRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while trying to playback recording file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRecorder;->setError(I)V

    goto :goto_0
.end method

.method public startRecording()V
    .locals 25

    .prologue
    .line 100
    const-string v21, "FMRecorder"

    const-string v22, ">> startRecording"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-wide/16 v21, 0x0

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/mediatek/FMRadio/FMRecorder;->mRecordTime:J

    .line 104
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v21

    const-string v22, "mounted"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 106
    const-string v21, "FMRecorder"

    const-string v22, "SD card is not ready!!"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/FMRadio/FMRecorder;->setError(I)V

    .line 204
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    .line 111
    .local v16, sSDPath:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/FMRadio/FMRecorder;->mSDCardID:I

    .line 112
    new-instance v11, Landroid/os/StatFs;

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 113
    .local v11, fs:Landroid/os/StatFs;
    invoke-virtual {v11}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v21

    move/from16 v0, v21

    int-to-long v5, v0

    .line 114
    .local v5, blocks:J
    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockSize()I

    move-result v21

    move/from16 v0, v21

    int-to-long v3, v0

    .line 115
    .local v3, blockSize:J
    const-string v21, "FMRecorder"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "SD card free blocks="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", blocksize="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    mul-long v21, v5, v3

    const-wide/32 v23, 0x80000

    cmp-long v21, v21, v23

    if-gtz v21, :cond_1

    .line 117
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/FMRadio/FMRecorder;->setError(I)V

    .line 118
    const-string v21, "FMRecorder"

    const-string v22, "SD card does not have sufficient space!!"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 121
    :cond_1
    const-string v21, "FMRecorder"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "current card id="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/FMRadio/FMRecorder;->mSDCardID:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v17

    .line 125
    .local v17, sdDir:Ljava/io/File;
    const-string v21, "FMRecorder"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "external storage dir = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :try_start_0
    new-instance v15, Ljava/io/File;

    const-string v21, "FM Recording"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v15, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 128
    .local v15, recordingDir:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_2

    .line 129
    invoke-virtual {v15}, Ljava/io/File;->mkdir()Z

    move-result v13

    .line 130
    .local v13, mkdirResult:Z
    if-nez v13, :cond_3

    .line 131
    const/16 v21, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/FMRadio/FMRecorder;->setError(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 151
    .end local v13           #mkdirResult:Z
    .end local v15           #recordingDir:Ljava/io/File;
    :catch_0
    move-exception v12

    .line 152
    .local v12, ioex:Ljava/io/IOException;
    const-string v21, "FMRecorder"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "IOException while createTempFile: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    .line 154
    const/16 v21, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/FMRadio/FMRecorder;->setError(I)V

    goto/16 :goto_0

    .line 134
    .end local v12           #ioex:Ljava/io/IOException;
    .restart local v15       #recordingDir:Ljava/io/File;
    :cond_2
    :try_start_1
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    move-result v21

    if-nez v21, :cond_3

    .line 135
    const-string v21, "FMRecorder"

    const-string v22, "A FILE with name \"FM Recording\" already exists!!"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/16 v21, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/FMRadio/FMRecorder;->setError(I)V

    goto/16 :goto_0

    .line 139
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 140
    .local v7, curTime:J
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 141
    .local v9, date:Ljava/util/Date;
    new-instance v18, Ljava/text/SimpleDateFormat;

    const-string v21, "yyyyMMdd_HHmmss"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 142
    .local v18, simpleDateFormat:Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v20

    .line 143
    .local v20, time:Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .local v19, stringBuilder:Ljava/lang/StringBuilder;
    const-string v21, "FM"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ".3gpp"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 146
    .local v14, name:Ljava/lang/String;
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v0, v15, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->createNewFile()Z

    move-result v21

    if-nez v21, :cond_4

    .line 148
    const-string v21, "FMRecorder"

    const-string v22, "Can not createNewFile"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 159
    :cond_4
    :try_start_2
    const-string v21, "FMRecorder"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "new record file is:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v21, Landroid/media/MediaRecorder;

    invoke-direct/range {v21 .. v21}, Landroid/media/MediaRecorder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 162
    const-string v21, "FMRecorder"

    const-string v22, "startRecording: create new media record instance"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v21, v0

    const/16 v22, 0x63

    invoke-virtual/range {v21 .. v22}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 165
    const-string v21, "FMRecorder"

    const-string v22, "startRecording: setAudioSource"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 167
    const-string v21, "FMRecorder"

    const-string v22, "startRecording: setOutputFormat"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 171
    const-string v21, "FMRecorder"

    const-string v22, "startRecording: setAudioEncoder"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v21, v0

    const/16 v22, 0x1f40

    invoke-virtual/range {v21 .. v22}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 175
    const-string v21, "FMRecorder"

    const-string v22, "startRecording: setAudioSamplingRate"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v21, v0

    const/16 v22, 0x2fa8

    invoke-virtual/range {v21 .. v22}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 179
    const-string v21, "FMRecorder"

    const-string v22, "startRecording: setAudioEncodingBitRate"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 182
    const-string v21, "FMRecorder"

    const-string v22, "startRecording: setAudioChannels"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 185
    const-string v21, "FMRecorder"

    const-string v22, "startRecording: setOutputFile"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/media/MediaRecorder;->prepare()V

    .line 188
    const-string v21, "FMRecorder"

    const-string v22, "startRecording: prepare"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/mediatek/FMRadio/FMRecorder;->mRecordStartTime:J

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/media/MediaRecorder;->start()V

    .line 191
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mediatek/FMRadio/FMRecorder;->mIsRecordingFileSaved:Z

    .line 192
    const-string v21, "FMRecorder"

    const-string v22, "startRecording: start"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 202
    const/16 v21, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/FMRadio/FMRecorder;->setState(I)V

    .line 203
    const-string v21, "FMRecorder"

    const-string v22, "<< startRecording"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 193
    :catch_1
    move-exception v10

    .line 194
    .local v10, e:Ljava/lang/IllegalStateException;
    const-string v21, "FMRecorder"

    const-string v22, "IllegalStateException while starting recording!"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/16 v21, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/FMRadio/FMRecorder;->setError(I)V

    goto/16 :goto_0

    .line 197
    .end local v10           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v10

    .line 198
    .local v10, e:Ljava/io/IOException;
    const-string v21, "FMRecorder"

    const-string v22, "IOException while starting recording!"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/16 v21, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/FMRadio/FMRecorder;->setError(I)V

    goto/16 :goto_0
.end method

.method public stopPlayback()V
    .locals 2

    .prologue
    .line 254
    const-string v0, "FMRecorder"

    const-string v1, ">> stopPlayback"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mInternalState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 256
    :cond_0
    const-string v0, "FMRecorder"

    const-string v1, "stopPlayback called in wrong state!!"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :goto_0
    return-void

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 261
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRecorder;->mPlayer:Landroid/media/MediaPlayer;

    .line 263
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRecorder;->setState(I)V

    .line 264
    const-string v0, "FMRecorder"

    const-string v1, "<< stopPlayback"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopRecording()V
    .locals 5

    .prologue
    .line 207
    const-string v1, "FMRecorder"

    const-string v2, ">> stopRecording"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mInternalState:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 209
    const-string v1, "FMRecorder"

    const-string v2, "stopRecording() called in wrong state!!"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordStartTime:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecordTime:J

    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    .line 216
    const-string v1, "FMRecorder"

    const-string v2, "stopRecording: stop"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 218
    const-string v1, "FMRecorder"

    const-string v2, "stopRecording: release"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRecorder;->mRecorder:Landroid/media/MediaRecorder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_1
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRecorder;->setState(I)V

    .line 224
    const-string v1, "FMRecorder"

    const-string v2, "<< stopRecording"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "FMRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while reset()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
