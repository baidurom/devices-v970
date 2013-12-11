.class Lcom/mediatek/FMRadio/FMRadioFavorite$2;
.super Ljava/lang/Object;
.source "FMRadioFavorite.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioFavorite;->onCreate(Landroid/os/Bundle;)V
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
    .line 166
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$2;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$2;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$000(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 170
    .local v0, hashmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "STATION_FREQ_VALUE"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 171
    .local v1, iStation:I
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 172
    .local v2, intentResult:Landroid/content/Intent;
    const-string v3, "ACTIVITY_RESULT"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$2;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v2}, Lcom/mediatek/FMRadio/FMRadioFavorite;->setResult(ILandroid/content/Intent;)V

    .line 174
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$2;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-virtual {v3}, Lcom/mediatek/FMRadio/FMRadioFavorite;->finish()V

    .line 175
    return-void
.end method
