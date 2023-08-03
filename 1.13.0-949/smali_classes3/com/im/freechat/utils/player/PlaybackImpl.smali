.class public final Lcom/im/freechat/utils/player/PlaybackImpl;
.super Ljava/lang/Object;
.source "PlaybackImpl.kt"

# interfaces
.implements Lp4/a;
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/google/android/exoplayer2/v1$h;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0017\u0012\u0006\u0010,\u001a\u00020)\u0012\u0006\u0010\\\u001a\u00020[\u00a2\u0006\u0004\u0008]\u0010^J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\t\u001a\u00020\u0008H\u0002J\u0008\u0010\n\u001a\u00020\u0008H\u0016J\u0008\u0010\u000b\u001a\u00020\u0008H\u0016J\n\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0016J\u0018\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0016\u0010\u0016\u001a\u00020\u00082\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013H\u0016J\u0010\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0008\u0010\u0018\u001a\u00020\u0008H\u0016J\u0008\u0010\u0019\u001a\u00020\u0008H\u0016J\u0010\u0010\u001c\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u001aH\u0016J\u0010\u0010\u001f\u001a\u00020\u00082\u0006\u0010\u001e\u001a\u00020\u001dH\u0016J\u0018\u0010\"\u001a\u00020\u00082\u0006\u0010!\u001a\u00020 2\u0006\u0010\u001e\u001a\u00020\u001dH\u0016J\u0010\u0010$\u001a\u00020\u00082\u0006\u0010#\u001a\u00020 H\u0016J\u0010\u0010&\u001a\u00020\u00082\u0006\u0010%\u001a\u00020 H\u0016J\u0008\u0010\'\u001a\u00020\u0008H\u0017J\u0008\u0010(\u001a\u00020\u0008H\u0017R\u0014\u0010,\u001a\u00020)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0018\u00100\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u00102R\u0016\u00103\u001a\u00020 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u000bR3\u0010:\u001a\u001f\u0012\u0013\u0012\u00110 \u00a2\u0006\u000c\u00085\u0012\u0008\u00086\u0012\u0004\u0008\u0008(7\u0012\u0004\u0012\u00020\u0008\u0018\u0001048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00088\u00109R?\u0010A\u001a\u001f\u0012\u0013\u0012\u00110 \u00a2\u0006\u000c\u00085\u0012\u0008\u00086\u0012\u0004\u0008\u0008(;\u0012\u0004\u0012\u00020\u0008\u0018\u0001048\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008<\u00109\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@R\u0018\u0010D\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008B\u0010CR\u0016\u0010F\u001a\u00020 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008E\u0010\u000bR\u0016\u0010H\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008G\u0010?R\u0014\u0010L\u001a\u00020I8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008J\u0010KR\u0014\u0010P\u001a\u00020M8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008N\u0010OR\u0014\u0010S\u001a\u00020Q8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010RR\u0014\u0010V\u001a\u00020\u001d8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008T\u0010UR\u0014\u0010X\u001a\u00020\u001d8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008W\u0010UR\u0014\u0010Y\u001a\u00020\u001a8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008Y\u0010Z\u00a8\u0006_"
    }
    d2 = {
        "Lcom/im/freechat/utils/player/PlaybackImpl;",
        "Lp4/a;",
        "Landroidx/lifecycle/LifecycleObserver;",
        "Lcom/google/android/exoplayer2/v1$h;",
        "Landroid/net/Uri;",
        "uri",
        "Lcom/google/android/exoplayer2/source/z;",
        "O",
        "",
        "P",
        "L",
        "I",
        "Lcom/google/android/exoplayer2/v1;",
        "H",
        "Lcom/google/android/exoplayer2/ui/PlayerView;",
        "playerView",
        "Landroidx/lifecycle/Lifecycle;",
        "lifecycle",
        "K",
        "",
        "Landroid/support/v4/media/MediaMetadataCompat;",
        "list",
        "M",
        "F",
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
        "state",
        "l",
        "reason",
        "U",
        "onStart",
        "onStop",
        "Landroid/content/Context;",
        "a",
        "Landroid/content/Context;",
        "context",
        "Lcom/google/android/exoplayer2/q;",
        "b",
        "Lcom/google/android/exoplayer2/q;",
        "player",
        "c",
        "Lcom/google/android/exoplayer2/ui/PlayerView;",
        "lastPlaylistIndex",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "index",
        "e",
        "Lkotlin/jvm/functions/Function1;",
        "playlistIndexListener",
        "playbackState",
        "f",
        "N",
        "()Lkotlin/jvm/functions/Function1;",
        "J",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onStateChangeListener",
        "g",
        "Lcom/google/android/exoplayer2/source/z;",
        "mediaSource",
        "h",
        "currentWindow",
        "i",
        "playbackPosition",
        "Lcom/google/android/exoplayer2/audio/e;",
        "j",
        "Lcom/google/android/exoplayer2/audio/e;",
        "uAmpAudioAttributes",
        "",
        "k",
        "Ljava/lang/String;",
        "userAgent",
        "Lcom/google/android/exoplayer2/upstream/cache/b$d;",
        "Lcom/google/android/exoplayer2/upstream/cache/b$d;",
        "cacheDataSourceFactory",
        "getCurrentPosition",
        "()J",
        "currentPosition",
        "getDuration",
        "duration",
        "isPlaying",
        "()Z",
        "Lcom/google/android/exoplayer2/upstream/cache/Cache;",
        "cache",
        "<init>",
        "(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/cache/Cache;)V",
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
.field private final a:Landroid/content/Context;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private b:Lcom/google/android/exoplayer2/q;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private c:Lcom/google/android/exoplayer2/ui/PlayerView;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private d:I

.field private e:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private f:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private g:Lcom/google/android/exoplayer2/source/z;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private h:I

.field private i:J

.field private final j:Lcom/google/android/exoplayer2/audio/e;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final k:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final l:Lcom/google/android/exoplayer2/upstream/cache/b$d;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/cache/Cache;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/exoplayer2/upstream/cache/Cache;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cache"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/utils/player/PlaybackImpl;->a:Landroid/content/Context;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/im/freechat/utils/player/PlaybackImpl;->d:I

    .line 4
    new-instance v0, Lcom/google/android/exoplayer2/audio/e$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/e$b;-><init>()V

    const/4 v1, 0x2

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/e$b;->c(I)Lcom/google/android/exoplayer2/audio/e$b;

    move-result-object v0

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/e$b;->e(I)Lcom/google/android/exoplayer2/audio/e$b;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/e$b;->a()Lcom/google/android/exoplayer2/audio/e;

    move-result-object v0

    const-string v1, "Builder()\n        .setCo\u2026E_MEDIA)\n        .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/im/freechat/utils/player/PlaybackImpl;->j:Lcom/google/android/exoplayer2/audio/e;

    .line 8
    sget v0, Lb4/b$s;->B2:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/z0;->t0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getUserAgent(context, co\u2026tring(R.string.app_name))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/im/freechat/utils/player/PlaybackImpl;->k:Ljava/lang/String;

    .line 9
    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/b$d;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/upstream/cache/b$d;-><init>()V

    .line 10
    invoke-virtual {v1, p2}, Lcom/google/android/exoplayer2/upstream/cache/b$d;->k(Lcom/google/android/exoplayer2/upstream/cache/Cache;)Lcom/google/android/exoplayer2/upstream/cache/b$d;

    move-result-object p2

    .line 11
    new-instance v1, Lcom/google/android/exoplayer2/upstream/t;

    invoke-direct {v1, p1, v0}, Lcom/google/android/exoplayer2/upstream/t;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/upstream/cache/b$d;->q(Lcom/google/android/exoplayer2/upstream/m$a;)Lcom/google/android/exoplayer2/upstream/cache/b$d;

    move-result-object p1

    const-string p2, "Factory()\n        .setCa\u2026tory(context, userAgent))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/im/freechat/utils/player/PlaybackImpl;->l:Lcom/google/android/exoplayer2/upstream/cache/b$d;

    return-void
.end method

.method private final O(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/z;
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/source/q0$b;

    iget-object v1, p0, Lcom/im/freechat/utils/player/PlaybackImpl;->l:Lcom/google/android/exoplayer2/upstream/cache/b$d;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/q0$b;-><init>(Lcom/google/android/exoplayer2/upstream/m$a;)V

    invoke-static {p1}, Lcom/google/android/exoplayer2/b1;->d(Landroid/net/Uri;)Lcom/google/android/exoplayer2/b1;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/q0$b;->n(Lcom/google/android/exoplayer2/b1;)Lcom/google/android/exoplayer2/source/q0;

    move-result-object p1

    const-string v0, "Factory(cacheDataSourceF\u2026e(MediaItem.fromUri(uri))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final P()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/utils/player/PlaybackImpl;->L()V

    .line 2
    invoke-virtual {p0}, Lcom/im/freechat/utils/player/PlaybackImpl;->d()V

    return-void
.end method


# virtual methods
.method public synthetic A(Lcom/google/android/exoplayer2/audio/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->a(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/audio/e;)V

    return-void
.end method

.method public synthetic B(Lcom/google/android/exoplayer2/b1;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/x1;->j(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/b1;I)V

    return-void
.end method

.method public synthetic C(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/x1;->m(Lcom/google/android/exoplayer2/v1$h;ZI)V

    return-void
.end method

.method public synthetic D(Lcom/google/android/exoplayer2/device/b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->e(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/device/b;)V

    return-void
.end method

.method public synthetic E(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->i(Lcom/google/android/exoplayer2/v1$h;Z)V

    return-void
.end method

.method public F(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/im/freechat/utils/player/PlaybackImpl;->O(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/z;

    move-result-object p1

    iput-object p1, p0, Lcom/im/freechat/utils/player/PlaybackImpl;->g:Lcom/google/android/exoplayer2/source/z;

    .line 2
    invoke-virtual {p0}, Lcom/im/freechat/utils/player/PlaybackImpl;->d()V

    return-void
.end method

.method public synthetic G(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/w1;->e(Lcom/google/android/exoplayer2/v1$f;Z)V

    return-void
.end method

.method public H()Lcom/google/android/exoplayer2/v1;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/utils/player/PlaybackImpl;->b:Lcom/google/android/exoplayer2/q;

    return-object v0
.end method

.method public I()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/im/freechat/utils/player/PlaybackImpl;->b:Lcom/google/android/exoplayer2/q;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/v1;->j0()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/im/freechat/utils/player/PlaybackImpl;->h:I

    .line 2
    iget-object v0, p0, Lcom/im/freechat/utils/player/PlaybackImpl;->b:Lcom/google/android/exoplayer2/q;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/exoplayer2/v1;->getCurrentPosition()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    :goto_1
    iput-wide v0, p0, Lcom/im/freechat/utils/player/PlaybackImpl;->i:J

    .line 3
    iget-object v0, p0, Lcom/im/freechat/utils/player/PlaybackImpl;->b:Lcom/google/android/exoplayer2/q;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/google/android/exoplayer2/v1;->release()V

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/im/freechat/utils/player/PlaybackImpl;->c:Lcom/google/android/exoplayer2/ui/PlayerView;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/v1;)V

    .line 5
    :goto_2
    iput-object v1, p0, Lcom/im/freechat/utils/player/PlaybackImpl;->b:Lcom/google/android/exoplayer2/q;

    return-void
.end method

.method public J(Lkotlin/jvm/functions/Function1;)V
    .locals 0
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

    iput-object p1, p0, Lcom/im/freechat/utils/player/PlaybackImpl;->f:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public K(Lcom/google/android/exoplayer2/ui/PlayerView;Landroidx/lifecycle/Lifecycle;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/ui/PlayerView;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Lifecycle;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "playerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/im/freechat/utils/player/PlaybackImpl;->c:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 2
    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public L()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/im/freechat/utils/player/PlaybackImpl;->b:Lcom/google/android/exoplayer2/q;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/m$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/m$a;-><init>()V

    const/16 v1, 0x5dc0

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/m$a;->d(IZ)Lcom/google/android/exoplayer2/m$a;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/google/android/exoplayer2/upstream/p;

    const/high16 v3, 0x10000

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/upstream/p;-><init>(ZI)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/m$a;->c(Lcom/google/android/exoplayer2/upstream/p;)Lcom/google/android/exoplayer2/m$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/m$a;->a()Lcom/google/android/exoplayer2/m;

    move-result-object v0

    const-string v1, "Builder()\n            .s\u2026ZE))\n            .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/k2$b;

    iget-object v3, p0, Lcom/im/freechat/utils/player/PlaybackImpl;->a:Landroid/content/Context;

    new-instance v4, Lcom/google/android/exoplayer2/o;

    invoke-direct {v4, v3}, Lcom/google/android/exoplayer2/o;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v3, v4}, Lcom/google/android/exoplayer2/k2$b;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/i2;)V

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/k2$b;->G(Lcom/google/android/exoplayer2/z0;)Lcom/google/android/exoplayer2/k2$b;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iget-object v3, p0, Lcom/im/freechat/utils/player/PlaybackImpl;->a:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/k2$b;->O(Lcom/google/android/exoplayer2/trackselection/o;)Lcom/google/android/exoplayer2/k2$b;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/im/freechat/utils/player/PlaybackImpl;->j:Lcom/google/android/exoplayer2/audio/e;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/k2$b;->A(Lcom/google/android/exoplayer2/audio/e;Z)Lcom/google/android/exoplayer2/k2$b;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k2$b;->x()Lcom/google/android/exoplayer2/k2;

    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/im/freechat/utils/player/PlaybackImpl;->b:Lcom/google/android/exoplayer2/q;

    .line 12
    iget-object v1, p0, Lcom/im/freechat/utils/player/PlaybackImpl;->c:Lcom/google/android/exoplayer2/ui/PlayerView;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/v1;)V

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/im/freechat/utils/player/PlaybackImpl;->b:Lcom/google/android/exoplayer2/q;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/v1;->p1(Lcom/google/android/exoplayer2/v1$h;)V

    :cond_2
    return-void
.end method

.method public M(Ljava/util/List;)V
    .locals 1
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

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/im/freechat/utils/player/PlaybackImpl;->l:Lcom/google/android/exoplayer2/upstream/cache/b$d;

    invoke-static {p1, v0}, Lcom/im/freechat/extend/o;->n(Ljava/util/List;Lcom/google/android/exoplayer2/upstream/m$a;)Lcom/google/android/exoplayer2/source/i;

    move-result-object p1

    .line 2
    iput-object p1, p0, Lcom/im/freechat/utils/player/PlaybackImpl;->g:Lcom/google/android/exoplayer2/source/z;

    .line 3
    invoke-virtual {p0}, Lcom/im/freechat/utils/player/PlaybackImpl;->d()V

    return-void
.end method

.method public N()Lkotlin/jvm/functions/Function1;
    .locals 1
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

    iget-object v0, p0, Lcom/im/freechat/utils/player/PlaybackImpl;->f:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public U(I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/im/freechat/utils/player/PlaybackImpl;->b:Lcom/google/android/exoplayer2/q;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->j0()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iget v0, p0, Lcom/im/freechat/utils/player/PlaybackImpl;->d:I

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_3

    :goto_1
    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_2
    iget p1, p0, Lcom/im/freechat/utils/player/PlaybackImpl;->h:I

    :goto_2
    iput p1, p0, Lcom/im/freechat/utils/player/PlaybackImpl;->d:I

    .line 4
    iget-object v0, p0, Lcom/im/freechat/utils/player/PlaybackImpl;->e:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public synthetic X()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/w1;->q(Lcom/google/android/exoplayer2/v1$f;)V

    return-void
.end method

.method public synthetic a(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->v(Lcom/google/android/exoplayer2/v1$h;Z)V

    return-void
.end method

.method public synthetic a0(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/w1;->m(Lcom/google/android/exoplayer2/v1$f;ZI)V

    return-void
.end method

.method public synthetic b(Lcom/google/android/exoplayer2/video/b0;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->A(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/video/b0;)V

    return-void
.end method

.method public synthetic c(Lcom/google/android/exoplayer2/t1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->n(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/t1;)V

    return-void
.end method

.method public synthetic c0(IIIF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/video/m;->c(Lcom/google/android/exoplayer2/video/n;IIIF)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/im/freechat/utils/player/PlaybackImpl;->g:Lcom/google/android/exoplayer2/source/z;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/im/freechat/utils/player/PlaybackImpl;->b:Lcom/google/android/exoplayer2/q;

    if-eqz v1, :cond_1

    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/q;->V(Lcom/google/android/exoplayer2/source/z;)V

    .line 4
    invoke-interface {v1}, Lcom/google/android/exoplayer2/v1;->a()V

    const/4 v0, 0x1

    .line 5
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/v1;->l0(Z)V

    :cond_1
    return-void
.end method

.method public synthetic e(Lcom/google/android/exoplayer2/v1$l;Lcom/google/android/exoplayer2/v1$l;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/x1;->r(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/v1$l;Lcom/google/android/exoplayer2/v1$l;I)V

    return-void
.end method

.method public synthetic e0(Lcom/google/android/exoplayer2/s2;Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/w1;->u(Lcom/google/android/exoplayer2/v1$f;Lcom/google/android/exoplayer2/s2;Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic f(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->p(Lcom/google/android/exoplayer2/v1$h;I)V

    return-void
.end method

.method public synthetic g(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->w(Lcom/google/android/exoplayer2/v1$h;Ljava/util/List;)V

    return-void
.end method

.method public getCurrentPosition()J
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/utils/player/PlaybackImpl;->b:Lcom/google/android/exoplayer2/q;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/v1;->getCurrentPosition()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/im/freechat/utils/player/PlaybackImpl;->i:J

    :goto_0
    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/utils/player/PlaybackImpl;->b:Lcom/google/android/exoplayer2/q;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/v1;->getDuration()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public synthetic h(Lcom/google/android/exoplayer2/v1$c;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->c(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/v1$c;)V

    return-void
.end method

.method public synthetic i(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->t(Lcom/google/android/exoplayer2/v1$h;I)V

    return-void
.end method

.method public isPlaying()Z
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/utils/player/PlaybackImpl;->b:Lcom/google/android/exoplayer2/q;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/v1;->Q0()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public synthetic j(Lcom/google/android/exoplayer2/s2;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/x1;->y(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/s2;I)V

    return-void
.end method

.method public synthetic k(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->b(Lcom/google/android/exoplayer2/v1$h;I)V

    return-void
.end method

.method public l(I)V
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->o(Lcom/google/android/exoplayer2/v1$h;I)V

    .line 2
    invoke-virtual {p0}, Lcom/im/freechat/utils/player/PlaybackImpl;->N()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public synthetic m(Lcom/google/android/exoplayer2/f1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->k(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/f1;)V

    return-void
.end method

.method public synthetic n(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->u(Lcom/google/android/exoplayer2/v1$h;Z)V

    return-void
.end method

.method public synthetic o(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->l(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method public onStart()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    invoke-direct {p0}, Lcom/im/freechat/utils/player/PlaybackImpl;->P()V

    return-void
.end method

.method public onStop()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    invoke-virtual {p0}, Lcom/im/freechat/utils/player/PlaybackImpl;->I()V

    return-void
.end method

.method public synthetic p(IZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/x1;->f(Lcom/google/android/exoplayer2/v1$h;IZ)V

    return-void
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/utils/player/PlaybackImpl;->b:Lcom/google/android/exoplayer2/q;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/v1;->l0(Z)V

    :goto_0
    return-void
.end method

.method public synthetic q()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/x1;->s(Lcom/google/android/exoplayer2/v1$h;)V

    return-void
.end method

.method public synthetic r(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->d(Lcom/google/android/exoplayer2/v1$h;Ljava/util/List;)V

    return-void
.end method

.method public synthetic s(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/m;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/x1;->z(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/m;)V

    return-void
.end method

.method public seekTo(J)V
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/utils/player/PlaybackImpl;->b:Lcom/google/android/exoplayer2/q;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/v1;->seekTo(J)V

    :cond_0
    return-void
.end method

.method public synthetic t(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/x1;->x(Lcom/google/android/exoplayer2/v1$h;II)V

    return-void
.end method

.method public synthetic u(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->q(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    return-void
.end method

.method public synthetic v(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->h(Lcom/google/android/exoplayer2/v1$h;Z)V

    return-void
.end method

.method public synthetic w(F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->B(Lcom/google/android/exoplayer2/v1$h;F)V

    return-void
.end method

.method public x(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/utils/player/PlaybackImpl;->b:Lcom/google/android/exoplayer2/q;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/v1;->x(IJ)V

    :cond_0
    return-void
.end method

.method public y(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/im/freechat/utils/player/PlaybackImpl;->b:Lcom/google/android/exoplayer2/q;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/v1;->stop()V

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/im/freechat/utils/player/PlaybackImpl;->b:Lcom/google/android/exoplayer2/q;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->M()V

    :cond_1
    return-void
.end method

.method public synthetic z(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/v1$g;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/x1;->g(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/v1$g;)V

    return-void
.end method
