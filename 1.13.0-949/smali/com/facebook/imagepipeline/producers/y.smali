.class public Lcom/facebook/imagepipeline/producers/y;
.super Ljava/lang/Object;
.source "InternalProducerListener.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/u0;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/producers/v0;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final b:Lcom/facebook/imagepipeline/producers/u0;
    .annotation runtime Lr7/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/v0;Lcom/facebook/imagepipeline/producers/u0;)V
    .locals 0
    .param p1    # Lcom/facebook/imagepipeline/producers/v0;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/imagepipeline/producers/u0;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "producerListener",
            "producerListener2"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/y;->a:Lcom/facebook/imagepipeline/producers/v0;

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/y;->b:Lcom/facebook/imagepipeline/producers/u0;

    return-void
.end method


# virtual methods
.method public b(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "producerName",
            "successful"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/y;->a:Lcom/facebook/imagepipeline/producers/v0;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/s0;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lcom/facebook/imagepipeline/producers/v0;->h(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/y;->b:Lcom/facebook/imagepipeline/producers/u0;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/imagepipeline/producers/u0;->b(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public c(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p3    # Ljava/util/Map;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "producerName",
            "extraMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/s0;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/y;->a:Lcom/facebook/imagepipeline/producers/v0;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/s0;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lcom/facebook/imagepipeline/producers/v0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/y;->b:Lcom/facebook/imagepipeline/producers/u0;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/imagepipeline/producers/u0;->c(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public d(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "producerName"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/y;->a:Lcom/facebook/imagepipeline/producers/v0;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/s0;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/facebook/imagepipeline/producers/v0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/y;->b:Lcom/facebook/imagepipeline/producers/u0;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/u0;->d(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public f(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "producerName"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/y;->a:Lcom/facebook/imagepipeline/producers/v0;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/s0;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/producers/v0;->d(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/y;->b:Lcom/facebook/imagepipeline/producers/u0;

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1, p1, p2}, Lcom/facebook/imagepipeline/producers/u0;->f(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;)Z

    move-result v0

    :cond_1
    return v0
.end method

.method public h(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "producerName",
            "eventName"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/y;->a:Lcom/facebook/imagepipeline/producers/v0;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/s0;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lcom/facebook/imagepipeline/producers/v0;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/y;->b:Lcom/facebook/imagepipeline/producers/u0;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/imagepipeline/producers/u0;->h(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public j(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p3    # Ljava/util/Map;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "producerName",
            "extraMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/s0;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/y;->a:Lcom/facebook/imagepipeline/producers/v0;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/s0;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lcom/facebook/imagepipeline/producers/v0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/y;->b:Lcom/facebook/imagepipeline/producers/u0;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/imagepipeline/producers/u0;->j(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public k(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V
    .locals 2
    .param p4    # Ljava/util/Map;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "producerName",
            "t",
            "extraMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/s0;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/y;->a:Lcom/facebook/imagepipeline/producers/v0;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/s0;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/facebook/imagepipeline/producers/v0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/y;->b:Lcom/facebook/imagepipeline/producers/u0;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/producers/u0;->k(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public l()Lcom/facebook/imagepipeline/producers/v0;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/y;->a:Lcom/facebook/imagepipeline/producers/v0;

    return-object v0
.end method

.method public m()Lcom/facebook/imagepipeline/producers/u0;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/y;->b:Lcom/facebook/imagepipeline/producers/u0;

    return-object v0
.end method
