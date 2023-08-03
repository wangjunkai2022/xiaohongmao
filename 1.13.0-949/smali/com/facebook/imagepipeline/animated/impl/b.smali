.class public interface abstract Lcom/facebook/imagepipeline/animated/impl/b;
.super Ljava/lang/Object;
.source "AnimatedDrawableBackendProvider.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# virtual methods
.method public abstract a(Lcom/facebook/imagepipeline/animated/base/f;Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/a;
    .param p2    # Landroid/graphics/Rect;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "animatedImageResult",
            "bounds"
        }
    .end annotation
.end method
