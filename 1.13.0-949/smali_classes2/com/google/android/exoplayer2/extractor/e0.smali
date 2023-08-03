.class public interface abstract Lcom/google/android/exoplayer2/extractor/e0;
.super Ljava/lang/Object;
.source "TrackOutput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/e0$b;,
        Lcom/google/android/exoplayer2/extractor/e0$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2


# virtual methods
.method public abstract a(Lcom/google/android/exoplayer2/upstream/i;IZI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b(Lcom/google/android/exoplayer2/upstream/i;IZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract c(Lcom/google/android/exoplayer2/util/h0;I)V
.end method

.method public abstract d(Lcom/google/android/exoplayer2/Format;)V
.end method

.method public abstract e(JIIILcom/google/android/exoplayer2/extractor/e0$a;)V
    .param p6    # Lcom/google/android/exoplayer2/extractor/e0$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract f(Lcom/google/android/exoplayer2/util/h0;II)V
.end method
