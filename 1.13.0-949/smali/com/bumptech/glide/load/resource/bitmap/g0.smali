.class public Lcom/bumptech/glide/load/resource/bitmap/g0;
.super Lcom/bumptech/glide/load/resource/bitmap/h0;
.source "VideoBitmapDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/resource/bitmap/h0<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/c;->e(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/c;->h()Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/g0;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/e;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/e;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/h0$g;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/h0$g;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/resource/bitmap/h0;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/e;Lcom/bumptech/glide/load/resource/bitmap/h0$f;)V

    return-void
.end method
