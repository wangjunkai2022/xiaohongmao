.class public interface abstract Lcom/google/android/exoplayer2/source/l0;
.super Ljava/lang/Object;
.source "ProgressiveMediaExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/l0$a;
    }
.end annotation


# virtual methods
.method public abstract a(JJ)V
.end method

.method public abstract b(Lcom/google/android/exoplayer2/extractor/z;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract c()V
.end method

.method public abstract d(Lcom/google/android/exoplayer2/upstream/i;Landroid/net/Uri;Ljava/util/Map;JJLcom/google/android/exoplayer2/extractor/m;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/i;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;JJ",
            "Lcom/google/android/exoplayer2/extractor/m;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract e()J
.end method

.method public abstract release()V
.end method
