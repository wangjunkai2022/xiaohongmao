.class public final Landroidx/hilt/navigation/fragment/HiltNavGraphViewModelLazyKt;
.super Ljava/lang/Object;
.source "HiltNavGraphViewModelLazy.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u001a)\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\u0087\u0008\u00a8\u0006\u0007"
    }
    d2 = {
        "hiltNavGraphViewModels",
        "Lkotlin/Lazy;",
        "VM",
        "Landroidx/lifecycle/ViewModel;",
        "Landroidx/fragment/app/Fragment;",
        "navGraphId",
        "",
        "hilt-navigation-fragment_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public static final synthetic hiltNavGraphViewModels(Landroidx/fragment/app/Fragment;I)Lkotlin/Lazy;
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VM:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Landroidx/fragment/app/Fragment;",
            "I)",
            "Lkotlin/Lazy<",
            "TVM;>;"
        }
    .end annotation

    const-string v0, "$this$hiltNavGraphViewModels"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroidx/hilt/navigation/fragment/HiltNavGraphViewModelLazyKt$hiltNavGraphViewModels$backStackEntry$2;

    invoke-direct {v0, p0, p1}, Landroidx/hilt/navigation/fragment/HiltNavGraphViewModelLazyKt$hiltNavGraphViewModels$backStackEntry$2;-><init>(Landroidx/fragment/app/Fragment;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 2
    new-instance v0, Landroidx/hilt/navigation/fragment/HiltNavGraphViewModelLazyKt$hiltNavGraphViewModels$storeProducer$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/hilt/navigation/fragment/HiltNavGraphViewModelLazyKt$hiltNavGraphViewModels$storeProducer$1;-><init>(Lkotlin/Lazy;Lkotlin/reflect/KProperty;)V

    const/4 v2, 0x4

    const-string v3, "VM"

    .line 3
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Landroidx/lifecycle/ViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 4
    new-instance v3, Landroidx/hilt/navigation/fragment/HiltNavGraphViewModelLazyKt$hiltNavGraphViewModels$1;

    invoke-direct {v3, p0, p1, v1}, Landroidx/hilt/navigation/fragment/HiltNavGraphViewModelLazyKt$hiltNavGraphViewModels$1;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;Lkotlin/reflect/KProperty;)V

    .line 5
    invoke-static {p0, v2, v0, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method
