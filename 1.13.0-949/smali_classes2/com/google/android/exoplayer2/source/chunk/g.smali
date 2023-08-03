.class public interface abstract Lcom/google/android/exoplayer2/source/chunk/g;
.super Ljava/lang/Object;
.source "ChunkExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/chunk/g$b;,
        Lcom/google/android/exoplayer2/source/chunk/g$a;
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/google/android/exoplayer2/extractor/l;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b(Lcom/google/android/exoplayer2/source/chunk/g$b;JJ)V
    .param p1    # Lcom/google/android/exoplayer2/source/chunk/g$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract c()Lcom/google/android/exoplayer2/extractor/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract d()[Lcom/google/android/exoplayer2/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract release()V
.end method
