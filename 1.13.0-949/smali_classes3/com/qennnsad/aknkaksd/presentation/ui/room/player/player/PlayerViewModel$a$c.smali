.class public final Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;
.super Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a;
.source "PlayerViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0003\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J(\u0010\t\u001a\u00020\u00002\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00022\n\u0008\u0003\u0010\u0008\u001a\u0004\u0018\u00010\u0004H\u00c6\u0001\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u000c\u001a\u00020\u000bH\u00d6\u0001J\t\u0010\r\u001a\u00020\u0004H\u00d6\u0001J\u0013\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u00d6\u0003R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R\u0019\u0010\u0008\u001a\u0004\u0018\u00010\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0006\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a;",
        "",
        "a",
        "",
        "b",
        "()Ljava/lang/Integer;",
        "exception",
        "messageRes",
        "c",
        "(Ljava/lang/Throwable;Ljava/lang/Integer;)Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;",
        "",
        "toString",
        "hashCode",
        "",
        "other",
        "",
        "equals",
        "Ljava/lang/Throwable;",
        "e",
        "()Ljava/lang/Throwable;",
        "Ljava/lang/Integer;",
        "f",
        "<init>",
        "(Ljava/lang/Throwable;Ljava/lang/Integer;)V",
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
.field private final a:Ljava/lang/Throwable;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final b:Ljava/lang/Integer;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;-><init>(Ljava/lang/Throwable;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/StringRes;
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;->a:Ljava/lang/Throwable;

    .line 4
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;->b:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Throwable;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;-><init>(Ljava/lang/Throwable;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic d(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;Ljava/lang/Throwable;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;->a:Ljava/lang/Throwable;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;->b:Ljava/lang/Integer;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;->c(Ljava/lang/Throwable;Ljava/lang/Integer;)Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/Throwable;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;->a:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final b()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public final c(Ljava/lang/Throwable;Ljava/lang/Integer;)Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/StringRes;
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;

    invoke-direct {v0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;-><init>(Ljava/lang/Throwable;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public final e()Ljava/lang/Throwable;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;->a:Ljava/lang/Throwable;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;->a:Ljava/lang/Throwable;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;->a:Ljava/lang/Throwable;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;->b:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;->b:Ljava/lang/Integer;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final f()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;->a:Ljava/lang/Throwable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;->b:Ljava/lang/Integer;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FinishActivityEvent(exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;->a:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", messageRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
