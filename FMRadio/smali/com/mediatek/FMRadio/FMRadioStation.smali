.class public Lcom/mediatek/FMRadio/FMRadioStation;
.super Ljava/lang/Object;
.source "FMRadioStation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/FMRadio/FMRadioStation$Station;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioContentProvider"

.field public static final CURRENT_STATION_NAME:Ljava/lang/String; = "FmDfltSttnNm"

.field public static final FIXED_STATION_FREQ:I = 0x3e8

.field public static final HIGHEST_STATION:I = 0x438

.field public static final LOWEST_STATION:I = 0x36b

.field public static final MAX_FAVORITE_STATION_COUNT:I = 0x5

.field public static final RDS_SETTING_FREQ_AF:I = 0x2

.field public static final RDS_SETTING_FREQ_PSRT:I = 0x1

.field public static final RDS_SETTING_FREQ_TA:I = 0x3

.field public static final RDS_SETTING_VALUE_DISABLED:Ljava/lang/String; = "DISABLED"

.field public static final RDS_SETTING_VALUE_ENABLED:Ljava/lang/String; = "ENABLED"

.field public static final STATION:Ljava/lang/String; = "station"

.field public static final STATION_TYPE_CURRENT:I = 0x1

.field public static final STATION_TYPE_FAVORITE:I = 0x2

.field public static final STATION_TYPE_RDS_SETTING:I = 0x4

.field public static final STATION_TYPE_SEARCHED:I = 0x3

.field public static final TAG:Ljava/lang/String; = "FMRadioStation"

.field static final columns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "COLUMN_STATION_NAME"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "COLUMN_STATION_FREQ"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "COLUMN_STATION_TYPE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/FMRadio/FMRadioStation;->columns:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method public static cleanDB(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    .line 310
    const-string v0, "FMRadioStation"

    const-string v1, ">>> FMRadioStation.cleanDB"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/FMRadio/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 312
    const-string v0, "FMRadioStation"

    const-string v1, "<<< FMRadioStation.cleanDB"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-void
.end method

.method public static cleanSearchedStations(Landroid/app/Activity;)V
    .locals 8
    .parameter "activity"

    .prologue
    const/4 v3, 0x0

    .line 316
    const-string v0, "FMRadioStation"

    const-string v2, ">>> FMRadioStation.cleanSearchedStations"

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    sget-object v1, Lcom/mediatek/FMRadio/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 318
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/mediatek/FMRadio/FMRadioStation;->columns:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 320
    .local v6, cur:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 321
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 322
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 323
    const-string v0, "COLUMN_STATION_TYPE"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 324
    .local v7, iStationType:I
    const/4 v0, 0x3

    if-ne v0, v7, :cond_0

    .line 326
    sget-object v0, Lcom/mediatek/FMRadio/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "_id"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 330
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 333
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 337
    .end local v7           #iStationType:I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 338
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 337
    :cond_2
    if-eqz v6, :cond_3

    .line 338
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 341
    :cond_3
    const-string v0, "FMRadioStation"

    const-string v2, "<<< FMRadioStation.cleanSearchedStations"

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    return-void
.end method

