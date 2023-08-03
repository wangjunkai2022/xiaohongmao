.class public final Lcom/google/android/exoplayer2/n1;
.super Ljava/lang/Object;
.source "MetadataRetriever.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/n1$b;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/exoplayer2/b1;)Lcom/google/common/util/concurrent/q0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/b1;",
            ")",
            "Lcom/google/common/util/concurrent/q0<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/exoplayer2/util/d;->a:Lcom/google/android/exoplayer2/util/d;

    invoke-static {p0, p1, v0}, Lcom/google/android/exoplayer2/n1;->b(Landroid/content/Context;Lcom/google/android/exoplayer2/b1;Lcom/google/android/exoplayer2/util/d;)Lcom/google/common/util/concurrent/q0;

    move-result-object p0

    return-object p0
.end method

.method static b(Landroid/content/Context;Lcom/google/android/exoplayer2/b1;Lcom/google/android/exoplayer2/util/d;)Lcom/google/common/util/concurrent/q0;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/b1;",
            "Lcom/google/android/exoplayer2/util/d;",
            ")",
            "Lcom/google/common/util/concurrent/q0<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/extractor/h;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/h;-><init>()V

    const/4 v1, 0x6

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/h;->k(I)Lcom/google/android/exoplayer2/extractor/h;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/source/k;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer2/source/k;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/extractor/q;)V

    .line 4
    invoke-static {v1, p1, p2}, Lcom/google/android/exoplayer2/n1;->d(Lcom/google/android/exoplayer2/source/j0;Lcom/google/android/exoplayer2/b1;Lcom/google/android/exoplayer2/util/d;)Lcom/google/common/util/concurrent/q0;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/google/android/exoplayer2/source/j0;Lcom/google/android/exoplayer2/b1;)Lcom/google/common/util/concurrent/q0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/j0;",
            "Lcom/google/android/exoplayer2/b1;",
            ")",
            "Lcom/google/common/util/concurrent/q0<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/exoplayer2/util/d;->a:Lcom/google/android/exoplayer2/util/d;

    invoke-static {p0, p1, v0}, Lcom/google/android/exoplayer2/n1;->d(Lcom/google/android/exoplayer2/source/j0;Lcom/google/android/exoplayer2/b1;Lcom/google/android/exoplayer2/util/d;)Lcom/google/common/util/concurrent/q0;

    move-result-object p0

    return-object p0
.end method

.method private static d(Lcom/google/android/exoplayer2/source/j0;Lcom/google/android/exoplayer2/b1;Lcom/google/android/exoplayer2/util/d;)Lcom/google/common/util/concurrent/q0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/j0;",
            "Lcom/google/android/exoplayer2/b1;",
            "Lcom/google/android/exoplayer2/util/d;",
            ")",
            "Lcom/google/common/util/concurrent/q0<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/exoplayer2/n1$b;

    invoke-direct {v0, p0, p2}, Lcom/google/android/exoplayer2/n1$b;-><init>(Lcom/google/android/exoplayer2/source/j0;Lcom/google/android/exoplayer2/util/d;)V

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/n1$b;->e(Lcom/google/android/exoplayer2/b1;)Lcom/google/common/util/concurrent/q0;

    move-result-object p0

    return-object p0
.end method
