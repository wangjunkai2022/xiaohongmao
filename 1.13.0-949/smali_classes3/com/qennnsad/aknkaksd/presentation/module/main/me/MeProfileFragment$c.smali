.class final Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment$c;
.super Lkotlin/jvm/internal/Lambda;
.source "MeProfileFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment;->Y0()V
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
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment$c;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment$c;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/d;

    .line 3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment$c;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment$c$a;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment$c;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment;

    invoke-direct {v2, v3}, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment$c$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment;)V

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment$c$b;

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment$c;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment;

    invoke-direct {v3, v4}, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment$c$b;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment;)V

    .line 5
    invoke-direct {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/d;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 6
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 7
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment$c;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment;->S0()Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel;

    move-result-object v0

    sget-object v1, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;->AvatarChange:Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel;->E(Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;Ljava/lang/String;)V

    return-void
.end method
