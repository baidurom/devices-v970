.class public Lcom/mediatek/FMRadio/FMRadioFavorite;
.super Landroid/app/Activity;
.source "FMRadioFavorite.java"


# static fields
.field public static final ACTIVITY_RESULT:Ljava/lang/String; = "ACTIVITY_RESULT"

.field private static final CONTMENU_ID_ADD:I = 0x3

.field private static final CONTMENU_ID_DELETE:I = 0x2

.field private static final CONTMENU_ID_EDIT:I = 0x1

.field private static final DLGID_ADD_EDIT_STATION:I = 0x1

.field private static final DLGID_DELETE_CONFIRM:I = 0x2

.field private static final FM_SAVE_INSTANCE_STATE_FAVORITE_FREQ:Ljava/lang/String; = "FM_SAVE_INSTANCE_STATE_FAVORITE_FREQ"

.field private static final FM_SAVE_INSTANCE_STATE_FAVORITE_NAME:Ljava/lang/String; = "FM_SAVE_INSTANCE_STATE_FAVORITE_NAME"

#the value of this static final field might be set in the static constructor
.field public static final IS_CMCC:Z = false

.field private static final LV_CAPACITY:I = 0x400

.field private static final LV_COLUMN_STATION_FREQ:Ljava/lang/String; = "STATION_FREQ"

.field private static final LV_COLUMN_STATION_NAME:Ljava/lang/String; = "STATION_NAME"

.field private static final LV_COLUMN_STATION_TYPE:Ljava/lang/String; = "STATION_TYPE"

.field private static final LV_COLUMN_VALUE_FREQ:Ljava/lang/String; = "STATION_FREQ_VALUE"

.field private static final MAX_STATION_FREQUENCY_LENGTH:I = 0x5

.field private static final MAX_STATION_NAME_LENGTH:I = 0xf

.field public static final OP:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "FMRadioFavorite"


# instance fields
.field filter:Landroid/text/InputFilter;

.field private mCurrentStationName:Ljava/lang/String;

.field private mDialogAdd:Landroid/app/AlertDialog;

.field private mDialogEdit:Landroid/app/AlertDialog;

.field private mDlgStationFreq:I

.field private mDlgStationName:Ljava/lang/String;

.field private mListStations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLvFavorites:Landroid/widget/ListView;

.field private mPosition:I

.field private mSimpleAdapter:Landroid/widget/SimpleAdapter;

.field private mStationCount:I

.field private mStationOperation:I

.field private mStationType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 77
    const-string v0, "ro.operator.optr"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/FMRadio/FMRadioFavorite;->OP:Ljava/lang/String;

    .line 78
    const-string v0, "OP01"

    sget-object v1, Lcom/mediatek/FMRadio/FMRadioFavorite;->OP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/FMRadio/FMRadioFavorite;->IS_CMCC:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 97
    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mLvFavorites:Landroid/widget/ListView;

    .line 98
    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mSimpleAdapter:Landroid/widget/SimpleAdapter;

    .line 99
    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;

    .line 100
    iput v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mStationCount:I

    .line 105
    iput v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mPosition:I

    .line 106
    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;

    .line 107
    iput v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationFreq:I

    .line 108
    iput v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mStationType:I

    .line 109
    iput v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mStationOperation:I

    .line 110
    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDialogAdd:Landroid/app/AlertDialog;

    .line 111
    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDialogEdit:Landroid/app/AlertDialog;

    .line 112
    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mCurrentStationName:Ljava/lang/String;

    .line 462
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioFavorite$10;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioFavorite$10;-><init>(Lcom/mediatek/FMRadio/FMRadioFavorite;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->filter:Landroid/text/InputFilter;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/FMRadio/FMRadioFavorite;II)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getProjectString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/FMRadio/FMRadioFavorite;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getDeleteFavoriteIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/mediatek/FMRadio/FMRadioFavorite;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getDeleteSearchIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/mediatek/FMRadio/FMRadioFavorite;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getInsertSearchIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/FMRadio/FMRadioFavorite;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDialogAdd:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/FMRadio/FMRadioFavorite;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mediatek/FMRadio/FMRadioFavorite;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mPosition:I

    return v0
