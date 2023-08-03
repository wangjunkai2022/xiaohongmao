.class final Lcom/im/freechat/service/music/f;
.super Lcom/google/android/exoplayer2/ext/mediasession/f;
.source "MusicService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016R\u0014\u0010\u000b\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\n\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/im/freechat/service/music/f;",
        "Lcom/google/android/exoplayer2/ext/mediasession/f;",
        "Lcom/google/android/exoplayer2/v1;",
        "player",
        "",
        "windowIndex",
        "Landroid/support/v4/media/MediaDescriptionCompat;",
        "u",
        "Lcom/google/android/exoplayer2/s2$d;",
        "h",
        "Lcom/google/android/exoplayer2/s2$d;",
        "window",
        "Landroid/support/v4/media/session/MediaSessionCompat;",
        "mediaSession",
        "<init>",
        "(Landroid/support/v4/media/session/MediaSessionCompat;)V",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final h:Lcom/google/android/exoplayer2/s2$d;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat;)V
    .locals 1
    .param p1    # Landroid/support/v4/media/session/MediaSessionCompat;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "mediaSession"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/mediasession/f;-><init>(Landroid/support/v4/media/session/MediaSessionCompat;)V

    .line 2
    new-instance p1, Lcom/google/android/exoplayer2/s2$d;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/s2$d;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/service/music/f;->h:Lcom/google/android/exoplayer2/s2$d;

    return-void
.end method


# virtual methods
.method public u(Lcom/google/android/exoplayer2/v1;I)Landroid/support/v4/media/MediaDescriptionCompat;
    .locals 2
    .param p1    # Lcom/google/android/exoplayer2/v1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->A0()Lcom/google/android/exoplayer2/s2;

    move-result-object p1

    iget-object v0, p0, Lcom/im/freechat/service/music/f;->h:Lcom/google/android/exoplayer2/s2$d;

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/exoplayer2/s2;->t(ILcom/google/android/exoplayer2/s2$d;Z)Lcom/google/android/exoplayer2/s2$d;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/exoplayer2/s2$d;->b:Ljava/lang/Object;

    const-string p2, "null cannot be cast to non-null type android.support.v4.media.MediaDescriptionCompat"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/support/v4/media/MediaDescriptionCompat;

    return-object p1
.end method
