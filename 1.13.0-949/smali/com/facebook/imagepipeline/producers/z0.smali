.class public Lcom/facebook/imagepipeline/producers/z0;
.super Lcom/facebook/imagepipeline/producers/d;
.source "SettableProducerContext.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation build Ls7/d;
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/s0;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/s0;->c()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    .line 2
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/s0;->getId()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/s0;->i()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/s0;->k()Lcom/facebook/imagepipeline/producers/u0;

    move-result-object v4

    .line 5
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/s0;->d()Ljava/lang/Object;

    move-result-object v5

    .line 6
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/s0;->s()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v6

    .line 7
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/s0;->q()Z

    move-result v7

    .line 8
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/s0;->l()Z

    move-result v8

    .line 9
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/s0;->getPriority()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v9

    .line 10
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/s0;->g()Lcom/facebook/imagepipeline/core/j;

    move-result-object v10

    move-object v0, p0

    .line 11
    invoke-direct/range {v0 .. v10}, Lcom/facebook/imagepipeline/producers/z0;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/u0;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/core/j;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/producers/s0;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "overrideRequest",
            "context"
        }
    .end annotation

    .line 12
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/s0;->getId()Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/s0;->i()Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/s0;->k()Lcom/facebook/imagepipeline/producers/u0;

    move-result-object v4

    .line 15
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/s0;->d()Ljava/lang/Object;

    move-result-object v5

    .line 16
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/s0;->s()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v6

    .line 17
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/s0;->q()Z

    move-result v7

    .line 18
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/s0;->l()Z

    move-result v8

    .line 19
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/s0;->getPriority()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v9

    .line 20
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/s0;->g()Lcom/facebook/imagepipeline/core/j;

    move-result-object v10

    move-object v0, p0

    move-object v1, p1

    .line 21
    invoke-direct/range {v0 .. v10}, Lcom/facebook/imagepipeline/producers/z0;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/u0;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/core/j;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/u0;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/core/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageRequest",
            "id",
            "producerListener",
            "callerContext",
            "lowestPermittedRequestLevel",
            "isPrefetch",
            "isIntermediateResultExpected",
            "priority",
            "imagePipelineConfig"
        }
    .end annotation

    .line 22
    invoke-direct/range {p0 .. p9}, Lcom/facebook/imagepipeline/producers/d;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/u0;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/core/j;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/u0;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/core/j;)V
    .locals 0
    .param p3    # Ljava/lang/String;
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
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageRequest",
            "id",
            "uiComponentId",
            "producerListener",
            "callerContext",
            "lowestPermittedRequestLevel",
            "isPrefetch",
            "isIntermediateResultExpected",
            "priority",
            "imagePipelineConfig"
        }
    .end annotation

    .line 23
    invoke-direct/range {p0 .. p10}, Lcom/facebook/imagepipeline/producers/d;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/u0;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/core/j;)V

    return-void
.end method


# virtual methods
.method public B(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isIntermediateResultExpected"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/d;->y(Z)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/d;->b(Ljava/util/List;)V

    return-void
.end method

.method public C(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isPrefetch"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/d;->z(Z)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/d;->t(Ljava/util/List;)V

    return-void
.end method

.method public D(Lcom/facebook/imagepipeline/common/Priority;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "priority"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/d;->A(Lcom/facebook/imagepipeline/common/Priority;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/d;->u(Ljava/util/List;)V

    return-void
.end method
