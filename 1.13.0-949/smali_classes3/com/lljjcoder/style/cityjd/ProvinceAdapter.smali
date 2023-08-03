.class public Lcom/lljjcoder/style/cityjd/ProvinceAdapter;
.super Landroid/widget/BaseAdapter;
.source "ProvinceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lljjcoder/style/cityjd/ProvinceAdapter$Holder;
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field mProList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lljjcoder/bean/ProvinceBean;",
            ">;"
        }
    .end annotation
.end field

.field private provinceIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/lljjcoder/bean/ProvinceBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/lljjcoder/style/cityjd/ProvinceAdapter;->provinceIndex:I

    .line 3
    iput-object p1, p0, Lcom/lljjcoder/style/cityjd/ProvinceAdapter;->context:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/lljjcoder/style/cityjd/ProvinceAdapter;->mProList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/ProvinceAdapter;->mProList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/lljjcoder/bean/ProvinceBean;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/ProvinceAdapter;->mProList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lljjcoder/bean/ProvinceBean;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/lljjcoder/style/cityjd/ProvinceAdapter;->getItem(I)Lcom/lljjcoder/bean/ProvinceBean;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/ProvinceAdapter;->mProList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lljjcoder/bean/ProvinceBean;

    invoke-virtual {p1}, Lcom/lljjcoder/bean/ProvinceBean;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedPosition()I
    .locals 1

    iget v0, p0, Lcom/lljjcoder/style/cityjd/ProvinceAdapter;->provinceIndex:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/lljjcoder/style/citypickerview/R$layout;->pop_jdcitypicker_item:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/lljjcoder/style/cityjd/ProvinceAdapter$Holder;

    invoke-direct {p3, p0}, Lcom/lljjcoder/style/cityjd/ProvinceAdapter$Holder;-><init>(Lcom/lljjcoder/style/cityjd/ProvinceAdapter;)V

    .line 3
    sget v1, Lcom/lljjcoder/style/citypickerview/R$id;->name:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/lljjcoder/style/cityjd/ProvinceAdapter$Holder;->name:Landroid/widget/TextView;

    .line 4
    sget v1, Lcom/lljjcoder/style/citypickerview/R$id;->selectImg:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/lljjcoder/style/cityjd/ProvinceAdapter$Holder;->selectImg:Landroid/widget/ImageView;

    .line 5
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/lljjcoder/style/cityjd/ProvinceAdapter$Holder;

    .line 7
    :goto_0
    invoke-virtual {p0, p1}, Lcom/lljjcoder/style/cityjd/ProvinceAdapter;->getItem(I)Lcom/lljjcoder/bean/ProvinceBean;

    move-result-object p1

    .line 8
    iget-object v1, p3, Lcom/lljjcoder/style/cityjd/ProvinceAdapter$Holder;->name:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/lljjcoder/bean/ProvinceBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget v1, p0, Lcom/lljjcoder/style/cityjd/ProvinceAdapter;->provinceIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/lljjcoder/style/cityjd/ProvinceAdapter;->mProList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lljjcoder/bean/ProvinceBean;

    invoke-virtual {v1}, Lcom/lljjcoder/bean/ProvinceBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lljjcoder/bean/ProvinceBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 10
    :goto_1
    iget-object v1, p3, Lcom/lljjcoder/style/cityjd/ProvinceAdapter$Holder;->name:Landroid/widget/TextView;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 11
    iget-object p3, p3, Lcom/lljjcoder/style/cityjd/ProvinceAdapter$Holder;->selectImg:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object p2
.end method

.method public updateSelectedPosition(I)V
    .locals 0

    iput p1, p0, Lcom/lljjcoder/style/cityjd/ProvinceAdapter;->provinceIndex:I

    return-void
.end method
