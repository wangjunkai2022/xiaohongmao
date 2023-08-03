.class Lcom/bumptech/glide/integration/webp/decoder/o$a;
.super Lcom/bumptech/glide/request/target/e;
.source "WebpFrameLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/integration/webp/decoder/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/e<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Landroid/os/Handler;

.field final e:I

.field private final f:J

.field private g:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/os/Handler;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/e;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/o$a;->d:Landroid/os/Handler;

    .line 3
    iput p2, p0, Lcom/bumptech/glide/integration/webp/decoder/o$a;->e:I

    .line 4
    iput-wide p3, p0, Lcom/bumptech/glide/integration/webp/decoder/o$a;->f:J

    return-void
.end method


# virtual methods
.method b()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/o$a;->g:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public c(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/transition/f<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/o$a;->g:Landroid/graphics/Bitmap;

    .line 2
    iget-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/o$a;->d:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/bumptech/glide/integration/webp/decoder/o$a;->d:Landroid/os/Handler;

    iget-wide v0, p0, Lcom/bumptech/glide/integration/webp/decoder/o$a;->f:J

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public k(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/o$a;->g:Landroid/graphics/Bitmap;

    return-void
.end method

.method public bridge synthetic q(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/f;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/integration/webp/decoder/o$a;->c(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/f;)V

    return-void
.end method
