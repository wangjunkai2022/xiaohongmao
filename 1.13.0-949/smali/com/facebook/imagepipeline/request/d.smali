.class public interface abstract Lcom/facebook/imagepipeline/request/d;
.super Ljava/lang/Object;
.source "Postprocessor.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# virtual methods
.method public abstract a()Lcom/facebook/cache/common/c;
    .annotation runtime Lr7/h;
    .end annotation
.end method

.method public abstract c(Landroid/graphics/Bitmap;Lcom/facebook/imagepipeline/bitmaps/f;)Lcom/facebook/common/references/a;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sourceBitmap",
            "bitmapFactory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/facebook/imagepipeline/bitmaps/f;",
            ")",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method
