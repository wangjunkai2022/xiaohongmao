.class public interface abstract Lcom/facebook/imagepipeline/animated/base/d;
.super Ljava/lang/Object;
.source "AnimatedImage.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field public static final a:I


# virtual methods
.method public abstract a()I
.end method

.method public abstract b()I
.end method

.method public abstract c()I
.end method

.method public abstract dispose()V
.end method

.method public abstract e(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameNumber"
        }
    .end annotation
.end method

.method public abstract f()Z
.end method

.method public abstract getDuration()I
.end method

.method public abstract getHeight()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract h()Landroid/graphics/Bitmap$Config;
    .annotation runtime Lr7/h;
    .end annotation
.end method

.method public abstract i(I)Lcom/facebook/imagepipeline/animated/base/e;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameNumber"
        }
    .end annotation
.end method

.method public abstract j()[I
.end method