.end method

.method static synthetic access$402(Lcom/mediatek/FMRadio/FMRadioFavorite;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mPosition:I

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mCurrentStationName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/FMRadio/FMRadioFavorite;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mCurrentStationName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mediatek/FMRadio/FMRadioFavorite;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationFreq:I

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/FMRadio/FMRadioFavorite;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getInsertIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/mediatek/FMRadio/FMRadioFavorite;)Landroid/widget/SimpleAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mSimpleAdapter:Landroid/widget/SimpleAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/FMRadio/FMRadioFavorite;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDialogEdit:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private getDeleteFavoriteIndex(I)I
    .locals 5
    .parameter "stationFreq"

    .prologue
    .line 579
    const/4 v2, 0x0

    .line 580
    .local v2, iRet:I
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 581
    .local v1, iFavoriteCount:I
    const/4 v0, 0x0

    .line 582
    .local v0, hashmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    if-ge v2, v1, :cond_0

    .line 583
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #hashmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    check-cast v0, Ljava/util/HashMap;

    .line 584
    .restart local v0       #hashmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_1

    .line 592
    :cond_0
    return v2

    .line 587
    :cond_1
    const/4 v4, 0x2

    const-string v3, "STATION_TYPE"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v4, v3, :cond_2

    const-string v3, "STATION_FREQ_VALUE"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 582
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getDeleteSearchIndex(I)I
    .locals 5
    .parameter "stationFreq"

    .prologue
    .line 595
    const/4 v2, 0x0

    .line 596
    .local v2, iRet:I
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 597
    .local v1, iFavoriteCount:I
    const/4 v0, 0x0

    .line 598
    .local v0, hashmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    if-ge v2, v1, :cond_0

    .line 599
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #hashmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    check-cast v0, Ljava/util/HashMap;

    .line 600
    .restart local v0       #hashmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_1

    .line 608
    :cond_0
    return v2

    .line 603
    :cond_1
    const/4 v4, 0x3

    const-string v3, "STATION_TYPE"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v4, v3, :cond_2

    const-string v3, "STATION_FREQ_VALUE"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 598
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getInsertIndex(I)I
    .locals 5
    .parameter "stationFreq"

    .prologue
    .line 547
    const/4 v2, 0x0

    .line 548
    .local v2, iRet:I
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 549
    .local v1, iFavoriteCount:I
    const/4 v0, 0x0

    .line 550
    .local v0, hashmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    if-ge v2, v1, :cond_0

    .line 551
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #hashmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    check-cast v0, Ljava/util/HashMap;

    .line 552
    .restart local v0       #hashmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_1

    .line 560
    :cond_0
    return v2

    .line 555
    :cond_1
    const/4 v4, 0x2

    const-string v3, "STATION_TYPE"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v4, v3, :cond_0

    const-string v3, "STATION_FREQ_VALUE"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v3, p1, :cond_0

    .line 550
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getInsertSearchIndex(I)I
    .locals 5
    .parameter "stationFreq"

    .prologue
    .line 563
    const/4 v2, 0x0

    .line 564
    .local v2, iRet:I
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 565
    .local v1, iFavoriteCount:I
    const/4 v0, 0x0

    .line 566
    .local v0, hashmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    if-ge v2, v1, :cond_0

    .line 567
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #hashmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    check-cast v0, Ljava/util/HashMap;

    .line 568
    .restart local v0       #hashmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_1

    .line 576
    :cond_0
    return v2

    .line 571
    :cond_1
    const/4 v4, 0x2

    const-string v3, "STATION_TYPE"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v4, v3, :cond_2

    const-string v3, "STATION_FREQ_VALUE"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v3, p1, :cond_0

    .line 566
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getProjectString(II)Ljava/lang/String;
    .locals 1
    .parameter "resId1"
    .parameter "resId2"

    .prologue
    .line 664
    sget-boolean v0, Lcom/mediatek/FMRadio/FMRadioFavorite;->IS_CMCC:Z

    if-eqz v0, :cond_0

    .line 665
    invoke-virtual {p0, p1}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 667
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initListView()V
    .locals 13

    .prologue
    const/high16 v12, 0x4120

    const/4 v3, 0x0

    .line 497
    const/4 v7, 0x0

    .line 499
    .local v7, hashmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v1, Lcom/mediatek/FMRadio/FMRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 500
    .local v1, uri:Landroid/net/Uri;
    sget-object v2, Lcom/mediatek/FMRadio/FMRadioStation;->columns:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/FMRadio/FMRadioFavorite;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 501
    .local v6, cur:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 503
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 504
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 505
    const-string v0, "COLUMN_STATION_TYPE"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 506
    .local v9, iType:I
    const/4 v0, 0x2

    if-ne v0, v9, :cond_0

    .line 507
    const-string v0, "COLUMN_STATION_NAME"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 508
    .local v11, sStationName:Ljava/lang/String;
    const-string v0, "COLUMN_STATION_FREQ"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 509
    .local v8, iStation:I
    int-to-float v0, v8

    div-float/2addr v0, v12

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v10

    .line 510
    .local v10, sStationFreq:Ljava/lang/String;
    new-instance v7, Ljava/util/HashMap;

    .end local v7           #hashmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 511
    .restart local v7       #hashmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "STATION_TYPE"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    const-string v0, "STATION_FREQ"

    invoke-virtual {v7, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    const-string v0, "STATION_NAME"

    invoke-virtual {v7, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    const-string v0, "STATION_FREQ_VALUE"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;

    invoke-direct {p0, v8}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getInsertIndex(I)I

    move-result v2

    invoke-virtual {v0, v2, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 516
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mStationCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mStationCount:I

    .line 519
    .end local v8           #iStation:I
    .end local v10           #sStationFreq:Ljava/lang/String;
    .end local v11           #sStationName:Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 523
    .end local v9           #iType:I
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 524
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 525
    const-string v0, "COLUMN_STATION_TYPE"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 526
    .restart local v9       #iType:I
    const/4 v0, 0x3

    if-ne v0, v9, :cond_2

    .line 527
    const-string v0, "COLUMN_STATION_NAME"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 528
    .restart local v11       #sStationName:Ljava/lang/String;
    const-string v0, "COLUMN_STATION_FREQ"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 529
    .restart local v8       #iStation:I
    int-to-float v0, v8

    div-float/2addr v0, v12

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v10

    .line 530
    .restart local v10       #sStationFreq:Ljava/lang/String;
    new-instance v7, Ljava/util/HashMap;

    .end local v7           #hashmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 531
    .restart local v7       #hashmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "STATION_TYPE"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    const-string v0, "STATION_FREQ"

    invoke-virtual {v7, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    const-string v0, "STATION_NAME"

    invoke-virtual {v7, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    const-string v0, "STATION_FREQ_VALUE"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;

    invoke-direct {p0, v8}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getInsertSearchIndex(I)I

    move-result v2

    invoke-virtual {v0, v2, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 536
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mStationCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mStationCount:I

    .line 539
    .end local v8           #iStation:I
    .end local v10           #sStationFreq:Ljava/lang/String;
    .end local v11           #sStationName:Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 543
    .end local v9           #iType:I
    :cond_3
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mSimpleAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 544
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 650
    const-string v0, "FMRadioFavorite"

    const-string v1, ">>> FMRadioFavorite.onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 652
    const-string v0, "FMRadioFavorite"

    const-string v1, "<<< FMRadioFavorite.onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .parameter "item"

    .prologue
    .line 201
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v8

    check-cast v8, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v8, v8, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v8, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mPosition:I

    .line 202
    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;

    iget v9, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mPosition:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 203
    .local v3, hashmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "STATION_NAME"

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;

    .line 204
    const-string v8, "STATION_FREQ_VALUE"

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationFreq:I

    .line 205
    const-string v8, "STATION_TYPE"

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mStationType:I

    .line 206
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    iput v8, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mStationOperation:I

    .line 207
    iget v8, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mStationOperation:I

    packed-switch v8, :pswitch_data_0

    .line 454
    const-string v8, "FMRadioFavorite"

    const-string v9, "Error: Invalid menu item."

    invoke-static {v8, v9}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :goto_0
    const/4 v8, 0x0

    return v8

    .line 209
    :pswitch_0
    const/4 v8, 0x2

    invoke-static {p0, v8}, Lcom/mediatek/FMRadio/FMRadioStation;->getStationCount(Landroid/app/Activity;I)I

    move-result v8

    const/4 v9, 0x5

    if-lt v8, v9, :cond_0

    .line 211
    const v8, 0x7f04001b

    const v9, 0x7f04001a

    invoke-direct {p0, v8, v9}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getProjectString(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 213
    :cond_0
    iget v8, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationFreq:I

    const/4 v9, 0x2

    invoke-static {p0, v8, v9}, Lcom/mediatek/FMRadio/FMRadioStation;->isStationExist(Landroid/app/Activity;II)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 215
    const v8, 0x7f04001d

    const v9, 0x7f04001c

    invoke-direct {p0, v8, v9}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getProjectString(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 223
    :cond_1
    const/high16 v8, 0x7f03

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 224
    .local v7, v:Landroid/view/View;
    const v8, 0x7f060002

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 225
    .local v2, editTextStationName:Landroid/widget/EditText;
    const/4 v8, 0x1

    new-array v8, v8, [Landroid/text/InputFilter;

    const/4 v9, 0x0

    new-instance v10, Landroid/text/InputFilter$LengthFilter;

    const/16 v11, 0xf

    invoke-direct {v10, v11}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v10, v8, v9

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 228
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v9, 0x7f04

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f04000e

    new-instance v10, Lcom/mediatek/FMRadio/FMRadioFavorite$5;

    invoke-direct {v10, p0}, Lcom/mediatek/FMRadio/FMRadioFavorite$5;-><init>(Lcom/mediatek/FMRadio/FMRadioFavorite;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f04000f

    new-instance v10, Lcom/mediatek/FMRadio/FMRadioFavorite$4;

    invoke-direct {v10, p0}, Lcom/mediatek/FMRadio/FMRadioFavorite$4;-><init>(Lcom/mediatek/FMRadio/FMRadioFavorite;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDialogAdd:Landroid/app/AlertDialog;

    .line 276
    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDialogAdd:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 277
    const v8, 0x7f060004

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget v9, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationFreq:I

    int-to-float v9, v9

    const/high16 v10, 0x4120

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;

    iget v9, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mPosition:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 280
    .local v5, map:Ljava/util/HashMap;
    const-string v8, "STATION_NAME"

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mCurrentStationName:Ljava/lang/String;

    .line 281
    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mCurrentStationName:Ljava/lang/String;

    if-eqz v8, :cond_2

    const-string v8, ""

    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mCurrentStationName:Ljava/lang/String;

    if-ne v8, v9, :cond_3

    .line 282
    :cond_2
    const v8, 0x7f060002

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f040015

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setHint(I)V

    .line 288
    :goto_1
    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 289
    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 290
    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDialogAdd:Landroid/app/AlertDialog;

    const v9, 0x7f040003

    const v10, 0x7f040002

    invoke-direct {p0, v9, v10}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getProjectString(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 291
    const v8, 0x7f060002

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDialogAdd:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 285
    :cond_3
    const v8, 0x7f060002

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mCurrentStationName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 299
    .end local v2           #editTextStationName:Landroid/widget/EditText;
    .end local v5           #map:Ljava/util/HashMap;
    .end local v7           #v:Landroid/view/View;
    :pswitch_1
    const v8, 0x7f030001

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 300
    .restart local v7       #v:Landroid/view/View;
    const v8, 0x7f060007

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 301
    .restart local v2       #editTextStationName:Landroid/widget/EditText;
    const v8, 0x7f060009

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 302
    .local v1, editTextFrequency:Landroid/widget/EditText;
    const/4 v8, 0x2

    new-array v8, v8, [Landroid/text/InputFilter;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->filter:Landroid/text/InputFilter;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-instance v10, Landroid/text/InputFilter$LengthFilter;

    const/4 v11, 0x5

    invoke-direct {v10, v11}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v10, v8, v9

    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 303
    const/4 v8, 0x1

    new-array v8, v8, [Landroid/text/InputFilter;

    const/4 v9, 0x0

    new-instance v10, Landroid/text/InputFilter$LengthFilter;

    const/16 v11, 0xf

    invoke-direct {v10, v11}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v10, v8, v9

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 307
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v9, 0x7f04

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f04000e

    new-instance v10, Lcom/mediatek/FMRadio/FMRadioFavorite$7;

    invoke-direct {v10, p0}, Lcom/mediatek/FMRadio/FMRadioFavorite$7;-><init>(Lcom/mediatek/FMRadio/FMRadioFavorite;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f04000f

    new-instance v10, Lcom/mediatek/FMRadio/FMRadioFavorite$6;

    invoke-direct {v10, p0}, Lcom/mediatek/FMRadio/FMRadioFavorite$6;-><init>(Lcom/mediatek/FMRadio/FMRadioFavorite;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDialogEdit:Landroid/app/AlertDialog;

    .line 378
    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDialogEdit:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 379
    const v8, 0x7f060009

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget v9, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationFreq:I

    int-to-float v9, v9

    const/high16 v10, 0x4120

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;

    iget v9, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mPosition:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 382
    .restart local v5       #map:Ljava/util/HashMap;
    const-string v8, "STATION_NAME"

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mCurrentStationName:Ljava/lang/String;

    .line 383
    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mCurrentStationName:Ljava/lang/String;

    if-eqz v8, :cond_4

    const-string v8, ""

    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mCurrentStationName:Ljava/lang/String;

    if-ne v8, v9, :cond_5

    .line 384
    :cond_4
    const v8, 0x7f060007

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f040015

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setHint(I)V

    .line 390
    :goto_2
    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 391
    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 393
    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDialogEdit:Landroid/app/AlertDialog;

    const v9, 0x7f040014

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 394
    const v8, 0x7f060007

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    .line 397
    .local v6, text:Landroid/text/Editable;
    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v4

    .line 398
    .local v4, index:I
    invoke-static {v6, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 400
    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDialogEdit:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 387
    .end local v4           #index:I
    .end local v6           #text:Landroid/text/Editable;
    :cond_5
    const v8, 0x7f060007

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mCurrentStationName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 405
    .end local v1           #editTextFrequency:Landroid/widget/EditText;
    .end local v2           #editTextStationName:Landroid/widget/EditText;
    .end local v5           #map:Ljava/util/HashMap;
    .end local v7           #v:Landroid/view/View;
    :pswitch_2
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f040017

    const v10, 0x7f040016

    invoke-direct {p0, v9, v10}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getProjectString(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f040019

    const v10, 0x7f040018

    invoke-direct {p0, v9, v10}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getProjectString(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f04000e

    new-instance v10, Lcom/mediatek/FMRadio/FMRadioFavorite$9;

    invoke-direct {v10, p0}, Lcom/mediatek/FMRadio/FMRadioFavorite$9;-><init>(Lcom/mediatek/FMRadio/FMRadioFavorite;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f04000f

    new-instance v10, Lcom/mediatek/FMRadio/FMRadioFavorite$8;

    invoke-direct {v10, p0}, Lcom/mediatek/FMRadio/FMRadioFavorite$8;-><init>(Lcom/mediatek/FMRadio/FMRadioFavorite;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 450
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    .line 115
    const-string v0, "FMRadioFavorite"

    const-string v1, ">>> FMRadioFavorite.onCreate"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->setVolumeControlStream(I)V

    .line 119
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 120
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->setContentView(I)V

    .line 122
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    .line 123
    .local v6, actionBar:Landroid/app/ActionBar;
    const v0, 0x7f040001

    invoke-virtual {v6, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 124
    invoke-virtual {v6, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 126
    if-eqz p1, :cond_0

    .line 128
    const-string v0, "FM_SAVE_INSTANCE_STATE_FAVORITE_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;

    .line 129
    const-string v0, "FM_SAVE_INSTANCE_STATE_FAVORITE_FREQ"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationFreq:I

    .line 132
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;

    .line 133
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;

    const v3, 0x7f030007

    new-array v4, v8, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "STATION_TYPE"

    aput-object v5, v4, v1

    const-string v1, "STATION_FREQ"

    aput-object v1, v4, v7

    const/4 v1, 0x2

    const-string v5, "STATION_NAME"

    aput-object v5, v4, v1

    new-array v5, v8, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mSimpleAdapter:Landroid/widget/SimpleAdapter;

    .line 140
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mSimpleAdapter:Landroid/widget/SimpleAdapter;

    new-instance v1, Lcom/mediatek/FMRadio/FMRadioFavorite$1;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioFavorite$1;-><init>(Lcom/mediatek/FMRadio/FMRadioFavorite;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 162
    const v0, 0x7f060013

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mLvFavorites:Landroid/widget/ListView;

    .line 163
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mLvFavorites:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mSimpleAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 164
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioFavorite;->initListView()V

    .line 165
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mLvFavorites:Landroid/widget/ListView;

    new-instance v1, Lcom/mediatek/FMRadio/FMRadioFavorite$2;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioFavorite$2;-><init>(Lcom/mediatek/FMRadio/FMRadioFavorite;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mLvFavorites:Landroid/widget/ListView;

    new-instance v1, Lcom/mediatek/FMRadio/FMRadioFavorite$3;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioFavorite$3;-><init>(Lcom/mediatek/FMRadio/FMRadioFavorite;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 197
    const-string v0, "FMRadioFavorite"

    const-string v1, "<<< FMRadioFavorite.onCreate"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void

    .line 133
    nop

    :array_0
    .array-data 0x4
        0x47t 0x0t 0x6t 0x7ft
        0x48t 0x0t 0x6t 0x7ft
        0x49t 0x0t 0x6t 0x7ft
    .end array-data
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 644
    const-string v0, "FMRadioFavorite"

    const-string v1, ">>> FMRadioFavorite.onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 646
    const-string v0, "FMRadioFavorite"

    const-string v1, "<<< FMRadioFavorite.onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 657
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 658
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 659
    const/4 v0, 0x1

    .line 661
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 632
    const-string v0, "FMRadioFavorite"

    const-string v1, ">>> FMRadioFavorite.onPause"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 634
    const-string v0, "FMRadioFavorite"

    const-string v1, "<<< FMRadioFavorite.onPause"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 626
    const-string v0, "FMRadioFavorite"

    const-string v1, ">>> FMRadioFavorite.onResume"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 628
    const-string v0, "FMRadioFavorite"

    const-string v1, "<<< FMRadioFavorite.onResume"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 612
    const-string v0, "FMRadioFavorite"

    const-string v1, ">>> FMRadioFavorite.onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 614
    const-string v0, "FM_SAVE_INSTANCE_STATE_FAVORITE_NAME"

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    const-string v0, "FM_SAVE_INSTANCE_STATE_FAVORITE_FREQ"

    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationFreq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 616
    const-string v0, "FMRadioFavorite"

    const-string v1, "<<< FMRadioFavorite.onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 620
    const-string v0, "FMRadioFavorite"

    const-string v1, ">>> FMRadioFavorite.onStart"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 622
    const-string v0, "FMRadioFavorite"

    const-string v1, "<<< FMRadioFavorite.onStart"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 638
    const-string v0, "FMRadioFavorite"

    const-string v1, ">>> FMRadioFavorite.onStop"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 640
    const-string v0, "FMRadioFavorite"

    const-string v1, "<<< FMRadioFavorite.onStop"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    return-void
.end method
