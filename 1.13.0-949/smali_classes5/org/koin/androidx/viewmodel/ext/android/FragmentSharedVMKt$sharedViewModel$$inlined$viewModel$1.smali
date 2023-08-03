.class public final Lorg/koin/androidx/viewmodel/ext/android/FragmentSharedVMKt$sharedViewModel$$inlined$viewModel$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FragmentVM.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/androidx/viewmodel/ext/android/FragmentSharedVMKt;->c(Landroidx/fragment/app/Fragment;Lz8/a;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
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
    value = "SMAP\nFragmentVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentVM.kt\norg/koin/androidx/viewmodel/ext/android/FragmentVMKt$viewModel$2\n+ 2 GetViewModelFactory.kt\norg/koin/androidx/viewmodel/ext/android/GetViewModelFactoryKt\n*L\n1#1,53:1\n17#2,8:54\n*S KotlinDebug\n*F\n+ 1 FragmentVM.kt\norg/koin/androidx/viewmodel/ext/android/FragmentVMKt$viewModel$2\n*L\n43#1:54,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        "T",
        "Landroidx/lifecycle/ViewModel;",
        "invoke",
        "org/koin/androidx/viewmodel/ext/android/FragmentVMKt$viewModel$2"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0xb0
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/functions/Function0;

.field final synthetic b:Lz8/a;

.field final synthetic c:Lkotlin/jvm/functions/Function0;

.field final synthetic d:Lorg/koin/core/scope/Scope;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lz8/a;Lkotlin/jvm/functions/Function0;Lorg/koin/core/scope/Scope;)V
    .locals 0

    iput-object p1, p0, Lorg/koin/androidx/viewmodel/ext/android/FragmentSharedVMKt$sharedViewModel$$inlined$viewModel$1;->a:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lorg/koin/androidx/viewmodel/ext/android/FragmentSharedVMKt$sharedViewModel$$inlined$viewModel$1;->b:Lz8/a;

    iput-object p3, p0, Lorg/koin/androidx/viewmodel/ext/android/FragmentSharedVMKt$sharedViewModel$$inlined$viewModel$1;->c:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lorg/koin/androidx/viewmodel/ext/android/FragmentSharedVMKt$sharedViewModel$$inlined$viewModel$1;->d:Lorg/koin/core/scope/Scope;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 7
    .annotation build Lm8/g;
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/koin/androidx/viewmodel/ext/android/FragmentSharedVMKt$sharedViewModel$$inlined$viewModel$1;->a:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/lifecycle/ViewModelStoreOwner;

    iget-object v3, p0, Lorg/koin/androidx/viewmodel/ext/android/FragmentSharedVMKt$sharedViewModel$$inlined$viewModel$1;->b:Lz8/a;

    iget-object v4, p0, Lorg/koin/androidx/viewmodel/ext/android/FragmentSharedVMKt$sharedViewModel$$inlined$viewModel$1;->c:Lkotlin/jvm/functions/Function0;

    iget-object v6, p0, Lorg/koin/androidx/viewmodel/ext/android/FragmentSharedVMKt$sharedViewModel$$inlined$viewModel$1;->d:Lorg/koin/core/scope/Scope;

    const/4 v0, 0x4

    const-string v2, "T"

    .line 3
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lorg/koin/androidx/viewmodel/ext/android/a;->a(Landroidx/lifecycle/ViewModelStoreOwner;Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lorg/koin/core/scope/Scope;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/koin/androidx/viewmodel/ext/android/FragmentSharedVMKt$sharedViewModel$$inlined$viewModel$1;->invoke()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    return-object v0
.end method
