.class public interface abstract Lcom/facebook/imagepipeline/cache/j;
.super Ljava/lang/Object;
.source "CountingMemoryCache.java"

# interfaces
.implements Lcom/facebook/imagepipeline/cache/u;
.implements Lcom/facebook/common/memory/b;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/cache/j$a;,
        Lcom/facebook/imagepipeline/cache/j$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/cache/u<",
        "TK;TV;>;",
        "Lcom/facebook/common/memory/b;"
    }
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract e()Lcom/facebook/imagepipeline/cache/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/i<",
            "TK;",
            "Lcom/facebook/imagepipeline/cache/j$a<",
            "TK;TV;>;>;"
        }
    .end annotation
.end method

.method public abstract f()I
.end method

.method public abstract g()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract h()Lcom/facebook/imagepipeline/cache/v;
.end method

.method public abstract j(Ljava/lang/Object;Lcom/facebook/common/references/a;Lcom/facebook/imagepipeline/cache/j$b;)Lcom/facebook/common/references/a;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "valueRef",
            "observer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/common/references/a<",
            "TV;>;",
            "Lcom/facebook/imagepipeline/cache/j$b<",
            "TK;>;)",
            "Lcom/facebook/common/references/a<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end method

.method public abstract n(Ljava/lang/Object;)Lcom/facebook/common/references/a;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/facebook/common/references/a<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end method

.method public abstract o()I
.end method

.method public abstract p()V
.end method

.method public abstract q()I
.end method
