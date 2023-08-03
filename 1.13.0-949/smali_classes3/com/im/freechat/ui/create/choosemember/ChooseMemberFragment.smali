.class public final Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;
.super Lcom/im/freechat/base/f;
.source "ChooseMemberFragment.kt"

# interfaces
.implements Lcom/im/freechat/ui/contacts/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/im/freechat/base/f<",
        "Lcom/im/freechat/ui/create/choosemember/ChooseMemberViewModel$Directions;",
        "Lf4/p;",
        ">;",
        "Lcom/im/freechat/ui/contacts/e;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChooseMemberFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChooseMemberFragment.kt\ncom/im/freechat/ui/create/choosemember/ChooseMemberFragment\n+ 2 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,126:1\n40#2,5:127\n40#2,5:132\n254#3,2:137\n254#3,2:139\n254#3,2:141\n37#4:143\n36#4,3:144\n*S KotlinDebug\n*F\n+ 1 ChooseMemberFragment.kt\ncom/im/freechat/ui/create/choosemember/ChooseMemberFragment\n*L\n30#1:127,5\n33#1:132,5\n76#1:137,2\n96#1:139,2\n57#1:141,2\n83#1:143\n83#1:144,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008/\u00100J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u0008\u0010\u0007\u001a\u00020\u0005H\u0002J\u0008\u0010\u0008\u001a\u00020\u0005H\u0002J\u001a\u0010\r\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016J\u0008\u0010\u000e\u001a\u00020\u0005H\u0014J\u0018\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0010\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0013H\u0016R\u001b\u0010\u001b\u001a\u00020\u00168VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u001b\u0010 \u001a\u00020\u001c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u0018\u001a\u0004\u0008\u001e\u0010\u001fR\u001d\u0010%\u001a\u0004\u0018\u00010!8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\u0018\u001a\u0004\u0008#\u0010$R\u001b\u0010*\u001a\u00020&8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\'\u0010\u0018\u001a\u0004\u0008(\u0010)R\u0014\u0010.\u001a\u00020+8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010-\u00a8\u00061"
    }
    d2 = {
        "Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;",
        "Lcom/im/freechat/base/f;",
        "Lcom/im/freechat/ui/create/choosemember/ChooseMemberViewModel$Directions;",
        "Lf4/p;",
        "Lcom/im/freechat/ui/contacts/e;",
        "",
        "w0",
        "v0",
        "A0",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "z0",
        "Z",
        "direction",
        "Landroid/os/Bundle;",
        "extras",
        "y0",
        "Lcom/im/freechat/shared/entities/contact/UserModel;",
        "contact",
        "x",
        "Lcom/im/freechat/ui/create/choosemember/ChooseMemberViewModel;",
        "b",
        "Lkotlin/Lazy;",
        "t0",
        "()Lcom/im/freechat/ui/create/choosemember/ChooseMemberViewModel;",
        "viewModel",
        "Lcom/im/freechat/ui/create/choosemember/b;",
        "c",
        "p0",
        "()Lcom/im/freechat/ui/create/choosemember/b;",
        "adapter",
        "Ljava/io/Serializable;",
        "d",
        "s0",
        "()Ljava/io/Serializable;",
        "type",
        "Lcom/im/freechat/ui/contacts/ContactListFragment;",
        "e",
        "q0",
        "()Lcom/im/freechat/ui/contacts/ContactListFragment;",
        "contactsFragment",
        "",
        "r0",
        "()I",
        "count",
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

.field private final d:Lkotlin/Lazy;
    .annotation build Lm8/g;
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
    invoke-direct {p0}, Lcom/im/freechat/base/f;-><init>()V

    .line 2
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 3
    new-instance v1, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment$special$$inlined$inject$default$1;-><init>(Landroid/content/ComponentCallbacks;Lz8/a;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 4
    iput-object v1, p0, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;->b:Lkotlin/Lazy;

    .line 5
    new-instance v1, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment$a;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment$a;-><init>(Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;)V

    .line 6
    new-instance v3, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment$special$$inlined$inject$default$2;

    invoke-direct {v3, p0, v2, v1}, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment$special$$inlined$inject$default$2;-><init>(Landroid/content/ComponentCallbacks;Lz8/a;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;->c:Lkotlin/Lazy;

    .line 8
    new-instance v0, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment$e;

    invoke-direct {v0, p0}, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment$e;-><init>(Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;->d:Lkotlin/Lazy;

    .line 9
    sget-object v0, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment$b;->a:Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment$b;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;->e:Lkotlin/Lazy;

    return-void
.end method

.method private final A0()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;->q0()Lcom/im/freechat/ui/contacts/ContactListFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 4
    sget v1, Lb4/b$j;->Qc:I

    .line 5
    invoke-direct {p0}, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;->q0()Lcom/im/freechat/ui/contacts/ContactListFragment;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    return-void
.end method

.method public static synthetic k0(Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;->x0(Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l0(Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;->u0(Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static final synthetic m0(Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;)Lf4/p;
    .locals 0

    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lf4/p;

    return-object p0
.end method

.method public static final synthetic n0(Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;)Lcom/im/freechat/ui/contacts/ContactListFragment;
    .locals 0

    invoke-direct {p0}, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;->q0()Lcom/im/freechat/ui/contacts/ContactListFragment;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic o0(Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;)I
    .locals 0

    invoke-direct {p0}, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;->r0()I

    move-result p0

    return p0
.end method

.method private final p0()Lcom/im/freechat/ui/create/choosemember/b;
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/ui/create/choosemember/b;

    return-object v0
.end method

.method private final q0()Lcom/im/freechat/ui/contacts/ContactListFragment;
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/ui/contacts/ContactListFragment;

    return-object v0
.end method

.method private final r0()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;->s0()Ljava/io/Serializable;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/im/freechat/shared/entities/chat/Chat$Type;->SINGLE:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Lcom/im/freechat/shared/entities/chat/Chat$Type;->GROUP:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    if-ne v0, v1, :cond_1

    const v0, 0x124f8

    :goto_0
    return v0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private final s0()Ljava/io/Serializable;
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    return-object v0
.end method

.method private static final u0(Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;Ljava/lang/Boolean;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lf4/p;

    .line 2
    iget-object v0, p0, Lf4/p;->b:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3
    iget-object v0, p0, Lf4/p;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 4
    iget-object v0, p0, Lf4/p;->e:Landroid/widget/ProgressBar;

    const-string v1, "progress"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 5
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p0, p0, Lf4/p;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

.method private final v0()V
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

    check-cast v1, Lf4/p;

    iget-object v1, v1, Lf4/p;->g:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/p;

    iget-object v0, v0, Lf4/p;->g:Landroidx/appcompat/widget/Toolbar;

    const-string v1, "binding.toolbar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private final w0()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;->v0()V

    .line 2
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/p;

    iget-object v0, v0, Lf4/p;->d:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 4
    invoke-direct {p0}, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;->p0()Lcom/im/freechat/ui/create/choosemember/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    new-instance v2, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    .line 7
    invoke-virtual {v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setJustifyContent(I)V

    .line 8
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 9
    invoke-direct {p0}, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;->p0()Lcom/im/freechat/ui/create/choosemember/b;

    move-result-object v0

    new-instance v2, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment$c;

    invoke-direct {v2, p0}, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment$c;-><init>(Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;)V

    invoke-virtual {v0, v2}, Lcom/im/freechat/ui/create/choosemember/b;->r(Lkotlin/jvm/functions/Function1;)V

    .line 10
    invoke-direct {p0}, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;->p0()Lcom/im/freechat/ui/create/choosemember/b;

    move-result-object v0

    new-instance v2, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment$d;

    invoke-direct {v2, p0}, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment$d;-><init>(Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;)V

    invoke-virtual {v0, v2}, Lcom/im/freechat/ui/create/choosemember/b;->s(Lkotlin/jvm/functions/Function2;)V

    .line 11
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/p;

    iget-object v0, v0, Lf4/p;->b:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const-string v2, ""

    .line 12
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;->p0()Lcom/im/freechat/ui/create/choosemember/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/im/freechat/ui/create/choosemember/b;->l()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v1, v2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    .line 13
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 14
    invoke-direct {p0}, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;->s0()Ljava/io/Serializable;

    move-result-object v1

    sget-object v2, Lcom/im/freechat/shared/entities/chat/Chat$Type;->SINGLE:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    if-ne v1, v2, :cond_1

    sget v1, Lb4/b$h;->I4:I

    goto :goto_1

    :cond_1
    sget v1, Lb4/b$h;->l4:I

    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageResource(I)V

    .line 15
    new-instance v1, Lcom/im/freechat/ui/create/choosemember/f;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/create/choosemember/f;-><init>(Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    invoke-direct {p0}, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;->A0()V

    return-void
.end method

.method private static final x0(Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;Landroid/view/View;)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;->s0()Ljava/io/Serializable;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/im/freechat/shared/entities/chat/Chat$Type;->SINGLE:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;->t0()Lcom/im/freechat/ui/create/choosemember/ChooseMemberViewModel;

    move-result-object p1

    invoke-direct {p0}, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;->p0()Lcom/im/freechat/ui/create/choosemember/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/im/freechat/ui/create/choosemember/b;->l()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/im/freechat/shared/entities/contact/UserModel;

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/contact/UserModel;->getUserId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/im/freechat/ui/create/choosemember/ChooseMemberViewModel;->j(I)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/im/freechat/shared/entities/chat/Chat$Type;->GROUP:Lcom/im/freechat/shared/entities/chat/Chat$Type;

    if-ne p1, v0, :cond_1

    .line 4
    sget-object p1, Lcom/im/freechat/ui/create/choosemember/ChooseMemberViewModel$Directions;->NAME_GROUP:Lcom/im/freechat/ui/create/choosemember/ChooseMemberViewModel$Directions;

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/Pair;

    .line 5
    invoke-direct {p0}, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;->p0()Lcom/im/freechat/ui/create/choosemember/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/im/freechat/ui/create/choosemember/b;->l()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/im/freechat/shared/entities/contact/UserModel;

    .line 6
    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "members"

    .line 7
    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/im/freechat/base/f;->c0(Ljava/lang/Enum;Landroid/os/Bundle;)V

    :goto_0
    return-void

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public bridge synthetic Y()Lcom/im/freechat/base/a;
    .locals 1

    invoke-virtual {p0}, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;->t0()Lcom/im/freechat/ui/create/choosemember/ChooseMemberViewModel;

    move-result-object v0

    return-object v0
.end method

.method protected Z()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;->w0()V

    .line 2
    invoke-virtual {p0}, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;->t0()Lcom/im/freechat/ui/create/choosemember/ChooseMemberViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/create/choosemember/ChooseMemberViewModel;->k()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/im/freechat/ui/create/choosemember/g;

    invoke-direct {v2, p0}, Lcom/im/freechat/ui/create/choosemember/g;-><init>(Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public bridge synthetic a0(Ljava/lang/Enum;Landroid/os/Bundle;)V
    .locals 0

    check-cast p1, Lcom/im/freechat/ui/create/choosemember/ChooseMemberViewModel$Directions;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;->y0(Lcom/im/freechat/ui/create/choosemember/ChooseMemberViewModel$Directions;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic g0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;->z0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lf4/p;

    move-result-object p1

    return-object p1
.end method

.method public t0()Lcom/im/freechat/ui/create/choosemember/ChooseMemberViewModel;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/ui/create/choosemember/ChooseMemberViewModel;

    return-object v0
.end method

.method public x(Lcom/im/freechat/shared/entities/contact/UserModel;)V
    .locals 1
    .param p1    # Lcom/im/freechat/shared/entities/contact/UserModel;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "contact"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/im/freechat/ui/create/choosemember/ChooseMemberFragment;->p0()Lcom/im/freechat/ui/create/choosemember/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/im/freechat/ui/create/choosemember/b;->j(Lcom/im/freechat/shared/entities/contact/UserModel;)V

    return-void
.end method

.method public y0(Lcom/im/freechat/ui/create/choosemember/ChooseMemberViewModel$Directions;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Lcom/im/freechat/ui/create/choosemember/ChooseMemberViewModel$Directions;
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

.method public z0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lf4/p;
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

    invoke-static {p1, p2, v0}, Lf4/p;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/p;

    move-result-object p1

    const-string p2, "inflate(inflater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
