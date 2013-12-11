.class Lcom/mediatek/FMRadio/FMRadioFavorite$5;
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
    .line 233
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$5;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x2

    .line 235
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$5;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$5;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDialogAdd:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$200(Lcom/mediatek/FMRadio/FMRadioFavorite;)Landroid/app/AlertDialog;

    move-result-object v2

    const v4, 0x7f060002

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$302(Lcom/mediatek/FMRadio/FMRadioFavorite;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$5;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$300(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 237
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$5;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$000(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$5;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mPosition:I
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$400(Lcom/mediatek/FMRadio/FMRadioFavorite;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 238
    .local v1, map:Ljava/util/HashMap;
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$5;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    const-string v2, "STATION_NAME"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    #setter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mCurrentStationName:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$502(Lcom/mediatek/FMRadio/FMRadioFavorite;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$5;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mCurrentStationName:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$500(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, ""

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$5;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mCurrentStationName:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$500(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/lang/String;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 241
    :cond_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$5;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$5;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    const v4, 0x7f040015

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioFavorite;->getString(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$302(Lcom/mediatek/FMRadio/FMRadioFavorite;Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .end local v1           #map:Ljava/util/HashMap;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$5;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$5;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$300(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$5;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationFreq:I
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$600(Lcom/mediatek/FMRadio/FMRadioFavorite;)I

    move-result v4

    invoke-static {v2, v3, v4, v5}, Lcom/mediatek/FMRadio/FMRadioStation;->insertStationToDB(Landroid/app/Activity;Ljava/lang/String;II)V

    .line 253
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$5;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$5;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationFreq:I
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$600(Lcom/mediatek/FMRadio/FMRadioFavorite;)I

    move-result v3

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Lcom/mediatek/FMRadio/FMRadioStation;->deleteStationInDB(Landroid/app/Activity;II)V

    .line 254
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 255
    .local v0, hashmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "STATION_TYPE"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v2, "STATION_FREQ"

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$5;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationFreq:I
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$600(Lcom/mediatek/FMRadio/FMRadioFavorite;)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4120

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v2, "STATION_NAME"

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$5;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$300(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v2, "STATION_FREQ_VALUE"

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$5;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationFreq:I
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$600(Lcom/mediatek/FMRadio/FMRadioFavorite;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$5;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$000(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$5;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mPosition:I
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$400(Lcom/mediatek/FMRadio/FMRadioFavorite;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 261
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$5;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$000(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$5;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$5;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationFreq:I
    invoke-static {v4}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$600(Lcom/mediatek/FMRadio/FMRadioFavorite;)I

    move-result v4

    #calls: Lcom/mediatek/FMRadio/FMRadioFavorite;->getInsertIndex(I)I
    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$700(Lcom/mediatek/FMRadio/FMRadioFavorite;I)I

    move-result v3

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 262
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$5;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mSimpleAdapter:Landroid/widget/SimpleAdapter;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$800(Lcom/mediatek/FMRadio/FMRadioFavorite;)Landroid/widget/SimpleAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 264
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$5;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDialogAdd:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$200(Lcom/mediatek/FMRadio/FMRadioFavorite;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->cancel()V

    .line 265
    return-void

    .line 243
    .end local v0           #hashmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v1       #map:Ljava/util/HashMap;
    :cond_2
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$5;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$5;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mCurrentStationName:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$500(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mDlgStationName:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$302(Lcom/mediatek/FMRadio/FMRadioFavorite;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0
.end method
