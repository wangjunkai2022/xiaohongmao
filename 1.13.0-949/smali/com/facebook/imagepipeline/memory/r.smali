.class public Lcom/facebook/imagepipeline/memory/r;
.super Ljava/lang/Object;
.source "FlexByteArrayPool.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/memory/r$b;
    }
.end annotation

.annotation build Ls7/d;
.end annotation


# instance fields
.field private final a:Lcom/facebook/common/references/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/h<",
            "[B>;"
        }
    .end annotation
.end field

.field final b:Lcom/facebook/imagepipeline/memory/r$b;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/common/memory/c;Lcom/facebook/imagepipeline/memory/f0;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "memoryTrimmableRegistry",
            "params"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget v0, p2, Lcom/facebook/imagepipeline/memory/f0;->g:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/j;->d(Ljava/lang/Boolean;)V

    .line 3
    new-instance v0, Lcom/facebook/imagepipeline/memory/r$b;

    .line 4
    invoke-static {}, Lcom/facebook/imagepipeline/memory/a0;->h()Lcom/facebook/imagepipeline/memory/a0;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/facebook/imagepipeline/memory/r$b;-><init>(Lcom/facebook/common/memory/c;Lcom/facebook/imagepipeline/memory/f0;Lcom/facebook/imagepipeline/memory/g0;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/r;->b:Lcom/facebook/imagepipeline/memory/r$b;

    .line 5
    new-instance p1, Lcom/facebook/imagepipeline/memory/r$a;

    invoke-direct {p1, p0}, Lcom/facebook/imagepipeline/memory/r$a;-><init>(Lcom/facebook/imagepipeline/memory/r;)V

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/r;->a:Lcom/facebook/common/references/h;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/facebook/common/references/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/common/references/a<",
            "[B>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/r;->b:Lcom/facebook/imagepipeline/memory/r$b;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/r;->a:Lcom/facebook/common/references/h;

    invoke-static {p1, v0}, Lcom/facebook/common/references/a;->G(Ljava/lang/Object;Lcom/facebook/common/references/h;)Lcom/facebook/common/references/a;

    move-result-object p1

    return-object p1
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/r;->b:Lcom/facebook/imagepipeline/memory/r$b;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/s;->R()I

    move-result v0

    return v0
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/r;->b:Lcom/facebook/imagepipeline/memory/r$b;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/BasePool;->A()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public d([B)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/r;->b:Lcom/facebook/imagepipeline/memory/r$b;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->release(Ljava/lang/Object;)V

    return-void
.end method
