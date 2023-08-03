.class public final Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/hot/HotAnchorFragment;
.super Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/hot/a;
.source "HotAnchorFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/b;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/hot/a<",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/hot/HotAnchorViewModel$Event;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHotAnchorFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HotAnchorFragment.kt\ncom/qennnsad/aknkaksd/presentation/module/main/anchors/hot/HotAnchorFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,15:1\n172#2,9:16\n*S KotlinDebug\n*F\n+ 1 HotAnchorFragment.kt\ncom/qennnsad/aknkaksd/presentation/module/main/anchors/hot/HotAnchorFragment\n*L\n9#1:16,9\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014R\u001b\u0010\u000b\u001a\u00020\u00068VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\u001a\u0010\u0011\u001a\u00020\u000c8\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/hot/HotAnchorFragment;",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/hot/HotAnchorViewModel$Event;",
        "e",
        "",
        "S0",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/hot/HotAnchorViewModel;",
        "n",
        "Lkotlin/Lazy;",
        "R0",
        "()Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/hot/HotAnchorViewModel;",
        "viewModel",
        "",
        "o",
        "Z",
        "H0",
        "()Z",
        "isSmallGrid",
        "<init>",
        "()V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final n:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final o:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/hot/a;-><init>()V

    .line 2
    const-class v0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/hot/HotAnchorViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/hot/HotAnchorFragment$special$$inlined$activityViewModels$default$1;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/hot/HotAnchorFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/hot/HotAnchorFragment$special$$inlined$activityViewModels$default$2;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/hot/HotAnchorFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/hot/HotAnchorFragment$special$$inlined$activityViewModels$default$3;

    invoke-direct {v3, p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/hot/HotAnchorFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/hot/HotAnchorFragment;->n:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public H0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/hot/HotAnchorFragment;->o:Z

    return v0
.end method

.method public R0()Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/hot/HotAnchorViewModel;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/hot/HotAnchorFragment;->n:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/hot/HotAnchorViewModel;

    return-object v0
.end method

.method protected S0(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/hot/HotAnchorViewModel$Event;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/hot/HotAnchorViewModel$Event;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic e0()Lcom/qennnsad/aknkaksd/presentation/common/l;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/hot/HotAnchorFragment;->R0()Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/hot/HotAnchorViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onEvent(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/hot/HotAnchorViewModel$Event;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/hot/HotAnchorFragment;->S0(Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/hot/HotAnchorViewModel$Event;)V

    return-void
.end method

.method public bridge synthetic z0()Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorViewModel;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/hot/HotAnchorFragment;->R0()Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/hot/HotAnchorViewModel;

    move-result-object v0

    return-object v0
.end method
