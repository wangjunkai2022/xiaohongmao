.class Lcom/bumptech/glide/load/engine/bitmap_recycle/p$b;
.super Lcom/bumptech/glide/load/engine/bitmap_recycle/d;
.source "SizeStrategy.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/bitmap_recycle/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/d<",
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/p$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a()Lcom/bumptech/glide/load/engine/bitmap_recycle/m;
    .locals 1

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/p$b;->d()Lcom/bumptech/glide/load/engine/bitmap_recycle/p$a;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lcom/bumptech/glide/load/engine/bitmap_recycle/p$a;
    .locals 1

    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/p$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/p$a;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/p$b;)V

    return-object v0
.end method

.method public e(I)Lcom/bumptech/glide/load/engine/bitmap_recycle/p$a;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/d;->b()Lcom/bumptech/glide/load/engine/bitmap_recycle/m;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/p$a;

    .line 2
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/p$a;->b(I)V

    return-object v0
.end method
