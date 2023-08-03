.class public final Lp4/e;
.super Ljava/lang/Object;
.source "PlayerUtil.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlayerUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlayerUtil.kt\ncom/im/freechat/utils/player/PlayerUtil\n+ 2 PlaybackStateCompatExtentions.kt\ncom/im/freechat/extend/PlaybackStateCompatExtentionsKt\n+ 3 MediaMetadataCompatExtensions.kt\ncom/im/freechat/extend/MediaMetadataCompatExtensionsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,168:1\n10#2:169\n13#2,2:171\n17#2,5:173\n13#2,2:198\n13#2,2:200\n44#2,6:204\n24#2:210\n33#3:170\n33#3:202\n33#3:203\n350#4,7:178\n1603#4,9:185\n1851#4:194\n1852#4:196\n1612#4:197\n1#5:195\n*S KotlinDebug\n*F\n+ 1 PlayerUtil.kt\ncom/im/freechat/utils/player/PlayerUtil\n*L\n89#1:169\n93#1:171,2\n94#1:173,5\n138#1:198,2\n148#1:200,2\n63#1:204,6\n64#1:210\n90#1:170\n41#1:202\n52#1:203\n101#1:178,7\n104#1:185,9\n104#1:194\n104#1:196\n104#1:197\n104#1:195\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\"\u001a\u00020!\u00a2\u0006\u0004\u0008#\u0010$J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J0\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u00042\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0008\u0008\u0002\u0010\n\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0002J\u0006\u0010\u000e\u001a\u00020\u000cJ\u0006\u0010\u000f\u001a\u00020\u000cJ\u0006\u0010\u0010\u001a\u00020\u000cJ\u0006\u0010\u0011\u001a\u00020\u000cJ\u000e\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\tJ\u000e\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u0002R\u001d\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00168\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\u001d\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u00168\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u0019\u001a\u0004\u0008\u001e\u0010\u001bR\u001d\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00168\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010\u0019\u001a\u0004\u0008 \u0010\u001b\u00a8\u0006%"
    }
    d2 = {
        "Lp4/e;",
        "",
        "",
        "d",
        "",
        "startPlayId",
        "",
        "Lcom/im/freechat/bean/PlaylistItem;",
        "playItems",
        "",
        "startPos",
        "forcePause",
        "",
        "k",
        "o",
        "m",
        "j",
        "r",
        "progress",
        "p",
        "should",
        "q",
        "Landroidx/lifecycle/MutableLiveData;",
        "Landroid/support/v4/media/MediaMetadataCompat;",
        "mediaMetadata",
        "Landroidx/lifecycle/MutableLiveData;",
        "f",
        "()Landroidx/lifecycle/MutableLiveData;",
        "Landroid/support/v4/media/session/PlaybackStateCompat;",
        "playbackState",
        "h",
        "mediaPosition",
        "g",
        "Lcom/im/freechat/service/music/b;",
        "mediaSessionConnection",
        "<init>",
        "(Lcom/im/freechat/service/music/b;)V",
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
.field private final a:Lcom/im/freechat/service/music/b;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private b:Landroid/support/v4/media/session/PlaybackStateCompat;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Landroid/support/v4/media/MediaMetadataCompat;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Landroid/support/v4/media/session/PlaybackStateCompat;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final e:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private f:Z

.field private final g:Landroid/os/Handler;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final h:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Landroid/support/v4/media/session/PlaybackStateCompat;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final i:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Landroid/support/v4/media/MediaMetadataCompat;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/im/freechat/service/music/b;)V
    .locals 3
    .param p1    # Lcom/im/freechat/service/music/b;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "mediaSessionConnection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp4/e;->a:Lcom/im/freechat/service/music/b;

    .line 3
    invoke-static {}, Lcom/im/freechat/service/music/c;->a()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    iput-object v0, p0, Lp4/e;->b:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 4
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lp4/e;->c:Landroidx/lifecycle/MutableLiveData;

    .line 5
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lcom/im/freechat/service/music/c;->a()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lp4/e;->d:Landroidx/lifecycle/MutableLiveData;

    .line 6
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lp4/e;->e:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lp4/e;->f:Z

    .line 8
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lp4/e;->g:Landroid/os/Handler;

    .line 9
    new-instance v0, Lp4/c;

    invoke-direct {v0, p0}, Lp4/c;-><init>(Lp4/e;)V

    iput-object v0, p0, Lp4/e;->h:Landroidx/lifecycle/Observer;

    .line 10
    new-instance v1, Lp4/b;

    invoke-direct {v1, p0}, Lp4/b;-><init>(Lp4/e;)V

    iput-object v1, p0, Lp4/e;->i:Landroidx/lifecycle/Observer;

    .line 11
    invoke-virtual {p1}, Lcom/im/freechat/service/music/b;->e()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 12
    invoke-virtual {p1}, Lcom/im/freechat/service/music/b;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 13
    invoke-direct {p0}, Lp4/e;->d()Z

    return-void
