.class interface abstract Lcom/bumptech/glide/load/resource/bitmap/v;
.super Ljava/lang/Object;
.source "ImageReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/v$e;,
        Lcom/bumptech/glide/load/resource/bitmap/v$d;,
        Lcom/bumptech/glide/load/resource/bitmap/v$b;,
        Lcom/bumptech/glide/load/resource/bitmap/v$c;,
        Lcom/bumptech/glide/load/resource/bitmap/v$a;
    }
.end annotation


# virtual methods
.method public abstract a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b()V
.end method

.method public abstract c()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract d()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
