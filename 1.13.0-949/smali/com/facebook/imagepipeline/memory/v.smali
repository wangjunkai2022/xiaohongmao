.class public interface abstract Lcom/facebook/imagepipeline/memory/v;
.super Ljava/lang/Object;
.source "MemoryChunk.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# virtual methods
.method public abstract a()J
.end method

.method public abstract b(I[BII)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "memoryOffset",
            "byteArray",
            "byteArrayOffset",
            "count"
        }
    .end annotation
.end method

.method public abstract close()V
.end method

.method public abstract d(ILcom/facebook/imagepipeline/memory/v;II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "offset",
            "other",
            "otherOffset",
            "count"
        }
    .end annotation
.end method

.method public abstract f(I[BII)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "memoryOffset",
            "byteArray",
            "byteArrayOffset",
            "count"
        }
    .end annotation
.end method

.method public abstract g()Ljava/nio/ByteBuffer;
    .annotation runtime Lr7/h;
    .end annotation
.end method

.method public abstract getSize()I
.end method

.method public abstract isClosed()Z
.end method

.method public abstract j(I)B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "offset"
        }
    .end annotation
.end method

.method public abstract l()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method
