.class public final Lcom/im/freechat/ui/chat/history/HistoryTabFragment;
.super Lcom/im/freechat/base/f;
.source "HistoryTabFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/ui/chat/history/HistoryTabFragment$a;,
        Lcom/im/freechat/ui/chat/history/HistoryTabFragment$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/im/freechat/base/f<",
        "Lcom/im/freechat/ui/chat/history/HistoryTabViewModel$Directions;",
        "Lf4/t;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHistoryTabFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HistoryTabFragment.kt\ncom/im/freechat/ui/chat/history/HistoryTabFragment\n+ 2 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n*L\n1#1,175:1\n40#2,5:176\n40#2,5:181\n40#2,5:186\n*S KotlinDebug\n*F\n+ 1 HistoryTabFragment.kt\ncom/im/freechat/ui/chat/history/HistoryTabFragment\n*L\n37#1:176,5\n41#1:181,5\n42#1:186,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 82\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u00019B\u0007\u00a2\u0006\u0004\u00086\u00107J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u001a\u0010\n\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016J\u0008\u0010\u000b\u001a\u00020\u0004H\u0014J\u0018\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0014\u0010\u0013\u001a\u00020\u00042\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010J\u0014\u0010\u0016\u001a\u00020\u00042\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0010J\u0018\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00172\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0017R\u001b\u0010 \u001a\u00020\u001b8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001fR\u001b\u0010%\u001a\u00020!8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\u001d\u001a\u0004\u0008#\u0010$R\u001b\u0010*\u001a\u00020&8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\'\u0010\u001d\u001a\u0004\u0008(\u0010)R\u001b\u0010/\u001a\u00020+8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008,\u0010\u001d\u001a\u0004\u0008-\u0010.R\"\u00105\u001a\u0010\u0012\u000c\u0012\n 2*\u0004\u0018\u00010101008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00083\u00104\u00a8\u0006:"
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/history/HistoryTabFragment;",
        "Lcom/im/freechat/base/f;",
        "Lcom/im/freechat/ui/chat/history/HistoryTabViewModel$Directions;",
        "Lf4/t;",
        "",
        "s0",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "x0",
        "Z",
        "direction",
        "Landroid/os/Bundle;",
        "extras",
        "t0",
        "",
        "Lcom/im/freechat/ui/chat/history/a;",
        "attachments",
        "y0",
        "Lcom/im/freechat/shared/entities/chat/Chat;",
        "groups",
        "m0",
        "",
        "localPath",
        "mimeType",
        "v0",
        "Lcom/im/freechat/ui/chat/history/HistoryTabViewModel;",
        "b",
        "Lkotlin/Lazy;",
        "q0",
        "()Lcom/im/freechat/ui/chat/history/HistoryTabViewModel;",
        "viewModel",
        "Lcom/im/freechat/ui/chat/history/HistoryTab;",
        "c",
        "p0",
        "()Lcom/im/freechat/ui/chat/history/HistoryTab;",
        "pageType",
        "Lcom/im/freechat/ui/chatlist/d;",
        "d",
        "n0",
        "()Lcom/im/freechat/ui/chatlist/d;",
        "groupsAdapter",
        "Lcom/im/freechat/ui/chat/history/k;",
        "e",
        "o0",
        "()Lcom/im/freechat/ui/chat/history/k;",
        "historyMediaAdapter",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "Landroid/content/Intent;",
        "kotlin.jvm.PlatformType",
        "f",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "openGallery",
        "<init>",
        "()V",
        "g",
        "a",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final g:Lcom/im/freechat/ui/chat/history/HistoryTabFragment$a;
    .annotation build Lm8/g;
    .end annotation
.end field


