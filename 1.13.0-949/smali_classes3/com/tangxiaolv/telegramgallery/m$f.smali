.class public Lcom/tangxiaolv/telegramgallery/m$f;
.super Lcom/tangxiaolv/telegramgallery/o$d0;
.source "PhotoAlbumPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tangxiaolv/telegramgallery/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field private a:[Lcom/tangxiaolv/telegramgallery/Utils/g$k;

.field private b:[Lcom/tangxiaolv/telegramgallery/Utils/g$k;

.field final synthetic c:Lcom/tangxiaolv/telegramgallery/m;


# direct methods
.method public constructor <init>(Lcom/tangxiaolv/telegramgallery/m;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/m$f;->c:Lcom/tangxiaolv/telegramgallery/m;

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/o$d0;-><init>()V

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    .line 3
    new-array v0, p1, [Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/m$f;->a:[Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    .line 4
    new-array v0, p1, [Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/m$f;->b:[Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/m$f;->a:[Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private q()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/m$f;->a:[Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 2
    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/m$f;->a:[Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/m$f;->c:Lcom/tangxiaolv/telegramgallery/m;

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/m;->b()V

    return-void
.end method

.method public d()I
    .locals 1

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/m$f;->q()I

    move-result v0

    return v0
.end method

.method public h()V
    .locals 0

    invoke-super {p0}, Lcom/tangxiaolv/telegramgallery/o$d0;->h()V

    return-void
.end method

.method public k()Z
    .locals 2

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/m$f;->q()I

    move-result v0

    sget v1, Lcom/tangxiaolv/telegramgallery/m;->F:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m(I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/m$f;->c:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/m;->r0(Lcom/tangxiaolv/telegramgallery/m;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/m$f;->a:[Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 3
    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/m$f;->c:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/m;->r0(Lcom/tangxiaolv/telegramgallery/m;)Ljava/util/HashMap;

    move-result-object v1

    iget v2, v0, Lcom/tangxiaolv/telegramgallery/Utils/g$k;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/m$f;->c:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/m;->s0(Lcom/tangxiaolv/telegramgallery/m;)V

    .line 6
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/m$f;->c:Lcom/tangxiaolv/telegramgallery/m;

    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->y()Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public n(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public p(IZ)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/m$f;->a:[Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/m$f;->b:[Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    aget-object v3, v2, p1

    aput-object v3, p2, p1

    .line 2
    aget-object v3, v2, p1

    .line 3
    invoke-static {v2, p1, p2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/m$f;->b:[Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    aput-object v0, p2, p1

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/m$f;->b:[Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/m$f;->a:[Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    aget-object v3, v2, p1

    aput-object v3, p2, p1

    .line 6
    aget-object v3, v2, p1

    .line 7
    invoke-static {v2, p1, p2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget-object p2, p0, Lcom/tangxiaolv/telegramgallery/m$f;->a:[Lcom/tangxiaolv/telegramgallery/Utils/g$k;

    aput-object v0, p2, p1

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/m$f;->c:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/m;->t0(Lcom/tangxiaolv/telegramgallery/m;)Lcom/tangxiaolv/telegramgallery/n;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/tangxiaolv/telegramgallery/n;->z0(Lcom/tangxiaolv/telegramgallery/Utils/g$k;)V

    return-void
.end method
