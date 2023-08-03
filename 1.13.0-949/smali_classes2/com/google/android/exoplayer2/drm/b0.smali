.class public interface abstract Lcom/google/android/exoplayer2/drm/b0;
.super Ljava/lang/Object;
.source "ExoMediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/b0$h;,
        Lcom/google/android/exoplayer2/drm/b0$b;,
        Lcom/google/android/exoplayer2/drm/b0$c;,
        Lcom/google/android/exoplayer2/drm/b0$e;,
        Lcom/google/android/exoplayer2/drm/b0$f;,
        Lcom/google/android/exoplayer2/drm/b0$d;,
        Lcom/google/android/exoplayer2/drm/b0$a;,
        Lcom/google/android/exoplayer2/drm/b0$g;
    }
.end annotation


# static fields
.field public static final a:I = 0x2

.field public static final b:I = 0x3

.field public static final c:I = 0x1

.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field public static final f:I = 0x3


# virtual methods
.method public abstract a()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/drm/a0;",
            ">;"
        }
    .end annotation
.end method

.method public abstract acquire()V
.end method

.method public abstract b([B)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract c([B)Lcom/google/android/exoplayer2/drm/a0;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCryptoException;
        }
    .end annotation
.end method

.method public abstract d()Lcom/google/android/exoplayer2/drm/b0$h;
.end method

.method public abstract e(Lcom/google/android/exoplayer2/drm/b0$e;)V
    .param p1    # Lcom/google/android/exoplayer2/drm/b0$e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract f()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaDrmException;
        }
    .end annotation
.end method

.method public abstract g([B[B)V
.end method

.method public abstract h(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract i(Lcom/google/android/exoplayer2/drm/b0$d;)V
    .param p1    # Lcom/google/android/exoplayer2/drm/b0$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract j()Landroid/os/PersistableBundle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract k([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/DeniedByServerException;
        }
    .end annotation
.end method

.method public abstract l(Ljava/lang/String;[B)V
.end method

.method public abstract m(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract n([B)V
.end method

.method public abstract o(Ljava/lang/String;)[B
.end method

.method public abstract p([B[B)[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;,
            Landroid/media/DeniedByServerException;
        }
    .end annotation
.end method

.method public abstract q([BLjava/util/List;ILjava/util/HashMap;)Lcom/google/android/exoplayer2/drm/b0$b;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;
        }
    .end annotation
.end method

.method public abstract r(Lcom/google/android/exoplayer2/drm/b0$f;)V
    .param p1    # Lcom/google/android/exoplayer2/drm/b0$f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract release()V
.end method
