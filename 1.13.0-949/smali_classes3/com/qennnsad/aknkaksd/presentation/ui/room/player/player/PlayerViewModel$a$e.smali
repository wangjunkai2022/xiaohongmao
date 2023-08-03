.class public final Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$e;
.super Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a;
.source "PlayerViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\t\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002H\u00c6\u0001J\t\u0010\u0007\u001a\u00020\u0006H\u00d6\u0001J\t\u0010\t\u001a\u00020\u0008H\u00d6\u0001J\u0013\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u00d6\u0003R\u0017\u0010\u0004\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$e;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a;",
        "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;",
        "a",
        "opponent",
        "b",
        "",
        "toString",
        "",
        "hashCode",
        "",
        "other",
        "",
        "equals",
        "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;",
        "d",
        "()Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "opponent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$e;->a:Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;

    return-void
.end method

.method public static synthetic c(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$e;Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;ILjava/lang/Object;)Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$e;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$e;->a:Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$e;->b(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$e;->a:Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;

    return-object v0
.end method

.method public final b(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$e;
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "opponent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$e;

    invoke-direct {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$e;-><init>(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;)V

    return-object v0
.end method

.method public final d()Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$e;->a:Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$e;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$e;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$e;->a:Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;

    iget-object p1, p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$e;->a:Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$e;->a:Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PkOpponentInfoLoaded(opponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$e;->a:Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
