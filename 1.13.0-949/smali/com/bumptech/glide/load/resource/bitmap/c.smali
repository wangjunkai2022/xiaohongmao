.class public Lcom/bumptech/glide/load/resource/bitmap/c;
.super Lcom/bumptech/glide/load/resource/drawable/c;
.source "BitmapDrawableResource.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/resource/drawable/c<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;",
        "Lcom/bumptech/glide/load/engine/q;"
    }
.end annotation


# instance fields
.field private final b:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/BitmapDrawable;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/resource/drawable/c;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/c;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/drawable/c;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/util/o;->h(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public initialize()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/drawable/c;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
.end method

.method public recycle()V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/c;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/drawable/c;->a:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/e;->d(Landroid/graphics/Bitmap;)V

    return-void
.end method
