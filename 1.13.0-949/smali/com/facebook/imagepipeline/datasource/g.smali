.class public Lcom/facebook/imagepipeline/datasource/g;
.super Lcom/facebook/imagepipeline/datasource/a;
.source "ProducerToDataSourceAdapter.java"


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
        "TT;>;"
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
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/z0;",
            "Lq1/e;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/datasource/a;-><init>(Lcom/facebook/imagepipeline/producers/q0;Lcom/facebook/imagepipeline/producers/z0;Lq1/e;)V

    return-void
.end method

.method public static I(Lcom/facebook/imagepipeline/producers/q0;Lcom/facebook/imagepipeline/producers/z0;Lq1/e;)Lcom/facebook/datasource/d;
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
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/z0;",
            "Lq1/e;",
            ")",
            "Lcom/facebook/datasource/d<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/imagepipeline/datasource/g;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/imagepipeline/datasource/g;-><init>(Lcom/facebook/imagepipeline/producers/q0;Lcom/facebook/imagepipeline/producers/z0;Lq1/e;)V

    return-object v0
.end method
