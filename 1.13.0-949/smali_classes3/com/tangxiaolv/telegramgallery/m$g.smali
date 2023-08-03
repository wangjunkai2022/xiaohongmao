.class Lcom/tangxiaolv/telegramgallery/m$g;
.super Lcom/tangxiaolv/telegramgallery/b;
.source "PhotoAlbumPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tangxiaolv/telegramgallery/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field final synthetic b:Lcom/tangxiaolv/telegramgallery/m;


# direct methods
.method public constructor <init>(Lcom/tangxiaolv/telegramgallery/m;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/m$g;->b:Lcom/tangxiaolv/telegramgallery/m;

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/b;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/m$g;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/m$g;->b:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/m;->h0(Lcom/tangxiaolv/telegramgallery/m;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/m$g;->b:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/m;->c0(Lcom/tangxiaolv/telegramgallery/m;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/m$g;->b:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/m;->k0(Lcom/tangxiaolv/telegramgallery/m;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/m$g;->b:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/m;->k0(Lcom/tangxiaolv/telegramgallery/m;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/m$g;->b:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/m;->j0(Lcom/tangxiaolv/telegramgallery/m;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v1, v0

    :cond_1
    return v1

    .line 4
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/m$g;->b:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/m;->i0(Lcom/tangxiaolv/telegramgallery/m;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/m$g;->b:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/m;->i0(Lcom/tangxiaolv/telegramgallery/m;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/m$g;->b:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/m;->j0(Lcom/tangxiaolv/telegramgallery/m;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v1, v0

    :cond_3
    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/m$g;->b:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/m;->h0(Lcom/tangxiaolv/telegramgallery/m;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/m$g;->b:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/m;->c0(Lcom/tangxiaolv/telegramgallery/m;)I

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/tangxiaolv/telegramgallery/m$g;->getItemViewType(I)I

    move-result p3

    if-nez p3, :cond_6

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lcom/tangxiaolv/telegramgallery/Components/e;

    iget-object p3, p0, Lcom/tangxiaolv/telegramgallery/m$g;->a:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/tangxiaolv/telegramgallery/Components/e;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance p3, Lcom/tangxiaolv/telegramgallery/m$g$a;

    invoke-direct {p3, p0}, Lcom/tangxiaolv/telegramgallery/m$g$a;-><init>(Lcom/tangxiaolv/telegramgallery/m$g;)V

    invoke-virtual {p2, p3}, Lcom/tangxiaolv/telegramgallery/Components/e;->setDelegate(Lcom/tangxiaolv/telegramgallery/Components/e$c;)V

    move-object p3, p2

    goto :goto_0

    .line 4
    :cond_0
    move-object p3, p2

    check-cast p3, Lcom/tangxiaolv/telegramgallery/Components/e;

    move-object v4, p3

    move-object p3, p2

    move-object p2, v4

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/m$g;->b:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/m;->j0(Lcom/tangxiaolv/telegramgallery/m;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/tangxiaolv/telegramgallery/Components/e;->setAlbumsCount(I)V

    const/4 v0, 0x0

    .line 6
    :goto_1
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/m$g;->b:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/m;->j0(Lcom/tangxiaolv/telegramgallery/m;)I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 7
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/m$g;->b:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/m;->j0(Lcom/tangxiaolv/telegramgallery/m;)I

    move-result v1

    mul-int v1, v1, p1

    add-int/2addr v1, v0

    .line 8
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/m$g;->b:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/m;->h0(Lcom/tangxiaolv/telegramgallery/m;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/m$g;->b:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/m;->c0(Lcom/tangxiaolv/telegramgallery/m;)I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 9
    :cond_1
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/m$g;->b:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/m;->k0(Lcom/tangxiaolv/telegramgallery/m;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 10
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/m$g;->b:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/m;->k0(Lcom/tangxiaolv/telegramgallery/m;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    .line 11
    invoke-virtual {p2, v0, v1}, Lcom/tangxiaolv/telegramgallery/Components/e;->c(ILcom/tangxiaolv/telegramgallery/Utils/g$d;)V

    goto :goto_3

    .line 12
    :cond_2
    invoke-virtual {p2, v0, v3}, Lcom/tangxiaolv/telegramgallery/Components/e;->c(ILcom/tangxiaolv/telegramgallery/Utils/g$d;)V

    goto :goto_3

    .line 13
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/m$g;->b:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/m;->i0(Lcom/tangxiaolv/telegramgallery/m;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 14
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/m$g;->b:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/m;->i0(Lcom/tangxiaolv/telegramgallery/m;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    .line 15
    invoke-virtual {p2, v0, v1}, Lcom/tangxiaolv/telegramgallery/Components/e;->c(ILcom/tangxiaolv/telegramgallery/Utils/g$d;)V

    goto :goto_3

    .line 16
    :cond_4
    invoke-virtual {p2, v0, v3}, Lcom/tangxiaolv/telegramgallery/Components/e;->c(ILcom/tangxiaolv/telegramgallery/Utils/g$d;)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 17
    :cond_5
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->requestLayout()V

    move-object p2, p3

    goto :goto_4

    :cond_6
    const/4 p1, 0x1

    if-ne p3, p1, :cond_7

    if-nez p2, :cond_7

    .line 18
    new-instance p2, Lcom/tangxiaolv/telegramgallery/Components/g;

    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/m$g;->a:Landroid/content/Context;

    iget-object p3, p0, Lcom/tangxiaolv/telegramgallery/m$g;->b:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {p3}, Lcom/tangxiaolv/telegramgallery/m;->m0(Lcom/tangxiaolv/telegramgallery/m;)Z

    move-result p3

    invoke-direct {p2, p1, p3}, Lcom/tangxiaolv/telegramgallery/Components/g;-><init>(Landroid/content/Context;Z)V

    .line 19
    new-instance p1, Lcom/tangxiaolv/telegramgallery/m$g$b;

    invoke-direct {p1, p0}, Lcom/tangxiaolv/telegramgallery/m$g$b;-><init>(Lcom/tangxiaolv/telegramgallery/m$g;)V

    .line 20
    invoke-virtual {p2, p1}, Lcom/tangxiaolv/telegramgallery/Components/g;->setDelegate(Lcom/tangxiaolv/telegramgallery/Components/g$c;)V

    :cond_7
    :goto_4
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 2

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/m$g;->b:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/m;->h0(Lcom/tangxiaolv/telegramgallery/m;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/m$g;->b:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/m;->c0(Lcom/tangxiaolv/telegramgallery/m;)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lcom/tangxiaolv/telegramgallery/m$g;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
