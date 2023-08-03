.class public final Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;
.super Lcom/qennnsad/aknkaksd/presentation/module/appupdate/a;
.source "UpdateFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/b;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/presentation/module/appupdate/a<",
        "Le5/y1;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUpdateFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateFragment.kt\ncom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,158:1\n106#2,15:159\n*S KotlinDebug\n*F\n+ 1 UpdateFragment.kt\ncom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment\n*L\n28#1:159,15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\r\u0008\u0007\u0018\u0000 C2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001DB\u0007\u00a2\u0006\u0004\u0008A\u0010BJ\u0008\u0010\u0004\u001a\u00020\u0003H\u0002J\u0008\u0010\u0005\u001a\u00020\u0003H\u0002J\u0008\u0010\u0006\u001a\u00020\u0003H\u0002J\u0008\u0010\u0007\u001a\u00020\u0003H\u0002J\u0008\u0010\u0008\u001a\u00020\u0003H\u0002J\u001a\u0010\r\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010\u0010\u001a\u00020\u00032\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016J\u000e\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0011J\u001a\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u00142\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016J\u0014\u0010\u0019\u001a\u00020\u00032\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0017J\u0010\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u001aH\u0016R\u001b\u0010\"\u001a\u00020\u001d8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!R\u0016\u0010&\u001a\u00020#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u0018\u0010*\u001a\u0004\u0018\u00010\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u0018\u0010,\u001a\u0004\u0018\u00010\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010)R\u0018\u0010.\u001a\u0004\u0018\u00010\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010)R\u001e\u00101\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u001a\u00107\u001a\u0002028\u0014X\u0094\u0004\u00a2\u0006\u000c\n\u0004\u00083\u00104\u001a\u0004\u00085\u00106R\u001a\u0010=\u001a\u0002088\u0014X\u0094D\u00a2\u0006\u000c\n\u0004\u00089\u0010:\u001a\u0004\u0008;\u0010<R\u0014\u0010@\u001a\u00020#8TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008>\u0010?\u00a8\u0006E"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseDialogFragment;",
        "Le5/y1;",
        "",
        "p0",
        "k0",
        "q0",
        "u0",
        "r0",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "i0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "Landroidx/fragment/app/FragmentActivity;",
        "activity",
        "t0",
        "Landroid/view/View;",
        "view",
        "onViewCreated",
        "Lkotlin/Function0;",
        "function",
        "s0",
        "Landroid/content/DialogInterface;",
        "dialog",
        "onDismiss",
        "Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateViewModel;",
        "g",
        "Lkotlin/Lazy;",
        "j0",
        "()Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateViewModel;",
        "viewModel",
        "",
        "h",
        "Z",
        "isForceUpdate",
        "",
        "i",
        "Ljava/lang/String;",
        "desc",
        "j",
        "web",
        "k",
        "version",
        "l",
        "Lkotlin/jvm/functions/Function0;",
        "onDismissCallback",
        "Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseDialogFragment$Position;",
        "m",
        "Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseDialogFragment$Position;",
        "X",
        "()Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseDialogFragment$Position;",
        "position",
        "",
        "n",
        "F",
        "W",
        "()F",
        "dimAmount",
        "V",
        "()Z",
        "cancelable",
        "<init>",
        "()V",
        "o",
        "a",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final o:Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment$a;
    .annotation build Lm8/g;
    .end annotation
.end field


# instance fields
.field private final g:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private h:Z

