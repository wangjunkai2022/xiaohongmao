.class public interface abstract Ls1/c;
.super Ljava/lang/Object;
.source "ImageTranscoder.java"


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b(Lcom/facebook/imagepipeline/image/e;Lcom/facebook/imagepipeline/common/e;Lcom/facebook/imagepipeline/common/d;)Z
    .param p2    # Lcom/facebook/imagepipeline/common/e;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/imagepipeline/common/d;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "encodedImage",
            "rotationOptions",
            "resizeOptions"
        }
    .end annotation
.end method

.method public abstract c(Lcom/facebook/imagepipeline/image/e;Ljava/io/OutputStream;Lcom/facebook/imagepipeline/common/e;Lcom/facebook/imagepipeline/common/d;Lcom/facebook/imageformat/c;Ljava/lang/Integer;)Ls1/b;
    .param p3    # Lcom/facebook/imagepipeline/common/e;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/imagepipeline/common/d;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p5    # Lcom/facebook/imageformat/c;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Integer;
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
            0x0
        }
        names = {
            "encodedImage",
            "outputStream",
            "rotationOptions",
            "resizeOptions",
            "outputFormat",
            "quality"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract d(Lcom/facebook/imageformat/c;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageFormat"
        }
    .end annotation
.end method
