.class public final Lcom/google/android/exoplayer2/drm/b0$a;
.super Ljava/lang/Object;
.source "ExoMediaDrm.java"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/b0$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/drm/b0;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/drm/b0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/b0$a;->a:Lcom/google/android/exoplayer2/drm/b0;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/UUID;)Lcom/google/android/exoplayer2/drm/b0;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/b0$a;->a:Lcom/google/android/exoplayer2/drm/b0;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/b0;->acquire()V

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/b0$a;->a:Lcom/google/android/exoplayer2/drm/b0;

    return-object p1
.end method
