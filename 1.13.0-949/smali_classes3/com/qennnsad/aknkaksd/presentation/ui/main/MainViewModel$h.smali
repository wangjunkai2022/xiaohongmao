.class final Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel$h;
.super Lkotlin/jvm/internal/Lambda;
.source "MainViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel;-><init>(Lg5/a;Lcom/qennnsad/aknkaksd/domain/usecase/app/c;Lcom/qennnsad/aknkaksd/domain/usecase/app/w;Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;Lcom/qennnsad/aknkaksd/domain/usecase/user/w;Lcom/qennnsad/aknkaksd/domain/usecase/user/e0;Lcom/qennnsad/aknkaksd/domain/usecase/room/i0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00002\u0008\u0010\u0001\u001a\u0004\u0018\u00010\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "",
        "im",
        "",
        "unread",
        "a",
        "(Ljava/lang/Boolean;Ljava/lang/Integer;)Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final a:Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel$h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel$h;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel$h;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel$h;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel$h;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Boolean;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 1
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-lez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/MainViewModel$h;->a(Ljava/lang/Boolean;Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
