.class final Lcom/im/freechat/service/music/MusicService$b;
.super Landroid/support/v4/media/session/MediaControllerCompat$a;
.source "MusicService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/service/music/MusicService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMusicService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MusicService.kt\ncom/im/freechat/service/music/MusicService$MediaControllerCallback\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,195:1\n1#2:196\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0012\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\t\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/im/freechat/service/music/MusicService$b;",
        "Landroid/support/v4/media/session/MediaControllerCompat$a;",
        "Landroid/support/v4/media/session/PlaybackStateCompat;",
        "state",
        "",
        "p",
        "Landroid/support/v4/media/MediaMetadataCompat;",
        "metadata",
        "e",
        "f",
        "<init>",
        "(Lcom/im/freechat/service/music/MusicService;)V",
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
.field final synthetic d:Lcom/im/freechat/service/music/MusicService;


# direct methods
.method public constructor <init>(Lcom/im/freechat/service/music/MusicService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/service/music/MusicService$b;->d:Lcom/im/freechat/service/music/MusicService;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$a;-><init>()V

    return-void
.end method

.method private final p(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "becomingNoisyReceiver"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/im/freechat/service/music/MusicService$b;->d:Lcom/im/freechat/service/music/MusicService;

    invoke-static {v0}, Lcom/im/freechat/service/music/MusicService;->a(Lcom/im/freechat/service/music/MusicService;)Lcom/im/freechat/service/music/a;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    invoke-virtual {v3}, Lcom/im/freechat/service/music/a;->b()V

    .line 3
    iget-object v0, p0, Lcom/im/freechat/service/music/MusicService$b;->d:Lcom/im/freechat/service/music/MusicService;

    invoke-static {v0}, Lcom/im/freechat/service/music/MusicService;->d(Lcom/im/freechat/service/music/MusicService;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/im/freechat/service/music/MusicService$b;->d:Lcom/im/freechat/service/music/MusicService;

    invoke-virtual {v0, v2}, Landroid/app/Service;->stopForeground(Z)V

    .line 5
    iget-object v0, p0, Lcom/im/freechat/service/music/MusicService$b;->d:Lcom/im/freechat/service/music/MusicService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/im/freechat/service/music/MusicService;->f(Lcom/im/freechat/service/music/MusicService;Z)V

    .line 6
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result p1

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/im/freechat/service/music/MusicService$b;->d:Lcom/im/freechat/service/music/MusicService;

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    goto :goto_2

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/im/freechat/service/music/MusicService$b;->d:Lcom/im/freechat/service/music/MusicService;

    invoke-static {p1}, Lcom/im/freechat/service/music/MusicService;->a(Lcom/im/freechat/service/music/MusicService;)Lcom/im/freechat/service/music/a;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v3, p1

    :goto_1
    invoke-virtual {v3}, Lcom/im/freechat/service/music/a;->a()V

    .line 9
    iget-object p1, p0, Lcom/im/freechat/service/music/MusicService$b;->d:Lcom/im/freechat/service/music/MusicService;

    invoke-static {p1}, Lcom/im/freechat/service/music/MusicService;->d(Lcom/im/freechat/service/music/MusicService;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/im/freechat/service/music/MusicService$b;->d:Lcom/im/freechat/service/music/MusicService;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/im/freechat/service/music/MusicService$b;->d:Lcom/im/freechat/service/music/MusicService;

    invoke-virtual {v1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/im/freechat/service/music/MusicService$b;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Service;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 11
    iget-object p1, p0, Lcom/im/freechat/service/music/MusicService$b;->d:Lcom/im/freechat/service/music/MusicService;

    invoke-static {p1, v2}, Lcom/im/freechat/service/music/MusicService;->f(Lcom/im/freechat/service/music/MusicService;Z)V

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public e(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 0
    .param p1    # Landroid/support/v4/media/MediaMetadataCompat;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/im/freechat/service/music/MusicService$b;->d:Lcom/im/freechat/service/music/MusicService;

    invoke-static {p1}, Lcom/im/freechat/service/music/MusicService;->b(Lcom/im/freechat/service/music/MusicService;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "mediaController"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->l()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/im/freechat/service/music/MusicService$b;->p(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    :cond_1
    return-void
.end method

.method public f(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 0
    .param p1    # Landroid/support/v4/media/session/PlaybackStateCompat;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/im/freechat/service/music/MusicService$b;->p(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    :cond_0
    return-void
.end method
