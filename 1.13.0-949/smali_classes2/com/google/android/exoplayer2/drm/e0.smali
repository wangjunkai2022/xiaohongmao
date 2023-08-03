.class public final synthetic Lcom/google/android/exoplayer2/drm/e0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaDrm$OnExpirationUpdateListener;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/drm/h0;

.field public final synthetic b:Lcom/google/android/exoplayer2/drm/b0$e;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/drm/h0;Lcom/google/android/exoplayer2/drm/b0$e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/e0;->a:Lcom/google/android/exoplayer2/drm/h0;

    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/e0;->b:Lcom/google/android/exoplayer2/drm/b0$e;

    return-void
.end method


# virtual methods
.method public final onExpirationUpdate(Landroid/media/MediaDrm;[BJ)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/e0;->a:Lcom/google/android/exoplayer2/drm/h0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/e0;->b:Lcom/google/android/exoplayer2/drm/b0$e;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/drm/h0;->v(Lcom/google/android/exoplayer2/drm/h0;Lcom/google/android/exoplayer2/drm/b0$e;Landroid/media/MediaDrm;[BJ)V

    return-void
.end method
