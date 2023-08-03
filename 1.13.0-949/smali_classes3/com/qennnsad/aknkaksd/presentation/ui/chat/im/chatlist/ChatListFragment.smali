.class public final Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;
.super Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/j;
.source "ChatListFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/b;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatListFragment.kt\ncom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,176:1\n106#2,15:177\n254#3,2:192\n254#3,2:194\n254#3,2:196\n254#3,2:204\n1011#4,2:198\n1011#4,2:200\n1011#4,2:202\n*S KotlinDebug\n*F\n+ 1 ChatListFragment.kt\ncom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment\n*L\n36#1:177,15\n133#1:192,2\n134#1:194,2\n135#1:196,2\n74#1:204,2\n140#1:198,2\n141#1:200,2\n142#1:202,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008S\u0010TJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0016\u0010\u0007\u001a\u00020\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u001c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00082\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0005H\u0002J&\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016J\u001a\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u00122\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016R\u001b\u0010\u001b\u001a\u00020\u00168FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u001b\u0010 \u001a\u00020\u001c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u0018\u001a\u0004\u0008\u001e\u0010\u001fR\"\u0010(\u001a\u00020!8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u0016\u0010,\u001a\u00020)8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0016\u00100\u001a\u00020-8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u0016\u00104\u001a\u0002018\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00082\u00103R\u0016\u00108\u001a\u0002058\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00086\u00107R\u0016\u0010<\u001a\u0002098\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008:\u0010;R\u0016\u0010@\u001a\u00020=8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008>\u0010?R\u0016\u0010D\u001a\u00020A8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008B\u0010CR\"\u0010F\u001a\u00020E8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008F\u0010G\u001a\u0004\u0008H\u0010I\"\u0004\u0008J\u0010KR\"\u0010M\u001a\u00020L8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008M\u0010N\u001a\u0004\u0008O\u0010P\"\u0004\u0008Q\u0010R\u00a8\u0006U"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;",
        "Landroidx/fragment/app/Fragment;",
        "",
        "m0",
        "",
        "Lcom/im/freechat/shared/entities/chat/Chat;",
        "list",
        "f0",
        "",
        "u0",
        "it",
        "n0",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "view",
        "onViewCreated",
        "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListViewModelProvider;",
        "f",
        "Lkotlin/Lazy;",
        "j0",
        "()Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListViewModelProvider;",
        "provider",
        "Lcom/im/freechat/ui/chatlist/ChatListViewModel;",
        "g",
        "l0",
        "()Lcom/im/freechat/ui/chatlist/ChatListViewModel;",
        "viewModel",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "i",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "k0",
        "()Lcom/qennnsad/aknkaksd/data/repository/m;",
        "t0",
        "(Lcom/qennnsad/aknkaksd/data/repository/m;)V",
        "sourceFactory",
        "Lcom/im/freechat/ui/chatlist/d;",
        "k",
        "Lcom/im/freechat/ui/chatlist/d;",
        "adapter",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "l",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "chatList",
        "Landroidx/appcompat/widget/SearchView;",
        "m",
        "Landroidx/appcompat/widget/SearchView;",
        "searchView",
        "Landroidx/core/widget/ContentLoadingProgressBar;",
        "n",
        "Landroidx/core/widget/ContentLoadingProgressBar;",
        "progress",
        "Landroid/widget/ImageView;",
        "o",
        "Landroid/widget/ImageView;",
        "ivEmpty",
        "Landroid/widget/TextView;",
        "p",
        "Landroid/widget/TextView;",
        "tvEmpty",
        "Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;",
        "q",
        "Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;",
        "bannerCarousel",
        "Lg5/a;",
        "localDataManager",
        "Lg5/a;",
        "i0",
        "()Lg5/a;",
        "s0",
        "(Lg5/a;)V",
        "Lx4/a;",
        "analytics",
        "Lx4/a;",
        "h0",
        "()Lx4/a;",
        "r0",
        "(Lx4/a;)V",
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
.field private final f:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final g:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field public h:Lg5/a;
    .annotation runtime Lu7/a;
    .end annotation
.end field

.field public i:Lcom/qennnsad/aknkaksd/data/repository/m;
    .annotation runtime Lu7/a;
    .end annotation
.end field

.field public j:Lx4/a;
    .annotation runtime Lu7/a;
    .end annotation
.end field

.field private k:Lcom/im/freechat/ui/chatlist/d;

.field private l:Landroidx/recyclerview/widget/RecyclerView;

.field private m:Landroidx/appcompat/widget/SearchView;

.field private n:Landroidx/core/widget/ContentLoadingProgressBar;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/TextView;