# instance fields
.field private final b:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final e:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final f:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/im/freechat/ui/chat/history/HistoryTabFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/im/freechat/ui/chat/history/HistoryTabFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/im/freechat/ui/chat/history/HistoryTabFragment;->g:Lcom/im/freechat/ui/chat/history/HistoryTabFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/base/f;-><init>()V

    .line 2
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 3
    new-instance v1, Lcom/im/freechat/ui/chat/history/HistoryTabFragment$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/im/freechat/ui/chat/history/HistoryTabFragment$special$$inlined$inject$default$1;-><init>(Landroid/content/ComponentCallbacks;Lz8/a;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 4
    iput-object v1, p0, Lcom/im/freechat/ui/chat/history/HistoryTabFragment;->b:Lkotlin/Lazy;

    .line 5
    new-instance v1, Lcom/im/freechat/ui/chat/history/HistoryTabFragment$e;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/chat/history/HistoryTabFragment$e;-><init>(Lcom/im/freechat/ui/chat/history/HistoryTabFragment;)V

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/im/freechat/ui/chat/history/HistoryTabFragment;->c:Lkotlin/Lazy;

    .line 6
    new-instance v1, Lcom/im/freechat/ui/chat/history/HistoryTabFragment$special$$inlined$inject$default$2;

    invoke-direct {v1, p0, v2, v2}, Lcom/im/freechat/ui/chat/history/HistoryTabFragment$special$$inlined$inject$default$2;-><init>(Landroid/content/ComponentCallbacks;Lz8/a;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 7
    iput-object v1, p0, Lcom/im/freechat/ui/chat/history/HistoryTabFragment;->d:Lkotlin/Lazy;

    .line 8
    new-instance v1, Lcom/im/freechat/ui/chat/history/HistoryTabFragment$special$$inlined$inject$default$3;

    invoke-direct {v1, p0, v2, v2}, Lcom/im/freechat/ui/chat/history/HistoryTabFragment$special$$inlined$inject$default$3;-><init>(Landroid/content/ComponentCallbacks;Lz8/a;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/im/freechat/ui/chat/history/HistoryTabFragment;->e:Lkotlin/Lazy;

    .line 10
    new-instance v0, Lcom/im/freechat/ui/chat/message_gallery/a;

    invoke-direct {v0}, Lcom/im/freechat/ui/chat/message_gallery/a;-><init>()V

    new-instance v1, Lcom/im/freechat/ui/chat/history/m;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/chat/history/m;-><init>(Lcom/im/freechat/ui/chat/history/HistoryTabFragment;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResul\u2026        }\n        }\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/im/freechat/ui/chat/history/HistoryTabFragment;->f:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static synthetic k0(Lcom/im/freechat/ui/chat/history/HistoryTabFragment;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/chat/history/HistoryTabFragment;->w0(Lcom/im/freechat/ui/chat/history/HistoryTabFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic l0(Lcom/im/freechat/ui/chat/history/HistoryTabFragment;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/chat/history/HistoryTabFragment;->r0(Lcom/im/freechat/ui/chat/history/HistoryTabFragment;Ljava/util/List;)V

    return-void
.end method

.method private final n0()Lcom/im/freechat/ui/chatlist/d;
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/chat/history/HistoryTabFragment;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/ui/chatlist/d;

    return-object v0
.end method

.method private final o0()Lcom/im/freechat/ui/chat/history/k;
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/chat/history/HistoryTabFragment;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/ui/chat/history/k;

    return-object v0
.end method

.method private final p0()Lcom/im/freechat/ui/chat/history/HistoryTab;
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/chat/history/HistoryTabFragment;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/ui/chat/history/HistoryTab;

    return-object v0
.end method

.method private static final r0(Lcom/im/freechat/ui/chat/history/HistoryTabFragment;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/im/freechat/ui/chat/history/HistoryTabFragment;->o0()Lcom/im/freechat/ui/chat/history/k;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method

.method private final s0()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/t;

    iget-object v0, v0, Lf4/t;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    invoke-direct {p0}, Lcom/im/freechat/ui/chat/history/HistoryTabFragment;->p0()Lcom/im/freechat/ui/chat/history/HistoryTab;

    move-result-object v1

    sget-object v2, Lcom/im/freechat/ui/chat/history/HistoryTab;->Media:Lcom/im/freechat/ui/chat/history/HistoryTab;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 3
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x3

    invoke-direct {v1, v2, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Landroidx/recyclerview/widget/DividerItemDecoration;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 5
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 6
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 7
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    invoke-direct {p0}, Lcom/im/freechat/ui/chat/history/HistoryTabFragment;->p0()Lcom/im/freechat/ui/chat/history/HistoryTab;

    move-result-object v1

    sget-object v2, Lcom/im/freechat/ui/chat/history/HistoryTab;->Groups:Lcom/im/freechat/ui/chat/history/HistoryTab;

    if-ne v1, v2, :cond_1

    .line 9
    invoke-direct {p0}, Lcom/im/freechat/ui/chat/history/HistoryTabFragment;->n0()Lcom/im/freechat/ui/chatlist/d;

    move-result-object v1

    .line 10
    invoke-virtual {v1, v3}, Lcom/im/freechat/ui/chatlist/d;->j(Z)V

    .line 11
    new-instance v2, Lcom/im/freechat/ui/chat/history/HistoryTabFragment$c;

    invoke-direct {v2, p0}, Lcom/im/freechat/ui/chat/history/HistoryTabFragment$c;-><init>(Lcom/im/freechat/ui/chat/history/HistoryTabFragment;)V

    invoke-virtual {v1, v2}, Lcom/im/freechat/ui/chatlist/d;->i(Lkotlin/jvm/functions/Function1;)V

    goto :goto_1

    .line 12
    :cond_1
    invoke-direct {p0}, Lcom/im/freechat/ui/chat/history/HistoryTabFragment;->o0()Lcom/im/freechat/ui/chat/history/k;

    move-result-object v1

    .line 13
    new-instance v2, Lcom/im/freechat/ui/chat/history/HistoryTabFragment$d;

    invoke-direct {v2, p0}, Lcom/im/freechat/ui/chat/history/HistoryTabFragment$d;-><init>(Lcom/im/freechat/ui/chat/history/HistoryTabFragment;)V

    invoke-virtual {v1, v2}, Lcom/im/freechat/ui/chat/history/k;->h(Lkotlin/jvm/functions/Function1;)V

    .line 14
    :goto_1
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public static final u0(Lcom/im/freechat/ui/chat/history/HistoryTab;)Lcom/im/freechat/ui/chat/history/HistoryTabFragment;
    .locals 1
    .param p0    # Lcom/im/freechat/ui/chat/history/HistoryTab;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/im/freechat/ui/chat/history/HistoryTabFragment;->g:Lcom/im/freechat/ui/chat/history/HistoryTabFragment$a;

    invoke-virtual {v0, p0}, Lcom/im/freechat/ui/chat/history/HistoryTabFragment$a;->a(Lcom/im/freechat/ui/chat/history/HistoryTab;)Lcom/im/freechat/ui/chat/history/HistoryTabFragment;

    move-result-object p0

    return-object p0
.end method

.method private static final w0(Lcom/im/freechat/ui/chat/history/HistoryTabFragment;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "KEY_HIGHLIGHTED_MESSAGE_ID"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcom/im/freechat/ui/chat/history/HistoryTabViewModel$Directions;->CHAT_DETAILS:Lcom/im/freechat/ui/chat/history/HistoryTabViewModel$Directions;

    invoke-virtual {p0, v0, p1}, Lcom/im/freechat/base/f;->c0(Ljava/lang/Enum;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    const-string v0, "forwardedMessageIds"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.im.freechat.ui.chat.userprofile.UserProfileFragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;

    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;->u0(Landroid/os/Bundle;)V

    goto :goto_0

    .line 6
    :cond_2
    instance-of v0, v0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.im.freechat.ui.chat.group_manager.GroupManagerFragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;

    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->F0(Landroid/os/Bundle;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic Y()Lcom/im/freechat/base/a;
    .locals 1

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/history/HistoryTabFragment;->q0()Lcom/im/freechat/ui/chat/history/HistoryTabViewModel;

    move-result-object v0

    return-object v0
.end method

.method protected Z()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/ui/chat/history/HistoryTabFragment;->s0()V

    .line 2
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/history/HistoryTabFragment;->q0()Lcom/im/freechat/ui/chat/history/HistoryTabViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/history/HistoryTabViewModel;->l()V

    .line 3
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/history/HistoryTabFragment;->q0()Lcom/im/freechat/ui/chat/history/HistoryTabViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/history/HistoryTabViewModel;->k()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/im/freechat/ui/chat/history/n;

    invoke-direct {v2, p0}, Lcom/im/freechat/ui/chat/history/n;-><init>(Lcom/im/freechat/ui/chat/history/HistoryTabFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public bridge synthetic a0(Ljava/lang/Enum;Landroid/os/Bundle;)V
    .locals 0

    check-cast p1, Lcom/im/freechat/ui/chat/history/HistoryTabViewModel$Directions;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/chat/history/HistoryTabFragment;->t0(Lcom/im/freechat/ui/chat/history/HistoryTabViewModel$Directions;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic g0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/chat/history/HistoryTabFragment;->x0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lf4/t;

    move-result-object p1

    return-object p1
.end method

.method public final m0(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/chat/Chat;",
            ">;)V"
        }
    .end annotation

    const-string v0, "groups"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/im/freechat/ui/chat/history/HistoryTabFragment;->n0()Lcom/im/freechat/ui/chatlist/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method

.method public q0()Lcom/im/freechat/ui/chat/history/HistoryTabViewModel;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/history/HistoryTabFragment;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/ui/chat/history/HistoryTabViewModel;

    return-object v0
.end method

.method public t0(Lcom/im/freechat/ui/chat/history/HistoryTabViewModel$Directions;Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Lcom/im/freechat/ui/chat/history/HistoryTabViewModel$Directions;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "direction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/im/freechat/ui/chat/history/HistoryTabFragment$b;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "file_path"

    const-string v0, ""

    .line 2
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "extras.getString(KEY_FILE_PATH, \"\")"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "mime_type"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/chat/history/HistoryTabFragment;->v0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/im/freechat/ui/chat/history/HistoryTabFragment;->f:Landroidx/activity/result/ActivityResultLauncher;

    .line 4
    sget-object v0, Lcom/im/freechat/ui/chat/message_gallery/a;->a:Lcom/im/freechat/ui/chat/message_gallery/a$a;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const-string v3, "chatId"

    .line 6
    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-wide/16 v3, 0x0

    const-string v5, "clicked_item"

    .line 7
    invoke-virtual {p2, v5, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 8
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/im/freechat/ui/chat/message_gallery/a$a;->a(Landroid/content/Context;IJ)Landroid/content/Intent;

    move-result-object p2

    .line 9
    invoke-virtual {p1, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 11
    instance-of v0, p1, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;

    invoke-virtual {p1, p2}, Lcom/im/freechat/ui/chat/group_manager/GroupManagerFragment;->a1(Landroid/os/Bundle;)V

    goto :goto_0

    .line 12
    :cond_3
    instance-of v0, p1, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;

    invoke-virtual {p1, p2}, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;->G0(Landroid/os/Bundle;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final v0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string v0, "localPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".provider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-static {v0, v1, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 5
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 7
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 p1, 0x2

    .line 8
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 11
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget p1, Lb4/b$s;->i8:I

    invoke-static {v0, p1}, Lcom/im/freechat/extend/f;->z(Landroid/app/Activity;I)V

    :goto_0
    return-void
.end method

.method public x0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lf4/t;
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

    invoke-static {p1, p2, v0}, Lf4/t;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/t;

    move-result-object p1

    const-string p2, "inflate(inflater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final y0(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/im/freechat/ui/chat/history/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "attachments"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/history/HistoryTabFragment;->q0()Lcom/im/freechat/ui/chat/history/HistoryTabViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/history/HistoryTabViewModel;->k()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
