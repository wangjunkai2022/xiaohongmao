.class public final Lorg/koin/androidx/viewmodel/ext/android/ActivityVMKt;
.super Ljava/lang/Object;
.source "ActivityVM.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActivityVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityVM.kt\norg/koin/androidx/viewmodel/ext/android/ActivityVMKt\n+ 2 ActivityViewModelLazy.kt\nandroidx/activity/ActivityViewModelLazyKt\n*L\n1#1,53:1\n41#1,2:59\n43#2,5:54\n43#2,5:61\n*S KotlinDebug\n*F\n+ 1 ActivityVM.kt\norg/koin/androidx/viewmodel/ext/android/ActivityVMKt\n*L\n52#1:59,2\n42#1:54,5\n52#1:61,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001aP\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000b\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0016\u0008\n\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007j\u0004\u0018\u0001`\tH\u0086\u0008\u00f8\u0001\u0000\u001aQ\u0010\r\u001a\u00028\u0000\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0016\u0008\n\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007j\u0004\u0018\u0001`\tH\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\r\u0010\u000e\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/lifecycle/ViewModel;",
        "T",
        "Landroidx/activity/ComponentActivity;",
        "Lz8/a;",
        "qualifier",
        "Landroidx/lifecycle/ViewModelStoreOwner;",
        "owner",
        "Lkotlin/Function0;",
        "Ly8/a;",
        "Lorg/koin/core/parameter/ParametersDefinition;",
        "parameters",
        "Lkotlin/Lazy;",
        "c",
        "a",
        "(Landroidx/activity/ComponentActivity;Lz8/a;Landroidx/lifecycle/ViewModelStoreOwner;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;",
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
.method public static final synthetic a(Landroidx/activity/ComponentActivity;Lz8/a;Landroidx/lifecycle/ViewModelStoreOwner;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Landroidx/activity/ComponentActivity;",
            "Lz8/a;",
            "Landroidx/lifecycle/ViewModelStoreOwner;",
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

    new-instance v1, Lorg/koin/androidx/viewmodel/ext/android/ActivityVMKt$getViewModel$$inlined$viewModel$1;

    invoke-direct {v1, p2, p1, p3, v0}, Lorg/koin/androidx/viewmodel/ext/android/ActivityVMKt$getViewModel$$inlined$viewModel$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Lz8/a;Lkotlin/jvm/functions/Function0;Lorg/koin/core/scope/Scope;)V

    .line 3
    new-instance p1, Landroidx/lifecycle/ViewModelLazy;

    const/4 p2, 0x4

    const-string p3, "T"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class p2, Landroidx/lifecycle/ViewModel;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    new-instance p3, Lorg/koin/androidx/viewmodel/ext/android/ActivityVMKt$viewModel$$inlined$viewModels$2;

    invoke-direct {p3, p0}, Lorg/koin/androidx/viewmodel/ext/android/ActivityVMKt$viewModel$$inlined$viewModels$2;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-direct {p1, p2, p3, v1}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 4
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/ViewModel;

    return-object p0
.end method

.method public static synthetic b(Landroidx/activity/ComponentActivity;Lz8/a;Landroidx/lifecycle/ViewModelStoreOwner;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/lifecycle/ViewModel;
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, p0

    :cond_1
    const/4 p5, 0x4

    and-int/2addr p4, p5

    if-eqz p4, :cond_2

    move-object p3, v0

    :cond_2
    const-string p4, "<this>"

    .line 1
    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "owner"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lorg/koin/android/ext/android/a;->a(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    move-result-object p4

    .line 3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lorg/koin/androidx/viewmodel/ext/android/ActivityVMKt$getViewModel$$inlined$viewModel$1;

    invoke-direct {v0, p2, p1, p3, p4}, Lorg/koin/androidx/viewmodel/ext/android/ActivityVMKt$getViewModel$$inlined$viewModel$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Lz8/a;Lkotlin/jvm/functions/Function0;Lorg/koin/core/scope/Scope;)V

    .line 4
    new-instance p1, Landroidx/lifecycle/ViewModelLazy;

    const-string p2, "T"

    invoke-static {p5, p2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class p2, Landroidx/lifecycle/ViewModel;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    new-instance p3, Lorg/koin/androidx/viewmodel/ext/android/ActivityVMKt$viewModel$$inlined$viewModels$2;

    invoke-direct {p3, p0}, Lorg/koin/androidx/viewmodel/ext/android/ActivityVMKt$viewModel$$inlined$viewModels$2;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-direct {p1, p2, p3, v0}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 5
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/ViewModel;

    return-object p0
.end method

.method public static final synthetic c(Landroidx/activity/ComponentActivity;Lz8/a;Landroidx/lifecycle/ViewModelStoreOwner;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Landroidx/activity/ComponentActivity;",
            "Lz8/a;",
            "Landroidx/lifecycle/ViewModelStoreOwner;",
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

    new-instance v1, Lorg/koin/androidx/viewmodel/ext/android/ActivityVMKt$viewModel$1;

    invoke-direct {v1, p2, p1, p3, v0}, Lorg/koin/androidx/viewmodel/ext/android/ActivityVMKt$viewModel$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Lz8/a;Lkotlin/jvm/functions/Function0;Lorg/koin/core/scope/Scope;)V

    .line 3
    new-instance p1, Landroidx/lifecycle/ViewModelLazy;

    const/4 p2, 0x4

    const-string p3, "T"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class p2, Landroidx/lifecycle/ViewModel;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    new-instance p3, Lorg/koin/androidx/viewmodel/ext/android/ActivityVMKt$viewModel$$inlined$viewModels$2;

    invoke-direct {p3, p0}, Lorg/koin/androidx/viewmodel/ext/android/ActivityVMKt$viewModel$$inlined$viewModels$2;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-direct {p1, p2, p3, v1}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-object p1
.end method

.method public static synthetic d(Landroidx/activity/ComponentActivity;Lz8/a;Landroidx/lifecycle/ViewModelStoreOwner;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlin/Lazy;
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, p0

    :cond_1
    const/4 p5, 0x4

    and-int/2addr p4, p5

    if-eqz p4, :cond_2

    move-object p3, v0

    :cond_2
    const-string p4, "<this>"

    .line 1
    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "owner"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lorg/koin/android/ext/android/a;->a(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    move-result-object p4

    .line 3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lorg/koin/androidx/viewmodel/ext/android/ActivityVMKt$viewModel$1;

    invoke-direct {v0, p2, p1, p3, p4}, Lorg/koin/androidx/viewmodel/ext/android/ActivityVMKt$viewModel$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Lz8/a;Lkotlin/jvm/functions/Function0;Lorg/koin/core/scope/Scope;)V

    .line 4
    new-instance p1, Landroidx/lifecycle/ViewModelLazy;

    const-string p2, "T"

    invoke-static {p5, p2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class p2, Landroidx/lifecycle/ViewModel;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    new-instance p3, Lorg/koin/androidx/viewmodel/ext/android/ActivityVMKt$viewModel$$inlined$viewModels$2;

    invoke-direct {p3, p0}, Lorg/koin/androidx/viewmodel/ext/android/ActivityVMKt$viewModel$$inlined$viewModels$2;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-direct {p1, p2, p3, v0}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-object p1
.end method
