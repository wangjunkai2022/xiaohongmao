.class public interface abstract Lcom/facebook/imagepipeline/animated/factory/a;
.super Ljava/lang/Object;
.source "AnimatedFactory.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation build Ls7/c;
.end annotation


# virtual methods
.method public abstract a(Landroid/content/Context;)Ln1/a;
    .param p1    # Landroid/content/Context;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end method

.method public abstract b()Lcom/facebook/imagepipeline/decoder/b;
    .annotation runtime Lr7/h;
    .end annotation
.end method

.method public abstract c()Lcom/facebook/imagepipeline/decoder/b;
    .annotation runtime Lr7/h;
    .end annotation
.end method
