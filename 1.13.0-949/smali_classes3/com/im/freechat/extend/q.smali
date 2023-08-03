.class public final Lcom/im/freechat/extend/q;
.super Ljava/lang/Object;
.source "PlaybackStateCompatExtentions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0004\"\u0016\u0010\u0004\u001a\u00020\u0001*\u00020\u00008\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0002\u0010\u0003\"\u0016\u0010\u0006\u001a\u00020\u0001*\u00020\u00008\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0003\"\u0016\u0010\u0008\u001a\u00020\u0001*\u00020\u00008\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0003\"\u0016\u0010\n\u001a\u00020\u0001*\u00020\u00008\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u0003\"\u0016\u0010\u000e\u001a\u00020\u000b*\u00020\u00008\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\"\u0016\u0010\u0012\u001a\u00020\u000f*\u00020\u00008\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroid/support/v4/media/session/PlaybackStateCompat;",
        "",
        "e",
        "(Landroid/support/v4/media/session/PlaybackStateCompat;)Z",
        "isPrepared",
        "d",
        "isPlaying",
        "c",
        "isPlayEnabled",
        "f",
        "isStopped",
        "",
        "b",
        "(Landroid/support/v4/media/session/PlaybackStateCompat;)Ljava/lang/String;",
        "stateName",
        "",
        "a",
        "(Landroid/support/v4/media/session/PlaybackStateCompat;)J",
        "currentPlayBackPosition",
        "app_prodRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method public static final a(Landroid/support/v4/media/session/PlaybackStateCompat;)J
    .locals 4
    .param p0    # Landroid/support/v4/media/session/PlaybackStateCompat;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getLastPositionUpdateTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPosition()J

    move-result-wide v2

    long-to-float v2, v2

    long-to-float v0, v0

    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result p0

    mul-float v0, v0, p0

    add-float/2addr v2, v0

    float-to-long v0, v2

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPosition()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static final b(Landroid/support/v4/media/session/PlaybackStateCompat;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/support/v4/media/session/PlaybackStateCompat;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const-string p0, "UNKNOWN_STATE"

    goto :goto_0

    :pswitch_0
    const-string p0, "STATE_ERROR"

    goto :goto_0

    :pswitch_1
    const-string p0, "STATE_BUFFERING"

    goto :goto_0

    :pswitch_2
    const-string p0, "STATE_REWINDING"

    goto :goto_0

    :pswitch_3
    const-string p0, "STATE_FAST_FORWARDING"

    goto :goto_0

    :pswitch_4
    const-string p0, "STATE_PLAYING"

    goto :goto_0

    :pswitch_5
    const-string p0, "STATE_PAUSED"

    goto :goto_0

    :pswitch_6
    const-string p0, "STATE_STOPPED"

    goto :goto_0

    :pswitch_7
    const-string p0, "STATE_NONE"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final c(Landroid/support/v4/media/session/PlaybackStateCompat;)Z
    .locals 4
    .param p0    # Landroid/support/v4/media/session/PlaybackStateCompat;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    invoke-static {v0, v1, v2, v3}, Lcom/im/freechat/extend/n;->b(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v0

    const-wide/16 v2, 0x200

    invoke-static {v0, v1, v2, v3}, Lcom/im/freechat/extend/n;->b(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final d(Landroid/support/v4/media/session/PlaybackStateCompat;)Z
    .locals 2
    .param p0    # Landroid/support/v4/media/session/PlaybackStateCompat;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final e(Landroid/support/v4/media/session/PlaybackStateCompat;)Z
    .locals 4
    .param p0    # Landroid/support/v4/media/session/PlaybackStateCompat;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1, p0}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final f(Landroid/support/v4/media/session/PlaybackStateCompat;)Z
    .locals 1
    .param p0    # Landroid/support/v4/media/session/PlaybackStateCompat;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
