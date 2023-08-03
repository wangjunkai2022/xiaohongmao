.class public Lcom/facebook/imagepipeline/producers/z;
.super Lcom/facebook/imagepipeline/producers/y;
.source "InternalRequestListener.java"

# interfaces
.implements Lq1/e;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# instance fields
.field private final c:Lq1/f;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final d:Lq1/e;
    .annotation runtime Lr7/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq1/f;Lq1/e;)V
    .locals 0
    .param p1    # Lq1/f;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p2    # Lq1/e;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "requestListener",
            "requestListener2"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/y;-><init>(Lcom/facebook/imagepipeline/producers/v0;Lcom/facebook/imagepipeline/producers/u0;)V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/z;->c:Lq1/f;

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/z;->d:Lq1/e;

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/producers/s0;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "producerContext"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/z;->c:Lq1/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/s0;->c()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    .line 3
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/s0;->d()Ljava/lang/Object;

    move-result-object v2

    .line 4
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/s0;->getId()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/s0;->q()Z

    move-result v4

    .line 6
    invoke-interface {v0, v1, v2, v3, v4}, Lq1/f;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/z;->d:Lq1/e;

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v0, p1}, Lq1/e;->a(Lcom/facebook/imagepipeline/producers/s0;)V

    :cond_1
    return-void
.end method

.method public e(Lcom/facebook/imagepipeline/producers/s0;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "producerContext"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/z;->c:Lq1/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/s0;->c()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/s0;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/s0;->q()Z

    move-result v3

    .line 3
    invoke-interface {v0, v1, v2, v3}, Lq1/f;->c(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/z;->d:Lq1/e;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, p1}, Lq1/e;->e(Lcom/facebook/imagepipeline/producers/s0;)V

    :cond_1
    return-void
.end method

.method public g(Lcom/facebook/imagepipeline/producers/s0;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "producerContext"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/z;->c:Lq1/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/s0;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lq1/f;->k(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/z;->d:Lq1/e;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1}, Lq1/e;->g(Lcom/facebook/imagepipeline/producers/s0;)V

    :cond_1
    return-void
.end method

.method public i(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/Throwable;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "producerContext",
            "throwable"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/z;->c:Lq1/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/s0;->c()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    .line 3
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/s0;->getId()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/s0;->q()Z

    move-result v3

    .line 5
    invoke-interface {v0, v1, v2, p2, v3}, Lq1/f;->i(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/z;->d:Lq1/e;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0, p1, p2}, Lq1/e;->i(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
