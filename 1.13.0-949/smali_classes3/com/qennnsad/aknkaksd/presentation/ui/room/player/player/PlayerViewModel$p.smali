.class public final Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$p;
.super Ljava/lang/Object;
.source "Transformations.kt"

# interfaces
.implements Landroidx/arch/core/util/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;-><init>(Lcom/qennnsad/aknkaksd/data/repository/m;Lg5/a;Lx4/a;Lcom/qennnsad/aknkaksd/domain/usecase/room/n;Lcom/qennnsad/aknkaksd/domain/usecase/user/e0;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/j;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;Lcom/qennnsad/aknkaksd/domain/usecase/user/a0;Lcom/qennnsad/aknkaksd/domain/usecase/user/h;Lcom/qennnsad/aknkaksd/domain/usecase/room/b;Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/e;Lcom/qennnsad/aknkaksd/domain/usecase/room/q;Lcom/qennnsad/aknkaksd/domain/usecase/room/a0;Lcom/qennnsad/aknkaksd/domain/usecase/room/e0;Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i;Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f;Lcom/qennnsad/aknkaksd/domain/usecase/room/x;Lcom/qennnsad/aknkaksd/domain/usecase/room/t;Lcom/qennnsad/aknkaksd/domain/usecase/room/h;Lcom/qennnsad/aknkaksd/data/websocket/j;Lcom/qennnsad/aknkaksd/util/e0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/arch/core/util/Function;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransformations.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Transformations.kt\nandroidx/lifecycle/TransformationsKt$map$1\n+ 2 PlayerViewModel.kt\ncom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,93:1\n102#2:94\n1#3:95\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0004\n\u0002\u0008\u0008\u0010\u0000\u001a\n \u0002*\u0004\u0018\u0001H\u0001H\u0001\"\u0004\u0008\u0000\u0010\u0003\"\u0004\u0008\u0001\u0010\u00012\u000e\u0010\u0004\u001a\n \u0002*\u0004\u0018\u0001H\u0003H\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "Y",
        "kotlin.jvm.PlatformType",
        "X",
        "it",
        "apply",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "androidx/lifecycle/TransformationsKt$map$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$p;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;",
            ")",
            "Landroid/net/Uri;"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;

    .line 2
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getAvatar()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "avatar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$p;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->q0()Lcom/qennnsad/aknkaksd/data/repository/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/m;->j(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