.field private i:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private l:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final m:Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseDialogFragment$Position;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final n:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;->o:Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/a;-><init>()V

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 3
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 4
    const-class v1, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v2, v0}, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment$special$$inlined$viewModels$default$4;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v4, p0, v0}, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    invoke-static {p0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;->g:Lkotlin/Lazy;

    .line 6
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseDialogFragment$Position;->CENTER:Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseDialogFragment$Position;

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;->m:Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseDialogFragment$Position;

    const v0, 0x3e4ccccd    # 0.2f

    .line 7
    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;->n:F

    return-void
.end method

.method public static synthetic d0(Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;->l0(Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e0(Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;->m0(Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f0(Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;->o0(Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g0(Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;->n0(Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final h0(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;->o:Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment$a;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment$a;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;

    move-result-object p0

    return-object p0
.end method

.method private final j0()Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateViewModel;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateViewModel;

    return-object v0
.end method

.method private final k0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseDialogFragment;->Y()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/y1;

    .line 2
    iget-object v1, v0, Le5/y1;->g:Landroid/widget/TextView;

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/b;

    invoke-direct {v2, p0}, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/b;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v1, v0, Le5/y1;->d:Landroid/widget/TextView;

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/c;

    invoke-direct {v2, p0}, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/c;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v1, v0, Le5/y1;->b:Landroid/widget/ImageView;

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/e;

    invoke-direct {v2, p0}, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/e;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, v0, Le5/y1;->i:Landroid/widget/TextView;

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/d;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/d;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final l0(Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;->r0()V

    return-void
.end method

.method private static final m0(Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;->q0()V

    return-void
.end method

.method private static final n0(Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;->q0()V

    return-void
.end method

.method private static final o0(Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;->u0()V

    return-void
.end method

.method private final p0()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseDialogFragment;->Y()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Le5/y1;

    .line 2
    iget-object v1, v0, Le5/y1;->c:Landroid/widget/ProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 3
    iget-object v1, v0, Le5/y1;->c:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 4
    iget-object v1, v0, Le5/y1;->e:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;->i:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, ""

    :cond_0
    invoke-static {v3, v2}, Landroidx/core/text/HtmlCompat;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v1, v0, Le5/y1;->h:Landroid/widget/TextView;

    .line 6
    invoke-virtual {v1}, Landroid/widget/TextView;->isEnabled()Z

    move-result v3

    const/4 v4, 0x1

    const v5, 0x7f130430

    if-eqz v3, :cond_1

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;->k:Ljava/lang/String;

    aput-object v6, v3, v2

    invoke-virtual {p0, v5, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :cond_1
    iget-object v1, v0, Le5/y1;->f:Landroid/widget/TextView;

    .line 8
    invoke-virtual {v1}, Landroid/widget/TextView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;->k:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-virtual {p0, v5, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :cond_2
    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;->h:Z

    if-eqz v1, :cond_3

    .line 10
    iget-object v1, v0, Le5/y1;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object v1, v0, Le5/y1;->d:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object v0, v0, Le5/y1;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 13
    :cond_3
    iget-object v1, v0, Le5/y1;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object v1, v0, Le5/y1;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object v0, v0, Le5/y1;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private final q0()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private final r0()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;->j0()Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateViewModel;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".versionprovider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {v1, v2, v3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 6
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "application/vnd.android.package-archive"

    .line 7
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 8
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v0, 0x2

    .line 9
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 10
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private final u0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;->j:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return-void

    .line 2
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic U(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;->i0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Le5/y1;

    move-result-object p1

    return-object p1
.end method

.method protected V()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;->h:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected W()F
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;->n:F

    return v0
.end method

.method protected X()Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseDialogFragment$Position;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;->m:Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseDialogFragment$Position;

    return-object v0
.end method

.method public i0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Le5/y1;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Le5/y1;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Le5/y1;

    move-result-object p1

    const-string p2, "inflate(inflater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "desc"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;->i:Ljava/lang/String;

    const-string v0, "isUpdate"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;->h:Z

    const-string v0, "web"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;->j:Ljava/lang/String;

    const-string v0, "version"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;->k:Ljava/lang/String;

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;->l:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
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
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;->p0()V

    .line 3
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;->k0()V

    return-void
.end method

.method public final s0(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "function"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;->l:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final t0(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "update_fragment"

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
