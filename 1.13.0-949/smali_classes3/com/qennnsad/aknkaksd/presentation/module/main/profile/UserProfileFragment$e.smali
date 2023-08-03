.class final Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$e;
.super Lkotlin/jvm/internal/Lambda;
.source "UserProfileFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;->N0()V
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
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$e;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$e;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$e;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;->C0(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;)Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;->E()Lkotlinx/coroutines/flow/t;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/t;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f13014f

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 3
    invoke-static {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/util/toast/a;->m(IZILjava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$e;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;->H0()Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;->I()V

    :goto_0
    return-void
.end method
