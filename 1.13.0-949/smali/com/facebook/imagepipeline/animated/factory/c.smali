.class public interface abstract Lcom/facebook/imagepipeline/animated/factory/c;
.super Ljava/lang/Object;
.source "AnimatedImageDecoder.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# virtual methods
.method public abstract d(Ljava/nio/ByteBuffer;Lcom/facebook/imagepipeline/common/b;)Lcom/facebook/imagepipeline/animated/base/d;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "byteBuffer",
            "options"
        }
    .end annotation
.end method

.method public abstract g(JILcom/facebook/imagepipeline/common/b;)Lcom/facebook/imagepipeline/animated/base/d;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativePtr",
            "sizeInBytes",
            "options"
        }
    .end annotation
.end method
