.class public final Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;
.super Lcom/im/freechat/base/f;
.source "NameGroupFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/im/freechat/base/f<",
        "Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel$Directions;",
        "Lf4/q;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNameGroupFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NameGroupFragment.kt\ncom/im/freechat/ui/create/namegroup/NameGroupFragment\n+ 2 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,91:1\n40#2,5:92\n40#2,5:97\n65#3,16:102\n93#3,3:118\n254#4,2:121\n254#4,2:123\n*S KotlinDebug\n*F\n+ 1 NameGroupFragment.kt\ncom/im/freechat/ui/create/namegroup/NameGroupFragment\n*L\n24#1:92,5\n26#1:97,5\n51#1:102,16\n51#1:118,3\n66#1:121,2\n33#1:123,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008$\u0010%J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002J\u001a\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016J\u0008\u0010\u000c\u001a\u00020\u0004H\u0014J\u0018\u0010\u0010\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0016R\u001b\u0010\u0016\u001a\u00020\u00118VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u001b\u0010\u001b\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0013\u001a\u0004\u0008\u0019\u0010\u001aR\"\u0010!\u001a\u0010\u0012\u000c\u0012\n \u001e*\u0004\u0018\u00010\u001d0\u001d0\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\"\u0010#\u001a\u0010\u0012\u000c\u0012\n \u001e*\u0004\u0018\u00010\u001d0\u001d0\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010 \u00a8\u0006&"
    }
    d2 = {
        "Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;",
        "Lcom/im/freechat/base/f;",
        "Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel$Directions;",
        "Lf4/q;",
        "",
        "y0",
        "x0",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "D0",
        "Z",
        "direction",
        "Landroid/os/Bundle;",
        "extras",
        "B0",
        "Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel;",
        "b",
        "Lkotlin/Lazy;",
        "t0",
        "()Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel;",
        "viewModel",
        "Lcom/im/freechat/ui/create/namegroup/a;",
        "c",
        "s0",
        "()Lcom/im/freechat/ui/create/namegroup/a;",
        "adapter",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "",
        "kotlin.jvm.PlatformType",
        "d",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "requestPermission",
        "e",
        "pickImage",
        "<init>",
        "()V",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final b:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final e:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/base/f;-><init>()V

    .line 2
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 3
    new-instance v1, Lcom/im/freechat/ui/create/namegroup/NameGroupFragment$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/im/freechat/ui/create/namegroup/NameGroupFragment$special$$inlined$inject$default$1;-><init>(Landroid/content/ComponentCallbacks;Lz8/a;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 4
    iput-object v1, p0, Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;->b:Lkotlin/Lazy;

    .line 5
    new-instance v1, Lcom/im/freechat/ui/create/namegroup/NameGroupFragment$special$$inlined$inject$default$2;

    invoke-direct {v1, p0, v2, v2}, Lcom/im/freechat/ui/create/namegroup/NameGroupFragment$special$$inlined$inject$default$2;-><init>(Landroid/content/ComponentCallbacks;Lz8/a;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;->c:Lkotlin/Lazy;

    .line 7
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;-><init>()V

    new-instance v1, Lcom/im/freechat/ui/create/namegroup/f;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/create/namegroup/f;-><init>(Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResul\u2026mission))\n        }\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;->d:Landroidx/activity/result/ActivityResultLauncher;

    .line 8
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;-><init>()V

    new-instance v1, Lcom/im/freechat/ui/create/namegroup/e;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/create/namegroup/e;-><init>(Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResul\u2026oString()\n        }\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;->e:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method private static final A0(Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;->d:Landroidx/activity/result/ActivityResultLauncher;

    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method private static final C0(Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;Landroid/net/Uri;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;->t0()Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel;->l()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static final E0(Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;Ljava/lang/Boolean;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isGranted"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;->e:Landroidx/activity/result/ActivityResultLauncher;

    const-string p1, "image/*"

    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lcom/im/freechat/base/a$b$a;

    sget v0, Lb4/b$s;->d8:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2, v1, v2}, Lcom/im/freechat/base/a$b$a;-><init>(I[Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p1}, Lcom/im/freechat/base/f;->j0(Lcom/im/freechat/base/a$b;)V

    :goto_0
    return-void
.end method

.method public static synthetic k0(Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;->w0(Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic l0(Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;->A0(Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m0(Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;->v0(Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic n0(Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;->C0(Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic o0(Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;->E0(Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic p0(Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;->u0(Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic q0(Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;->z0(Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic r0(Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;)Lf4/q;
    .locals 0

    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lf4/q;

    return-object p0
.end method

.method private final s0()Lcom/im/freechat/ui/create/namegroup/a;
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/ui/create/namegroup/a;

    return-object v0
.end method

.method private static final u0(Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;Ljava/lang/Boolean;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/q;

    iget-object v0, v0, Lf4/q;->b:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/q;

    iget-object v0, v0, Lf4/q;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lf4/q;

    iget-object p0, p0, Lf4/q;->f:Landroid/widget/ProgressBar;

    const-string v0, "binding.progress"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 4
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static final v0(Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;->s0()Lcom/im/freechat/ui/create/namegroup/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method

.method private static final w0(Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lf4/q;

    iget-object p0, p0, Lf4/q;->d:Landroid/widget/ImageView;

    const-string v0, "binding.ivAvatar"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/im/freechat/extend/m;->o(Landroid/widget/ImageView;Ljava/lang/Object;)V

    return-void
.end method

.method private final x0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lf4/q;

    iget-object v1, v1, Lf4/q;->h:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/q;

    iget-object v0, v0, Lf4/q;->h:Landroidx/appcompat/widget/Toolbar;

    const-string v1, "binding.toolbar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private final y0()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;->x0()V

    .line 2
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/q;

    iget-object v0, v0, Lf4/q;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    invoke-direct {p0}, Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;->s0()Lcom/im/freechat/ui/create/namegroup/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/q;

    iget-object v0, v0, Lf4/q;->b:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v1, Lcom/im/freechat/ui/create/namegroup/d;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/create/namegroup/d;-><init>(Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-virtual {p0}, Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;->t0()Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "members"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Array<com.im.freechat.shared.entities.contact.UserModel>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [Lcom/im/freechat/shared/entities/contact/UserModel;

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel;->p(Ljava/util/List;)Lkotlinx/coroutines/j2;

    .line 7
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/q;

    iget-object v0, v0, Lf4/q;->c:Landroid/widget/EditText;

    const-string v1, "binding.etConvName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v1, Lcom/im/freechat/ui/create/namegroup/NameGroupFragment$a;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/create/namegroup/NameGroupFragment$a;-><init>(Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;)V

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 10
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/q;

    iget-object v0, v0, Lf4/q;->i:Landroid/widget/TextView;

    new-instance v1, Lcom/im/freechat/ui/create/namegroup/c;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/create/namegroup/c;-><init>(Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final z0(Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;->t0()Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel;

    move-result-object p1

    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lf4/q;

    iget-object p0, p0, Lf4/q;->c:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel;->k(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public B0(Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel$Directions;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel$Directions;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "direction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "extras"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public D0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lf4/q;
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

    invoke-static {p1, p2, v0}, Lf4/q;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/q;

    move-result-object p1

    const-string p2, "inflate(inflater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic Y()Lcom/im/freechat/base/a;
    .locals 1

    invoke-virtual {p0}, Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;->t0()Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel;

    move-result-object v0

    return-object v0
.end method

.method protected Z()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;->y0()V

    .line 2
    invoke-virtual {p0}, Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;->t0()Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel;->m()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/im/freechat/ui/create/namegroup/g;

    invoke-direct {v2, p0}, Lcom/im/freechat/ui/create/namegroup/g;-><init>(Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 3
    invoke-virtual {p0}, Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;->t0()Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel;->n()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/im/freechat/ui/create/namegroup/i;

    invoke-direct {v2, p0}, Lcom/im/freechat/ui/create/namegroup/i;-><init>(Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 4
    invoke-virtual {p0}, Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;->t0()Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel;->l()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/im/freechat/ui/create/namegroup/h;

    invoke-direct {v2, p0}, Lcom/im/freechat/ui/create/namegroup/h;-><init>(Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public bridge synthetic a0(Ljava/lang/Enum;Landroid/os/Bundle;)V
    .locals 0

    check-cast p1, Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel$Directions;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;->B0(Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel$Directions;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic g0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;->D0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lf4/q;

    move-result-object p1

    return-object p1
.end method

.method public t0()Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel;

    return-object v0
.end method
