.class public abstract Lcom/google/android/exoplayer2/trackselection/o;
.super Ljava/lang/Object;
.source "TrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/o$a;
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/exoplayer2/trackselection/o$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Lcom/google/android/exoplayer2/upstream/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Lcom/google/android/exoplayer2/upstream/e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/o;->b:Lcom/google/android/exoplayer2/upstream/e;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/e;

    return-object v0
.end method

.method public final b(Lcom/google/android/exoplayer2/trackselection/o$a;Lcom/google/android/exoplayer2/upstream/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/o;->a:Lcom/google/android/exoplayer2/trackselection/o$a;

    .line 2
    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/o;->b:Lcom/google/android/exoplayer2/upstream/e;

    return-void
.end method

.method protected final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/o;->a:Lcom/google/android/exoplayer2/trackselection/o$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/exoplayer2/trackselection/o$a;->a()V

    :cond_0
    return-void
.end method

.method public abstract d(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract e([Lcom/google/android/exoplayer2/g2;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/s2;)Lcom/google/android/exoplayer2/trackselection/p;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method
