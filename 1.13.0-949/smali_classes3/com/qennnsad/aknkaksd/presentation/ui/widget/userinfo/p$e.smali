.class final Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p$e;
.super Lkotlin/jvm/internal/Lambda;
.source "UserInfoDialogPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "a",
        "()Lcom/qennnsad/aknkaksd/data/repository/m;"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p$e;->a:Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/qennnsad/aknkaksd/data/repository/m;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p$e;->a:Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p;->a(Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p;)Lf5/e;

    move-result-object v0

    invoke-virtual {v0}, Lf5/e;->g()Lcom/qennnsad/aknkaksd/data/repository/m;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p$e;->a()Lcom/qennnsad/aknkaksd/data/repository/m;

    move-result-object v0

    return-object v0
.end method
