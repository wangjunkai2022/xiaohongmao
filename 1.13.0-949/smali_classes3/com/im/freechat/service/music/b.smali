.class public final Lcom/im/freechat/service/music/b;
.super Ljava/lang/Object;
.source "MediaSessionConnection.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/service/music/b$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\u0005B\u0017\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u00a2\u0006\u0004\u0008 \u0010!R%\u0010\t\u001a\u0010\u0012\u000c\u0012\n \u0004*\u0004\u0018\u00010\u00030\u00030\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008R%\u0010\r\u001a\u0010\u0012\u000c\u0012\n \u0004*\u0004\u0018\u00010\n0\n0\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0006\u001a\u0004\u0008\u000c\u0010\u0008R\u0018\u0010\u0011\u001a\u00060\u000eR\u00020\u00008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0014\u001a\u00020\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u0013R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0016R\u0013\u0010\u001b\u001a\u0004\u0018\u00010\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\""
    }
    d2 = {
        "Lcom/im/freechat/service/music/b;",
        "",
        "Landroidx/lifecycle/MutableLiveData;",
        "Landroid/support/v4/media/session/PlaybackStateCompat;",
        "kotlin.jvm.PlatformType",
        "a",
        "Landroidx/lifecycle/MutableLiveData;",
        "e",
        "()Landroidx/lifecycle/MutableLiveData;",
        "playbackState",
        "Landroid/support/v4/media/MediaMetadataCompat;",
        "b",
        "d",
        "nowPlaying",
        "Lcom/im/freechat/service/music/b$a;",
        "c",
        "Lcom/im/freechat/service/music/b$a;",
        "mediaBrowserConnectionCallback",
        "Landroid/support/v4/media/MediaBrowserCompat;",
        "Landroid/support/v4/media/MediaBrowserCompat;",
        "mediaBrowser",
        "Landroid/support/v4/media/session/MediaControllerCompat;",
        "Landroid/support/v4/media/session/MediaControllerCompat;",
        "mediaController",
        "Landroid/support/v4/media/session/MediaControllerCompat$e;",
        "f",
        "()Landroid/support/v4/media/session/MediaControllerCompat$e;",
        "transportControls",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/ComponentName;",
        "serviceComponent",
        "<init>",
        "(Landroid/content/Context;Landroid/content/ComponentName;)V",
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
.field private final a:Landroidx/lifecycle/MutableLiveData;
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

.field private final b:Landroidx/lifecycle/MutableLiveData;
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

.field private final c:Lcom/im/freechat/service/music/b$a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Landroid/support/v4/media/MediaBrowserCompat;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private e:Landroid/support/v4/media/session/MediaControllerCompat;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/content/ComponentName;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceComponent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lcom/im/freechat/service/music/c;->a()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/im/freechat/service/music/b;->a:Landroidx/lifecycle/MutableLiveData;

    .line 3
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lcom/im/freechat/service/music/c;->c()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/im/freechat/service/music/b;->b:Landroidx/lifecycle/MutableLiveData;

    .line 4
    new-instance v0, Lcom/im/freechat/service/music/b$a;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/service/music/b$a;-><init>(Lcom/im/freechat/service/music/b;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/im/freechat/service/music/b;->c:Lcom/im/freechat/service/music/b$a;

    .line 5
    new-instance v1, Landroid/support/v4/media/MediaBrowserCompat;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v0, v2}, Landroid/support/v4/media/MediaBrowserCompat;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$b;Landroid/os/Bundle;)V

    .line 6
    invoke-virtual {v1}, Landroid/support/v4/media/MediaBrowserCompat;->a()V

    .line 7
    iput-object v1, p0, Lcom/im/freechat/service/music/b;->d:Landroid/support/v4/media/MediaBrowserCompat;

    return-void
.end method

.method public static final synthetic a(Lcom/im/freechat/service/music/b;)Landroid/support/v4/media/MediaBrowserCompat;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/service/music/b;->d:Landroid/support/v4/media/MediaBrowserCompat;

    return-object p0
.end method

.method public static final synthetic b(Lcom/im/freechat/service/music/b;)Lcom/im/freechat/service/music/b$a;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/service/music/b;->c:Lcom/im/freechat/service/music/b$a;

    return-object p0
.end method

.method public static final synthetic c(Lcom/im/freechat/service/music/b;Landroid/support/v4/media/session/MediaControllerCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/im/freechat/service/music/b;->e:Landroid/support/v4/media/session/MediaControllerCompat;

    return-void
.end method


# virtual methods
.method public final d()Landroidx/lifecycle/MutableLiveData;
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

    iget-object v0, p0, Lcom/im/freechat/service/music/b;->b:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final e()Landroidx/lifecycle/MutableLiveData;
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

    iget-object v0, p0, Lcom/im/freechat/service/music/b;->a:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final f()Landroid/support/v4/media/session/MediaControllerCompat$e;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/service/music/b;->e:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->v()Landroid/support/v4/media/session/MediaControllerCompat$e;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
