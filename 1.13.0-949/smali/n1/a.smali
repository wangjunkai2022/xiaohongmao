.class public interface abstract Ln1/a;
.super Ljava/lang/Object;
.source "DrawableFactory.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# virtual methods
.method public abstract a(Lcom/facebook/imagepipeline/image/c;)Z
    .param p1    # Lcom/facebook/imagepipeline/image/c;
        .annotation runtime Lr7/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation
.end method

.method public abstract b(Lcom/facebook/imagepipeline/image/c;)Landroid/graphics/drawable/Drawable;
    .param p1    # Lcom/facebook/imagepipeline/image/c;
        .annotation runtime Lr7/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end method
