.class Lcom/bumptech/glide/load/resource/bitmap/d0$a;
.super Ljava/lang/Object;
.source "StreamBitmapDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/bitmap/o$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/resource/bitmap/z;

.field private final b:Lcom/bumptech/glide/util/e;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/resource/bitmap/z;Lcom/bumptech/glide/util/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/d0$a;->a:Lcom/bumptech/glide/load/resource/bitmap/z;

    .line 3
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/d0$a;->b:Lcom/bumptech/glide/util/e;

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/bitmap_recycle/e;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/d0$a;->b:Lcom/bumptech/glide/util/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/e;->b()Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p1, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/e;->d(Landroid/graphics/Bitmap;)V

    .line 3
    :cond_0
    throw v0

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/d0$a;->a:Lcom/bumptech/glide/load/resource/bitmap/z;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/z;->b()V

    return-void
.end method
