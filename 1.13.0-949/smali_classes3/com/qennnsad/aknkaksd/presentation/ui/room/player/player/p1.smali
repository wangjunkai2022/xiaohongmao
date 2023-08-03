.class public final Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/p1;
.super Ljava/lang/Object;
.source "PlayerActivity_MembersInjector.java"

# interfaces
.implements Ld6/g;


# annotations
.annotation build Ldagger/internal/e;
.end annotation

.annotation build Ldagger/internal/r;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld6/g<",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/data/repository/m;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/util/e0;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu7/c;Lu7/c;Lu7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/data/repository/m;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/util/e0;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/p1;->a:Lu7/c;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/p1;->b:Lu7/c;

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/p1;->c:Lu7/c;

    return-void
.end method

.method public static b(Lu7/c;Lu7/c;Lu7/c;)Ld6/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/data/repository/m;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/util/e0;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;",
            ">;)",
            "Ld6/g<",
            "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/p1;

    invoke-direct {v0, p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/p1;-><init>(Lu7/c;Lu7/c;Lu7/c;)V

    return-object v0
.end method

.method public static c(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/util/e0;)V
    .locals 0
    .annotation build Ldagger/internal/j;
        value = "com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerActivity.fanClubUtil"
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->U:Lcom/qennnsad/aknkaksd/util/e0;

    return-void
.end method

.method public static e(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;)V
    .locals 0
    .annotation build Ldagger/internal/j;
        value = "com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerActivity.msgUtils"
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->V:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    return-void
.end method

.method public static f(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/repository/m;)V
    .locals 0
    .annotation build Ldagger/internal/j;
        value = "com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerActivity.sourceFactory"
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->T:Lcom/qennnsad/aknkaksd/data/repository/m;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/p1;->d(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V

    return-void
.end method

.method public d(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/p1;->a:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/repository/m;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/p1;->f(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/repository/m;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/p1;->b:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/util/e0;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/p1;->c(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/util/e0;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/p1;->c:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/p1;->e(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;)V

    return-void
.end method
