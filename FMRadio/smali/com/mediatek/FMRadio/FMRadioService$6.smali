.class Lcom/mediatek/FMRadio/FMRadioService$6;
.super Ljava/lang/Object;
.source "FMRadioService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioService;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 1808
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioService$6;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1811
    const/16 v3, 0x64

    if-ne v3, p2, :cond_0

    .line 1812
    const-string v3, "FMRadioService"

    const-string v4, "onError: MEDIA_SERVER_DIED"

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$6;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$3800(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    .line 1814
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$6;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    #setter for: Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService;->access$3802(Lcom/mediatek/FMRadio/FMRadioService;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 1815
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$6;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$3800(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/MediaPlayer;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$6;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v3, v4, v2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 1816
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$6;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$3800(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/MediaPlayer;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioService$6;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->playerErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioService;->access$3900(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1818
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$6;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$3800(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/MediaPlayer;

    move-result-object v3

    const-string v4, "MEDIATEK://MEDIAPLAYER_PLAYERTYPE_FM"

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1819
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$6;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$3800(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/MediaPlayer;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1820
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$6;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$3800(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 1821
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioService$6;->this$0:Lcom/mediatek/FMRadio/FMRadioService;

    #getter for: Lcom/mediatek/FMRadio/FMRadioService;->mFMPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioService;->access$3800(Lcom/mediatek/FMRadio/FMRadioService;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    move v1, v2

    .line 1838
    :goto_0
    return v1

    .line 1822
    :catch_0
    move-exception v0

    .line 1823
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "FMRadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDataSource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1825
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1826
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "FMRadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDataSource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1828
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1829
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v2, "FMRadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDataSource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
