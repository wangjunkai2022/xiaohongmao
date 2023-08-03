.class final Lcom/qennnsad/aknkaksd/presentation/ui/main/MainFragment$e;
.super Lkotlin/jvm/internal/Lambda;
.source "MainFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/main/MainFragment;->h1(Lcom/qennnsad/aknkaksd/data/bean/AdConfigBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
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
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/main/MainFragment;

.field final synthetic b:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/MainFragment;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/MainFragment$e;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/MainFragment;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/MainFragment$e;->b:Landroid/app/Dialog;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/MainFragment$e;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/MainFragment$e;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/MainFragment;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->b0()Lg5/a;

    move-result-object v0

    invoke-virtual {v0}, Lg5/a;->C()Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->isGuest()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/MainFragment$e;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/MainFragment;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/MainFragment;->M0(Lcom/qennnsad/aknkaksd/presentation/ui/main/MainFragment;)V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/MainFragment$e;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
