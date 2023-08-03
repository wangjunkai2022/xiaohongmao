.class public Lcom/bumptech/glide/integration/webp/decoder/m;
.super Lcom/bumptech/glide/load/resource/drawable/c;
.source "WebpDrawableResource.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/resource/drawable/c<",
        "Lcom/bumptech/glide/integration/webp/decoder/k;",
        ">;",
        "Lcom/bumptech/glide/load/engine/q;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/integration/webp/decoder/k;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/resource/drawable/c;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/bumptech/glide/integration/webp/decoder/k;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/bumptech/glide/integration/webp/decoder/k;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/drawable/c;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/bumptech/glide/integration/webp/decoder/k;

    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/k;->l()I

    move-result v0

    return v0
.end method

.method public initialize()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/drawable/c;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/bumptech/glide/integration/webp/decoder/k;

    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/k;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
.end method

.method public recycle()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/drawable/c;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/bumptech/glide/integration/webp/decoder/k;

    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/k;->stop()V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/drawable/c;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/bumptech/glide/integration/webp/decoder/k;

    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/k;->o()V

    return-void
.end method
