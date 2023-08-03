.class public abstract Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseMvvmFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VB::",
        "Landroidx/viewbinding/ViewBinding;",
        "Event:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/fragment/app/Fragment;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseMvvmFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseMvvmFragment.kt\ncom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,149:1\n172#2,9:150\n1#3:159\n*S KotlinDebug\n*F\n+ 1 BaseMvvmFragment.kt\ncom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment\n*L\n32#1:150,9\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u0001*\u0004\u0008\u0001\u0010\u00032\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008C\u0010DJ\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\r\u0010\t\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\u000f\u001a\u00028\u00002\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH&\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J$\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016J\u001a\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u00132\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016J\u0012\u0010\u0018\u001a\u00020\u00072\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0017J\u0006\u0010\u0019\u001a\u00020\u0007J\u0017\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00028\u0001H$\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0008\u0010\u001d\u001a\u00020\u0007H\u0016J\u0008\u0010\u001e\u001a\u00020\u0007H\u0016J\u0008\u0010 \u001a\u00020\u001fH\u0004J\u0008\u0010\"\u001a\u00020!H\u0004R$\u0010\'\u001a\u0004\u0018\u00018\u00008\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010#\u001a\u0004\u0008$\u0010\n\"\u0004\u0008%\u0010&R\u0018\u0010+\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u001b\u00100\u001a\u00020,8DX\u0084\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010-\u001a\u0004\u0008.\u0010/R\"\u00102\u001a\u0002018\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u00082\u00103\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107R\"\u00109\u001a\u0002088\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u00089\u0010:\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>R\u001a\u0010B\u001a\u0008\u0012\u0004\u0012\u00028\u00010?8&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008@\u0010A\u00a8\u0006E"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;",
        "Landroidx/viewbinding/ViewBinding;",
        "VB",
        "Event",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/qennnsad/aknkaksd/presentation/common/l$a;",
        "msg",
        "",
        "s0",
        "m0",
        "()Landroidx/viewbinding/ViewBinding;",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "l0",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "view",
        "onViewCreated",
        "",
        "q0",
        "a",
        "e",
        "onEvent",
        "(Ljava/lang/Object;)V",
        "onResume",
        "onDestroyView",
        "Landroidx/navigation/NavController;",
        "c0",
        "",
        "f0",
        "Landroidx/viewbinding/ViewBinding;",
        "a0",
        "o0",
        "(Landroidx/viewbinding/ViewBinding;)V",
        "binding",
        "Lcom/qennnsad/aknkaksd/util/dialog/c;",
        "b",
        "Lcom/qennnsad/aknkaksd/util/dialog/c;",
        "loadingDialog",
        "Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;",
        "Lkotlin/Lazy;",
        "d0",
        "()Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;",
        "sharedActivityViewModel",
        "Lg5/a;",
        "localDataManager",
        "Lg5/a;",
        "b0",
        "()Lg5/a;",
        "p0",
        "(Lg5/a;)V",
        "Lx4/a;",
        "analytics",
        "Lx4/a;",
        "Z",
        "()Lx4/a;",
        "n0",
        "(Lx4/a;)V",
        "Lcom/qennnsad/aknkaksd/presentation/common/l;",
        "e0",
        "()Lcom/qennnsad/aknkaksd/presentation/common/l;",
        "viewModel",
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
.field private a:Landroidx/viewbinding/ViewBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVB;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private b:Lcom/qennnsad/aknkaksd/util/dialog/c;
    .annotation build Lm8/h;
    .end annotation
.end field

.field public c:Lg5/a;
    .annotation runtime Lu7/a;
    .end annotation
.end field

.field public d:Lx4/a;
    .annotation runtime Lu7/a;
    .end annotation
.end field

