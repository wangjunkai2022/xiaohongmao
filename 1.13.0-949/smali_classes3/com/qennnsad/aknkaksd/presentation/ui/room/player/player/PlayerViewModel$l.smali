.class final Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$l;
.super Lkotlin/jvm/internal/Lambda;
.source "PlayerViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;-><init>(Lcom/qennnsad/aknkaksd/data/repository/m;Lg5/a;Lx4/a;Lcom/qennnsad/aknkaksd/domain/usecase/room/n;Lcom/qennnsad/aknkaksd/domain/usecase/user/e0;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/j;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;Lcom/qennnsad/aknkaksd/domain/usecase/user/a0;Lcom/qennnsad/aknkaksd/domain/usecase/user/h;Lcom/qennnsad/aknkaksd/domain/usecase/room/b;Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/e;Lcom/qennnsad/aknkaksd/domain/usecase/room/q;Lcom/qennnsad/aknkaksd/domain/usecase/room/a0;Lcom/qennnsad/aknkaksd/domain/usecase/room/e0;Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i;Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f;Lcom/qennnsad/aknkaksd/domain/usecase/room/x;Lcom/qennnsad/aknkaksd/domain/usecase/room/t;Lcom/qennnsad/aknkaksd/domain/usecase/room/h;Lcom/qennnsad/aknkaksd/data/websocket/j;Lcom/qennnsad/aknkaksd/util/e0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;",
        "Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0001\u001a\u0004\u0018\u00010\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;",
        "user",
        "Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;",
        "summary",
        "",
        "a",
        "(Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;)Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$l;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$l;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$l;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$l;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;)Ljava/lang/Boolean;
    .locals 0
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->getFollow_users()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    check-cast p2, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$l;->a(Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
