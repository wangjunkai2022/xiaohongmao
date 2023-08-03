.class public abstract Lcom/facebook/imagepipeline/producers/a1;
.super Lcom/facebook/common/executors/h;
.source "StatefulProducerRunnable.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/common/executors/h<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final g:Lcom/facebook/imagepipeline/producers/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/l<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final h:Lcom/facebook/imagepipeline/producers/u0;

.field private final i:Ljava/lang/String;

.field private final j:Lcom/facebook/imagepipeline/producers/s0;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/u0;Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "consumer",
            "producerListener",
            "producerContext",
            "producerName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/l<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/u0;",
            "Lcom/facebook/imagepipeline/producers/s0;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/facebook/common/executors/h;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/a1;->g:Lcom/facebook/imagepipeline/producers/l;

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/a1;->h:Lcom/facebook/imagepipeline/producers/u0;

    .line 4
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/a1;->i:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/a1;->j:Lcom/facebook/imagepipeline/producers/s0;

    .line 6
    invoke-interface {p2, p3, p4}, Lcom/facebook/imagepipeline/producers/u0;->d(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected abstract b(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/a1;->h:Lcom/facebook/imagepipeline/producers/u0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/a1;->j:Lcom/facebook/imagepipeline/producers/s0;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/a1;->i:Ljava/lang/String;

    .line 2
    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/u0;->f(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/a1;->g()Ljava/util/Map;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 4
    :goto_0
    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/u0;->c(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Ljava/util/Map;)V

    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/a1;->g:Lcom/facebook/imagepipeline/producers/l;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/l;->b()V

    return-void
.end method

.method protected e(Ljava/lang/Exception;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/a1;->h:Lcom/facebook/imagepipeline/producers/u0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/a1;->j:Lcom/facebook/imagepipeline/producers/s0;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/a1;->i:Ljava/lang/String;

    .line 2
    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/u0;->f(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/a1;->h(Ljava/lang/Exception;)Ljava/util/Map;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 4
    :goto_0
    invoke-interface {v0, v1, v2, p1, v3}, Lcom/facebook/imagepipeline/producers/u0;->k(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/a1;->g:Lcom/facebook/imagepipeline/producers/l;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/l;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected f(Ljava/lang/Object;)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/a1;->h:Lcom/facebook/imagepipeline/producers/u0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/a1;->j:Lcom/facebook/imagepipeline/producers/s0;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/a1;->i:Ljava/lang/String;

    .line 2
    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/u0;->f(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/a1;->i(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 4
    :goto_0
    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/u0;->j(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Ljava/util/Map;)V

    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/a1;->g:Lcom/facebook/imagepipeline/producers/l;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/producers/l;->c(Ljava/lang/Object;I)V

    return-void
.end method

.method protected g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected h(Ljava/lang/Exception;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exception"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected i(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
