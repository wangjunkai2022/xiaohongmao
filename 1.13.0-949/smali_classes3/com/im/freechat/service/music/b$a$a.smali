.class final Lcom/im/freechat/service/music/b$a$a;
.super Landroid/support/v4/media/session/MediaControllerCompat$a;
.source "MediaSessionConnection.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/service/music/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010\t\u001a\u00020\u0004H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/im/freechat/service/music/b$a$a;",
        "Landroid/support/v4/media/session/MediaControllerCompat$a;",
        "Landroid/support/v4/media/session/PlaybackStateCompat;",
        "state",
        "",
        "f",
        "Landroid/support/v4/media/MediaMetadataCompat;",
        "metadata",
        "e",
        "j",
        "<init>",
        "(Lcom/im/freechat/service/music/b$a;)V",
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
.field final synthetic d:Lcom/im/freechat/service/music/b$a;


# direct methods
.method public constructor <init>(Lcom/im/freechat/service/music/b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/service/music/b$a$a;->d:Lcom/im/freechat/service/music/b$a;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$a;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 1
    .param p1    # Landroid/support/v4/media/MediaMetadataCompat;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/im/freechat/service/music/b$a$a;->d:Lcom/im/freechat/service/music/b$a;

    iget-object v0, v0, Lcom/im/freechat/service/music/b$a;->b:Lcom/im/freechat/service/music/b;

    invoke-virtual {v0}, Lcom/im/freechat/service/music/b;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-static {}, Lcom/im/freechat/service/music/c;->c()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public f(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 1
    .param p1    # Landroid/support/v4/media/session/PlaybackStateCompat;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/im/freechat/service/music/b$a$a;->d:Lcom/im/freechat/service/music/b$a;

    iget-object v0, v0, Lcom/im/freechat/service/music/b$a;->b:Lcom/im/freechat/service/music/b;

    invoke-virtual {v0}, Lcom/im/freechat/service/music/b;->e()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-static {}, Lcom/im/freechat/service/music/c;->a()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p1

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/service/music/b$a$a;->d:Lcom/im/freechat/service/music/b$a;

    iget-object v0, v0, Lcom/im/freechat/service/music/b$a;->b:Lcom/im/freechat/service/music/b;

    invoke-static {v0}, Lcom/im/freechat/service/music/b;->b(Lcom/im/freechat/service/music/b;)Lcom/im/freechat/service/music/b$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat$b;->onConnectionSuspended()V

    return-void
.end method