.field private q:Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/j;-><init>()V

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 3
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 4
    const-class v1, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListViewModelProvider;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v2, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment$special$$inlined$viewModels$default$4;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v4, p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    invoke-static {p0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->f:Lkotlin/Lazy;

    .line 6
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment$i;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment$i;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->g:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic Y(ZLcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->g0(ZLcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;)V

    return-void
.end method

.method public static synthetic Z(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->p0(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic a0([Ljava/lang/String;Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;ILcom/im/freechat/shared/entities/chat/Chat;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->o0([Ljava/lang/String;Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;ILcom/im/freechat/shared/entities/chat/Chat;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b0(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->q0(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic c0(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;)Landroidx/appcompat/widget/SearchView;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->m:Landroidx/appcompat/widget/SearchView;

    return-object p0
.end method

.method public static final synthetic d0(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;)Lcom/im/freechat/ui/chatlist/ChatListViewModel;
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->l0()Lcom/im/freechat/ui/chatlist/ChatListViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e0(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;Lcom/im/freechat/shared/entities/chat/Chat;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->n0(Lcom/im/freechat/shared/entities/chat/Chat;)V

    return-void
.end method

.method private final f0(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/chat/Chat;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->l:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "chatList"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    .line 2
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->k:Lcom/im/freechat/ui/chatlist/d;

    if-nez v2, :cond_1

    const-string v2, "adapter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->u0(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/d;

    invoke-direct {v4, v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/d;-><init>(ZLcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;)V

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->m:Landroidx/appcompat/widget/SearchView;

    if-nez v0, :cond_2

    const-string v0, "searchView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->l0()Lcom/im/freechat/ui/chatlist/ChatListViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->z()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_4

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v3

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const/16 v5, 0x8

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    const/16 v2, 0x8

    .line 4
    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->o:Landroid/widget/ImageView;

    if-nez v0, :cond_6

    const-string v0, "ivEmpty"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_6
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->l0()Lcom/im/freechat/ui/chatlist/ChatListViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->z()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_8

    const/4 v2, 0x0

    goto :goto_4

    :cond_8
    const/16 v2, 0x8

    .line 6
    :goto_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->p:Landroid/widget/TextView;

    if-nez v0, :cond_9

    const-string v0, "tvEmpty"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    move-object v1, v0

    :goto_5
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->l0()Lcom/im/freechat/ui/chatlist/ChatListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->z()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_6

    :cond_a
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_b

    goto :goto_7

    :cond_b
    const/16 v4, 0x8

    .line 8
    :goto_7
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static final g0(ZLcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_1

    iget-object p0, p1, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->l:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_0

    const-string p0, "chatList"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_1
    return-void
.end method

.method private final l0()Lcom/im/freechat/ui/chatlist/ChatListViewModel;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/ui/chatlist/ChatListViewModel;

    return-object v0
.end method

.method private final m0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->l:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "chatList"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    .line 2
    :cond_0
    new-instance v2, Lcom/im/freechat/ui/chatlist/d;

    invoke-direct {v2}, Lcom/im/freechat/ui/chatlist/d;-><init>()V

    .line 3
    iput-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->k:Lcom/im/freechat/ui/chatlist/d;

    .line 4
    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment$b;

    invoke-direct {v3, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment$b;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;)V

    invoke-virtual {v2, v3}, Lcom/im/freechat/ui/chatlist/d;->i(Lkotlin/jvm/functions/Function1;)V

    .line 5
    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment$c;

    invoke-direct {v3, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment$c;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;)V

    invoke-virtual {v2, v3}, Lcom/im/freechat/ui/chatlist/d;->k(Lkotlin/jvm/functions/Function1;)V

    .line 6
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type androidx.recyclerview.widget.SimpleItemAnimator"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/recyclerview/widget/SimpleItemAnimator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 8
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 9
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->m:Landroidx/appcompat/widget/SearchView;

    if-nez v0, :cond_1

    const-string v0, "searchView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    .line 10
    :cond_1
    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment$d;

    invoke-direct {v2, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment$d;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 11
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->q:Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;

    if-nez v0, :cond_2

    const-string v0, "bannerCarousel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 12
    :goto_0
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->i0()Lg5/a;

    move-result-object v0

    invoke-virtual {v0}, Lg5/a;->b()Lcom/qennnsad/aknkaksd/data/bean/AdConfigBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/AdConfigBean;->getChatList()Ljava/util/List;

    move-result-object v0

    .line 13
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->k0()Lcom/qennnsad/aknkaksd/data/repository/m;

    move-result-object v2

    .line 14
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->h0()Lx4/a;

    move-result-object v3

    .line 15
    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment$e;

    invoke-direct {v4, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment$e;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;->c(Ljava/util/List;Lcom/qennnsad/aknkaksd/data/repository/m;Lx4/a;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private final n0(Lcom/im/freechat/shared/entities/chat/Chat;)V
    .locals 9

    .line 1
    invoke-static {p1}, Lcom/im/freechat/extend/g;->e(Lcom/im/freechat/shared/entities/chat/Chat;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/im/freechat/extend/g;->b(Lcom/im/freechat/shared/entities/chat/Chat;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/chat/Chat;->getType()Lcom/im/freechat/shared/entities/chat/Chat$Type;

    move-result-object v0

    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment$a;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const v0, 0x7f13008f

    const v5, 0x7f13008f

    goto :goto_0

    :cond_1
    const v0, 0x7f130090

    const v5, 0x7f130090

    .line 3
    :goto_0
    invoke-static {p1}, Lcom/im/freechat/extend/g;->d(Lcom/im/freechat/shared/entities/chat/Chat;)Z

    move-result v0

    if-ne v0, v1, :cond_2

    const v0, 0x7f130099

    const v7, 0x7f130099

    goto :goto_1

    :cond_2
    const v0, 0x7f130097

    const v7, 0x7f130097

    :goto_1
    new-array v3, v1, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    .line 5
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6
    move-object v1, v3

    check-cast v1, [Ljava/lang/CharSequence;

    new-instance v8, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/a;

    move-object v2, v8

    move-object v4, p0

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/a;-><init>([Ljava/lang/String;Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;ILcom/im/freechat/shared/entities/chat/Chat;I)V

    invoke-virtual {v0, v1, v8}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_3
    :goto_2
    return-void
.end method

.method private static final o0([Ljava/lang/String;Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;ILcom/im/freechat/shared/entities/chat/Chat;ILandroid/content/DialogInterface;I)V
    .locals 0

    const-string p5, "$items"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "this$0"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "$it"

    invoke-static {p3, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    aget-object p0, p0, p6

    .line 2
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-direct {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->l0()Lcom/im/freechat/ui/chatlist/ChatListViewModel;

    move-result-object p0

    invoke-virtual {p3}, Lcom/im/freechat/shared/entities/chat/Chat;->getChatId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->w(I)Lkotlinx/coroutines/j2;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1, p4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 5
    invoke-direct {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->l0()Lcom/im/freechat/ui/chatlist/ChatListViewModel;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->L(Lcom/im/freechat/shared/entities/chat/Chat;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final p0(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->n:Landroidx/core/widget/ContentLoadingProgressBar;

    if-nez p0, :cond_0

    const-string p0, "progress"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 2
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static final q0(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->f0(Ljava/util/List;)V

    return-void
.end method

.method private final u0(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/chat/Chat;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/chat/Chat;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment$f;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment$f;-><init>()V

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment$g;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment$g;-><init>()V

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment$h;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment$h;-><init>()V

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-object p1
.end method


# virtual methods
.method public final h0()Lx4/a;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->j:Lx4/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "analytics"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final i0()Lg5/a;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->h:Lg5/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "localDataManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final j0()Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListViewModelProvider;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListViewModelProvider;

    return-object v0
.end method

.method public final k0()Lcom/qennnsad/aknkaksd/data/repository/m;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->i:Lcom/qennnsad/aknkaksd/data/repository/m;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "sourceFactory"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
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
    .annotation build Lm8/h;
    .end annotation

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d008a

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a017a

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "findViewById(R.id.chat_list)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->l:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f0a05f4

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "findViewById(R.id.search)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/appcompat/widget/SearchView;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->m:Landroidx/appcompat/widget/SearchView;

    const p2, 0x7f0a0559

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "findViewById(R.id.progress)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/core/widget/ContentLoadingProgressBar;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->n:Landroidx/core/widget/ContentLoadingProgressBar;

    const p2, 0x7f0a03c8

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "findViewById(R.id.iv_empty)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->o:Landroid/widget/ImageView;

    const p2, 0x7f0a0731

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "findViewById(R.id.tv_empty)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->p:Landroid/widget/TextView;

    const p2, 0x7f0a00ea

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "findViewById(R.id.banner_carousel)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->q:Lcom/qennnsad/aknkaksd/presentation/ui/widget/banner/BannerCarousel;

    return-object p1
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
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->m0()V

    .line 3
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->l0()Lcom/im/freechat/ui/chatlist/ChatListViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->B()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/b;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/b;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 4
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->l0()Lcom/im/freechat/ui/chatlist/ChatListViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->A()Landroidx/lifecycle/MediatorLiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/c;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/c;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final r0(Lx4/a;)V
    .locals 1
    .param p1    # Lx4/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->j:Lx4/a;

    return-void
.end method

.method public final s0(Lg5/a;)V
    .locals 1
    .param p1    # Lg5/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->h:Lg5/a;

    return-void
.end method

.method public final t0(Lcom/qennnsad/aknkaksd/data/repository/m;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/data/repository/m;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chatlist/ChatListFragment;->i:Lcom/qennnsad/aknkaksd/data/repository/m;

    return-void
.end method
