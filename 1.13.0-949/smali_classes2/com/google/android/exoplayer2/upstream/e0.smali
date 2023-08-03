.class public final synthetic Lcom/google/android/exoplayer2/upstream/e0;
.super Ljava/lang/Object;
.source "LoadErrorHandlingPolicy.java"


# direct methods
.method public static a(Lcom/google/android/exoplayer2/upstream/f0;IJLjava/io/IOException;I)J
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public static b(Lcom/google/android/exoplayer2/upstream/f0;Lcom/google/android/exoplayer2/upstream/f0$a;)J
    .locals 7

    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/f0$a;->b:Lcom/google/android/exoplayer2/source/s;

    iget v2, v0, Lcom/google/android/exoplayer2/source/s;->a:I

    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/f0$a;->a:Lcom/google/android/exoplayer2/source/o;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/o;->f:J

    iget-object v5, p1, Lcom/google/android/exoplayer2/upstream/f0$a;->c:Ljava/io/IOException;

    iget v6, p1, Lcom/google/android/exoplayer2/upstream/f0$a;->d:I

    move-object v1, p0

    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/upstream/f0;->b(IJLjava/io/IOException;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static c(Lcom/google/android/exoplayer2/upstream/f0;IJLjava/io/IOException;I)J
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public static d(Lcom/google/android/exoplayer2/upstream/f0;Lcom/google/android/exoplayer2/upstream/f0$a;)J
    .locals 7

    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/f0$a;->b:Lcom/google/android/exoplayer2/source/s;

    iget v2, v0, Lcom/google/android/exoplayer2/source/s;->a:I

    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/f0$a;->a:Lcom/google/android/exoplayer2/source/o;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/o;->f:J

    iget-object v5, p1, Lcom/google/android/exoplayer2/upstream/f0$a;->c:Ljava/io/IOException;

    iget v6, p1, Lcom/google/android/exoplayer2/upstream/f0$a;->d:I

    move-object v1, p0

    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/upstream/f0;->e(IJLjava/io/IOException;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static e(Lcom/google/android/exoplayer2/upstream/f0;J)V
    .locals 0

    return-void
.end method
