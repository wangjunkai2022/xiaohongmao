.class public final synthetic Lcom/google/android/exoplayer2/drm/k;
.super Ljava/lang/Object;
.source "DrmSession.java"


# direct methods
.method public static a(Lcom/google/android/exoplayer2/drm/DrmSession;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .locals 1
    .param p0    # Lcom/google/android/exoplayer2/drm/DrmSession;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/exoplayer2/drm/DrmSession;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->f(Lcom/google/android/exoplayer2/drm/s$a;)V

    :cond_1
    if-eqz p0, :cond_2

    .line 2
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->g(Lcom/google/android/exoplayer2/drm/s$a;)V

    :cond_2
    return-void
.end method