.end method

.method public static synthetic a(Lp4/e;Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 0

    invoke-static {p0, p1}, Lp4/e;->n(Lp4/e;Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method

.method public static synthetic b(Lp4/e;Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 0

    invoke-static {p0, p1}, Lp4/e;->i(Lp4/e;Landroid/support/v4/media/MediaMetadataCompat;)V

    return-void
.end method

.method public static synthetic c(Lp4/e;)V
    .locals 0

    invoke-static {p0}, Lp4/e;->e(Lp4/e;)V

    return-void
.end method

.method private final d()Z
    .locals 4

    iget-object v0, p0, Lp4/e;->g:Landroid/os/Handler;

    new-instance v1, Lp4/d;

    invoke-direct {v1, p0}, Lp4/d;-><init>(Lp4/e;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method private static final e(Lp4/e;)V
    .locals 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lp4/e;->b:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 2
    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getLastPositionUpdateTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 4
    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPosition()J

    move-result-wide v3

    long-to-float v3, v3

    long-to-float v1, v1

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result v0

    mul-float v1, v1, v0

    add-float/2addr v3, v1

    float-to-long v0, v3

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPosition()J

    move-result-wide v0

    .line 6
    :goto_0
    iget-object v2, p0, Lp4/e;->b:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 7
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 8
    :goto_1
    iget-object v2, p0, Lp4/e;->e:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v4, v0

    if-eqz v2, :cond_3

    :goto_2
    if-nez v3, :cond_3

    .line 9
    iget-object v2, p0, Lp4/e;->e:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 10
    :cond_3
    iget-boolean v0, p0, Lp4/e;->f:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lp4/e;->d()Z

    :cond_4
    return-void
.end method

.method private static final i(Lp4/e;Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "android.media.metadata.MEDIA_ID"

    .line 2
    invoke-virtual {p1, v0}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return-void

    .line 4
    :cond_2
    iget-object p0, p0, Lp4/e;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic l(Lp4/e;Ljava/lang/String;Ljava/util/List;JZILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const-wide/16 p3, 0x0

    :cond_0
    move-wide v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    const/4 p5, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    move v5, p5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lp4/e;->k(Ljava/lang/String;Ljava/util/List;JZ)V

    return-void
.end method

.method private static final n(Lp4/e;Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lcom/im/freechat/service/music/c;->a()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lp4/e;->b:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 2
    iget-object p1, p0, Lp4/e;->a:Lcom/im/freechat/service/music/b;

    invoke-virtual {p1}, Lcom/im/freechat/service/music/b;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/MediaMetadataCompat;

    if-nez p1, :cond_1

    invoke-static {}, Lcom/im/freechat/service/music/c;->c()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    :cond_1
    const-string v0, "mediaSessionConnection.n\u2026.value ?: NOTHING_PLAYING"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "android.media.metadata.MEDIA_ID"

    .line 3
    invoke-virtual {p1, v0}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_4

    return-void

    .line 5
    :cond_4
    iget-object p1, p0, Lp4/e;->d:Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Lp4/e;->b:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final f()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Landroid/support/v4/media/MediaMetadataCompat;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lp4/e;->c:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final g()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lp4/e;->e:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final h()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Landroid/support/v4/media/session/PlaybackStateCompat;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lp4/e;->d:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp4/e;->a:Lcom/im/freechat/service/music/b;

    invoke-virtual {v0}, Lcom/im/freechat/service/music/b;->e()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/PlaybackStateCompat;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lp4/e;->a:Lcom/im/freechat/service/music/b;

    invoke-virtual {v0}, Lcom/im/freechat/service/music/b;->f()Landroid/support/v4/media/session/MediaControllerCompat$e;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$e;->b()V

    :cond_2
    return-void
.end method

.method public final k(Ljava/lang/String;Ljava/util/List;JZ)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/im/freechat/bean/PlaylistItem;",
            ">;JZ)V"
        }
    .end annotation

    const-string v0, "startPlayId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playItems"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lp4/e;->a:Lcom/im/freechat/service/music/b;

    invoke-virtual {v0}, Lcom/im/freechat/service/music/b;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaMetadataCompat;

    .line 2
    iget-object v1, p0, Lp4/e;->a:Lcom/im/freechat/service/music/b;

    invoke-virtual {v1}, Lcom/im/freechat/service/music/b;->f()Landroid/support/v4/media/session/MediaControllerCompat$e;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lp4/e;->a:Lcom/im/freechat/service/music/b;

    invoke-virtual {v2}, Lcom/im/freechat/service/music/b;->e()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/session/PlaybackStateCompat;

    const/4 v3, 0x6

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_0

    new-array v8, v5, [Ljava/lang/Integer;

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v8, v2}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v8, 0x0

    if-eqz v2, :cond_a

    if-eqz v0, :cond_1

    const-string v2, "android.media.metadata.MEDIA_ID"

    .line 5
    invoke-virtual {v0, v2}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v8

    .line 6
    :goto_1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7
    iget-object p2, p0, Lp4/e;->a:Lcom/im/freechat/service/music/b;

    invoke-virtual {p2}, Lcom/im/freechat/service/music/b;->e()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/media/session/PlaybackStateCompat;

    if-eqz p2, :cond_9

    .line 8
    invoke-virtual {p2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result p3

    if-eq p3, v3, :cond_3

    .line 9
    invoke-virtual {p2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result p3

    if-ne p3, v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p3, 0x1

    :goto_3
    if-nez p3, :cond_8

    if-eqz p5, :cond_4

    goto :goto_5

    .line 10
    :cond_4
    invoke-virtual {p2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide p3

    const-wide/16 v2, 0x4

    invoke-static {p3, p4, v2, v3}, Lcom/im/freechat/extend/n;->b(JJ)Z

    move-result p3

    if-nez p3, :cond_6

    .line 11
    invoke-virtual {p2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide p3

    const-wide/16 v2, 0x200

    invoke-static {p3, p4, v2, v3}, Lcom/im/freechat/extend/n;->b(JJ)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 12
    invoke-virtual {p2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result p2

    if-ne p2, v4, :cond_5

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    :cond_6
    :goto_4
    if-eqz v6, :cond_7

    if-eqz v1, :cond_9

    .line 13
    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat$e;->c()V

    goto :goto_6

    .line 14
    :cond_7
    sget-object p2, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Playable item clicked but neither play nor pause are enabled! (messageId="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p3, v7, [Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Ltimber/log/Timber$b;->x(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_8
    :goto_5
    if-eqz v1, :cond_9

    .line 15
    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat$e;->b()V

    :cond_9
    :goto_6
    return-void

    .line 16
    :cond_a
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 17
    check-cast v3, Lcom/im/freechat/bean/PlaylistItem;

    .line 18
    invoke-virtual {v3}, Lcom/im/freechat/bean/PlaylistItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_8

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_c
    const/4 v2, -0x1

    :goto_8
    add-int/2addr v2, v6

    .line 19
    invoke-interface {p2, v7, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_d
    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 22
    check-cast v2, Lcom/im/freechat/bean/PlaylistItem;

    .line 23
    new-instance v3, Landroid/support/v4/media/MediaMetadataCompat$b;

    invoke-direct {v3}, Landroid/support/v4/media/MediaMetadataCompat$b;-><init>()V

    .line 24
    invoke-virtual {v2}, Lcom/im/freechat/bean/PlaylistItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/im/freechat/extend/o;->j(Landroid/support/v4/media/MediaMetadataCompat$b;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$b;

    move-result-object v3

    .line 25
    invoke-virtual {v2}, Lcom/im/freechat/bean/PlaylistItem;->getSender()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/im/freechat/extend/o;->l(Landroid/support/v4/media/MediaMetadataCompat$b;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$b;

    move-result-object v3

    .line 26
    invoke-virtual {v2}, Lcom/im/freechat/bean/PlaylistItem;->getTime()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/im/freechat/extend/o;->i(Landroid/support/v4/media/MediaMetadataCompat$b;J)Landroid/support/v4/media/MediaMetadataCompat$b;

    move-result-object v3

    .line 27
    invoke-virtual {v2}, Lcom/im/freechat/bean/PlaylistItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/im/freechat/extend/o;->k(Landroid/support/v4/media/MediaMetadataCompat$b;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$b;

    move-result-object v3

    .line 28
    invoke-virtual {v2}, Lcom/im/freechat/bean/PlaylistItem;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "1"

    goto :goto_a

    :cond_e
    move-object v2, v8

    :goto_a
    invoke-static {v3, v2}, Lcom/im/freechat/extend/o;->m(Landroid/support/v4/media/MediaMetadataCompat$b;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$b;

    move-result-object v2

    .line 29
    invoke-virtual {v2}, Landroid/support/v4/media/MediaMetadataCompat$b;->a()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 30
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 31
    :cond_f
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    if-eqz v1, :cond_10

    new-array v0, v6, [Lkotlin/Pair;

    const-string v2, "music_source"

    .line 32
    invoke-static {v2, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    aput-object p2, v0, v7

    invoke-static {v0}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$e;->d(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 33
    :cond_10
    invoke-virtual {p0, p3, p4}, Lp4/e;->p(J)V

    if-eqz p5, :cond_11

    .line 34
    iget-object p1, p0, Lp4/e;->a:Lcom/im/freechat/service/music/b;

    invoke-virtual {p1}, Lcom/im/freechat/service/music/b;->f()Landroid/support/v4/media/session/MediaControllerCompat$e;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$e;->b()V

    :cond_11
    return-void
.end method

.method public final m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp4/e;->a:Lcom/im/freechat/service/music/b;

    invoke-virtual {v0}, Lcom/im/freechat/service/music/b;->e()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/PlaybackStateCompat;

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lp4/e;->a:Lcom/im/freechat/service/music/b;

    invoke-virtual {v0}, Lcom/im/freechat/service/music/b;->f()Landroid/support/v4/media/session/MediaControllerCompat$e;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$e;->b()V

    goto :goto_2

    .line 5
    :cond_2
    iget-object v0, p0, Lp4/e;->a:Lcom/im/freechat/service/music/b;

    invoke-virtual {v0}, Lcom/im/freechat/service/music/b;->f()Landroid/support/v4/media/session/MediaControllerCompat$e;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$e;->c()V

    :cond_3
    :goto_2
    return-void
.end method

.method public final o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lp4/e;->a:Lcom/im/freechat/service/music/b;

    invoke-virtual {v0}, Lcom/im/freechat/service/music/b;->e()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lp4/e;->h:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 2
    iget-object v0, p0, Lp4/e;->a:Lcom/im/freechat/service/music/b;

    invoke-virtual {v0}, Lcom/im/freechat/service/music/b;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lp4/e;->i:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 3
    iget-object v0, p0, Lp4/e;->a:Lcom/im/freechat/service/music/b;

    invoke-virtual {v0}, Lcom/im/freechat/service/music/b;->f()Landroid/support/v4/media/session/MediaControllerCompat$e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$e;->x()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lp4/e;->f:Z

    return-void
.end method

.method public final p(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp4/e;->a:Lcom/im/freechat/service/music/b;

    invoke-virtual {v0}, Lcom/im/freechat/service/music/b;->f()Landroid/support/v4/media/session/MediaControllerCompat$e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$e;->l(J)V

    :cond_0
    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lp4/e;->q(Z)V

    return-void
.end method

.method public final q(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lp4/e;->f:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lp4/e;->d()Z

    :cond_0
    return-void
.end method

.method public final r()V
    .locals 1

    iget-object v0, p0, Lp4/e;->a:Lcom/im/freechat/service/music/b;

    invoke-virtual {v0}, Lcom/im/freechat/service/music/b;->f()Landroid/support/v4/media/session/MediaControllerCompat$e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$e;->x()V

    :cond_0
    return-void
.end method
