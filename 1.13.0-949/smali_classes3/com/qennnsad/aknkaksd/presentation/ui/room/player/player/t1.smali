.class public abstract Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1;
.super Ljava/lang/Object;
.source "SidePanelButtonAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1$a;,
        Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0002\u0003\u0007B\u0019\u0008\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\t\u0010\nR\u0017\u0010\u0006\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0003\u0010\u0005R\u0017\u0010\u0008\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0004\u001a\u0004\u0008\u0007\u0010\u0005\u0082\u0001\u0002\u000b\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1;",
        "",
        "",
        "a",
        "I",
        "()I",
        "imageRes",
        "b",
        "indicatorCount",
        "<init>",
        "(II)V",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1$a;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1$b;",
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
.field private final a:I

.field private final b:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1;->a:I

    iput p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1;->b:I

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1;->a:I

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1;->b:I

    return v0
.end method
