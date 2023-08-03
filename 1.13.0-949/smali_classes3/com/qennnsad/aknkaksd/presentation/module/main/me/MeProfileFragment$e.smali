.class final Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment$e;
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

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment$e;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment$e;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment$e;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment$e;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment;

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment;->S0()Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel;->B()Lcom/qennnsad/aknkaksd/data/repository/m;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/qennnsad/aknkaksd/util/l;->h0(Landroid/content/Context;Lcom/qennnsad/aknkaksd/data/repository/m;Ljava/lang/String;ILjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment$e;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileFragment;->S0()Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel;

    move-result-object v0

    sget-object v1, Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;->OpenVip:Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;

    const-string v2, "\u6210\u4e3a\u8d35\u65cf"

    invoke-virtual {v0, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel;->E(Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;Ljava/lang/String;)V

    return-void
.end method
