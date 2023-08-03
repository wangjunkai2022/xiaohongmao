.class final Lcom/im/freechat/service/music/b$a;
.super Landroid/support/v4/media/MediaBrowserCompat$b;
.source "MediaSessionConnection.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/service/music/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/service/music/b$a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0082\u0004\u0018\u00002\u00020\u0001:\u0001\u0005B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/im/freechat/service/music/b$a;",
        "Landroid/support/v4/media/MediaBrowserCompat$b;",
        "",
        "onConnected",
        "Landroid/content/Context;",
        "a",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Lcom/im/freechat/service/music/b;Landroid/content/Context;)V",
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

.field final synthetic b:Lcom/im/freechat/service/music/b;


# direct methods
.method public constructor <init>(Lcom/im/freechat/service/music/b;Landroid/content/Context;)V
    .locals 1
    .param p1    # Lcom/im/freechat/service/music/b;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/im/freechat/service/music/b$a;->b:Lcom/im/freechat/service/music/b;

    .line 2
    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$b;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/im/freechat/service/music/b$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/im/freechat/service/music/b$a;->b:Lcom/im/freechat/service/music/b;

    new-instance v1, Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v2, p0, Lcom/im/freechat/service/music/b$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/im/freechat/service/music/b;->a(Lcom/im/freechat/service/music/b;)Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/media/MediaBrowserCompat;->h()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 2
    new-instance v2, Lcom/im/freechat/service/music/b$a$a;

    invoke-direct {v2, p0}, Lcom/im/freechat/service/music/b$a$a;-><init>(Lcom/im/freechat/service/music/b$a;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaControllerCompat;->y(Landroid/support/v4/media/session/MediaControllerCompat$a;)V

    .line 3
    invoke-static {v0, v1}, Lcom/im/freechat/service/music/b;->c(Lcom/im/freechat/service/music/b;Landroid/support/v4/media/session/MediaControllerCompat;)V

    return-void
.end method