.method public static deleteStationInDB(Landroid/app/Activity;II)V
    .locals 10
    .parameter "activity"
    .parameter "stationFreq"
    .parameter "stationType"

    .prologue
    const/4 v3, 0x0

    .line 148
    const-string v0, "FMRadioStation"

    const-string v2, ">>> FMRadioStation.deleteStationInDB"

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v6, 0x0

    .line 150
    .local v6, bFindInDB:Z
    sget-object v1, Lcom/mediatek/FMRadio/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 151
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/mediatek/FMRadio/FMRadioStation;->columns:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 153
    .local v7, cur:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 154
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 155
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    const-string v0, "COLUMN_STATION_FREQ"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 157
    .local v8, iStationFreq:I
    const-string v0, "COLUMN_STATION_TYPE"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 158
    .local v9, iStationType:I
    if-ne v9, p2, :cond_2

    if-ne v8, p1, :cond_2

    .line 160
    const/4 v6, 0x1

    .line 168
    .end local v8           #iStationFreq:I
    .end local v9           #iStationType:I
    :cond_0
    if-eqz v6, :cond_4

    .line 169
    sget-object v0, Lcom/mediatek/FMRadio/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "_id"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 173
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :goto_1
    if-eqz v7, :cond_1

    .line 180
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 183
    :cond_1
    const-string v0, "FMRadioStation"

    const-string v2, "<<< FMRadioStation.deleteStationInDB"

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void

    .line 164
    .restart local v8       #iStationFreq:I
    .restart local v9       #iStationType:I
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 179
    .end local v8           #iStationFreq:I
    .end local v9           #iStationType:I
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 180
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 176
    :cond_4
    :try_start_2
    const-string v0, "FMRadioStation"

    const-string v2, "Error: Can not find the station in data base."

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static getCurrentStation(Landroid/app/Activity;)I
    .locals 10
    .parameter "activity"

    .prologue
    const/4 v3, 0x0

    .line 221
    const-string v0, "FMRadioStation"

    const-string v2, ">>> FMRadioStation.getCurrentStation"

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/16 v8, 0x3e8

    .line 223
    .local v8, iRet:I
    const/4 v6, 0x0

    .line 224
    .local v6, bFindInDB:Z
    sget-object v1, Lcom/mediatek/FMRadio/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 225
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/mediatek/FMRadio/FMRadioStation;->columns:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 227
    .local v7, cur:Landroid/database/Cursor;
    if-eqz v7, :cond_7

    .line 228
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 229
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 230
    const-string v0, "COLUMN_STATION_TYPE"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 231
    .local v9, iStationType:I
    const/4 v0, 0x1

    if-ne v0, v9, :cond_5

    .line 233
    const-string v0, "COLUMN_STATION_FREQ"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 234
    const/16 v0, 0x36b

    if-lt v8, v0, :cond_0

    const/16 v0, 0x438

    if-le v8, v0, :cond_1

    .line 236
    :cond_0
    const/16 v8, 0x3e8

    .line 238
    :cond_1
    const/4 v6, 0x1

    .line 250
    .end local v9           #iStationType:I
    :cond_2
    :goto_1
    if-nez v6, :cond_3

    .line 252
    invoke-static {p0, v8}, Lcom/mediatek/FMRadio/FMRadioStation;->setCurrentStation(Landroid/app/Activity;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :cond_3
    if-eqz v7, :cond_4

    .line 256
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 260
    :cond_4
    const-string v0, "FMRadioStation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioStation.getCurrentStation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return v8

    .line 242
    .restart local v9       #iStationType:I
    :cond_5
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 255
    .end local v9           #iStationType:I
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_6

    .line 256
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 247
    :cond_7
    :try_start_2
    const-string v0, "FMRadioStation"

    const-string v2, "Empty database."

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static getEnableAF(Landroid/app/Activity;)Z
    .locals 11
    .parameter "activity"

    .prologue
    const/4 v3, 0x0

    .line 630
    const-string v0, "FMRadioStation"

    const-string v2, ">>> FMRadioStation.getEnableAF"

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const/4 v6, 0x0

    .line 632
    .local v6, bRet:Z
    sget-object v1, Lcom/mediatek/FMRadio/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 633
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/mediatek/FMRadio/FMRadioStation;->columns:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 635
    .local v7, cur:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 636
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 637
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 638
    const-string v0, "COLUMN_STATION_FREQ"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 639
    .local v8, iStationFreq:I
    const-string v0, "COLUMN_STATION_TYPE"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 640
    .local v9, iStationType:I
    const/4 v0, 0x4

    if-ne v0, v9, :cond_2

    const/4 v0, 0x2

    if-ne v0, v8, :cond_2

    .line 643
    const-string v0, "COLUMN_STATION_NAME"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 644
    .local v10, sStationName:Ljava/lang/String;
    const-string v0, "ENABLED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    const/4 v6, 0x1

    .line 658
    .end local v8           #iStationFreq:I
    .end local v9           #iStationType:I
    .end local v10           #sStationName:Ljava/lang/String;
    :cond_0
    :goto_1
    if-eqz v7, :cond_1

    .line 659
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 663
    :cond_1
    const-string v0, "FMRadioStation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioStation.getEnableAF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    return v6

    .line 650
    .restart local v8       #iStationFreq:I
    .restart local v9       #iStationType:I
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 658
    .end local v8           #iStationFreq:I
    .end local v9           #iStationType:I
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 659
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 655
    :cond_4
    :try_start_2
    const-string v0, "FMRadioStation"

    const-string v2, "Empty database."

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static getEnablePSRT(Landroid/app/Activity;)Z
    .locals 11
    .parameter "activity"

    .prologue
    const/4 v3, 0x0

    .line 593
    const-string v0, "FMRadioStation"

    const-string v2, ">>> FMRadioStation.getEnablePSRT"

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const/4 v6, 0x0

    .line 595
    .local v6, bRet:Z
    sget-object v1, Lcom/mediatek/FMRadio/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 596
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/mediatek/FMRadio/FMRadioStation;->columns:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 598
    .local v7, cur:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 599
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 600
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 601
    const-string v0, "COLUMN_STATION_FREQ"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 602
    .local v8, iStationFreq:I
    const-string v0, "COLUMN_STATION_TYPE"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 603
    .local v9, iStationType:I
    const/4 v0, 0x4

    if-ne v0, v9, :cond_2

    const/4 v0, 0x1

    if-ne v0, v8, :cond_2

    .line 606
    const-string v0, "COLUMN_STATION_NAME"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 607
    .local v10, sStationName:Ljava/lang/String;
    const-string v0, "ENABLED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    const/4 v6, 0x1

    .line 621
    .end local v8           #iStationFreq:I
    .end local v9           #iStationType:I
    .end local v10           #sStationName:Ljava/lang/String;
    :cond_0
    :goto_1
    if-eqz v7, :cond_1

    .line 622
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 625
    :cond_1
    const-string v0, "FMRadioStation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioStation.getEnablePSRT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    return v6

    .line 613
    .restart local v8       #iStationFreq:I
    .restart local v9       #iStationType:I
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 621
    .end local v8           #iStationFreq:I
    .end local v9           #iStationType:I
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 622
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 618
    :cond_4
    :try_start_2
    const-string v0, "FMRadioStation"

    const-string v2, "Empty database."

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static getEnableTA(Landroid/app/Activity;)Z
    .locals 11
    .parameter "activity"

    .prologue
    const/4 v3, 0x0

    .line 668
    const-string v0, "FMRadioStation"

    const-string v2, ">>> FMRadioStation.getEnableTA"

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    const/4 v6, 0x0

    .line 670
    .local v6, bRet:Z
    sget-object v1, Lcom/mediatek/FMRadio/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 671
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/mediatek/FMRadio/FMRadioStation;->columns:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 673
    .local v7, cur:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 674
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 675
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 676
    const-string v0, "COLUMN_STATION_FREQ"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 677
    .local v8, iStationFreq:I
    const-string v0, "COLUMN_STATION_TYPE"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 678
    .local v9, iStationType:I
    const/4 v0, 0x4

    if-ne v0, v9, :cond_2

    const/4 v0, 0x3

    if-ne v0, v8, :cond_2

    .line 681
    const-string v0, "COLUMN_STATION_NAME"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 682
    .local v10, sStationName:Ljava/lang/String;
    const-string v0, "ENABLED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    const/4 v6, 0x1

    .line 696
    .end local v8           #iStationFreq:I
    .end local v9           #iStationType:I
    .end local v10           #sStationName:Ljava/lang/String;
    :cond_0
    :goto_1
    if-eqz v7, :cond_1

    .line 697
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 701
    :cond_1
    const-string v0, "FMRadioStation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioStation.getEnableTA: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    return v6

    .line 688
    .restart local v8       #iStationFreq:I
    .restart local v9       #iStationType:I
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 696
    .end local v8           #iStationFreq:I
    .end local v9           #iStationType:I
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 697
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 693
    :cond_4
    :try_start_2
    const-string v0, "FMRadioStation"

    const-string v2, "Empty database."

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static getStationCount(Landroid/app/Activity;I)I
    .locals 8
    .parameter "activity"
    .parameter "stationType"

    .prologue
    const/4 v3, 0x0

    .line 418
    const-string v0, "FMRadioStation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> FMRadioStation.getStationCount Type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/4 v7, 0x0

    .line 420
    .local v7, iRet:I
    sget-object v1, Lcom/mediatek/FMRadio/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 421
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/mediatek/FMRadio/FMRadioStation;->columns:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 423
    .local v6, cur:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 424
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 425
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 426
    const-string v0, "COLUMN_STATION_TYPE"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 427
    add-int/lit8 v7, v7, 0x1

    .line 430
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 434
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 435
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 434
    :cond_2
    if-eqz v6, :cond_3

    .line 435
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 438
    :cond_3
    const-string v0, "FMRadioStation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioStation.getStationCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return v7
.end method

.method public static getStationName(Landroid/app/Activity;II)Ljava/lang/String;
    .locals 12
    .parameter "activity"
    .parameter "stationFreq"
    .parameter "stationType"

    .prologue
    const/4 v3, 0x0

    .line 373
    const-string v0, "FMRadioStation"

    const-string v2, ">>> FMRadioStation.getStationName"

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v10, 0x0

    .line 375
    .local v10, sRet:Ljava/lang/String;
    const/4 v6, 0x0

    .line 376
    .local v6, IsFindInDB:Z
    sget-object v1, Lcom/mediatek/FMRadio/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 377
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/mediatek/FMRadio/FMRadioStation;->columns:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 379
    .local v7, cur:Landroid/database/Cursor;
    if-eqz v7, :cond_5

    .line 380
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 381
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    const-string v0, "COLUMN_STATION_NAME"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 383
    .local v11, sStationName:Ljava/lang/String;
    const-string v0, "COLUMN_STATION_FREQ"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 384
    .local v8, iStationFreq:I
    const-string v0, "COLUMN_STATION_TYPE"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 385
    .local v9, iStationType:I
    if-ne v9, p2, :cond_3

    if-ne v8, p1, :cond_3

    .line 387
    move-object v10, v11

    .line 388
    const/4 v6, 0x1

    .line 400
    .end local v8           #iStationFreq:I
    .end local v9           #iStationType:I
    .end local v11           #sStationName:Ljava/lang/String;
    :cond_0
    :goto_1
    if-nez v6, :cond_1

    .line 402
    const v0, 0x7f040015

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 405
    :cond_1
    if-eqz v7, :cond_2

    .line 406
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 409
    :cond_2
    const-string v0, "FMRadioStation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioStation.getStationName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return-object v10

    .line 392
    .restart local v8       #iStationFreq:I
    .restart local v9       #iStationType:I
    .restart local v11       #sStationName:Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 405
    .end local v8           #iStationFreq:I
    .end local v9           #iStationType:I
    .end local v11           #sStationName:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 406
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 397
    :cond_5
    :try_start_2
    const-string v0, "FMRadioStation"

    const-string v2, "Empty database."

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static insertStationToDB(Landroid/app/Activity;Ljava/lang/String;II)V
    .locals 3
    .parameter "activity"
    .parameter "stationName"
    .parameter "stationFreq"
    .parameter "stationType"

    .prologue
    .line 94
    const-string v1, "FMRadioStation"

    const-string v2, ">>> FMRadioStation.insertStationToDB"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 96
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "COLUMN_STATION_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "COLUMN_STATION_FREQ"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    const-string v1, "COLUMN_STATION_TYPE"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/mediatek/FMRadio/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 100
    const-string v1, "FMRadioStation"

    const-string v2, "<<< FMRadioStation.insertStationToDB"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method public static isDBEmpty(Landroid/app/Activity;)Z
    .locals 9
    .parameter "activity"

    .prologue
    const/4 v3, 0x0

    .line 345
    const-string v0, "FMRadioStation"

    const-string v2, ">>> FMRadioStation.isDBEmpty"

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v6, 0x1

    .line 347
    .local v6, bRet:Z
    sget-object v1, Lcom/mediatek/FMRadio/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 348
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/mediatek/FMRadio/FMRadioStation;->columns:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 350
    .local v7, cur:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 351
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 352
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    const-string v0, "COLUMN_STATION_TYPE"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 354
    .local v8, iStationType:I
    const/4 v0, 0x1

    if-eq v0, v8, :cond_2

    .line 356
    const/4 v6, 0x0

    .line 364
    .end local v8           #iStationType:I
    :cond_0
    if-eqz v7, :cond_1

    .line 365
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 368
    :cond_1
    const-string v0, "FMRadioStation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioStation.isDBEmpty: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    return v6

    .line 360
    .restart local v8       #iStationType:I
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 364
    .end local v8           #iStationType:I
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 365
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static isFavoriteStation(Landroid/app/Activity;I)Z
    .locals 1
    .parameter "activity"
    .parameter "iStation"

    .prologue
    .line 414
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/mediatek/FMRadio/FMRadioStation;->isStationExist(Landroid/app/Activity;II)Z

    move-result v0

    return v0
.end method

.method public static isStationExist(Landroid/app/Activity;II)Z
    .locals 10
    .parameter "activity"
    .parameter "stationFreq"
    .parameter "stationType"

    .prologue
    const/4 v3, 0x0

    .line 187
    const-string v0, "FMRadioStation"

    const-string v2, ">>> FMRadioStation.isStationExist"

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v6, 0x0

    .line 189
    .local v6, bRet:Z
    sget-object v1, Lcom/mediatek/FMRadio/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 190
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/mediatek/FMRadio/FMRadioStation;->columns:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 192
    .local v7, cur:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 193
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 194
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    const-string v0, "COLUMN_STATION_FREQ"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 196
    .local v8, iStationFreq:I
    const-string v0, "COLUMN_STATION_TYPE"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 197
    .local v9, iStationType:I
    if-ne v9, p2, :cond_2

    if-ne p1, v8, :cond_2

    .line 199
    const/4 v6, 0x1

    .line 211
    .end local v8           #iStationFreq:I
    .end local v9           #iStationType:I
    :cond_0
    :goto_1
    if-eqz v7, :cond_1

    .line 212
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 216
    :cond_1
    const-string v0, "FMRadioStation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioStation.isStationExist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return v6

    .line 203
    .restart local v8       #iStationFreq:I
    .restart local v9       #iStationType:I
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 211
    .end local v8           #iStationFreq:I
    .end local v9           #iStationType:I
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 212
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 208
    :cond_4
    :try_start_2
    const-string v0, "FMRadioStation"

    const-string v2, "Empty database."

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static setCurrentStation(Landroid/app/Activity;I)V
    .locals 11
    .parameter "activity"
    .parameter "iStation"

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 265
    const-string v0, "FMRadioStation"

    const-string v2, ">>> FMRadioStation.setCurrentStation"

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/4 v6, 0x0

    .line 268
    .local v6, bFindInDB:Z
    sget-object v1, Lcom/mediatek/FMRadio/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 269
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/mediatek/FMRadio/FMRadioStation;->columns:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 271
    .local v7, cur:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 272
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 273
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    const-string v0, "COLUMN_STATION_TYPE"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 275
    .local v8, iStationType:I
    if-ne v10, v8, :cond_2

    .line 277
    const/4 v6, 0x1

    .line 285
    .end local v8           #iStationType:I
    :cond_0
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 286
    .local v9, values:Landroid/content/ContentValues;
    const-string v0, "COLUMN_STATION_NAME"

    const-string v2, "FmDfltSttnNm"

    invoke-virtual {v9, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v0, "COLUMN_STATION_FREQ"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 288
    const-string v0, "COLUMN_STATION_TYPE"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 289
    if-eqz v6, :cond_4

    .line 290
    sget-object v0, Lcom/mediatek/FMRadio/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "_id"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 296
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :goto_1
    if-eqz v7, :cond_1

    .line 303
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 306
    :cond_1
    const-string v0, "FMRadioStation"

    const-string v2, "<<< FMRadioStation.setCurrentStation"

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-void

    .line 281
    .end local v9           #values:Landroid/content/ContentValues;
    .restart local v8       #iStationType:I
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 302
    .end local v8           #iStationType:I
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 303
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 299
    .restart local v9       #values:Landroid/content/ContentValues;
    :cond_4
    :try_start_2
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/mediatek/FMRadio/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static setEnableAF(Landroid/app/Activity;Z)V
    .locals 13
    .parameter "activity"
    .parameter "enable"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v3, 0x0

    .line 493
    const-string v0, "FMRadioStation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> FMRadioStation.setEnableAF: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const/4 v6, 0x0

    .line 496
    .local v6, bFindInDB:Z
    sget-object v1, Lcom/mediatek/FMRadio/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 497
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/mediatek/FMRadio/FMRadioStation;->columns:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 499
    .local v7, cur:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 500
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 501
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    const-string v0, "COLUMN_STATION_TYPE"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 503
    .local v9, iStationType:I
    const-string v0, "COLUMN_STATION_FREQ"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 504
    .local v8, iStationFreq:I
    if-ne v12, v9, :cond_2

    if-ne v11, v8, :cond_2

    .line 507
    const/4 v6, 0x1

    .line 515
    .end local v8           #iStationFreq:I
    .end local v9           #iStationType:I
    :cond_0
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 516
    .local v10, values:Landroid/content/ContentValues;
    if-eqz p1, :cond_4

    .line 517
    const-string v0, "COLUMN_STATION_NAME"

    const-string v2, "ENABLED"

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    :goto_1
    const-string v0, "COLUMN_STATION_FREQ"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 523
    const-string v0, "COLUMN_STATION_TYPE"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 524
    if-eqz v6, :cond_5

    .line 525
    sget-object v0, Lcom/mediatek/FMRadio/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "_id"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 529
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    :goto_2
    if-eqz v7, :cond_1

    .line 536
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 539
    :cond_1
    const-string v0, "FMRadioStation"

    const-string v2, "<<< FMRadioStation.setEnableAF"

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    return-void

    .line 511
    .end local v10           #values:Landroid/content/ContentValues;
    .restart local v8       #iStationFreq:I
    .restart local v9       #iStationType:I
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 535
    .end local v8           #iStationFreq:I
    .end local v9           #iStationType:I
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 536
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 520
    .restart local v10       #values:Landroid/content/ContentValues;
    :cond_4
    :try_start_2
    const-string v0, "COLUMN_STATION_NAME"

    const-string v2, "DISABLED"

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 532
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/mediatek/FMRadio/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public static setEnablePSRT(Landroid/app/Activity;Z)V
    .locals 13
    .parameter "activity"
    .parameter "enable"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v3, 0x0

    .line 443
    const-string v0, "FMRadioStation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> FMRadioStation.setEnablePSRT: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const/4 v6, 0x0

    .line 446
    .local v6, bFindInDB:Z
    sget-object v1, Lcom/mediatek/FMRadio/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 447
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/mediatek/FMRadio/FMRadioStation;->columns:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 449
    .local v7, cur:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 450
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 451
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    const-string v0, "COLUMN_STATION_TYPE"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 453
    .local v9, iStationType:I
    const-string v0, "COLUMN_STATION_FREQ"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 454
    .local v8, iStationFreq:I
    if-ne v12, v9, :cond_2

    if-ne v11, v8, :cond_2

    .line 457
    const/4 v6, 0x1

    .line 465
    .end local v8           #iStationFreq:I
    .end local v9           #iStationType:I
    :cond_0
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 466
    .local v10, values:Landroid/content/ContentValues;
    if-eqz p1, :cond_4

    .line 467
    const-string v0, "COLUMN_STATION_NAME"

    const-string v2, "ENABLED"

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    :goto_1
    const-string v0, "COLUMN_STATION_FREQ"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 473
    const-string v0, "COLUMN_STATION_TYPE"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 474
    if-eqz v6, :cond_5

    .line 475
    sget-object v0, Lcom/mediatek/FMRadio/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "_id"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 479
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    :goto_2
    if-eqz v7, :cond_1

    .line 486
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 489
    :cond_1
    const-string v0, "FMRadioStation"

    const-string v2, "<<< FMRadioStation.setEnablePSRT"

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    return-void

    .line 461
    .end local v10           #values:Landroid/content/ContentValues;
    .restart local v8       #iStationFreq:I
    .restart local v9       #iStationType:I
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 485
    .end local v8           #iStationFreq:I
    .end local v9           #iStationType:I
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 486
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 470
    .restart local v10       #values:Landroid/content/ContentValues;
    :cond_4
    :try_start_2
    const-string v0, "COLUMN_STATION_NAME"

    const-string v2, "DISABLED"

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 482
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/mediatek/FMRadio/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public static setEnableTA(Landroid/app/Activity;Z)V
    .locals 13
    .parameter "activity"
    .parameter "enable"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v3, 0x0

    .line 543
    const-string v0, "FMRadioStation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> FMRadioStation.setEnableTA: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const/4 v6, 0x0

    .line 546
    .local v6, bFindInDB:Z
    sget-object v1, Lcom/mediatek/FMRadio/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 547
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/mediatek/FMRadio/FMRadioStation;->columns:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 549
    .local v7, cur:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 550
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 551
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    const-string v0, "COLUMN_STATION_TYPE"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 553
    .local v9, iStationType:I
    const-string v0, "COLUMN_STATION_FREQ"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 554
    .local v8, iStationFreq:I
    if-ne v12, v9, :cond_2

    if-ne v11, v8, :cond_2

    .line 557
    const/4 v6, 0x1

    .line 565
    .end local v8           #iStationFreq:I
    .end local v9           #iStationType:I
    :cond_0
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 566
    .local v10, values:Landroid/content/ContentValues;
    if-eqz p1, :cond_4

    .line 567
    const-string v0, "COLUMN_STATION_NAME"

    const-string v2, "ENABLED"

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    :goto_1
    const-string v0, "COLUMN_STATION_FREQ"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 573
    const-string v0, "COLUMN_STATION_TYPE"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 574
    if-eqz v6, :cond_5

    .line 575
    sget-object v0, Lcom/mediatek/FMRadio/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "_id"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 579
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    :goto_2
    if-eqz v7, :cond_1

    .line 586
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 589
    :cond_1
    const-string v0, "FMRadioStation"

    const-string v2, "<<< FMRadioStation.setEnableTA"

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    return-void

    .line 561
    .end local v10           #values:Landroid/content/ContentValues;
    .restart local v8       #iStationFreq:I
    .restart local v9       #iStationType:I
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 585
    .end local v8           #iStationFreq:I
    .end local v9           #iStationType:I
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 586
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 570
    .restart local v10       #values:Landroid/content/ContentValues;
    :cond_4
    :try_start_2
    const-string v0, "COLUMN_STATION_NAME"

    const-string v2, "DISABLED"

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 582
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/mediatek/FMRadio/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public static updateStationToDB(Landroid/app/Activity;Ljava/lang/String;III)V
    .locals 11
    .parameter "activity"
    .parameter "stationName"
    .parameter "oldStationFreq"
    .parameter "newStationFreq"
    .parameter "stationType"

    .prologue
    const/4 v3, 0x0

    .line 104
    const-string v0, "FMRadioStation"

    const-string v2, ">>> FMRadioStation.updateStationToDB"

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v6, 0x0

    .line 106
    .local v6, bFindInDB:Z
    sget-object v1, Lcom/mediatek/FMRadio/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 107
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/mediatek/FMRadio/FMRadioStation;->columns:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 109
    .local v7, cur:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 110
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 111
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    const-string v0, "COLUMN_STATION_FREQ"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 113
    .local v8, iStationFreq:I
    const-string v0, "COLUMN_STATION_TYPE"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 114
    .local v9, iStationType:I
    if-ne v9, p4, :cond_2

    if-ne v8, p2, :cond_2

    .line 116
    const/4 v6, 0x1

    .line 124
    .end local v8           #iStationFreq:I
    .end local v9           #iStationType:I
    :cond_0
    if-eqz v6, :cond_4

    .line 125
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 126
    .local v10, values:Landroid/content/ContentValues;
    const-string v0, "COLUMN_STATION_NAME"

    invoke-virtual {v10, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v0, "COLUMN_STATION_FREQ"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    const-string v0, "COLUMN_STATION_TYPE"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    sget-object v0, Lcom/mediatek/FMRadio/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "_id"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 133
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    .end local v10           #values:Landroid/content/ContentValues;
    :goto_1
    if-eqz v7, :cond_1

    .line 140
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 144
    :cond_1
    const-string v0, "FMRadioStation"

    const-string v2, "<<< FMRadioStation.updateStationToDB"

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void

    .line 120
    .restart local v8       #iStationFreq:I
    .restart local v9       #iStationType:I
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 139
    .end local v8           #iStationFreq:I
    .end local v9           #iStationType:I
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 140
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 136
    :cond_4
    :try_start_2
    const-string v0, "FMRadioStation"

    const-string v2, "Error: Can not find the station in data base."

    invoke-static {v0, v2}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
