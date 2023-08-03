.class final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/main/MainFragment$a;
.super Lkotlin/jvm/internal/AdaptedFunctionReference;
.source "MainFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/main/MainFragment;->N0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/AdaptedFunctionReference;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/qennnsad/aknkaksd/data/bean/AppUpdateBean;",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/qennnsad/aknkaksd/util/l;

    const/4 v1, 0x2

    const-string v4, "showUpdateFragment"

    const-string v5, "showUpdateFragment(Landroidx/fragment/app/FragmentActivity;Lcom/qennnsad/aknkaksd/data/bean/AppUpdateBean;ZLkotlin/jvm/functions/Function0;)V"

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic a(Lcom/qennnsad/aknkaksd/presentation/ui/main/MainFragment$a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlin/jvm/internal/AdaptedFunctionReference;->receiver:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final b(Lcom/qennnsad/aknkaksd/data/bean/AppUpdateBean;Z)V
    .locals 7
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/AppUpdateBean;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/MainFragment$a;->a(Lcom/qennnsad/aknkaksd/presentation/ui/main/MainFragment$a;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    const-string v0, "requireActivity()::showUpdateFragment"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Lcom/qennnsad/aknkaksd/util/l;->V(Landroidx/fragment/app/FragmentActivity;Lcom/qennnsad/aknkaksd/data/bean/AppUpdateBean;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/AppUpdateBean;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/main/MainFragment$a;->b(Lcom/qennnsad/aknkaksd/data/bean/AppUpdateBean;Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
