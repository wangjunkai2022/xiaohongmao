.class public interface abstract Lcom/facebook/imagepipeline/cache/b;
.super Ljava/lang/Object;
.source "BitmapMemoryCacheFactory.java"


# virtual methods
.method public abstract a(Lcom/facebook/common/internal/m;Lcom/facebook/common/memory/c;Lcom/facebook/imagepipeline/cache/u$a;ZZLcom/facebook/imagepipeline/cache/j$b;)Lcom/facebook/imagepipeline/cache/j;
    .param p6    # Lcom/facebook/imagepipeline/cache/j$b;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bitmapMemoryCacheParamsSupplier",
            "memoryTrimmableRegistry",
            "trimStrategy",
            "storeEntrySize",
            "ignoreSizeMismatch",
            "observer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/m<",
            "Lcom/facebook/imagepipeline/cache/v;",
            ">;",
            "Lcom/facebook/common/memory/c;",
            "Lcom/facebook/imagepipeline/cache/u$a;",
            "ZZ",
            "Lcom/facebook/imagepipeline/cache/j$b<",
            "Lcom/facebook/cache/common/c;",
            ">;)",
            "Lcom/facebook/imagepipeline/cache/j<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation
.end method
