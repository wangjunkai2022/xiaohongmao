.class public final synthetic Lcom/google/android/exoplayer2/drm/d0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaDrm$OnEventListener;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/drm/h0;

.field public final synthetic b:Lcom/google/android/exoplayer2/drm/b0$d;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/drm/h0;Lcom/google/android/exoplayer2/drm/b0$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/d0;->a:Lcom/google/android/exoplayer2/drm/h0;

    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/d0;->b:Lcom/google/android/exoplayer2/drm/b0$d;

    return-void
.end method


# virtual methods
.method public final onEvent(Landroid/media/MediaDrm;[BII[B)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/d0;->a:Lcom/google/android/exoplayer2/drm/h0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/d0;->b:Lcom/google/android/exoplayer2/drm/b0$d;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/drm/h0;->u(Lcom/google/android/exoplayer2/drm/h0;Lcom/google/android/exoplayer2/drm/b0$d;Landroid/media/MediaDrm;[BII[B)V

    return-void
.end method
