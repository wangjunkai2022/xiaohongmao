.class final Lcom/facebook/imagepipeline/cache/p$a;
.super Ljava/lang/Object;
.source "EncodedMemoryCacheFactory.java"

# interfaces
.implements Lcom/facebook/imagepipeline/cache/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/cache/p;->a(Lcom/facebook/imagepipeline/cache/u;Lcom/facebook/imagepipeline/cache/q;)Lcom/facebook/imagepipeline/cache/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/cache/w<",
        "Lcom/facebook/cache/common/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/cache/q;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/cache/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$imageCacheStatsTracker"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/p$a;->a:Lcom/facebook/imagepipeline/cache/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "cacheKey"
        }
    .end annotation

    check-cast p1, Lcom/facebook/cache/common/c;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/cache/p$a;->d(Lcom/facebook/cache/common/c;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "cacheKey"
        }
    .end annotation

    check-cast p1, Lcom/facebook/cache/common/c;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/cache/p$a;->e(Lcom/facebook/cache/common/c;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "cacheKey"
        }
    .end annotation

    check-cast p1, Lcom/facebook/cache/common/c;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/cache/p$a;->f(Lcom/facebook/cache/common/c;)V

    return-void
.end method

.method public d(Lcom/facebook/cache/common/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheKey"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/p$a;->a:Lcom/facebook/imagepipeline/cache/q;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/q;->j(Lcom/facebook/cache/common/c;)V

    return-void
.end method

.method public e(Lcom/facebook/cache/common/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheKey"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/p$a;->a:Lcom/facebook/imagepipeline/cache/q;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/q;->g(Lcom/facebook/cache/common/c;)V

    return-void
.end method

.method public f(Lcom/facebook/cache/common/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheKey"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/p$a;->a:Lcom/facebook/imagepipeline/cache/q;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/q;->e(Lcom/facebook/cache/common/c;)V

    return-void
.end method
