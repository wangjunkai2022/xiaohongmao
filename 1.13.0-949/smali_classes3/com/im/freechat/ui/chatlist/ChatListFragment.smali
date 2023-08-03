.class public final Lcom/im/freechat/ui/chatlist/ChatListFragment;
.super Lcom/im/freechat/base/f;
.source "ChatListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/ui/chatlist/ChatListFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/im/freechat/base/f<",
        "Lcom/im/freechat/ui/chatlist/ChatListViewModel$Directions;",
        "Lf4/l;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatListFragment.kt\ncom/im/freechat/ui/chatlist/ChatListFragment\n+ 2 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,216:1\n40#2,5:217\n40#2,5:222\n254#3,2:227\n254#3,2:229\n254#3,2:231\n254#3,2:233\n254#3,2:235\n254#3,2:237\n*S KotlinDebug\n*F\n+ 1 ChatListFragment.kt\ncom/im/freechat/ui/chatlist/ChatListFragment\n*L\n35#1:217,5\n39#1:222,5\n159#1:227,2\n194#1:229,2\n202#1:231,2\n206#1:233,2\n210#1:235,2\n44#1:237,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008(\u0010)J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002J\u0016\u0010\n\u001a\u00020\u00042\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0002J\u0010\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0008H\u0002J\u0016\u0010\u000e\u001a\u00020\u00042\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0007H\u0002J\u0012\u0010\u0011\u001a\u00020\u00042\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002J\u001a\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016J\u0008\u0010\u0017\u001a\u00020\u0004H\u0014J\u0008\u0010\u0018\u001a\u00020\u0004H\u0016J\u0018\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001aH\u0016R\u001b\u0010\"\u001a\u00020\u001d8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!R\u001b\u0010\'\u001a\u00020#8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008$\u0010\u001f\u001a\u0004\u0008%\u0010&\u00a8\u0006*"
    }
    d2 = {
        "Lcom/im/freechat/ui/chatlist/ChatListFragment;",
        "Lcom/im/freechat/base/f;",
        "Lcom/im/freechat/ui/chatlist/ChatListViewModel$Directions;",
        "Lf4/l;",
        "",
        "F0",
        "E0",
        "",
        "Lcom/im/freechat/shared/entities/chat/Chat;",
        "list",
        "w0",
        "it",
        "I0",
        "Lcom/im/freechat/shared/entities/banner/Banner;",
        "u0",
        "Lcom/im/freechat/ui/chatlist/ChatListViewModel$NetworkState;",
        "state",
        "L0",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "K0",
        "Z",
        "onResume",
        "direction",
        "Landroid/os/Bundle;",
        "extras",
        "H0",
        "Lcom/im/freechat/ui/chatlist/ChatListViewModel;",
        "b",
        "Lkotlin/Lazy;",
        "z0",
        "()Lcom/im/freechat/ui/chatlist/ChatListViewModel;",
        "viewModel",
        "Lcom/im/freechat/ui/chatlist/d;",
        "c",
        "y0",
        "()Lcom/im/freechat/ui/chatlist/d;",
        "adapter",
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


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/base/f;-><init>()V

    .line 2
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 3
    new-instance v1, Lcom/im/freechat/ui/chatlist/ChatListFragment$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/im/freechat/ui/chatlist/ChatListFragment$special$$inlined$inject$default$1;-><init>(Landroid/content/ComponentCallbacks;Lz8/a;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 4
    iput-object v1, p0, Lcom/im/freechat/ui/chatlist/ChatListFragment;->b:Lkotlin/Lazy;

    .line 5
    new-instance v1, Lcom/im/freechat/ui/chatlist/ChatListFragment$special$$inlined$inject$default$2;

    invoke-direct {v1, p0, v2, v2}, Lcom/im/freechat/ui/chatlist/ChatListFragment$special$$inlined$inject$default$2;-><init>(Landroid/content/ComponentCallbacks;Lz8/a;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/im/freechat/ui/chatlist/ChatListFragment;->c:Lkotlin/Lazy;

    return-void
.end method

.method private static final A0(Lcom/im/freechat/ui/chatlist/ChatListFragment;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lf4/l;

    iget-object p0, p0, Lf4/l;->h:Landroidx/core/widget/ContentLoadingProgressBar;

    const-string v0, "binding.progressSmall"

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

    .line 2
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static final B0(Lcom/im/freechat/ui/chatlist/ChatListFragment;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/im/freechat/ui/chatlist/ChatListFragment;->w0(Ljava/util/List;)V

    return-void
.end method

.method private static final C0(Lcom/im/freechat/ui/chatlist/ChatListFragment;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/im/freechat/ui/chatlist/ChatListFragment;->u0(Ljava/util/List;)V

    return-void
.end method

.method private static final D0(Lcom/im/freechat/ui/chatlist/ChatListFragment;Lcom/im/freechat/ui/chatlist/ChatListViewModel$NetworkState;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/im/freechat/ui/chatlist/ChatListFragment;->L0(Lcom/im/freechat/ui/chatlist/ChatListViewModel$NetworkState;)V

    return-void
.end method

.method private final E0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lf4/l;

    iget-object v1, v1, Lf4/l;->k:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    return-void
.end method

.method private final F0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/l;

    iget-object v0, v0, Lf4/l;->f:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v1, Lcom/im/freechat/ui/chatlist/f;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/chatlist/f;-><init>(Lcom/im/freechat/ui/chatlist/ChatListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/l;

    iget-object v0, v0, Lf4/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    invoke-direct {p0}, Lcom/im/freechat/ui/chatlist/ChatListFragment;->y0()Lcom/im/freechat/ui/chatlist/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.recyclerview.widget.SimpleItemAnimator"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/recyclerview/widget/SimpleItemAnimator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 5
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 6
    invoke-direct {p0}, Lcom/im/freechat/ui/chatlist/ChatListFragment;->y0()Lcom/im/freechat/ui/chatlist/d;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/im/freechat/ui/chatlist/ChatListFragment$c;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/chatlist/ChatListFragment$c;-><init>(Lcom/im/freechat/ui/chatlist/ChatListFragment;)V

    invoke-virtual {v0, v1}, Lcom/im/freechat/ui/chatlist/d;->i(Lkotlin/jvm/functions/Function1;)V

    .line 8
    new-instance v1, Lcom/im/freechat/ui/chatlist/ChatListFragment$d;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/chatlist/ChatListFragment$d;-><init>(Lcom/im/freechat/ui/chatlist/ChatListFragment;)V

    invoke-virtual {v0, v1}, Lcom/im/freechat/ui/chatlist/d;->k(Lkotlin/jvm/functions/Function1;)V

    .line 9
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/l;

    iget-object v0, v0, Lf4/l;->i:Landroidx/appcompat/widget/SearchView;

    new-instance v1, Lcom/im/freechat/ui/chatlist/ChatListFragment$e;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/chatlist/ChatListFragment$e;-><init>(Lcom/im/freechat/ui/chatlist/ChatListFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    return-void
.end method

.method private static final G0(Lcom/im/freechat/ui/chatlist/ChatListFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/im/freechat/ui/chatlist/ChatListViewModel$Directions;->CHOOSE_CHAT_TYPE:Lcom/im/freechat/ui/chatlist/ChatListViewModel$Directions;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/im/freechat/base/f;->d0(Lcom/im/freechat/base/f;Ljava/lang/Enum;Landroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method private final I0(Lcom/im/freechat/shared/entities/chat/Chat;)V
    .locals 9

    .line 1
    invoke-static {p1}, Lcom/im/freechat/extend/g;->e(Lcom/im/freechat/shared/entities/chat/Chat;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/im/freechat/extend/g;->a(Lcom/im/freechat/shared/entities/chat/Chat;)Z

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

    sget-object v1, Lcom/im/freechat/ui/chatlist/ChatListFragment$a;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    sget v0, Lb4/b$s;->N1:I

    goto :goto_0

    .line 4
    :cond_1
    sget v0, Lb4/b$s;->O1:I

    :goto_0
    move v5, v0

    .line 5
    invoke-static {p1}, Lcom/im/freechat/extend/g;->d(Lcom/im/freechat/shared/entities/chat/Chat;)Z

    move-result v0

    if-ne v0, v1, :cond_2

    .line 6
    sget v0, Lb4/b$s;->X1:I

    goto :goto_1

    .line 7
    :cond_2
    sget v0, Lb4/b$s;->V1:I

    :goto_1
    move v7, v0

    new-array v3, v1, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    .line 9
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10
    move-object v1, v3

    check-cast v1, [Ljava/lang/CharSequence;

    new-instance v8, Lcom/im/freechat/ui/chatlist/e;

    move-object v2, v8

    move-object v4, p0

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/im/freechat/ui/chatlist/e;-><init>([Ljava/lang/String;Lcom/im/freechat/ui/chatlist/ChatListFragment;ILcom/im/freechat/shared/entities/chat/Chat;I)V

    invoke-virtual {v0, v1, v8}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_3
    :goto_2
    return-void
.end method

.method private static final J0([Ljava/lang/String;Lcom/im/freechat/ui/chatlist/ChatListFragment;ILcom/im/freechat/shared/entities/chat/Chat;ILandroid/content/DialogInterface;I)V
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
    invoke-virtual {p1}, Lcom/im/freechat/ui/chatlist/ChatListFragment;->z0()Lcom/im/freechat/ui/chatlist/ChatListViewModel;

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
    invoke-virtual {p1}, Lcom/im/freechat/ui/chatlist/ChatListFragment;->z0()Lcom/im/freechat/ui/chatlist/ChatListViewModel;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->L(Lcom/im/freechat/shared/entities/chat/Chat;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final L0(Lcom/im/freechat/ui/chatlist/ChatListViewModel$NetworkState;)V
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcom/im/freechat/ui/chatlist/ChatListFragment$a;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "binding.syncProgress"

    const-string v3, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 3
    :goto_1
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lf4/l;

    iget-object p1, p1, Lf4/l;->j:Landroid/widget/ProgressBar;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 5
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_4

    sget v0, Lb4/b$s;->W1:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 6
    :cond_4
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lf4/l;

    iget-object p1, p1, Lf4/l;->j:Landroid/widget/ProgressBar;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 8
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_6

    sget v0, Lb4/b$s;->c2:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 9
    :cond_6
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lf4/l;

    iget-object p1, p1, Lf4/l;->j:Landroid/widget/ProgressBar;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public static synthetic k0(Ljava/util/List;Lcom/im/freechat/ui/chatlist/ChatListFragment;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/ui/chatlist/ChatListFragment;->v0(Ljava/util/List;Lcom/im/freechat/ui/chatlist/ChatListFragment;I)V

    return-void
.end method

.method public static synthetic l0([Ljava/lang/String;Lcom/im/freechat/ui/chatlist/ChatListFragment;ILcom/im/freechat/shared/entities/chat/Chat;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/im/freechat/ui/chatlist/ChatListFragment;->J0([Ljava/lang/String;Lcom/im/freechat/ui/chatlist/ChatListFragment;ILcom/im/freechat/shared/entities/chat/Chat;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic m0(Lcom/im/freechat/ui/chatlist/ChatListFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/chatlist/ChatListFragment;->A0(Lcom/im/freechat/ui/chatlist/ChatListFragment;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic n0(Lcom/im/freechat/ui/chatlist/ChatListFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/chatlist/ChatListFragment;->G0(Lcom/im/freechat/ui/chatlist/ChatListFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o0(ZLcom/im/freechat/ui/chatlist/ChatListFragment;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/chatlist/ChatListFragment;->x0(ZLcom/im/freechat/ui/chatlist/ChatListFragment;)V

    return-void
.end method

.method public static synthetic p0(Lcom/im/freechat/ui/chatlist/ChatListFragment;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/chatlist/ChatListFragment;->B0(Lcom/im/freechat/ui/chatlist/ChatListFragment;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic q0(Lcom/im/freechat/ui/chatlist/ChatListFragment;Lcom/im/freechat/ui/chatlist/ChatListViewModel$NetworkState;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/chatlist/ChatListFragment;->D0(Lcom/im/freechat/ui/chatlist/ChatListFragment;Lcom/im/freechat/ui/chatlist/ChatListViewModel$NetworkState;)V

    return-void
.end method

.method public static synthetic r0(Lcom/im/freechat/ui/chatlist/ChatListFragment;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/chatlist/ChatListFragment;->C0(Lcom/im/freechat/ui/chatlist/ChatListFragment;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic s0(Lcom/im/freechat/ui/chatlist/ChatListFragment;)Lf4/l;
    .locals 0

    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lf4/l;

    return-object p0
.end method

.method public static final synthetic t0(Lcom/im/freechat/ui/chatlist/ChatListFragment;Lcom/im/freechat/shared/entities/chat/Chat;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/im/freechat/ui/chatlist/ChatListFragment;->I0(Lcom/im/freechat/shared/entities/chat/Chat;)V

    return-void
.end method

.method private final u0(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/banner/Banner;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "binding.banner"

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/l;

    iget-object v0, v0, Lf4/l;->c:Lcom/bigkoo/convenientbanner/ConvenientBanner;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/l;

    iget-object v0, v0, Lf4/l;->c:Lcom/bigkoo/convenientbanner/ConvenientBanner;

    .line 5
    new-instance v3, Lcom/im/freechat/ui/chatlist/ChatListFragment$b;

    invoke-direct {v3}, Lcom/im/freechat/ui/chatlist/ChatListFragment$b;-><init>()V

    check-cast v3, Lcom/bigkoo/convenientbanner/holder/CBViewHolderCreator;

    .line 6
    invoke-virtual {v0, v3, p1}, Lcom/bigkoo/convenientbanner/ConvenientBanner;->setPages(Lcom/bigkoo/convenientbanner/holder/CBViewHolderCreator;Ljava/util/List;)Lcom/bigkoo/convenientbanner/ConvenientBanner;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 7
    sget v4, Lb4/b$h;->Z5:I

    aput v4, v3, v2

    .line 8
    sget v2, Lb4/b$h;->a6:I

    aput v2, v3, v1

    .line 9
    invoke-virtual {v0, v3}, Lcom/bigkoo/convenientbanner/ConvenientBanner;->setPageIndicator([I)Lcom/bigkoo/convenientbanner/ConvenientBanner;

    move-result-object v0

    const-wide/16 v1, 0x1388

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/bigkoo/convenientbanner/ConvenientBanner;->startTurning(J)Lcom/bigkoo/convenientbanner/ConvenientBanner;

    move-result-object v0

    .line 11
    new-instance v1, Lcom/im/freechat/ui/chatlist/k;

    invoke-direct {v1, p1, p0}, Lcom/im/freechat/ui/chatlist/k;-><init>(Ljava/util/List;Lcom/im/freechat/ui/chatlist/ChatListFragment;)V

    invoke-virtual {v0, v1}, Lcom/bigkoo/convenientbanner/ConvenientBanner;->setOnItemClickListener(Lcom/bigkoo/convenientbanner/listener/OnItemClickListener;)Lcom/bigkoo/convenientbanner/ConvenientBanner;

    move-result-object p1

    .line 12
    sget-object v0, Lcom/bigkoo/convenientbanner/ConvenientBanner$PageIndicatorAlign;->CENTER_HORIZONTAL:Lcom/bigkoo/convenientbanner/ConvenientBanner$PageIndicatorAlign;

    invoke-virtual {p1, v0}, Lcom/bigkoo/convenientbanner/ConvenientBanner;->setPageIndicatorAlign(Lcom/bigkoo/convenientbanner/ConvenientBanner$PageIndicatorAlign;)Lcom/bigkoo/convenientbanner/ConvenientBanner;

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lf4/l;

    iget-object p1, p1, Lf4/l;->c:Lcom/bigkoo/convenientbanner/ConvenientBanner;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const/16 v0, 0x8

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private static final v0(Ljava/util/List;Lcom/im/freechat/ui/chatlist/ChatListFragment;I)V
    .locals 2

    const-string v0, "$list"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/shared/entities/banner/Banner;

    invoke-virtual {v0}, Lcom/im/freechat/shared/entities/banner/Banner;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/im/freechat/shared/entities/banner/Banner;

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/banner/Banner;->getLink()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5
    :try_start_0
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private final w0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/chat/Chat;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/l;

    iget-object v0, v0, Lf4/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    .line 2
    invoke-direct {p0}, Lcom/im/freechat/ui/chatlist/ChatListFragment;->y0()Lcom/im/freechat/ui/chatlist/d;

    move-result-object v1

    invoke-static {p1}, Lcom/im/freechat/extend/g;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    new-instance v2, Lcom/im/freechat/ui/chatlist/l;

    invoke-direct {v2, v0, p0}, Lcom/im/freechat/ui/chatlist/l;-><init>(ZLcom/im/freechat/ui/chatlist/ChatListFragment;)V

    invoke-virtual {v1, p1, v2}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final x0(ZLcom/im/freechat/ui/chatlist/ChatListFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/im/freechat/base/f;->X()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lf4/l;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lf4/l;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method private final y0()Lcom/im/freechat/ui/chatlist/d;
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/chatlist/ChatListFragment;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/ui/chatlist/d;

    return-object v0
.end method


# virtual methods
.method public H0(Lcom/im/freechat/ui/chatlist/ChatListViewModel$Directions;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Lcom/im/freechat/ui/chatlist/ChatListViewModel$Directions;
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

.method public K0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lf4/l;
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

    invoke-static {p1, p2, v0}, Lf4/l;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/l;

    move-result-object p1

    const-string p2, "inflate(inflater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic Y()Lcom/im/freechat/base/a;
    .locals 1

    invoke-virtual {p0}, Lcom/im/freechat/ui/chatlist/ChatListFragment;->z0()Lcom/im/freechat/ui/chatlist/ChatListViewModel;

    move-result-object v0

    return-object v0
.end method

.method protected Z()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/ui/chatlist/ChatListFragment;->F0()V

    .line 2
    invoke-virtual {p0}, Lcom/im/freechat/ui/chatlist/ChatListFragment;->z0()Lcom/im/freechat/ui/chatlist/ChatListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->B()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/im/freechat/ui/chatlist/h;

    invoke-direct {v2, p0}, Lcom/im/freechat/ui/chatlist/h;-><init>(Lcom/im/freechat/ui/chatlist/ChatListFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 3
    invoke-virtual {p0}, Lcom/im/freechat/ui/chatlist/ChatListFragment;->z0()Lcom/im/freechat/ui/chatlist/ChatListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->A()Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/im/freechat/ui/chatlist/i;

    invoke-direct {v2, p0}, Lcom/im/freechat/ui/chatlist/i;-><init>(Lcom/im/freechat/ui/chatlist/ChatListFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 4
    invoke-virtual {p0}, Lcom/im/freechat/ui/chatlist/ChatListFragment;->z0()Lcom/im/freechat/ui/chatlist/ChatListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->y()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/im/freechat/ui/chatlist/j;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/chatlist/j;-><init>(Lcom/im/freechat/ui/chatlist/ChatListFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 5
    invoke-virtual {p0}, Lcom/im/freechat/ui/chatlist/ChatListFragment;->z0()Lcom/im/freechat/ui/chatlist/ChatListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/chatlist/ChatListViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/im/freechat/ui/chatlist/g;

    invoke-direct {v2, p0}, Lcom/im/freechat/ui/chatlist/g;-><init>(Lcom/im/freechat/ui/chatlist/ChatListFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public bridge synthetic a0(Ljava/lang/Enum;Landroid/os/Bundle;)V
    .locals 0

    check-cast p1, Lcom/im/freechat/ui/chatlist/ChatListViewModel$Directions;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/chatlist/ChatListFragment;->H0(Lcom/im/freechat/ui/chatlist/ChatListViewModel$Directions;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic g0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/chatlist/ChatListFragment;->K0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lf4/l;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    invoke-direct {p0}, Lcom/im/freechat/ui/chatlist/ChatListFragment;->E0()V

    return-void
.end method

.method public z0()Lcom/im/freechat/ui/chatlist/ChatListViewModel;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chatlist/ChatListFragment;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/ui/chatlist/ChatListViewModel;

    return-object v0
.end method
