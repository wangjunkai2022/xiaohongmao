.class public final Lcom/google/android/exoplayer2/drm/y;
.super Ljava/lang/Object;
.source "DummyExoMediaDrm.java"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/b0;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x12
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static s()Lcom/google/android/exoplayer2/drm/y;
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/drm/y;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/y;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/google/android/exoplayer2/drm/m0;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/android/exoplayer2/drm/m0;

    return-object v0
.end method

.method public acquire()V
    .locals 0

    return-void
.end method

.method public b([B)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public c([B)Lcom/google/android/exoplayer2/drm/a0;
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public d()Lcom/google/android/exoplayer2/drm/b0$h;
    .locals 1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public e(Lcom/google/android/exoplayer2/drm/b0$e;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/drm/b0$e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public f()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaDrmException;
        }
    .end annotation

    new-instance v0, Landroid/media/MediaDrmException;

    const-string v1, "Attempting to open a session using a dummy ExoMediaDrm."

    invoke-direct {v0, v1}, Landroid/media/MediaDrmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g([B[B)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public i(Lcom/google/android/exoplayer2/drm/b0$d;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/drm/b0$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public j()Landroid/os/PersistableBundle;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public k([B)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public l(Ljava/lang/String;[B)V
    .locals 0

    return-void
.end method

.method public m(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public n([B)V
    .locals 0

    return-void
.end method

.method public o(Ljava/lang/String;)[B
    .locals 0

    sget-object p1, Lcom/google/android/exoplayer2/util/z0;->f:[B

    return-object p1
.end method

.method public p([B[B)[B
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public q([BLjava/util/List;ILjava/util/HashMap;)Lcom/google/android/exoplayer2/drm/b0$b;
    .locals 0
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/HashMap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/drm/b0$b;"
        }
    .end annotation

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public r(Lcom/google/android/exoplayer2/drm/b0$f;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/drm/b0$f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method
