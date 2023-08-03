.class public abstract Lcom/qennnsad/aknkaksd/presentation/ui/main/a;
.super Lcom/qennnsad/aknkaksd/presentation/ui/main/c;
.source "MainEvent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/ui/main/a$d;,
        Lcom/qennnsad/aknkaksd/presentation/ui/main/a$c;,
        Lcom/qennnsad/aknkaksd/presentation/ui/main/a$b;,
        Lcom/qennnsad/aknkaksd/presentation/ui/main/a$e;,
        Lcom/qennnsad/aknkaksd/presentation/ui/main/a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0005\u0003\u0008\u000e\u000f\u0010B\u001b\u0008\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0017\u0010\u0006\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0003\u0010\u0005R\u0017\u0010\u000b\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0008\u0010\n\u0082\u0001\u0005\u0011\u0012\u0013\u0014\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/a;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/c;",
        "",
        "a",
        "I",
        "()I",
        "destinationId",
        "",
        "b",
        "Z",
        "()Z",
        "statusDarkText",
        "<init>",
        "(IZ)V",
        "c",
        "d",
        "e",
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/a$a;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/a$b;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/a$c;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/a$d;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/main/a$e;",
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

.field private final b:Z


# direct methods
.method private constructor <init>(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/c;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/a;->a:I

    iput-boolean p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/a;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    const/4 p3, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/presentation/ui/main/a;-><init>(IZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(IZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/a;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/a;->a:I

    return v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/a;->b:Z

    return v0
.end method
