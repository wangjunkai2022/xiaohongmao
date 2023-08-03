.class final Lcom/qennnsad/aknkaksd/domain/usecase/auth/h$a;
.super Lkotlin/jvm/internal/Lambda;
.source "AbstractRegisterUseCase.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;-><init>(Lg5/a;Lx4/a;Lcom/qennnsad/aknkaksd/data/websocket/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/qennnsad/aknkaksd/domain/base/d<",
        "Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/domain/base/d;",
        "Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;",
        "a",
        "()Lcom/qennnsad/aknkaksd/domain/base/d;"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/h$a;->a:Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/qennnsad/aknkaksd/domain/base/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/qennnsad/aknkaksd/domain/base/d<",
            "Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/qennnsad/aknkaksd/domain/base/d;

    const-class v1, Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/h$a;->a:Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;->k()Lg5/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/qennnsad/aknkaksd/domain/base/d;-><init>(Ljava/lang/reflect/Type;Lg5/a;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/h$a;->a()Lcom/qennnsad/aknkaksd/domain/base/d;

    move-result-object v0

    return-object v0
.end method
