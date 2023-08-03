.class public interface abstract Lcom/google/android/exoplayer2/source/j0;
.super Ljava/lang/Object;
.source "MediaSourceFactory.java"


# virtual methods
.method public abstract a(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/j0;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract b(Ljava/util/List;)Lcom/google/android/exoplayer2/source/j0;
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/j0;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract c(Lcom/google/android/exoplayer2/b1;)Lcom/google/android/exoplayer2/source/z;
.end method

.method public abstract d()[I
.end method

.method public abstract e(Lcom/google/android/exoplayer2/drm/x;)Lcom/google/android/exoplayer2/source/j0;
    .param p1    # Lcom/google/android/exoplayer2/drm/x;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract f(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/z;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract g(Lcom/google/android/exoplayer2/upstream/f0;)Lcom/google/android/exoplayer2/source/j0;
    .param p1    # Lcom/google/android/exoplayer2/upstream/f0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract h(Lcom/google/android/exoplayer2/upstream/HttpDataSource$b;)Lcom/google/android/exoplayer2/source/j0;
    .param p1    # Lcom/google/android/exoplayer2/upstream/HttpDataSource$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract i(Lcom/google/android/exoplayer2/drm/u;)Lcom/google/android/exoplayer2/source/j0;
    .param p1    # Lcom/google/android/exoplayer2/drm/u;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
