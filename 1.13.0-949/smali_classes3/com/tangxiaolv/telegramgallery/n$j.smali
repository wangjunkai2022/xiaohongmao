.class Lcom/tangxiaolv/telegramgallery/n$j;
.super Lcom/tangxiaolv/telegramgallery/b;
.source "PhotoPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tangxiaolv/telegramgallery/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "j"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field final synthetic b:Lcom/tangxiaolv/telegramgallery/n;


# direct methods
.method public constructor <init>(Lcom/tangxiaolv/telegramgallery/n;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/b;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/n$j;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/n;->c0(Lcom/tangxiaolv/telegramgallery/n;)Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCount()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/n;->c0(Lcom/tangxiaolv/telegramgallery/n;)Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    move-result-object v0

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/n;->m0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/n;->n0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/n;->o0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/n;->f0(Lcom/tangxiaolv/telegramgallery/n;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/n;->m0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/n;->g0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    add-int/2addr v0, v1

    return v0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/n;->f0(Lcom/tangxiaolv/telegramgallery/n;)I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 7
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/n;->m0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/n;->h0(Lcom/tangxiaolv/telegramgallery/n;)Z

    move-result v2

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/n;->c0(Lcom/tangxiaolv/telegramgallery/n;)Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    move-result-object v0

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/Utils/g$d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/n;->c0(Lcom/tangxiaolv/telegramgallery/n;)Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    .line 2
    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/n;->m0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/n;->n0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/n;->o0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    .line 3
    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/n;->m0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/tangxiaolv/telegramgallery/n$j;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_d

    .line 2
    move-object p3, p2

    check-cast p3, Lcom/tangxiaolv/telegramgallery/Components/f;

    const/16 v0, 0x8

    if-nez p2, :cond_1

    .line 3
    new-instance p3, Lcom/tangxiaolv/telegramgallery/Components/f;

    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/n$j;->a:Landroid/content/Context;

    invoke-direct {p3, p2}, Lcom/tangxiaolv/telegramgallery/Components/f;-><init>(Landroid/content/Context;)V

    .line 4
    iget-object p2, p3, Lcom/tangxiaolv/telegramgallery/Components/f;->b:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/tangxiaolv/telegramgallery/n$j$a;

    invoke-direct {v3, p0}, Lcom/tangxiaolv/telegramgallery/n$j$a;-><init>(Lcom/tangxiaolv/telegramgallery/n$j;)V

    invoke-virtual {p2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object p2, p3, Lcom/tangxiaolv/telegramgallery/Components/f;->b:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v3}, Lcom/tangxiaolv/telegramgallery/n;->q0(Lcom/tangxiaolv/telegramgallery/n;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    move-object p2, p3

    .line 6
    :cond_1
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v3}, Lcom/tangxiaolv/telegramgallery/n;->l0(Lcom/tangxiaolv/telegramgallery/n;)I

    move-result v3

    iput v3, p3, Lcom/tangxiaolv/telegramgallery/Components/f;->e:I

    .line 7
    move-object v3, p2

    check-cast v3, Lcom/tangxiaolv/telegramgallery/Components/f;

    iget-object v3, v3, Lcom/tangxiaolv/telegramgallery/Components/f;->a:Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {v3, v2, v1}, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->j(IZ)V

    .line 11
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v4}, Lcom/tangxiaolv/telegramgallery/n;->c0(Lcom/tangxiaolv/telegramgallery/n;)Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    .line 12
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v4}, Lcom/tangxiaolv/telegramgallery/n;->c0(Lcom/tangxiaolv/telegramgallery/n;)Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    move-result-object v4

    iget-object v4, v4, Lcom/tangxiaolv/telegramgallery/Utils/g$d;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    .line 13
    iget-object v4, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->g:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 14
    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/n$j;->a:Landroid/content/Context;

    .line 15
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/tangxiaolv/telegramgallery/q$h;->w2:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 16
    invoke-virtual {v3, v4, v5, v6}, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->i(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 17
    :cond_2
    iget-object v4, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->e:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 18
    iget v4, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->f:I

    invoke-virtual {v3, v4, v1}, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->j(IZ)V

    .line 19
    iget-boolean v4, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->i:Z

    const-string v6, ":"

    if-eqz v4, :cond_3

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vthumb://"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->c:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->e:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/n$j;->a:Landroid/content/Context;

    .line 21
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/tangxiaolv/telegramgallery/q$h;->w2:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 22
    invoke-virtual {v3, v4, v5, v6}, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->i(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 23
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "thumb://"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->c:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->e:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/n$j;->a:Landroid/content/Context;

    .line 24
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/tangxiaolv/telegramgallery/q$h;->w2:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 25
    invoke-virtual {v3, v4, v5, v6}, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->i(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 26
    :cond_4
    sget v4, Lcom/tangxiaolv/telegramgallery/q$h;->w2:I

    invoke-virtual {v3, v4}, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->setImageResource(I)V

    .line 27
    :goto_1
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v4}, Lcom/tangxiaolv/telegramgallery/n;->b0(Lcom/tangxiaolv/telegramgallery/n;)Lcom/tangxiaolv/telegramgallery/n$k;

    move-result-object v4

    iget v5, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->c:I

    invoke-interface {v4, v5}, Lcom/tangxiaolv/telegramgallery/n$k;->d(I)I

    move-result v4

    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    .line 28
    invoke-static {v5}, Lcom/tangxiaolv/telegramgallery/n;->i0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/util/HashMap;

    move-result-object v5

    iget v6, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    .line 29
    invoke-virtual {p3, v4, v5, v2}, Lcom/tangxiaolv/telegramgallery/Components/f;->c(IZZ)V

    .line 30
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/o;->E0()Lcom/tangxiaolv/telegramgallery/o;

    move-result-object v4

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->e:Ljava/lang/String;

    invoke-virtual {v4, p1}, Lcom/tangxiaolv/telegramgallery/o;->I0(Ljava/lang/String;)Z

    move-result p1

    goto/16 :goto_4

    .line 31
    :cond_5
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v4}, Lcom/tangxiaolv/telegramgallery/n;->m0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v4}, Lcom/tangxiaolv/telegramgallery/n;->n0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    .line 32
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v4}, Lcom/tangxiaolv/telegramgallery/n;->o0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tangxiaolv/telegramgallery/Utils/g$l;

    goto :goto_2

    .line 33
    :cond_6
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v4}, Lcom/tangxiaolv/telegramgallery/n;->m0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tangxiaolv/telegramgallery/Utils/g$l;

    .line 34
    :goto_2
    iget-object v4, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$l;->j:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 35
    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/n$j;->a:Landroid/content/Context;

    .line 36
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/tangxiaolv/telegramgallery/q$h;->w2:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 37
    invoke-virtual {v3, v4, v5, v6}, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->i(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 38
    :cond_7
    iget-object v4, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$l;->c:Ljava/lang/String;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8

    .line 39
    iget-object v4, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$l;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/n$j;->a:Landroid/content/Context;

    .line 40
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/tangxiaolv/telegramgallery/q$h;->w2:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 41
    invoke-virtual {v3, v4, v5, v6}, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->i(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 42
    :cond_8
    iget-object v4, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$l;->m:Lcom/tangxiaolv/telegramgallery/TL/b;

    if-eqz v4, :cond_9

    iget-object v4, v4, Lcom/tangxiaolv/telegramgallery/TL/b;->j:Lcom/tangxiaolv/telegramgallery/TL/l;

    if-eqz v4, :cond_9

    .line 43
    iget-object v4, v4, Lcom/tangxiaolv/telegramgallery/TL/l;->d:Lcom/tangxiaolv/telegramgallery/TL/d;

    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/n$j;->a:Landroid/content/Context;

    .line 44
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/tangxiaolv/telegramgallery/q$h;->w2:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 45
    invoke-virtual {v3, v4, v5, v6}, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->d(Lcom/tangxiaolv/telegramgallery/TL/m;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 46
    :cond_9
    sget v4, Lcom/tangxiaolv/telegramgallery/q$h;->w2:I

    invoke-virtual {v3, v4}, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->setImageResource(I)V

    .line 47
    :goto_3
    invoke-virtual {p3, v2, v2}, Lcom/tangxiaolv/telegramgallery/Components/f;->d(ZZ)V

    .line 48
    iget-object v4, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$l;->m:Lcom/tangxiaolv/telegramgallery/TL/b;

    if-eqz v4, :cond_a

    .line 49
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/o;->E0()Lcom/tangxiaolv/telegramgallery/o;

    move-result-object v4

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$l;->m:Lcom/tangxiaolv/telegramgallery/TL/b;

    .line 50
    invoke-static {p1, v1}, Lcom/tangxiaolv/telegramgallery/Utils/d;->G(Lcom/tangxiaolv/telegramgallery/TL/m;Z)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-virtual {v4, p1}, Lcom/tangxiaolv/telegramgallery/o;->I0(Ljava/lang/String;)Z

    move-result p1

    goto :goto_4

    .line 52
    :cond_a
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/o;->E0()Lcom/tangxiaolv/telegramgallery/o;

    move-result-object v4

    iget-object p1, p1, Lcom/tangxiaolv/telegramgallery/Utils/g$l;->b:Ljava/lang/String;

    invoke-virtual {v4, p1}, Lcom/tangxiaolv/telegramgallery/o;->I0(Ljava/lang/String;)Z

    move-result p1

    .line 53
    :goto_4
    invoke-virtual {v3}, Lcom/tangxiaolv/telegramgallery/Components/BackupImageView;->getImageReceiver()Lcom/tangxiaolv/telegramgallery/k;

    move-result-object v3

    xor-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4, v1}, Lcom/tangxiaolv/telegramgallery/k;->q0(ZZ)V

    .line 54
    iget-object p3, p3, Lcom/tangxiaolv/telegramgallery/Components/f;->c:Lcom/tangxiaolv/telegramgallery/Components/b;

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/n;->q0(Lcom/tangxiaolv/telegramgallery/n;)Z

    move-result v1

    if-nez v1, :cond_b

    if-eqz p1, :cond_c

    :cond_b
    const/16 v2, 0x8

    :cond_c
    invoke-virtual {p3, v2}, Lcom/tangxiaolv/telegramgallery/Components/b;->setVisibility(I)V

    goto :goto_5

    :cond_d
    if-ne v0, v1, :cond_f

    if-nez p2, :cond_e

    .line 55
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/n$j;->a:Landroid/content/Context;

    const-string p2, "layout_inflater"

    .line 56
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 57
    sget p2, Lcom/tangxiaolv/telegramgallery/q$l;->F0:I

    invoke-virtual {p1, p2, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    move-object p2, p1

    .line 58
    :cond_e
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 59
    iget-object p3, p0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {p3}, Lcom/tangxiaolv/telegramgallery/n;->l0(Lcom/tangxiaolv/telegramgallery/n;)I

    move-result p3

    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 60
    iget-object p3, p0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {p3}, Lcom/tangxiaolv/telegramgallery/n;->l0(Lcom/tangxiaolv/telegramgallery/n;)I

    move-result p3

    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 61
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_f
    :goto_5
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/n;->c0(Lcom/tangxiaolv/telegramgallery/n;)Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/n;->c0(Lcom/tangxiaolv/telegramgallery/n;)Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    move-result-object v0

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/Utils/g$d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/n;->m0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/n;->n0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/n;->o0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/n;->m0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/n;->c0(Lcom/tangxiaolv/telegramgallery/n;)Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/n;->m0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/n;->n0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/n;->o0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/n$j;->b:Lcom/tangxiaolv/telegramgallery/n;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/n;->m0(Lcom/tangxiaolv/telegramgallery/n;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    return v1
.end method
