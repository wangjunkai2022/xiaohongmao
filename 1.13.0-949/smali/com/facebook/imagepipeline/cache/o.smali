.class public Lcom/facebook/imagepipeline/cache/o;
.super Ljava/lang/Object;
.source "EncodedCountingMemoryCacheFactory.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/facebook/common/internal/m;Lcom/facebook/common/memory/c;)Lcom/facebook/imagepipeline/cache/j;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "encodedMemoryCacheParamsSupplier",
            "memoryTrimmableRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/m<",
            "Lcom/facebook/imagepipeline/cache/v;",
            ">;",
            "Lcom/facebook/common/memory/c;",
            ")",
            "Lcom/facebook/imagepipeline/cache/j<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v1, Lcom/facebook/imagepipeline/cache/o$a;

    invoke-direct {v1}, Lcom/facebook/imagepipeline/cache/o$a;-><init>()V

    .line 2
    new-instance v2, Lcom/facebook/imagepipeline/cache/x;

    invoke-direct {v2}, Lcom/facebook/imagepipeline/cache/x;-><init>()V

    .line 3
    new-instance v7, Lcom/facebook/imagepipeline/cache/t;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/cache/t;-><init>(Lcom/facebook/imagepipeline/cache/a0;Lcom/facebook/imagepipeline/cache/u$a;Lcom/facebook/common/internal/m;Lcom/facebook/imagepipeline/cache/j$b;ZZ)V

    .line 4
    invoke-interface {p1, v7}, Lcom/facebook/common/memory/c;->a(Lcom/facebook/common/memory/b;)V

    return-object v7
.end method
