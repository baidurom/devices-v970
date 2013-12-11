.class Lcom/mediatek/FMRadio/FMRecorder$1;
.super Ljava/lang/Thread;
.source "FMRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRecorder;->addCurrentRecordingToMediaDB(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRecorder;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRecorder;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 485
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRecorder$1;->this$0:Lcom/mediatek/FMRadio/FMRecorder;

    iput-object p2, p0, Lcom/mediatek/FMRadio/FMRecorder$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 33

    .prologue
    .line 487
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 488
    .local v13, curTime:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/FMRadio/FMRecorder$1;->this$0:Lcom/mediatek/FMRadio/FMRecorder;

    #getter for: Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRecorder;->access$000(Lcom/mediatek/FMRadio/FMRecorder;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v23

    .line 489
    .local v23, modDate:J
    new-instance v17, Ljava/util/Date;

    move-object/from16 v0, v17

    invoke-direct {v0, v13, v14}, Ljava/util/Date;-><init>(J)V

    .line 490
    .local v17, date:Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/FMRadio/FMRecorder$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v18

    .line 491
    .local v18, dateFormatter:Ljava/text/DateFormat;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/FMRadio/FMRecorder$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v30

    .line 492
    .local v30, timeFormatter:Ljava/text/DateFormat;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/FMRadio/FMRecorder$1;->this$0:Lcom/mediatek/FMRadio/FMRecorder;

    invoke-virtual {v2}, Lcom/mediatek/FMRadio/FMRecorder;->getRecordingName()Ljava/lang/String;

    move-result-object v31

    .line 493
    .local v31, title:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FM Recording "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 494
    .local v8, artist:Ljava/lang/String;
    const-string v2, "FMRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "date formatter="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", time formatter="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 497
    .local v15, cv:Landroid/content/ContentValues;
    const-string v2, "is_music"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 498
    const-string v2, "title"

    move-object/from16 v0, v31

    invoke-virtual {v15, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const-string v2, "_data"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/FMRadio/FMRecorder$1;->this$0:Lcom/mediatek/FMRadio/FMRecorder;

    #getter for: Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRecorder;->access$000(Lcom/mediatek/FMRadio/FMRecorder;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v2, "date_added"

    const-wide/16 v4, 0x3e8

    div-long v4, v13, v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 501
    const-string v2, "date_modified"

    const-wide/16 v4, 0x3e8

    div-long v4, v23, v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 502
    const-string v2, "mime_type"

    const-string v4, "audio/3gpp"

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string v2, "artist"

    invoke-virtual {v15, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string v2, "album"

    const-string v4, "FM Recordings"

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string v2, "duration"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/FMRadio/FMRecorder$1;->this$0:Lcom/mediatek/FMRadio/FMRecorder;

    #getter for: Lcom/mediatek/FMRadio/FMRecorder;->mRecordTime:J
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRecorder;->access$100(Lcom/mediatek/FMRadio/FMRecorder;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 507
    const/16 v19, 0x0

    .line 508
    .local v19, insertResult:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 509
    .local v9, bItemExistsInDB:Z
    const/16 v28, -0x1

    .line 513
    .local v28, recordingId:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/FMRadio/FMRecorder$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const-string v5, "_data=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRecorder$1;->this$0:Lcom/mediatek/FMRadio/FMRecorder;

    move-object/from16 v32, v0

    #getter for: Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;
    invoke-static/range {v32 .. v32}, Lcom/mediatek/FMRadio/FMRecorder;->access$000(Lcom/mediatek/FMRadio/FMRecorder;)Ljava/io/File;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    aput-object v32, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 519
    .local v11, cExistingItem:Landroid/database/Cursor;
    if-eqz v11, :cond_1

    .line 522
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 523
    const/4 v9, 0x1

    .line 524
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 525
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 526
    const-string v2, "FMRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "existing id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/FMRadio/FMRecorder$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_data=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/FMRadio/FMRecorder$1;->this$0:Lcom/mediatek/FMRadio/FMRecorder;

    move-object/from16 v32, v0

    #getter for: Lcom/mediatek/FMRadio/FMRecorder;->mRecordFile:Ljava/io/File;
    invoke-static/range {v32 .. v32}, Lcom/mediatek/FMRadio/FMRecorder;->access$000(Lcom/mediatek/FMRadio/FMRecorder;)Ljava/io/File;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    aput-object v32, v6, v7

    invoke-virtual {v2, v4, v15, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v29

    .line 532
    .local v29, rowCnt:I
    const-string v2, "FMRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "existing items update count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    .end local v29           #rowCnt:I
    :cond_0
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 544
    const/4 v11, 0x0

    .line 548
    :cond_1
    if-nez v9, :cond_3

    if-nez v19, :cond_3

    .line 550
    const-string v2, "FMRecorder"

    const-string v4, "insert DB failed!!"

    invoke-static {v2, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :goto_1
    return-void

    .line 534
    :cond_2
    :try_start_1
    const-string v2, "FMRecorder"

    const-string v4, "addCurrentRecordingToMediaDB: -> insert data"

    invoke-static {v2, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/FMRadio/FMRecorder$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v4, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v19

    .line 536
    const-string v2, "FMRecorder"

    const-string v4, "addCurrentRecordingToMediaDB: <- insert data"

    invoke-static {v2, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    if-eqz v19, :cond_0

    .line 538
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v28

    goto :goto_0

    .line 543
    :catchall_0
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 544
    const/4 v11, 0x0

    throw v2

    .line 552
    :cond_3
    const-string v2, "FMRecorder"

    const-string v4, "addCurrentRecordingToMediaDB: -> query playlist"

    invoke-static {v2, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/FMRadio/FMRecorder$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "external"

    invoke-static {v4}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const-string v5, "name=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v32, "FM Recordings"

    aput-object v32, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 558
    .local v26, playlistCursor:Landroid/database/Cursor;
    const-string v2, "FMRecorder"

    const-string v4, "addCurrentRecordingToMediaDB: <- query playlist"

    invoke-static {v2, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const/16 v27, -0x1

    .line 562
    .local v27, playlistId:I
    if-eqz v26, :cond_5

    .line 563
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v20

    .line 564
    .local v20, listCount:I
    if-lez v20, :cond_4

    .line 565
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToFirst()Z

    .line 566
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 568
    :cond_4
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 571
    .end local v20           #listCount:I
    :cond_5
    const/4 v2, -0x1

    move/from16 v0, v27

    if-ne v0, v2, :cond_6

    .line 573
    new-instance v15, Landroid/content/ContentValues;

    .end local v15           #cv:Landroid/content/ContentValues;
    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 574
    .restart local v15       #cv:Landroid/content/ContentValues;
    const-string v2, "name"

    const-string v4, "FM Recordings"

    invoke-virtual {v15, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const-string v2, "FMRecorder"

    const-string v4, "addCurrentRecordingToMediaDB: -> insert playlist"

    invoke-static {v2, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/FMRadio/FMRecorder$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "external"

    invoke-static {v4}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v25

    .line 577
    .local v25, newPlaylistUri:Landroid/net/Uri;
    const-string v2, "FMRecorder"

    const-string v4, "addCurrentRecordingToMediaDB: <- insert playlist"

    invoke-static {v2, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    invoke-virtual/range {v25 .. v25}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v27

    .line 581
    .end local v25           #newPlaylistUri:Landroid/net/Uri;
    :cond_6
    const-string v2, "external"

    move/from16 v0, v27

    int-to-long v4, v0

    invoke-static {v2, v4, v5}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    .line 582
    .local v3, membersUri:Landroid/net/Uri;
    if-eqz v9, :cond_8

    .line 585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/FMRadio/FMRecorder$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "audio_id"

    aput-object v6, v4, v5

    const-string v5, "audio_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v32

    aput-object v32, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 590
    .local v12, cItemInMembers:Landroid/database/Cursor;
    if-eqz v12, :cond_8

    .line 592
    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_7

    .line 597
    const-string v2, "FMRecorder"

    const-string v4, "new item already in playlists.members table"

    invoke-static {v2, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const-string v2, "FMRecorder"

    const-string v4, "<< addCurrentRecordingToMediaDB"

    invoke-static {v2, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 603
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 604
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 603
    :cond_7
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 604
    const/4 v12, 0x0

    .line 610
    .end local v12           #cItemInMembers:Landroid/database/Cursor;
    :cond_8
    const-string v2, "FMRecorder"

    const-string v4, "addCurrentRecordingToMediaDB: -> query members"

    invoke-static {v2, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/FMRadio/FMRecorder$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "count(*)"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 617
    .local v22, membersCursor:Landroid/database/Cursor;
    const-string v2, "FMRecorder"

    const-string v4, "addCurrentRecordingToMediaDB: <- query members"

    invoke-static {v2, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    if-eqz v22, :cond_a

    .line 619
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v21

    .line 621
    .local v21, membersCount:I
    if-lez v21, :cond_9

    .line 622
    :try_start_3
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    .line 623
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 624
    .local v10, base:I
    const-string v2, "FMRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "members base="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 626
    .end local v15           #cv:Landroid/content/ContentValues;
    .local v16, cv:Landroid/content/ContentValues;
    :try_start_4
    const-string v2, "play_order"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 627
    const-string v2, "audio_id"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 628
    const-string v2, "FMRecorder"

    const-string v4, "addCurrentRecordingToMediaDB: -> insert to members"

    invoke-static {v2, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/FMRadio/FMRecorder$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 630
    const-string v2, "FMRecorder"

    const-string v4, "addCurrentRecordingToMediaDB: <- insert to members"

    invoke-static {v2, v4}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v15, v16

    .line 634
    .end local v10           #base:I
    .end local v16           #cv:Landroid/content/ContentValues;
    .restart local v15       #cv:Landroid/content/ContentValues;
    :cond_9
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 635
    const/16 v22, 0x0

    .line 642
    .end local v21           #membersCount:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/FMRadio/FMRecorder$1;->this$0:Lcom/mediatek/FMRadio/FMRecorder;

    #getter for: Lcom/mediatek/FMRadio/FMRecorder;->mConnection:Landroid/media/MediaScannerConnection;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRecorder;->access$200(Lcom/mediatek/FMRadio/FMRecorder;)Landroid/media/MediaScannerConnection;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaScannerConnection;->connect()V

    goto/16 :goto_1

    .line 603
    .end local v22           #membersCursor:Landroid/database/Cursor;
    .restart local v12       #cItemInMembers:Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 604
    const/4 v12, 0x0

    throw v2

    .line 634
    .end local v12           #cItemInMembers:Landroid/database/Cursor;
    .restart local v21       #membersCount:I
    .restart local v22       #membersCursor:Landroid/database/Cursor;
    :catchall_2
    move-exception v2

    :goto_2
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 635
    const/16 v22, 0x0

    throw v2

    .line 634
    .end local v15           #cv:Landroid/content/ContentValues;
    .restart local v10       #base:I
    .restart local v16       #cv:Landroid/content/ContentValues;
    :catchall_3
    move-exception v2

    move-object/from16 v15, v16

    .end local v16           #cv:Landroid/content/ContentValues;
    .restart local v15       #cv:Landroid/content/ContentValues;
    goto :goto_2
.end method
