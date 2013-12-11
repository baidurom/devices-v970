.class Lcom/mediatek/FMRadio/FMRadioFavorite$3;
.super Ljava/lang/Object;
.source "FMRadioFavorite.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


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
    .line 179
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$3;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v5, 0x3

    const/4 v6, 0x0

    .line 181
    const v2, 0x7f040006

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 182
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$3;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    #getter for: Lcom/mediatek/FMRadio/FMRadioFavorite;->mListStations:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$000(Lcom/mediatek/FMRadio/FMRadioFavorite;)Ljava/util/ArrayList;

    move-result-object v2

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    iget v3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 183
    .local v0, hashmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "STATION_TYPE"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 184
    .local v1, iType:I
    if-ne v5, v1, :cond_0

    .line 186
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$3;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    const v3, 0x7f040003

    const v4, 0x7f040002

    #calls: Lcom/mediatek/FMRadio/FMRadioFavorite;->getProjectString(II)Ljava/lang/String;
    invoke-static {v2, v3, v4}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$100(Lcom/mediatek/FMRadio/FMRadioFavorite;II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v6, v5, v6, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 193
    :goto_0
    return-void

    .line 190
    :cond_0
    const/4 v2, 0x1

    const v3, 0x7f040007

    invoke-interface {p1, v6, v2, v6, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 191
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioFavorite$3;->this$0:Lcom/mediatek/FMRadio/FMRadioFavorite;

    const v4, 0x7f040009

    const v5, 0x7f040008

    #calls: Lcom/mediatek/FMRadio/FMRadioFavorite;->getProjectString(II)Ljava/lang/String;
    invoke-static {v3, v4, v5}, Lcom/mediatek/FMRadio/FMRadioFavorite;->access$100(Lcom/mediatek/FMRadio/FMRadioFavorite;II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v6, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0
.end method
