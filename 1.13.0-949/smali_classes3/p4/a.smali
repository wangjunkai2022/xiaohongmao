.class public interface abstract Lp4/a;
.super Ljava/lang/Object;
.source "Playback.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008f\u0018\u00002\u00020\u0001J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0002H&J\u0008\u0010\u0005\u001a\u00020\u0004H&J\u0008\u0010\u0006\u001a\u00020\u0004H&J\u0008\u0010\u0007\u001a\u00020\u0004H&J\u0008\u0010\u0008\u001a\u00020\u0004H&J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH&J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000cH&J\u0018\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u000cH&J\u0018\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014H&J\u0016\u0010\u001a\u001a\u00020\u00042\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017H&J\u0010\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001bH&J\u0008\u0010\u001e\u001a\u00020\u0004H\'J\u0008\u0010\u001f\u001a\u00020\u0004H\'R\u0014\u0010\"\u001a\u00020\u000c8&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R\u0014\u0010#\u001a\u00020\t8&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010$R\u0014\u0010&\u001a\u00020\u000c8&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010!R9\u0010/\u001a\u001f\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008(\u0012\u0008\u0008)\u0012\u0004\u0008\u0008(*\u0012\u0004\u0012\u00020\u0004\u0018\u00010\'8&@&X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.\u00a8\u00060"
    }
    d2 = {
        "Lp4/a;",
        "",
        "Lcom/google/android/exoplayer2/v1;",
        "H",
        "",
        "L",
        "I",
        "d",
        "pause",
        "",
        "reset",
        "y",
        "",
        "position",
        "seekTo",
        "",
        "windowIndex",
        "x",
        "Lcom/google/android/exoplayer2/ui/PlayerView;",
        "playerView",
        "Landroidx/lifecycle/Lifecycle;",
        "lifecycle",
        "K",
        "",
        "Landroid/support/v4/media/MediaMetadataCompat;",
        "list",
        "M",
        "Landroid/net/Uri;",
        "uri",
        "F",
        "onStart",
        "onStop",
        "getDuration",
        "()J",
        "duration",
        "isPlaying",
        "()Z",
        "getCurrentPosition",
        "currentPosition",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "playbackState",
        "N",
        "()Lkotlin/jvm/functions/Function1;",
        "J",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onStateChangeListener",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# virtual methods
.method public abstract F(Landroid/net/Uri;)V
    .param p1    # Landroid/net/Uri;
        .annotation build Lm8/g;
        .end annotation
    .end param
.end method

.method public abstract H()Lcom/google/android/exoplayer2/v1;
    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract I()V
.end method

.method public abstract J(Lkotlin/jvm/functions/Function1;)V
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract K(Lcom/google/android/exoplayer2/ui/PlayerView;Landroidx/lifecycle/Lifecycle;)V
    .param p1    # Lcom/google/android/exoplayer2/ui/PlayerView;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Lifecycle;
        .annotation build Lm8/g;
        .end annotation
    .end param
.end method

.method public abstract L()V
.end method

.method public abstract M(Ljava/util/List;)V
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaMetadataCompat;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract N()Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract d()V
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getDuration()J
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract onStart()V
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation
.end method

.method public abstract onStop()V
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation
.end method

.method public abstract pause()V
.end method

.method public abstract seekTo(J)V
.end method

.method public abstract x(IJ)V
.end method

.method public abstract y(Z)V
.end method
