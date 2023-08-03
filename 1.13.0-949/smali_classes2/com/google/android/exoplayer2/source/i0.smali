.class public final synthetic Lcom/google/android/exoplayer2/source/i0;
.super Ljava/lang/Object;
.source "MediaSourceFactory.java"


# direct methods
.method public static a(Lcom/google/android/exoplayer2/source/j0;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/z;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lcom/google/android/exoplayer2/b1;->d(Landroid/net/Uri;)Lcom/google/android/exoplayer2/b1;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/source/j0;->c(Lcom/google/android/exoplayer2/b1;)Lcom/google/android/exoplayer2/source/z;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/google/android/exoplayer2/source/j0;Ljava/util/List;)Lcom/google/android/exoplayer2/source/j0;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method
