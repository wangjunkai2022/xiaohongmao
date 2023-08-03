.class public interface abstract Lcom/google/android/exoplayer2/source/chunk/j;
.super Ljava/lang/Object;
.source "ChunkSource.java"


# virtual methods
.method public abstract a()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b(JLcom/google/android/exoplayer2/source/chunk/f;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/exoplayer2/source/chunk/f;",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/source/chunk/n;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract c(Lcom/google/android/exoplayer2/source/chunk/f;)V
.end method

.method public abstract d(JLcom/google/android/exoplayer2/j2;)J
.end method

.method public abstract e(Lcom/google/android/exoplayer2/source/chunk/f;ZLjava/lang/Exception;J)Z
.end method

.method public abstract f(JLjava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/source/chunk/n;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract g(JJLjava/util/List;Lcom/google/android/exoplayer2/source/chunk/h;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/source/chunk/n;",
            ">;",
            "Lcom/google/android/exoplayer2/source/chunk/h;",
            ")V"
        }
    .end annotation
.end method

.method public abstract release()V
.end method
