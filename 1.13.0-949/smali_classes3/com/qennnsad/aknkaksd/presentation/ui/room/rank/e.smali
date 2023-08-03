.class public final Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/e;
.super Ljava/lang/Object;
.source "RoomSeatRankDialog_MembersInjector.java"

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
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankDialog;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lg5/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/data/repository/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu7/c;Lu7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lg5/a;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/data/repository/m;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/e;->a:Lu7/c;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/e;->b:Lu7/c;

    return-void
.end method

.method public static b(Lu7/c;Lu7/c;)Ld6/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lg5/a;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/data/repository/m;",
            ">;)",
            "Ld6/g<",
            "Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankDialog;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/e;

    invoke-direct {v0, p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/e;-><init>(Lu7/c;Lu7/c;)V

    return-object v0
.end method

.method public static c(Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankDialog;Lg5/a;)V
    .locals 0
    .annotation build Ldagger/internal/j;
        value = "com.qennnsad.aknkaksd.presentation.ui.room.rank.RoomSeatRankDialog.localDataManager"
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankDialog;->h:Lg5/a;

    return-void
.end method

.method public static e(Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankDialog;Lcom/qennnsad/aknkaksd/data/repository/m;)V
    .locals 0
    .annotation build Ldagger/internal/j;
        value = "com.qennnsad.aknkaksd.presentation.ui.room.rank.RoomSeatRankDialog.sourceFactory"
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankDialog;->i:Lcom/qennnsad/aknkaksd/data/repository/m;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankDialog;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/e;->d(Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankDialog;)V

    return-void
.end method

.method public d(Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankDialog;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/e;->a:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/e;->c(Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankDialog;Lg5/a;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/e;->b:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/repository/m;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/e;->e(Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankDialog;Lcom/qennnsad/aknkaksd/data/repository/m;)V

    return-void
.end method
