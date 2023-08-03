.class public Lcom/lljjcoder/style/citylist/sortlistview/SortAdapter;
.super Landroid/widget/BaseAdapter;
.source "SortAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lljjcoder/style/citylist/sortlistview/SortAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lljjcoder/style/citylist/sortlistview/SortModel;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/lljjcoder/style/citylist/sortlistview/SortModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/lljjcoder/style/citylist/sortlistview/SortAdapter;->mContext:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/lljjcoder/style/citylist/sortlistview/SortAdapter;->list:Ljava/util/List;

    return-void
.end method

.method private getAlpha(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[A-Z]"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const-string p1, "#"

    return-object p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/style/citylist/sortlistview/SortAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/style/citylist/sortlistview/SortAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/lljjcoder/style/citylist/sortlistview/SortAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/lljjcoder/style/citylist/sortlistview/SortAdapter;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lljjcoder/style/citylist/sortlistview/SortModel;

    invoke-virtual {v2}, Lcom/lljjcoder/style/citylist/sortlistview/SortModel;->getSortLetters()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getSectionForPosition(I)I
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/style/citylist/sortlistview/SortAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lljjcoder/style/citylist/sortlistview/SortModel;

    invoke-virtual {p1}, Lcom/lljjcoder/style/citylist/sortlistview/SortModel;->getSortLetters()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/lljjcoder/style/citylist/sortlistview/SortAdapter$ViewHolder;

    invoke-direct {p2}, Lcom/lljjcoder/style/citylist/sortlistview/SortAdapter$ViewHolder;-><init>()V

    .line 2
    iget-object p3, p0, Lcom/lljjcoder/style/citylist/sortlistview/SortAdapter;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget v0, Lcom/lljjcoder/style/citypickerview/R$layout;->sortlistview_item:I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 3
    sget v0, Lcom/lljjcoder/style/citypickerview/R$id;->title:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/lljjcoder/style/citylist/sortlistview/SortAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    .line 4
    sget v0, Lcom/lljjcoder/style/citypickerview/R$id;->catalog:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/lljjcoder/style/citylist/sortlistview/SortAdapter$ViewHolder;->tvLetter:Landroid/widget/TextView;

    .line 5
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/lljjcoder/style/citylist/sortlistview/SortAdapter$ViewHolder;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/lljjcoder/style/citylist/sortlistview/SortAdapter;->list:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/lljjcoder/style/citylist/sortlistview/SortAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lljjcoder/style/citylist/sortlistview/SortModel;

    .line 9
    invoke-virtual {p0, p1}, Lcom/lljjcoder/style/citylist/sortlistview/SortAdapter;->getSectionForPosition(I)I

    move-result v1

    .line 10
    invoke-virtual {p0, v1}, Lcom/lljjcoder/style/citylist/sortlistview/SortAdapter;->getPositionForSection(I)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 11
    iget-object v1, p2, Lcom/lljjcoder/style/citylist/sortlistview/SortAdapter$ViewHolder;->tvLetter:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object v1, p2, Lcom/lljjcoder/style/citylist/sortlistview/SortAdapter$ViewHolder;->tvLetter:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lljjcoder/style/citylist/sortlistview/SortModel;->getSortLetters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 13
    :cond_1
    iget-object v0, p2, Lcom/lljjcoder/style/citylist/sortlistview/SortAdapter$ViewHolder;->tvLetter:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    :goto_1
    iget-object p2, p2, Lcom/lljjcoder/style/citylist/sortlistview/SortAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lljjcoder/style/citylist/sortlistview/SortAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lljjcoder/style/citylist/sortlistview/SortModel;

    invoke-virtual {p1}, Lcom/lljjcoder/style/citylist/sortlistview/SortModel;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-object p3
.end method

.method public updateListView(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lljjcoder/style/citylist/sortlistview/SortModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/lljjcoder/style/citylist/sortlistview/SortAdapter;->list:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
