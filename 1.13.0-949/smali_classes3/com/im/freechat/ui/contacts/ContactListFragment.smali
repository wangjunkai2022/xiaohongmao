.class public final Lcom/im/freechat/ui/contacts/ContactListFragment;
.super Lcom/im/freechat/base/f;
.source "ContactListFragment.kt"

# interfaces
.implements Lcom/im/freechat/ui/contacts/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/ui/contacts/ContactListFragment$a;,
        Lcom/im/freechat/ui/contacts/ContactListFragment$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/im/freechat/base/f<",
        "Lcom/im/freechat/ui/contacts/ContactListViewModel$Directions;",
        "Lf4/o;",
        ">;",
        "Lcom/im/freechat/ui/contacts/e;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContactListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContactListFragment.kt\ncom/im/freechat/ui/contacts/ContactListFragment\n+ 2 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,193:1\n40#2,5:194\n40#2,5:199\n254#3,2:204\n254#3,2:206\n254#3,2:208\n254#3,2:214\n254#3,2:216\n37#4:210\n36#4,3:211\n*S KotlinDebug\n*F\n+ 1 ContactListFragment.kt\ncom/im/freechat/ui/contacts/ContactListFragment\n*L\n30#1:194,5\n31#1:199,5\n87#1:204,2\n100#1:206,2\n131#1:208,2\n77#1:214,2\n80#1:216,2\n145#1:210\n145#1:211,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0013\u0018\u0000 A2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004:\u0001BB\u0007\u00a2\u0006\u0004\u0008?\u0010@J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u0008\u0010\u0007\u001a\u00020\u0005H\u0002J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0010\u0010\u000b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u001a\u0010\u0010\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016J\u0010\u0010\u0011\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0008H\u0016J\u0008\u0010\u0012\u001a\u00020\u0005H\u0014J\u0017\u0010\u0015\u001a\u00020\u00052\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0018\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0018H\u0016J2\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u001d2\u0006\u0010\u001c\u001a\u00020\u001b2\u0010\u0008\u0002\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u001d2\u0008\u0008\u0002\u0010 \u001a\u00020\u001fR\u001b\u0010\'\u001a\u00020\"8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&R\u001b\u0010,\u001a\u00020(8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008)\u0010$\u001a\u0004\u0008*\u0010+R\u0016\u0010/\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u001b\u00104\u001a\u0002008BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00081\u0010$\u001a\u0004\u00082\u00103R\u001b\u00108\u001a\u00020\u001f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00085\u0010$\u001a\u0004\u00086\u00107R\u001b\u0010;\u001a\u00020\u001f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00089\u0010$\u001a\u0004\u0008:\u00107R\u001b\u0010>\u001a\u00020\u001f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008<\u0010$\u001a\u0004\u0008=\u00107\u00a8\u0006C"
    }
    d2 = {
        "Lcom/im/freechat/ui/contacts/ContactListFragment;",
        "Lcom/im/freechat/base/f;",
        "Lcom/im/freechat/ui/contacts/ContactListViewModel$Directions;",
        "Lf4/o;",
        "Lcom/im/freechat/ui/contacts/e;",
        "",
        "z0",
        "A0",
        "Lcom/im/freechat/shared/entities/contact/UserModel;",
        "contact",
        "F0",
        "H0",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "C0",
        "x",
        "Z",
        "",
        "userId",
        "q0",
        "(Ljava/lang/Integer;)V",
        "direction",
        "Landroid/os/Bundle;",
        "extras",
        "B0",
        "",
        "part",
        "",
        "extraContacts",
        "",
        "typeAhead",
        "D0",
        "Lcom/im/freechat/ui/contacts/ContactListViewModel;",
        "b",
        "Lkotlin/Lazy;",
        "w0",
        "()Lcom/im/freechat/ui/contacts/ContactListViewModel;",
        "viewModel",
        "Lcom/im/freechat/ui/contacts/c;",
        "c",
        "r0",
        "()Lcom/im/freechat/ui/contacts/c;",
        "adapter",
        "d",
        "Lcom/im/freechat/ui/contacts/e;",
        "clickListener",
        "Lcom/im/freechat/shared/entities/contact/ContactType;",
        "e",
        "s0",
        "()Lcom/im/freechat/shared/entities/contact/ContactType;",
        "contactListType",
        "f",
        "v0",
        "()Z",
        "standalone",
        "g",
        "u0",
        "smallItems",
        "h",
        "t0",
        "searchViewEnabled",
        "<init>",
        "()V",
        "i",
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
.field public static final i:Lcom/im/freechat/ui/contacts/ContactListFragment$a;
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

.field private d:Lcom/im/freechat/ui/contacts/e;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final e:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final f:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final g:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final h:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/im/freechat/ui/contacts/ContactListFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/im/freechat/ui/contacts/ContactListFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/im/freechat/ui/contacts/ContactListFragment;->i:Lcom/im/freechat/ui/contacts/ContactListFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/base/f;-><init>()V

    .line 2
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 3
    new-instance v1, Lcom/im/freechat/ui/contacts/ContactListFragment$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/im/freechat/ui/contacts/ContactListFragment$special$$inlined$inject$default$1;-><init>(Landroid/content/ComponentCallbacks;Lz8/a;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 4
    iput-object v1, p0, Lcom/im/freechat/ui/contacts/ContactListFragment;->b:Lkotlin/Lazy;

    .line 5
    new-instance v1, Lcom/im/freechat/ui/contacts/ContactListFragment$special$$inlined$inject$default$2;

    invoke-direct {v1, p0, v2, v2}, Lcom/im/freechat/ui/contacts/ContactListFragment$special$$inlined$inject$default$2;-><init>(Landroid/content/ComponentCallbacks;Lz8/a;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/im/freechat/ui/contacts/ContactListFragment;->c:Lkotlin/Lazy;

    .line 7
    iput-object p0, p0, Lcom/im/freechat/ui/contacts/ContactListFragment;->d:Lcom/im/freechat/ui/contacts/e;

    .line 8
    new-instance v0, Lcom/im/freechat/ui/contacts/ContactListFragment$c;

    invoke-direct {v0, p0}, Lcom/im/freechat/ui/contacts/ContactListFragment$c;-><init>(Lcom/im/freechat/ui/contacts/ContactListFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/im/freechat/ui/contacts/ContactListFragment;->e:Lkotlin/Lazy;

    .line 9
    new-instance v0, Lcom/im/freechat/ui/contacts/ContactListFragment$i;

    invoke-direct {v0, p0}, Lcom/im/freechat/ui/contacts/ContactListFragment$i;-><init>(Lcom/im/freechat/ui/contacts/ContactListFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/im/freechat/ui/contacts/ContactListFragment;->f:Lkotlin/Lazy;

    .line 10
    new-instance v0, Lcom/im/freechat/ui/contacts/ContactListFragment$h;

    invoke-direct {v0, p0}, Lcom/im/freechat/ui/contacts/ContactListFragment$h;-><init>(Lcom/im/freechat/ui/contacts/ContactListFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/im/freechat/ui/contacts/ContactListFragment;->g:Lkotlin/Lazy;

    .line 11
    new-instance v0, Lcom/im/freechat/ui/contacts/ContactListFragment$g;

    invoke-direct {v0, p0}, Lcom/im/freechat/ui/contacts/ContactListFragment$g;-><init>(Lcom/im/freechat/ui/contacts/ContactListFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/im/freechat/ui/contacts/ContactListFragment;->h:Lkotlin/Lazy;

    return-void
.end method

.method private final A0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/o;

    iget-object v0, v0, Lf4/o;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 3
    invoke-direct {p0}, Lcom/im/freechat/ui/contacts/ContactListFragment;->r0()Lcom/im/freechat/ui/contacts/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4
    invoke-direct {p0}, Lcom/im/freechat/ui/contacts/ContactListFragment;->r0()Lcom/im/freechat/ui/contacts/c;

    move-result-object v0

    .line 5
    invoke-direct {p0}, Lcom/im/freechat/ui/contacts/ContactListFragment;->s0()Lcom/im/freechat/shared/entities/contact/ContactType;

    move-result-object v1

    sget-object v2, Lcom/im/freechat/shared/entities/contact/ContactType;->FOLLOW:Lcom/im/freechat/shared/entities/contact/ContactType;

    if-ne v1, v2, :cond_0

    .line 6
    new-instance v1, Lcom/im/freechat/ui/contacts/ContactListFragment$d;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/contacts/ContactListFragment$d;-><init>(Lcom/im/freechat/ui/contacts/ContactListFragment;)V

    invoke-virtual {v0, v1}, Lcom/im/freechat/ui/contacts/c;->m(Lkotlin/jvm/functions/Function1;)V

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/im/freechat/ui/contacts/ContactListFragment;->v0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    new-instance v1, Lcom/im/freechat/ui/contacts/ContactListFragment$e;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/contacts/ContactListFragment$e;-><init>(Lcom/im/freechat/ui/contacts/ContactListFragment;)V

    invoke-virtual {v0, v1}, Lcom/im/freechat/ui/contacts/c;->n(Lkotlin/jvm/functions/Function1;)V

    .line 9
    :cond_1
    invoke-direct {p0}, Lcom/im/freechat/ui/contacts/ContactListFragment;->u0()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/im/freechat/ui/contacts/c;->o(Z)V

    .line 10
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/o;

    iget-object v0, v0, Lf4/o;->e:Landroidx/appcompat/widget/SearchView;

    new-instance v1, Lcom/im/freechat/ui/contacts/ContactListFragment$f;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/contacts/ContactListFragment$f;-><init>(Lcom/im/freechat/ui/contacts/ContactListFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 11
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/o;

    iget-object v0, v0, Lf4/o;->e:Landroidx/appcompat/widget/SearchView;

    const-string v1, "binding.svContacts"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/im/freechat/ui/contacts/ContactListFragment;->t0()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    .line 12
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic E0(Lcom/im/freechat/ui/contacts/ContactListFragment;Ljava/lang/String;Ljava/util/List;ZILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/im/freechat/ui/contacts/ContactListFragment;->D0(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final F0(Lcom/im/freechat/shared/entities/contact/UserModel;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->isService()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    sget v1, Lb4/b$s;->k2:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/im/freechat/ui/contacts/ContactListFragment;->s0()Lcom/im/freechat/shared/entities/contact/ContactType;

    move-result-object v1

    sget-object v2, Lcom/im/freechat/shared/entities/contact/ContactType;->FOLLOW:Lcom/im/freechat/shared/entities/contact/ContactType;

    if-ne v1, v2, :cond_1

    .line 5
    sget v1, Lb4/b$s;->l2:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_1
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    .line 7
    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, [Ljava/lang/CharSequence;

    .line 8
    new-instance v3, Lcom/im/freechat/ui/contacts/g;

    invoke-direct {v3, v0, p0, p1}, Lcom/im/freechat/ui/contacts/g;-><init>(Ljava/util/ArrayList;Lcom/im/freechat/ui/contacts/ContactListFragment;Lcom/im/freechat/shared/entities/contact/UserModel;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private static final G0(Ljava/util/ArrayList;Lcom/im/freechat/ui/contacts/ContactListFragment;Lcom/im/freechat/shared/entities/contact/UserModel;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p3, "$items"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$0"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$contact"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2
    sget p3, Lb4/b$s;->k2:I

    invoke-virtual {p1, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-direct {p1, p2}, Lcom/im/freechat/ui/contacts/ContactListFragment;->H0(Lcom/im/freechat/shared/entities/contact/UserModel;)V

    goto :goto_0

    .line 3
    :cond_0
    sget p3, Lb4/b$s;->l2:I

    invoke-virtual {p1, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Lcom/im/freechat/shared/entities/contact/UserModel;->getUserId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/im/freechat/ui/contacts/ContactListFragment;->q0(Ljava/lang/Integer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final H0(Lcom/im/freechat/shared/entities/contact/UserModel;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lf4/g;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/g;

    move-result-object v0

    const-string v2, "inflate(layoutInflater, null, false)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3
    sget v3, Lb4/b$s;->k2:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 4
    invoke-virtual {v0}, Lf4/g;->b()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 5
    new-instance v3, Lcom/im/freechat/ui/contacts/f;

    invoke-direct {v3, p0, p1, v0}, Lcom/im/freechat/ui/contacts/f;-><init>(Lcom/im/freechat/ui/contacts/ContactListFragment;Lcom/im/freechat/shared/entities/contact/UserModel;Lf4/g;)V

    const v4, 0x104000a

    invoke-virtual {v2, v4, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    .line 6
    invoke-virtual {v2, v3, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    const-string v2, "Builder(requireContext()\u2026ll)\n            .create()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v2, Lcom/im/freechat/ui/contacts/h;

    invoke-direct {v2, v0, p1}, Lcom/im/freechat/ui/contacts/h;-><init>(Lf4/g;Lcom/im/freechat/shared/entities/contact/UserModel;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 9
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static final I0(Lcom/im/freechat/ui/contacts/ContactListFragment;Lcom/im/freechat/shared/entities/contact/UserModel;Lf4/g;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$contact"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$dialogBinding"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/im/freechat/ui/contacts/ContactListFragment;->w0()Lcom/im/freechat/ui/contacts/ContactListViewModel;

    move-result-object p0

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getUserId()I

    move-result p1

    iget-object p2, p2, Lf4/g;->c:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/contacts/ContactListViewModel;->R(ILjava/lang/String;)Lkotlinx/coroutines/j2;

    return-void
.end method

.method private static final J0(Lf4/g;Lcom/im/freechat/shared/entities/contact/UserModel;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p2, "$dialogBinding"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$contact"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lf4/g;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic k0(Lcom/im/freechat/ui/contacts/ContactListFragment;Lcom/im/freechat/shared/entities/contact/UserModel;Lf4/g;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/im/freechat/ui/contacts/ContactListFragment;->I0(Lcom/im/freechat/ui/contacts/ContactListFragment;Lcom/im/freechat/shared/entities/contact/UserModel;Lf4/g;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic l0(Ljava/util/ArrayList;Lcom/im/freechat/ui/contacts/ContactListFragment;Lcom/im/freechat/shared/entities/contact/UserModel;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/im/freechat/ui/contacts/ContactListFragment;->G0(Ljava/util/ArrayList;Lcom/im/freechat/ui/contacts/ContactListFragment;Lcom/im/freechat/shared/entities/contact/UserModel;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic m0(Lcom/im/freechat/ui/contacts/ContactListFragment;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/contacts/ContactListFragment;->x0(Lcom/im/freechat/ui/contacts/ContactListFragment;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic n0(Lcom/im/freechat/ui/contacts/ContactListFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/contacts/ContactListFragment;->y0(Lcom/im/freechat/ui/contacts/ContactListFragment;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic o0(Lf4/g;Lcom/im/freechat/shared/entities/contact/UserModel;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/ui/contacts/ContactListFragment;->J0(Lf4/g;Lcom/im/freechat/shared/entities/contact/UserModel;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static final synthetic p0(Lcom/im/freechat/ui/contacts/ContactListFragment;)Lcom/im/freechat/ui/contacts/e;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/ui/contacts/ContactListFragment;->d:Lcom/im/freechat/ui/contacts/e;

    return-object p0
.end method

.method private final r0()Lcom/im/freechat/ui/contacts/c;
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/contacts/ContactListFragment;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/ui/contacts/c;

    return-object v0
.end method

.method private final s0()Lcom/im/freechat/shared/entities/contact/ContactType;
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/contacts/ContactListFragment;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/shared/entities/contact/ContactType;

    return-object v0
.end method

.method private final t0()Z
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/contacts/ContactListFragment;->h:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final u0()Z
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/contacts/ContactListFragment;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final v0()Z
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/contacts/ContactListFragment;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static final x0(Lcom/im/freechat/ui/contacts/ContactListFragment;Ljava/util/List;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/ui/contacts/ContactListFragment;->r0()Lcom/im/freechat/ui/contacts/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/im/freechat/ui/contacts/c;->submitList(Ljava/util/List;)V

    .line 2
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/o;

    iget-object v0, v0, Lf4/o;->b:Landroid/widget/TextView;

    const-string v1, "binding.emptyView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/im/freechat/ui/contacts/ContactListFragment;->s0()Lcom/im/freechat/shared/entities/contact/ContactType;

    move-result-object p0

    sget-object p1, Lcom/im/freechat/shared/entities/contact/ContactType;->BLOCK:Lcom/im/freechat/shared/entities/contact/ContactType;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    .line 3
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static final y0(Lcom/im/freechat/ui/contacts/ContactListFragment;Ljava/lang/Boolean;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/o;

    iget-object v0, v0, Lf4/o;->c:Landroid/widget/FrameLayout;

    const-string v1, "binding.flLoading"

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

    .line 2
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method private final z0()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/ui/contacts/ContactListFragment;->v0()Z

    move-result v0

    const/16 v1, 0x8

    const-string v2, "binding.toolbar"

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/o;

    iget-object v0, v0, Lf4/o;->f:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v3, v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v3, :cond_1

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lf4/o;

    iget-object v1, v1, Lf4/o;->f:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 6
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 7
    invoke-direct {p0}, Lcom/im/freechat/ui/contacts/ContactListFragment;->s0()Lcom/im/freechat/shared/entities/contact/ContactType;

    move-result-object v1

    sget-object v2, Lcom/im/freechat/ui/contacts/ContactListFragment$b;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 8
    sget v1, Lb4/b$s;->b0:I

    goto :goto_1

    :cond_2
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 9
    :cond_3
    sget v1, Lb4/b$s;->e1:I

    .line 10
    :goto_1
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    goto :goto_2

    .line 11
    :cond_4
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/o;

    iget-object v0, v0, Lf4/o;->f:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public B0(Lcom/im/freechat/ui/contacts/ContactListViewModel$Directions;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Lcom/im/freechat/ui/contacts/ContactListViewModel$Directions;
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

    sget-object p2, Lcom/im/freechat/ui/contacts/ContactListFragment$b;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    return-void
.end method

.method public C0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lf4/o;
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

    invoke-static {p1, p2, v0}, Lf4/o;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/o;

    move-result-object p1

    const-string p2, "inflate(inflater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final D0(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/im/freechat/shared/entities/contact/UserModel;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    const-string v0, "part"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/ui/contacts/ContactListFragment;->w0()Lcom/im/freechat/ui/contacts/ContactListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/contacts/ContactListViewModel;->I()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/im/freechat/ui/contacts/ContactListFragment;->w0()Lcom/im/freechat/ui/contacts/ContactListViewModel;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/im/freechat/ui/contacts/ContactListViewModel;->E(Ljava/lang/String;Z)V

    .line 3
    invoke-virtual {p0}, Lcom/im/freechat/ui/contacts/ContactListFragment;->w0()Lcom/im/freechat/ui/contacts/ContactListViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/ui/contacts/ContactListViewModel;->G()Landroidx/lifecycle/MediatorLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public bridge synthetic Y()Lcom/im/freechat/base/a;
    .locals 1

    invoke-virtual {p0}, Lcom/im/freechat/ui/contacts/ContactListFragment;->w0()Lcom/im/freechat/ui/contacts/ContactListViewModel;

    move-result-object v0

    return-object v0
.end method

.method protected Z()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/im/freechat/ui/contacts/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.im.freechat.ui.contacts.ContactListClickListener"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/im/freechat/ui/contacts/e;

    iput-object v0, p0, Lcom/im/freechat/ui/contacts/ContactListFragment;->d:Lcom/im/freechat/ui/contacts/e;

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/im/freechat/ui/contacts/ContactListFragment;->z0()V

    .line 4
    invoke-direct {p0}, Lcom/im/freechat/ui/contacts/ContactListFragment;->A0()V

    .line 5
    invoke-virtual {p0}, Lcom/im/freechat/ui/contacts/ContactListFragment;->w0()Lcom/im/freechat/ui/contacts/ContactListViewModel;

    move-result-object v0

    .line 6
    invoke-direct {p0}, Lcom/im/freechat/ui/contacts/ContactListFragment;->s0()Lcom/im/freechat/shared/entities/contact/ContactType;

    move-result-object v1

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "showServiceContact"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/im/freechat/ui/contacts/ContactListViewModel;->L(Lcom/im/freechat/shared/entities/contact/ContactType;Z)V

    .line 9
    invoke-virtual {p0}, Lcom/im/freechat/ui/contacts/ContactListFragment;->w0()Lcom/im/freechat/ui/contacts/ContactListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/contacts/ContactListViewModel;->G()Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/im/freechat/ui/contacts/j;

    invoke-direct {v2, p0}, Lcom/im/freechat/ui/contacts/j;-><init>(Lcom/im/freechat/ui/contacts/ContactListFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 10
    invoke-virtual {p0}, Lcom/im/freechat/ui/contacts/ContactListFragment;->w0()Lcom/im/freechat/ui/contacts/ContactListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/contacts/ContactListViewModel;->J()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/im/freechat/ui/contacts/i;

    invoke-direct {v2, p0}, Lcom/im/freechat/ui/contacts/i;-><init>(Lcom/im/freechat/ui/contacts/ContactListFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public bridge synthetic a0(Ljava/lang/Enum;Landroid/os/Bundle;)V
    .locals 0

    check-cast p1, Lcom/im/freechat/ui/contacts/ContactListViewModel$Directions;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/contacts/ContactListFragment;->B0(Lcom/im/freechat/ui/contacts/ContactListViewModel$Directions;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic g0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/contacts/ContactListFragment;->C0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lf4/o;

    move-result-object p1

    return-object p1
.end method

.method public final q0(Ljava/lang/Integer;)V
    .locals 2
    .param p1    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/ui/contacts/ContactListFragment;->w0()Lcom/im/freechat/ui/contacts/ContactListViewModel;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/im/freechat/ui/contacts/ContactListViewModel;->D(I)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lb4/b$s;->k8:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public w0()Lcom/im/freechat/ui/contacts/ContactListViewModel;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/contacts/ContactListFragment;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/ui/contacts/ContactListViewModel;

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

    invoke-direct {p0, p1}, Lcom/im/freechat/ui/contacts/ContactListFragment;->F0(Lcom/im/freechat/shared/entities/contact/UserModel;)V

    return-void
.end method
