.class Lcom/mediatek/FMRadio/FMRadioFavorite$7;
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
    .line 312
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$7;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v12, 0x3

    const/high16 v11, 0x4120

    const/4 v10, 0x2

    .line 314
    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$7;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$7;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDialogEdit:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$900(Lcom/mediatek/FMRadio/FMRadioFavorite;)Landroid/app/AlertDialog;

    move-result-object v7

    const v9, 0x7f060007

    invoke-virtual {v7, v9}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    #setter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;
    invoke-static {v8, v7}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$302(Lcom/mediatek/FMRadio/FMRadioFavorite;Ljava/lang/String;)Ljava/lang/String;

    .line 315
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$7;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDialogEdit:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$900(Lcom/mediatek/FMRadio/FMRadioFavorite;)Landroid/app/AlertDialog;

    move-result-object v7

    const v8, 0x7f060009

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 316
    .local v5, newStationFreqStr:Ljava/lang/String;
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$7;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$300(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 317
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$7;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$000(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$7;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mPosition:I
    invoke-static {v8}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$400(Lcom/mediatek/FMRadio/FMRadioFavorite;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 318
    .local v2, map:Ljava/util/HashMap;
    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$7;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    const-string v7, "STATION_NAME"

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    #setter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mCurrentStationName:Ljava/lang/String;
    invoke-static {v8, v7}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$502(Lcom/mediatek/FMRadio/FMRadioFavorite;Ljava/lang/String;)Ljava/lang/String;

    .line 319
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$7;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mCurrentStationName:Ljava/lang/String;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$500(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string v7, ""

    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$7;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mCurrentStationName:Ljava/lang/String;
    invoke-static {v8}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$500(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/lang/String;

    move-result-object v8

    if-ne v7, v8, :cond_4

    .line 320
    :cond_0
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$7;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$7;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    const v9, 0x7f040015

    invoke-virtual {v8, v9}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getString(I)Ljava/lang/String;

    move-result-object v8

    #setter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$302(Lcom/mediatek/FMRadio/FMRadioFavorite;Ljava/lang/String;)Ljava/lang/String;

    .line 325
    .end local v2           #map:Ljava/util/HashMap;
    :cond_1
    :goto_0
    const/4 v4, 0x0

    .line 327
    .local v4, newStationFreq:F
    :try_start_0
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 331
    :goto_1
    mul-float v6, v4, v11

    .line 332
    .local v6, tempStaionFreq:F
    mul-float v7, v4, v11

    float-to-int v3, v7

    .line 333
    .local v3, newStation:I
    const/16 v7, 0x36b

    if-lt v3, v7, :cond_7

    const/16 v7, 0x438

    if-gt v3, v7, :cond_7

    int-to-float v7, v3

    sub-float v7, v6, v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_7

    .line 336
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$7;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-static {v7, v3, v10}, Lcom/mediatek/FMRadio/FMRadioStation;->isStationExist(Landroid/app/Activity;II)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$7;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationFreq:I
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$600(Lcom/mediatek/FMRadio/FMRadioFavorite;)I

    move-result v7

    if-eq v3, v7, :cond_5

    .line 337
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$7;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-static {v7, v3, v10}, Lcom/mediatek/FMRadio/FMRadioStation;->deleteStationInDB(Landroid/app/Activity;II)V

    .line 338
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$7;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$000(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$7;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #calls: Lcom/mediatek/FMRadio/FMRadioFavorite;->getDeleteFavoriteIndex(I)I
    invoke-static {v8, v3}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1000(Lcom/mediatek/FMRadio/FMRadioFavorite;I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 339
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$7;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationFreq:I
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$600(Lcom/mediatek/FMRadio/FMRadioFavorite;)I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 340
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$7;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$7;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mPosition:I
    invoke-static {v8}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$400(Lcom/mediatek/FMRadio/FMRadioFavorite;)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    #setter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mPosition:I
    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$402(Lcom/mediatek/FMRadio/FMRadioFavorite;I)I

    .line 346
    :cond_2
    :goto_2
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$7;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$7;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;
    invoke-static {v8}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$300(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$7;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationFreq:I
    invoke-static {v9}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$600(Lcom/mediatek/FMRadio/FMRadioFavorite;)I

    move-result v9

    invoke-static {v7, v8, v9, v3, v10}, Lcom/mediatek/FMRadio/FMRadioStation;->updateStationToDB(Landroid/app/Activity;Ljava/lang/String;III)V

    .line 348
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 349
    .local v1, hashmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "STATION_TYPE"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const-string v7, "."

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 351
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 355
    :cond_3
    :goto_3
    const-string v7, "STATION_FREQ"

    invoke-virtual {v1, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string v7, "STATION_NAME"

    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$7;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;
    invoke-static {v8}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$300(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string v7, "STATION_FREQ_VALUE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$7;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$000(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$7;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mPosition:I
    invoke-static {v8}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$400(Lcom/mediatek/FMRadio/FMRadioFavorite;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 360
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$7;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$000(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$7;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #calls: Lcom/mediatek/FMRadio/FMRadioFavorite;->getInsertIndex(I)I
    invoke-static {v8, v3}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$700(Lcom/mediatek/FMRadio/FMRadioFavorite;I)I

    move-result v8

    invoke-virtual {v7, v8, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 361
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$7;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mSimpleAdapter:Landroid/widget/SimpleAdapter;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$800(Lcom/mediatek/FMRadio/FMRadioFavorite;)Landroid/widget/SimpleAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 366
    .end local v1           #hashmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_4
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$7;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDialogEdit:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$900(Lcom/mediatek/FMRadio/FMRadioFavorite;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->cancel()V

    .line 367
    return-void

    .line 322
    .end local v3           #newStation:I
    .end local v4           #newStationFreq:F
    .end local v6           #tempStaionFreq:F
    .restart local v2       #map:Ljava/util/HashMap;
    :cond_4
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$7;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$7;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mCurrentStationName:Ljava/lang/String;
    invoke-static {v8}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$500(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/lang/String;

    move-result-object v8

    #setter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$302(Lcom/mediatek/FMRadio/FMRadioFavorite;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 328
    .end local v2           #map:Ljava/util/HashMap;
    .restart local v4       #newStationFreq:F
    :catch_0
    move-exception v0

    .line 329
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 342
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #newStation:I
    .restart local v6       #tempStaionFreq:F
    :cond_5
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$7;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-static {v7, v3, v12}, Lcom/mediatek/FMRadio/FMRadioStation;->isStationExist(Landroid/app/Activity;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 343
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$7;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-static {v7, v3, v12}, Lcom/mediatek/FMRadio/FMRadioStation;->deleteStationInDB(Landroid/app/Activity;II)V

    .line 344
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$7;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$000(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$7;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #calls: Lcom/mediatek/FMRadio/FMRadioFavorite;->getDeleteSearchIndex(I)I
    invoke-static {v8, v3}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$1100(Lcom/mediatek/FMRadio/FMRadioFavorite;I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    .line 352
    .restart local v1       #hashmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6
    const-string v7, "."

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 353
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 364
    .end local v1           #hashmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_7
    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$7;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-virtual {v7}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f040024

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_4
.end method
