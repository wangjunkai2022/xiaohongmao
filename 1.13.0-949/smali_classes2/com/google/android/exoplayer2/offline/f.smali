.class public final synthetic Lcom/google/android/exoplayer2/offline/f;
.super Ljava/lang/Object;
.source "DownloadCursor.java"


# direct methods
.method public static a(Lcom/google/android/exoplayer2/offline/g;)Z
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/google/android/exoplayer2/offline/g;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/offline/g;->getPosition()I

    move-result v0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/offline/g;->getCount()I

    move-result p0

    if-ne v0, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static b(Lcom/google/android/exoplayer2/offline/g;)Z
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/google/android/exoplayer2/offline/g;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/offline/g;->getPosition()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static c(Lcom/google/android/exoplayer2/offline/g;)Z
    .locals 1

    invoke-interface {p0}, Lcom/google/android/exoplayer2/offline/g;->getPosition()I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/offline/g;->getCount()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(Lcom/google/android/exoplayer2/offline/g;)Z
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/google/android/exoplayer2/offline/g;->getCount()I

    move-result v0

    .line 2
    invoke-interface {p0}, Lcom/google/android/exoplayer2/offline/g;->getPosition()I

    move-result p0

    add-int/lit8 v1, v0, -0x1

    if-ne p0, v1, :cond_0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e(Lcom/google/android/exoplayer2/offline/g;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/offline/g;->moveToPosition(I)Z

    move-result p0

    return p0
.end method

.method public static f(Lcom/google/android/exoplayer2/offline/g;)Z
    .locals 1

    invoke-interface {p0}, Lcom/google/android/exoplayer2/offline/g;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/offline/g;->moveToPosition(I)Z

    move-result p0

    return p0
.end method

.method public static g(Lcom/google/android/exoplayer2/offline/g;)Z
    .locals 1

    invoke-interface {p0}, Lcom/google/android/exoplayer2/offline/g;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/offline/g;->moveToPosition(I)Z

    move-result p0

    return p0
.end method

.method public static h(Lcom/google/android/exoplayer2/offline/g;)Z
    .locals 1

    invoke-interface {p0}, Lcom/google/android/exoplayer2/offline/g;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/offline/g;->moveToPosition(I)Z

    move-result p0

    return p0
.end method
