.class public final Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1$b;
.super Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1;
.source "SidePanelButtonAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\t\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002H\u00c6\u0001J\t\u0010\u0007\u001a\u00020\u0006H\u00d6\u0001J\t\u0010\u0008\u001a\u00020\u0002H\u00d6\u0001J\u0013\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u00d6\u0003R\u0017\u0010\u0004\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1$b;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1;",
        "",
        "c",
        "unreadCount",
        "d",
        "",
        "toString",
        "hashCode",
        "",
        "other",
        "",
        "equals",
        "I",
        "f",
        "()I",
        "<init>",
        "(I)V",
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
.field private final c:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const v0, 0x7f080493

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, p1, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2
    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1$b;->c:I

    return-void
.end method

.method public static synthetic e(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1$b;IILjava/lang/Object;)Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1$b;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1$b;->c:I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1$b;->d(I)Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1$b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1$b;->c:I

    return v0
.end method

.method public final d(I)Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1$b;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1$b;

    invoke-direct {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1$b;-><init>(I)V

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
    instance-of v1, p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1$b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1$b;

    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1$b;->c:I

    iget p1, p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1$b;->c:I

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1$b;->c:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1$b;->c:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InStreamChat(unreadCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1$b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
