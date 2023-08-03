.class public final Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment$special$$inlined$hiltNavGraphViewModels$3;
.super Lkotlin/jvm/internal/Lambda;
.source "HiltNavGraphViewModelLazy.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHiltNavGraphViewModelLazy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HiltNavGraphViewModelLazy.kt\nandroidx/hilt/navigation/fragment/HiltNavGraphViewModelLazyKt$hiltNavGraphViewModels$1\n*L\n1#1,61:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        "VM",
        "Landroidx/lifecycle/ViewModel;",
        "invoke",
        "androidx/hilt/navigation/fragment/HiltNavGraphViewModelLazyKt$hiltNavGraphViewModels$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/Fragment;

.field final synthetic b:Lkotlin/Lazy;

.field final synthetic c:Lkotlin/reflect/KProperty;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;Lkotlin/reflect/KProperty;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment$special$$inlined$hiltNavGraphViewModels$3;->a:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment$special$$inlined$hiltNavGraphViewModels$3;->b:Lkotlin/Lazy;

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment$special$$inlined$hiltNavGraphViewModels$3;->c:Lkotlin/reflect/KProperty;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment$special$$inlined$hiltNavGraphViewModels$3;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment$special$$inlined$hiltNavGraphViewModels$3;->b:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    const-string v2, "backStackEntry"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroidx/hilt/navigation/HiltViewModelFactory;->create(Landroid/content/Context;Landroidx/navigation/NavBackStackEntry;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment$special$$inlined$hiltNavGraphViewModels$3;->invoke()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    return-object v0
.end method