.field private final e:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    const-class v0, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment$special$$inlined$activityViewModels$default$1;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment$special$$inlined$activityViewModels$default$2;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment$special$$inlined$activityViewModels$default$3;

    invoke-direct {v3, p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->e:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic U(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->k0(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic V(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lcom/qennnsad/aknkaksd/util/t;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->j0(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lcom/qennnsad/aknkaksd/util/t;)V

    return-void
.end method

.method public static synthetic W(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lcom/qennnsad/aknkaksd/util/t;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->i0(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lcom/qennnsad/aknkaksd/util/t;)V

    return-void
.end method

.method public static synthetic X(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->g0(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic Y(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->h0(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Ljava/lang/Boolean;)V

    return-void
.end method

.method private static final g0(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/o;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/o;->l(I)V

    return-void
.end method

.method private static final h0(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/o;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/o;->P(Z)V

    return-void
.end method

.method private static final i0(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lcom/qennnsad/aknkaksd/util/t;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/util/t;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/common/l$a;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->s0(Lcom/qennnsad/aknkaksd/presentation/common/l$a;)V

    :cond_0
    return-void
.end method

.method private static final j0(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lcom/qennnsad/aknkaksd/util/t;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/util/t;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->onEvent(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static final k0(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->r0(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->a()V

    :goto_0
    return-void
.end method

.method public static synthetic r0(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->q0(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: showLoadingDialog"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final s0(Lcom/qennnsad/aknkaksd/presentation/common/l$a;)V
    .locals 5

    .line 1
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/presentation/common/l$a$c;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/common/l$a$c;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/common/l$a$c;->b()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/common/l$a$c;->a()[Ljava/lang/Object;

    move-result-object p1

    array-length v4, p1

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 4
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1, v3, v2, v1}, Lcom/qennnsad/aknkaksd/util/toast/a;->n(Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/presentation/common/l$a$d;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/common/l$a$d;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/common/l$a$d;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3, v2, v1}, Lcom/qennnsad/aknkaksd/util/toast/a;->n(Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/presentation/common/l$a$a;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/common/l$a$a;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/common/l$a$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3, v2, v1}, Lcom/qennnsad/aknkaksd/util/toast/a;->f(Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_2
    instance-of v0, p1, Lcom/qennnsad/aknkaksd/presentation/common/l$a$b;

    if-eqz v0, :cond_3

    .line 9
    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/common/l$a$b;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/common/l$a$b;->b()I

    move-result v0

    .line 10
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/common/l$a$b;->a()[Ljava/lang/Object;

    move-result-object p1

    array-length v4, p1

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 11
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {p1, v3, v2, v1}, Lcom/qennnsad/aknkaksd/util/toast/a;->f(Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public final Z()Lx4/a;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->d:Lx4/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "analytics"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->b:Lcom/qennnsad/aknkaksd/util/dialog/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/util/dialog/c;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->b:Lcom/qennnsad/aknkaksd/util/dialog/c;

    return-void
.end method

.method protected final a0()Landroidx/viewbinding/ViewBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TVB;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->a:Landroidx/viewbinding/ViewBinding;

    return-object v0
.end method

.method public final b0()Lg5/a;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->c:Lg5/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "localDataManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final c0()Landroidx/navigation/NavController;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.qennnsad.aknkaksd.presentation.common.BaseMvvmActivity<*>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->M()Landroidx/navigation/NavController;

    move-result-object v0

    return-object v0
.end method

.method protected final d0()Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;

    return-object v0
.end method

.method public abstract e0()Lcom/qennnsad/aknkaksd/presentation/common/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/qennnsad/aknkaksd/presentation/common/l<",
            "TEvent;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method

.method protected final f0()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract l0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            ")TVB;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method

.method public final m0()Landroidx/viewbinding/ViewBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TVB;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->a:Landroidx/viewbinding/ViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final n0(Lx4/a;)V
    .locals 1
    .param p1    # Lx4/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->d:Lx4/a;

    return-void
.end method

.method protected final o0(Landroidx/viewbinding/ViewBinding;)V
    .locals 0
    .param p1    # Landroidx/viewbinding/ViewBinding;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVB;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->a:Landroidx/viewbinding/ViewBinding;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->l0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->a:Landroidx/viewbinding/ViewBinding;

    .line 3
    instance-of p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/o;

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->d0()Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p3

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/common/j;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/common/j;-><init>(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;)V

    invoke-virtual {p2, p3, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 5
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->d0()Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;->D()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p3

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/common/i;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/common/i;-><init>(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;)V

    invoke-virtual {p2, p3, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 6
    :cond_0
    invoke-interface {p1}, Landroidx/viewbinding/ViewBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string p2, "provideBinding(inflater,\u2026         }\n        }.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->a:Landroidx/viewbinding/ViewBinding;

    return-void
.end method

.method protected abstract onEvent(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEvent;)V"
        }
    .end annotation
.end method

.method public onResume()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment Resumed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ltimber/log/Timber$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    instance-of v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/o;

    if-eqz v0, :cond_2

    .line 4
    sget-boolean v0, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->gameCenterPointsRefreshPending:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->d0()Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;->M()Lkotlinx/coroutines/j2;

    .line 6
    sget-object v0, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->Companion:Lcom/qennnsad/aknkaksd/BaseBeautyApplication$a;

    sput-boolean v2, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->gameCenterPointsRefreshPending:Z

    goto :goto_0

    .line 7
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/ui/base/o;

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->d0()Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;->D()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/o;->P(Z)V

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->b0()Lg5/a;

    move-result-object v0

    invoke-virtual {v0}, Lg5/a;->l()Lkotlin/Triple;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "requireActivity()"

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->b0()Lg5/a;

    move-result-object v1

    new-instance v3, Lkotlin/Triple;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v3, v4, v5, v0}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lg5/a;->e0(Lkotlin/Triple;)V

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->b0()Lg5/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/l;->u(Landroid/app/Activity;Lg5/a;)V

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {v0}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 13
    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->e3:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$a;

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;

    invoke-virtual {v0}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;

    .line 15
    invoke-virtual {v1, v3, v2, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$a;->b(Landroid/app/Activity;Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;Lcom/qennnsad/aknkaksd/presentation/ui/main/index/DistrictType;)V

    .line 16
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->b0()Lg5/a;

    move-result-object v0

    invoke-virtual {v0}, Lg5/a;->M()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->e0()Lcom/qennnsad/aknkaksd/presentation/common/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->f()Landroidx/lifecycle/LiveData;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    .line 4
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/common/g;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/common/g;-><init>(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 5
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->e0()Lcom/qennnsad/aknkaksd/presentation/common/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->c()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/common/f;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/common/f;-><init>(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 6
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->e0()Lcom/qennnsad/aknkaksd/presentation/common/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->d()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/common/h;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/common/h;-><init>(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final p0(Lg5/a;)V
    .locals 1
    .param p1    # Lg5/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->c:Lg5/a;

    return-void
.end method

.method public final q0(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->b:Lcom/qennnsad/aknkaksd/util/dialog/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/util/dialog/c;->dismiss()V

    .line 2
    :cond_0
    new-instance v0, Lcom/qennnsad/aknkaksd/util/dialog/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/qennnsad/aknkaksd/util/dialog/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->b:Lcom/qennnsad/aknkaksd/util/dialog/c;

    .line 3
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/util/dialog/c;->show()V

    return-void
.end method
