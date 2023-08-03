.class public interface abstract Lcom/facebook/common/memory/g;
.super Ljava/lang/Object;
.source "PooledByteBufferFactory.java"


# virtual methods
.method public abstract a(Ljava/io/InputStream;)Lcom/facebook/common/memory/PooledByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputStream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b(Ljava/io/InputStream;I)Lcom/facebook/common/memory/PooledByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputStream",
            "initialCapacity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract c()Lcom/facebook/common/memory/i;
.end method

.method public abstract d([B)Lcom/facebook/common/memory/PooledByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation
.end method

.method public abstract e(I)Lcom/facebook/common/memory/PooledByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation
.end method

.method public abstract f(I)Lcom/facebook/common/memory/i;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initialCapacity"
        }
    .end annotation
.end method
