.class public final Lorg/koin/androidx/viewmodel/ext/android/FragmentVMKt;
.super Ljava/lang/Object;
.source "FragmentVM.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFragmentVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentVM.kt\norg/koin/androidx/viewmodel/ext/android/FragmentVMKt\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,53:1\n41#1,2:61\n59#2,7:54\n59#2,7:63\n*S KotlinDebug\n*F\n+ 1 FragmentVM.kt\norg/koin/androidx/viewmodel/ext/android/FragmentVMKt\n*L\n52#1:61,2\n42#1:54,7\n52#1:63,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001aZ\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000c\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0012\u0008\n\u0010\u0008\u001a\u000c\u0012\u0004\u0012\u00020\u00060\u0005j\u0002`\u00072\u0016\u0008\n\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\t\u0018\u00010\u0005j\u0004\u0018\u0001`\nH\u0086\u0008\u00f8\u0001\u0000\u001a[\u0010\u000e\u001a\u00028\u0000\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0012\u0008\n\u0010\u0008\u001a\u000c\u0012\u0004\u0012\u00020\u00060\u0005j\u0002`\u00072\u0016\u0008\n\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\t\u0018\u00010\u0005j\u0004\u0018\u0001`\nH\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/lifecycle/ViewModel;",
        "T",
        "Landroidx/fragment/app/Fragment;",
        "Lz8/a;",
        "qualifier",
        "Lkotlin/Function0;",
        "Landroidx/lifecycle/ViewModelStoreOwner;",
        "Lorg/koin/androidx/viewmodel/ViewModelStoreOwnerProducer;",
        "owner",
        "Ly8/a;",
        "Lorg/koin/core/parameter/ParametersDefinition;",
        "parameters",
        "Lkotlin/Lazy;",
        "c",
        "a",
        "(Landroidx/fragment/app/Fragment;Lz8/a;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;",
        "koin-android_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method public static final synthetic a(Landroidx/fragment/app/Fragment;Lz8/a;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Landroidx/fragment/app/Fragment;",
            "Lz8/a;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/lifecycle/ViewModelStoreOwner;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ly8/a;",
            ">;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "owner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lorg/koin/android/ext/android/a;->a(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    move-result-object v0

    .line 2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lorg/koin/androidx/viewmodel/ext/android/FragmentVMKt$getViewModel$$inlined$viewModel$1;

    invoke-direct {v1, p2, p1, p3, v0}, Lorg/koin/androidx/viewmodel/ext/android/FragmentVMKt$getViewModel$$inlined$viewModel$1;-><init>(Lkotlin/jvm/functions/Function0;Lz8/a;Lkotlin/jvm/functions/Function0;Lorg/koin/core/scope/Scope;)V

    const/4 p1, 0x4

    const-string p3, "T"

    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class p1, Landroidx/lifecycle/ViewModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    new-instance p3, Lorg/koin/androidx/viewmodel/ext/android/FragmentVMKt$viewModel$$inlined$viewModels$1;

    invoke-direct {p3, p2}, Lorg/koin/androidx/viewmodel/ext/android/FragmentVMKt$viewModel$$inlined$viewModels$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {p0, p1, p3, v1}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p0

    .line 4
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/ViewModel;

    return-object p0
.end method

.method public static synthetic b(Landroidx/fragment/app/Fragment;Lz8/a;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/lifecycle/ViewModel;
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 1
    new-instance p2, Lorg/koin/androidx/viewmodel/ext/android/FragmentVMKt$getViewModel$1;

    invoke-direct {p2, p0}, Lorg/koin/androidx/viewmodel/ext/android/FragmentVMKt$getViewModel$1;-><init>(Landroidx/fragment/app/Fragment;)V

    :cond_1
    const/4 p5, 0x4

    and-int/2addr p4, p5

    if-eqz p4, :cond_2

    move-object p3, v0

    :cond_2
    const-string p4, "<this>"

    .line 2
    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "owner"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Lorg/koin/android/ext/android/a;->a(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    move-result-object p4

    .line 4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lorg/koin/androidx/viewmodel/ext/android/FragmentVMKt$getViewModel$$inlined$viewModel$1;

    invoke-direct {v0, p2, p1, p3, p4}, Lorg/koin/androidx/viewmodel/ext/android/FragmentVMKt$getViewModel$$inlined$viewModel$1;-><init>(Lkotlin/jvm/functions/Function0;Lz8/a;Lkotlin/jvm/functions/Function0;Lorg/koin/core/scope/Scope;)V

    const-string p1, "T"

    .line 5
    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class p1, Landroidx/lifecycle/ViewModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    new-instance p3, Lorg/koin/androidx/viewmodel/ext/android/FragmentVMKt$viewModel$$inlined$viewModels$1;

    invoke-direct {p3, p2}, Lorg/koin/androidx/viewmodel/ext/android/FragmentVMKt$viewModel$$inlined$viewModels$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {p0, p1, p3, v0}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p0

    .line 6
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/ViewModel;

    return-object p0
.end method

.method public static final synthetic c(Landroidx/fragment/app/Fragment;Lz8/a;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Landroidx/fragment/app/Fragment;",
            "Lz8/a;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/lifecycle/ViewModelStoreOwner;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ly8/a;",
            ">;)",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "owner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lorg/koin/android/ext/android/a;->a(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    move-result-object v0

    .line 2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lorg/koin/androidx/viewmodel/ext/android/FragmentVMKt$viewModel$2;

    invoke-direct {v1, p2, p1, p3, v0}, Lorg/koin/androidx/viewmodel/ext/android/FragmentVMKt$viewModel$2;-><init>(Lkotlin/jvm/functions/Function0;Lz8/a;Lkotlin/jvm/functions/Function0;Lorg/koin/core/scope/Scope;)V

    const/4 p1, 0x4

    const-string p3, "T"

    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class p1, Landroidx/lifecycle/ViewModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    new-instance p3, Lorg/koin/androidx/viewmodel/ext/android/FragmentVMKt$viewModel$$inlined$viewModels$1;

    invoke-direct {p3, p2}, Lorg/koin/androidx/viewmodel/ext/android/FragmentVMKt$viewModel$$inlined$viewModels$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {p0, p1, p3, v1}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroidx/fragment/app/Fragment;Lz8/a;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlin/Lazy;
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 1
    new-instance p2, Lorg/koin/androidx/viewmodel/ext/android/FragmentVMKt$viewModel$1;

    invoke-direct {p2, p0}, Lorg/koin/androidx/viewmodel/ext/android/FragmentVMKt$viewModel$1;-><init>(Landroidx/fragment/app/Fragment;)V

    :cond_1
    const/4 p5, 0x4

    and-int/2addr p4, p5

    if-eqz p4, :cond_2

    move-object p3, v0

    :cond_2
    const-string p4, "<this>"

    .line 2
    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "owner"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Lorg/koin/android/ext/android/a;->a(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    move-result-object p4

    .line 4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lorg/koin/androidx/viewmodel/ext/android/FragmentVMKt$viewModel$2;

    invoke-direct {v0, p2, p1, p3, p4}, Lorg/koin/androidx/viewmodel/ext/android/FragmentVMKt$viewModel$2;-><init>(Lkotlin/jvm/functions/Function0;Lz8/a;Lkotlin/jvm/functions/Function0;Lorg/koin/core/scope/Scope;)V

    const-string p1, "T"

    .line 5
    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class p1, Landroidx/lifecycle/ViewModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    new-instance p3, Lorg/koin/androidx/viewmodel/ext/android/FragmentVMKt$viewModel$$inlined$viewModels$1;

    invoke-direct {p3, p2}, Lorg/koin/androidx/viewmodel/ext/android/FragmentVMKt$viewModel$$inlined$viewModels$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {p0, p1, p3, v0}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method
