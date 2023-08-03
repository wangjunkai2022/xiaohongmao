.class public interface abstract Lq1/f;
.super Ljava/lang/Object;
.source "RequestListener.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/v0;


# virtual methods
.method public abstract a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "request",
            "callerContext",
            "requestId",
            "isPrefetch"
        }
    .end annotation
.end method

.method public abstract c(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "request",
            "requestId",
            "isPrefetch"
        }
    .end annotation
.end method

.method public abstract i(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "request",
            "requestId",
            "throwable",
            "isPrefetch"
        }
    .end annotation
.end method

.method public abstract k(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestId"
        }
    .end annotation
.end method
