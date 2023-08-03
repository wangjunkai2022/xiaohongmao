.class Lcom/tangxiaolv/telegramgallery/m$e;
.super Ljava/lang/Object;
.source "PhotoAlbumPickerActivity.java"

# interfaces
.implements Lcom/tangxiaolv/telegramgallery/n$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/m;->z0(Lcom/tangxiaolv/telegramgallery/Utils/g$d;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/m;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/m;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/m$e;->a:Lcom/tangxiaolv/telegramgallery/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/m$e;->a:Lcom/tangxiaolv/telegramgallery/m;

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->T()V

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/m$e;->a:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/m;->b0(Lcom/tangxiaolv/telegramgallery/m;)Lcom/tangxiaolv/telegramgallery/m$h;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tangxiaolv/telegramgallery/m$h;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/m$e;->a:Lcom/tangxiaolv/telegramgallery/m;

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/m;->b()V

    return-void
.end method

.method public c(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/m$e;->a:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/m;->f0(Lcom/tangxiaolv/telegramgallery/m;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/m$e;->a:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/m;->g0(Lcom/tangxiaolv/telegramgallery/m;)[I

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 v1, -0x1

    aput v1, v0, p1

    :cond_0
    return-void
.end method

.method public d(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/m$e;->a:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/m;->f0(Lcom/tangxiaolv/telegramgallery/m;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    return p1
.end method

.method public e()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/m$e;->a:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/m;->g0(Lcom/tangxiaolv/telegramgallery/m;)[I

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/m$e;->a:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/m;->g0(Lcom/tangxiaolv/telegramgallery/m;)[I

    move-result-object v2

    aget v2, v2, v1

    if-gtz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/m$e;->a:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/m;->s0(Lcom/tangxiaolv/telegramgallery/m;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/m$e;->a:Lcom/tangxiaolv/telegramgallery/m;

    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->y()Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 3
    :goto_0
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/m$e;->a:Lcom/tangxiaolv/telegramgallery/m;

    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/f;->T()V

    return-void
.end method

.method public h(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/m$e;->a:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/m;->g0(Lcom/tangxiaolv/telegramgallery/m;)[I

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    aput p2, v0, v1

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/m$e;->a:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/m;->f0(Lcom/tangxiaolv/telegramgallery/m;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
