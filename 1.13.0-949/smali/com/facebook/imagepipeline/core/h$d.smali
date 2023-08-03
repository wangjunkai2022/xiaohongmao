.class Lcom/facebook/imagepipeline/core/h$d;
.super Ljava/lang/Object;
.source "ImagePipeline.java"

# interfaces
.implements Lcom/facebook/common/internal/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/core/h;->A(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/common/internal/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/internal/m<",
        "Lcom/facebook/datasource/d<",
        "Lcom/facebook/common/references/a<",
        "Lcom/facebook/common/memory/PooledByteBuffer;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/request/ImageRequest;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/facebook/imagepipeline/core/h;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/core/h;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$callerContext",
            "val$imageRequest"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/h$d;->c:Lcom/facebook/imagepipeline/core/h;

    iput-object p2, p0, Lcom/facebook/imagepipeline/core/h$d;->a:Lcom/facebook/imagepipeline/request/ImageRequest;

    iput-object p3, p0, Lcom/facebook/imagepipeline/core/h$d;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/datasource/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/datasource/d<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/h$d;->c:Lcom/facebook/imagepipeline/core/h;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/h$d;->a:Lcom/facebook/imagepipeline/request/ImageRequest;

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/h$d;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/imagepipeline/core/h;->n(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/h$d;->a()Lcom/facebook/datasource/d;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/facebook/common/internal/i;->e(Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/h$d;->a:Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequest;->w()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "uri"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/common/internal/i$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
