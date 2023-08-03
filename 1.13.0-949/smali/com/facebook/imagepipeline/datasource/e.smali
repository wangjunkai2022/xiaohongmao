.class public Lcom/facebook/imagepipeline/datasource/e;
.super Lcom/facebook/imagepipeline/datasource/a;
.source "CloseableProducerToDataSourceAdapter.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/imagepipeline/datasource/a<",
        "Lcom/facebook/common/references/a<",
        "TT;>;>;"
    }
.end annotation

.annotation build Ls7/d;
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/producers/q0;Lcom/facebook/imagepipeline/producers/z0;Lq1/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "producer",
            "settableProducerContext",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/common/references/a<",
            "TT;>;>;",
            "Lcom/facebook/imagepipeline/producers/z0;",
            "Lq1/e;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/datasource/a;-><init>(Lcom/facebook/imagepipeline/producers/q0;Lcom/facebook/imagepipeline/producers/z0;Lq1/e;)V

    return-void
.end method

.method public static J(Lcom/facebook/imagepipeline/producers/q0;Lcom/facebook/imagepipeline/producers/z0;Lq1/e;)Lcom/facebook/datasource/d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "producer",
            "settableProducerContext",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/common/references/a<",
            "TT;>;>;",
            "Lcom/facebook/imagepipeline/producers/z0;",
            "Lq1/e;",
            ")",
            "Lcom/facebook/datasource/d<",
            "Lcom/facebook/common/references/a<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CloseableProducerToDataSourceAdapter#create"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    new-instance v0, Lcom/facebook/imagepipeline/datasource/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/imagepipeline/datasource/e;-><init>(Lcom/facebook/imagepipeline/producers/q0;Lcom/facebook/imagepipeline/producers/z0;Lq1/e;)V

    .line 4
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 5
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_1
    return-object v0
.end method


# virtual methods
.method protected bridge synthetic G(Ljava/lang/Object;ILcom/facebook/imagepipeline/producers/s0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "result",
            "status",
            "producerContext"
        }
    .end annotation

    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/datasource/e;->L(Lcom/facebook/common/references/a;ILcom/facebook/imagepipeline/producers/s0;)V

    return-void
.end method

.method protected I(Lcom/facebook/common/references/a;)V
    .locals 0
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
            "(",
            "Lcom/facebook/common/references/a<",
            "TT;>;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/facebook/common/references/a;->k(Lcom/facebook/common/references/a;)V

    return-void
.end method

.method public K()Lcom/facebook/common/references/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    invoke-super {p0}, Lcom/facebook/datasource/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/a;

    invoke-static {v0}, Lcom/facebook/common/references/a;->h(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object v0

    return-object v0
.end method

.method protected L(Lcom/facebook/common/references/a;ILcom/facebook/imagepipeline/producers/s0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "result",
            "status",
            "producerContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/a<",
            "TT;>;I",
            "Lcom/facebook/imagepipeline/producers/s0;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcom/facebook/common/references/a;->h(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object p1

    invoke-super {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/datasource/a;->G(Ljava/lang/Object;ILcom/facebook/imagepipeline/producers/s0;)V

    return-void
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/datasource/e;->K()Lcom/facebook/common/references/a;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic i(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "result"
        }
    .end annotation

    check-cast p1, Lcom/facebook/common/references/a;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/datasource/e;->I(Lcom/facebook/common/references/a;)V

    return-void
.end method
