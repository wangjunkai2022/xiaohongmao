.class public interface abstract Lcom/google/android/exoplayer2/mediacodec/k;
.super Ljava/lang/Object;
.source "MediaCodecAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/mediacodec/k$c;,
        Lcom/google/android/exoplayer2/mediacodec/k$b;,
        Lcom/google/android/exoplayer2/mediacodec/k$a;
    }
.end annotation


# virtual methods
.method public abstract a(IILcom/google/android/exoplayer2/decoder/b;JI)V
.end method

.method public abstract b()Landroid/media/MediaFormat;
.end method

.method public abstract c(Lcom/google/android/exoplayer2/mediacodec/k$c;Landroid/os/Handler;)V
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation
.end method

.method public abstract d(I)Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract e(Landroid/view/Surface;)V
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation
.end method

.method public abstract f(IIIJI)V
.end method

.method public abstract flush()V
.end method

.method public abstract g(Landroid/os/Bundle;)V
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x13
    .end annotation
.end method

.method public abstract h(IJ)V
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation
.end method

.method public abstract i()I
.end method

.method public abstract j(Landroid/media/MediaCodec$BufferInfo;)I
.end method

.method public abstract k(IZ)V
.end method

.method public abstract l(I)Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract p(I)V
.end method

.method public abstract release()V
.end method
