.class final Lcom/google/android/exoplayer2/offline/DownloadHelper$e;
.super Ljava/lang/Object;
.source "DownloadHelper.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/DownloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadHelper$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper$e;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()J
    .locals 2

    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/c;->a(Lcom/google/android/exoplayer2/upstream/e;)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Lcom/google/android/exoplayer2/upstream/p0;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Lcom/google/android/exoplayer2/upstream/e$a;)V
    .locals 0

    return-void
.end method

.method public e()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public g(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/e$a;)V
    .locals 0

    return-void
.end method
