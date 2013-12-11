.class Lcom/mediatek/FMRadio/FMRadioFavorite$9;
.super Ljava/lang/Object;
.source "FMRadioFavorite.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioFavorite;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioFavorite;)V
    .locals 0
    .parameter

    .prologue
    .line 409
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$9;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v7, 0x3

    .line 412
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$9;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$000(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$9;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mPosition:I
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$400(Lcom/mediatek/FMRadio/FMRadioFavorite;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 413
    .local v0, hashmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 414
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "STATION_NAME"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 415
    .local v3, stationName:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v4, "STATION_FREQ_VALUE"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 416
    const-string v4, "STATION_FREQ_VALUE"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 417
    .local v2, stationFreq:I
    const-string v4, "STATION_TYPE"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    const-string v4, "STATION_FREQ"

    int-to-float v5, v2

    const/high16 v6, 0x4120

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    const-string v4, "STATION_NAME"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    const-string v4, "STATION_FREQ_VALUE"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$9;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    const-string v4, "STATION_FREQ_VALUE"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x2

    invoke-static {v5, v4, v6}, Lcom/mediatek/FMRadio/FMRadioStation;->deleteStationInDB(Landroid/app/Activity;II)V

    .line 428
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$9;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-static {v4, v3, v2, v7}, Lcom/mediatek/FMRadio/FMRadioStation;->insertStationToDB(Landroid/app/Activity;Ljava/lang/String;II)V

    .line 431
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$9;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$000(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$9;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mPosition:I
    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$400(Lcom/mediatek/FMRadio/FMRadioFavorite;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 432
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$9;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$000(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$9;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #calls: Lcom/mediatek/FMRadio/FMRadioFavorite;->getInsertSearchIndex(I)I
    invoke-static {v5, v2}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1200(Lcom/mediatek/FMRadio/FMRadioFavorite;I)I

    move-result v5

    invoke-virtual {v4, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 434
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$9;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mSimpleAdapter:Landroid/widget/SimpleAdapter;
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$800(Lcom/mediatek/FMRadio/FMRadioFavorite;)Landroid/widget/SimpleAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 439
    .end local v2           #stationFreq:I
    :goto_0
    return-void

    .line 436
    :cond_0
    const-string v4, "FMRadioFavorite"

    const-string v5, "Error: can\'t find key in hashmap"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/FMRadioLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
