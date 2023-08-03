.class Lcom/facebook/imagepipeline/cache/f$g;
.super Ljava/lang/Object;
.source "BufferedDiskCache.java"

# interfaces
.implements Lcom/facebook/cache/common/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/cache/f;->x(Lcom/facebook/cache/common/c;Lcom/facebook/imagepipeline/image/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/image/e;

.field final synthetic b:Lcom/facebook/imagepipeline/cache/f;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/image/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$encodedImage"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/f$g;->b:Lcom/facebook/imagepipeline/cache/f;

    iput-object p2, p0, Lcom/facebook/imagepipeline/cache/f$g;->a:Lcom/facebook/imagepipeline/image/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "os"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/f$g;->a:Lcom/facebook/imagepipeline/image/e;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/image/e;->A()Ljava/io/InputStream;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/f$g;->b:Lcom/facebook/imagepipeline/cache/f;

    invoke-static {v1}, Lcom/facebook/imagepipeline/cache/f;->h(Lcom/facebook/imagepipeline/cache/f;)Lcom/facebook/common/memory/j;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/facebook/common/memory/j;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    return-void
.end method
