.class public Lcom/facebook/imagepipeline/cache/r;
.super Ljava/lang/Object;
.source "InstrumentedMemoryCache.java"

# interfaces
.implements Lcom/facebook/imagepipeline/cache/u;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
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
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/cache/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/u<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/imagepipeline/cache/w;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/cache/u;Lcom/facebook/imagepipeline/cache/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "delegate",
            "tracker"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/u<",
            "TK;TV;>;",
            "Lcom/facebook/imagepipeline/cache/w;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/r;->a:Lcom/facebook/imagepipeline/cache/u;

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/cache/r;->b:Lcom/facebook/imagepipeline/cache/w;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1
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
            "(TK;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/r;->a:Lcom/facebook/imagepipeline/cache/u;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/u;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/r;->a:Lcom/facebook/imagepipeline/cache/u;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/cache/u;->b()I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/Object;Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/common/references/a<",
            "TV;>;)",
            "Lcom/facebook/common/references/a<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/r;->b:Lcom/facebook/imagepipeline/cache/w;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/w;->c(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/r;->a:Lcom/facebook/imagepipeline/cache/u;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/cache/u;->c(Ljava/lang/Object;Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object p1

    return-object p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
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
            "(TK;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/r;->a:Lcom/facebook/imagepipeline/cache/u;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/u;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
            "(TK;)TV;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/r;->a:Lcom/facebook/imagepipeline/cache/u;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/u;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Lcom/facebook/common/references/a;
    .locals 2
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

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/r;->a:Lcom/facebook/imagepipeline/cache/u;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/u;->get(Ljava/lang/Object;)Lcom/facebook/common/references/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/r;->b:Lcom/facebook/imagepipeline/cache/w;

    invoke-interface {v1, p1}, Lcom/facebook/imagepipeline/cache/w;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/r;->b:Lcom/facebook/imagepipeline/cache/w;

    invoke-interface {v1, p1}, Lcom/facebook/imagepipeline/cache/w;->a(Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/r;->a:Lcom/facebook/imagepipeline/cache/u;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/cache/u;->getCount()I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/r;->a:Lcom/facebook/imagepipeline/cache/u;

    invoke-interface {v0}, Lcom/facebook/cache/common/f;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k(Lcom/facebook/common/internal/k;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "predicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/k<",
            "TK;>;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/r;->a:Lcom/facebook/imagepipeline/cache/u;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/u;->k(Lcom/facebook/common/internal/k;)I

    move-result p1

    return p1
.end method

.method public l(Lcom/facebook/common/internal/k;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "predicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/k<",
            "TK;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/r;->a:Lcom/facebook/imagepipeline/cache/u;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/u;->l(Lcom/facebook/common/internal/k;)Z

    move-result p1

    return p1
.end method

.method public m(Lcom/facebook/common/memory/MemoryTrimType;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trimType"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/r;->a:Lcom/facebook/imagepipeline/cache/u;

    invoke-interface {v0, p1}, Lcom/facebook/common/memory/b;->m(Lcom/facebook/common/memory/MemoryTrimType;)V

    return-void
.end method
