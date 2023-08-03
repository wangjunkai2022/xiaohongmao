.class final Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p$a;
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
        "Lf5/e;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lf5/e;",
        "a",
        "()Lf5/e;"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/n;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/n;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/n;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lf5/e;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/n;

    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/n;->b()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lf5/d;

    .line 2
    invoke-static {v0, v1}, Ldagger/hilt/c;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf5/d;

    .line 3
    invoke-interface {v0}, Lf5/d;->c()Lf5/e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p$a;->a()Lf5/e;

    move-result-object v0

    return-object v0
.end method
