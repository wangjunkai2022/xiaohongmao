.class public final Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment$special$$inlined$hiltNavGraphViewModels$1;
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
        "Landroidx/navigation/NavBackStackEntry;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHiltNavGraphViewModelLazy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HiltNavGraphViewModelLazy.kt\nandroidx/hilt/navigation/fragment/HiltNavGraphViewModelLazyKt$hiltNavGraphViewModels$backStackEntry$2\n*L\n1#1,61:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/navigation/NavBackStackEntry;",
        "VM",
        "Landroidx/lifecycle/ViewModel;",
        "invoke",
        "androidx/hilt/navigation/fragment/HiltNavGraphViewModelLazyKt$hiltNavGraphViewModels$backStackEntry$2"
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

.field final synthetic b:I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment$special$$inlined$hiltNavGraphViewModels$1;->a:Landroidx/fragment/app/Fragment;

    iput p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment$special$$inlined$hiltNavGraphViewModels$1;->b:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/navigation/NavBackStackEntry;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment$special$$inlined$hiltNavGraphViewModels$1;->a:Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment$special$$inlined$hiltNavGraphViewModels$1;->b:I

    invoke-virtual {v0, v1}, Landroidx/navigation/NavController;->getBackStackEntry(I)Landroidx/navigation/NavBackStackEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment$special$$inlined$hiltNavGraphViewModels$1;->invoke()Landroidx/navigation/NavBackStackEntry;

    move-result-object v0

    return-object v0
.end method
