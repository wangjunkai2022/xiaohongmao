.class public interface abstract Lcom/google/android/exoplayer2/drm/u;
.super Ljava/lang/Object;
.source "DrmSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/u$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/exoplayer2/drm/u;

.field public static final b:Lcom/google/android/exoplayer2/drm/u;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/drm/u$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/u$a;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/drm/u;->a:Lcom/google/android/exoplayer2/drm/u;

    .line 2
    sput-object v0, Lcom/google/android/exoplayer2/drm/u;->b:Lcom/google/android/exoplayer2/drm/u;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b(Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/drm/DrmSession;
    .param p2    # Lcom/google/android/exoplayer2/drm/s$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract c(Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/drm/u$b;
    .param p2    # Lcom/google/android/exoplayer2/drm/s$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract d(Lcom/google/android/exoplayer2/Format;)Ljava/lang/Class;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Format;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/drm/a0;",
            ">;"
        }
    .end annotation
.end method

.method public abstract release()V
.end method
