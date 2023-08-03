.class public final Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;
.super Lcom/im/freechat/base/f;
.source "UserProfileFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/im/freechat/base/f<",
        "Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$Directions;",
        "Lf4/v;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUserProfileFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserProfileFragment.kt\ncom/im/freechat/ui/chat/userprofile/UserProfileFragment\n+ 2 FragmentVM.kt\norg/koin/androidx/viewmodel/ext/android/FragmentVMKt\n+ 3 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,164:1\n36#2,7:165\n59#3,7:172\n254#4,2:179\n254#4,2:181\n254#4,2:183\n254#4,2:186\n254#4,2:188\n1#5:185\n*S KotlinDebug\n*F\n+ 1 UserProfileFragment.kt\ncom/im/freechat/ui/chat/userprofile/UserProfileFragment\n*L\n28#1:165,7\n28#1:172,7\n111#1:179,2\n113#1:181,2\n121#1:183,2\n123#1:186,2\n64#1:188,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008#\u0010$J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u001a\u0010\u000c\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016J\u0008\u0010\r\u001a\u00020\u0006H\u0014J\u000e\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000eJ\u0018\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u000eH\u0016J\u0018\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u0016H\u0016J\u0010\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u0018H\u0016J\u000e\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u000eR\u001b\u0010\"\u001a\u00020\u001d8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\u00a8\u0006%"
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;",
        "Lcom/im/freechat/base/f;",
        "Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$Directions;",
        "Lf4/v;",
        "Lcom/im/freechat/shared/entities/contact/UserModel;",
        "contact",
        "",
        "t0",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "H0",
        "Z",
        "Landroid/os/Bundle;",
        "bundle",
        "u0",
        "direction",
        "extras",
        "F0",
        "Landroid/view/Menu;",
        "menu",
        "Landroid/view/MenuInflater;",
        "onCreateOptionsMenu",
        "Landroid/view/MenuItem;",
        "item",
        "",
        "onOptionsItemSelected",
        "G0",
        "Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;",
        "b",
        "Lkotlin/Lazy;",
        "v0",
        "()Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;",
        "viewModel",
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

.field private c:Lk4/a;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/base/f;-><init>()V

    .line 2
    new-instance v0, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment$special$$inlined$viewModel$default$1;

    invoke-direct {v0, p0}, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment$special$$inlined$viewModel$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 3
    invoke-static {p0}, Lorg/koin/android/ext/android/a;->a(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    move-result-object v1

    .line 4
    new-instance v2, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment$special$$inlined$viewModel$default$2;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3, v1}, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment$special$$inlined$viewModel$default$2;-><init>(Lkotlin/jvm/functions/Function0;Lz8/a;Lkotlin/jvm/functions/Function0;Lorg/koin/core/scope/Scope;)V

    .line 5
    const-class v1, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v3, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment$special$$inlined$viewModel$default$3;

    invoke-direct {v3, v0}, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment$special$$inlined$viewModel$default$3;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {p0, v1, v3, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;->b:Lkotlin/Lazy;

    return-void
.end method

.method private static final A0(Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;Ljava/lang/Boolean;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/v;

    iget-object v0, v0, Lf4/v;->e:Landroid/widget/FrameLayout;

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

.method private static final B0(Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;->c:Lk4/a;

    if-nez p0, :cond_0

    const-string p0, "pageAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    sget-object v0, Lcom/im/freechat/ui/chat/history/HistoryTab;->Media:Lcom/im/freechat/ui/chat/history/HistoryTab;

    invoke-virtual {p0, v0}, Lk4/a;->d(Lcom/im/freechat/ui/chat/history/HistoryTab;)Lcom/im/freechat/ui/chat/history/HistoryTabFragment;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/history/HistoryTabFragment;->y0(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method private static final C0(Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;->c:Lk4/a;

    if-nez p0, :cond_0

    const-string p0, "pageAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    sget-object v0, Lcom/im/freechat/ui/chat/history/HistoryTab;->Links:Lcom/im/freechat/ui/chat/history/HistoryTab;

    invoke-virtual {p0, v0}, Lk4/a;->d(Lcom/im/freechat/ui/chat/history/HistoryTab;)Lcom/im/freechat/ui/chat/history/HistoryTabFragment;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/history/HistoryTabFragment;->y0(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method private static final D0(Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;->c:Lk4/a;

    if-nez p0, :cond_0

    const-string p0, "pageAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    sget-object v0, Lcom/im/freechat/ui/chat/history/HistoryTab;->Files:Lcom/im/freechat/ui/chat/history/HistoryTab;

    invoke-virtual {p0, v0}, Lk4/a;->d(Lcom/im/freechat/ui/chat/history/HistoryTab;)Lcom/im/freechat/ui/chat/history/HistoryTabFragment;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/history/HistoryTabFragment;->y0(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method private static final E0(Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;->v0()Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->I()V

    return-void
.end method

.method public static synthetic k0(Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;->A0(Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic l0(Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;->C0(Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic m0(Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;->D0(Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic n0(Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;->z0(Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic o0(Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;->E0(Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p0(Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;->B0(Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic q0(Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;->w0(Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    return-void
.end method

.method public static synthetic r0(Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;Lcom/im/freechat/shared/entities/contact/UserModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;->y0(Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;Lcom/im/freechat/shared/entities/contact/UserModel;)V

    return-void
.end method

.method public static synthetic s0(Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;->x0(Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;Landroid/view/View;)V

    return-void
.end method

.method private final t0(Lcom/im/freechat/shared/entities/contact/UserModel;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/v;

    iget-object v0, v0, Lf4/v;->f:Lf4/z;

    iget-object v0, v0, Lf4/z;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/v;

    iget-object v0, v0, Lf4/v;->m:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/v;

    iget-object v0, v0, Lf4/v;->k:Landroid/widget/TextView;

    .line 4
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getBio()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/16 v4, 0x8

    const-string v5, "binding.layoutBio"

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/v;

    iget-object v0, v0, Lf4/v;->g:Landroid/widget/LinearLayout;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lf4/v;

    iget-object v1, v1, Lf4/v;->g:Landroid/widget/LinearLayout;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 9
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getBio()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :goto_2
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/v;

    iget-object v0, v0, Lf4/v;->f:Lf4/z;

    iget-object v0, v0, Lf4/z;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt;->first(Ljava/lang/CharSequence;)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/v;

    iget-object v0, v0, Lf4/v;->f:Lf4/z;

    iget-object v0, v0, Lf4/z;->d:Landroid/widget/TextView;

    .line 12
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/im/freechat/extend/r;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 14
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getAvatar()Ljava/lang/String;

    move-result-object v0

    const-string v1, "binding.lHeader.ivIcon"

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/v;

    iget-object v0, v0, Lf4/v;->f:Lf4/z;

    iget-object v0, v0, Lf4/z;->c:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 17
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/v;

    iget-object v0, v0, Lf4/v;->f:Lf4/z;

    iget-object v0, v0, Lf4/z;->c:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/contact/UserModel;->getAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/im/freechat/extend/m;->o(Landroid/widget/ImageView;Ljava/lang/Object;)V

    .line 18
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_4

    .line 19
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/v;

    iget-object v0, v0, Lf4/v;->f:Lf4/z;

    iget-object v0, v0, Lf4/z;->c:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 21
    :cond_4
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/v;

    iget-object v0, v0, Lf4/v;->f:Lf4/z;

    iget-object v0, v0, Lf4/z;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "requireContext()"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/im/freechat/extend/m;->l(Lcom/im/freechat/shared/entities/contact/UserModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method private static final w0(Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;->c:Lk4/a;

    if-nez p0, :cond_0

    const-string p0, "pageAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p2}, Lk4/a;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    return-void
.end method

.method private static final x0(Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "requireActivity()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;->v0()Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->z()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/im/freechat/extend/m;->c(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method private static final y0(Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;Lcom/im/freechat/shared/entities/contact/UserModel;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0, p1}, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;->t0(Lcom/im/freechat/shared/entities/contact/UserModel;)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method private static final z0(Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;->c:Lk4/a;

    if-nez p0, :cond_0

    const-string p0, "pageAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    sget-object v0, Lcom/im/freechat/ui/chat/history/HistoryTab;->Groups:Lcom/im/freechat/ui/chat/history/HistoryTab;

    invoke-virtual {p0, v0}, Lk4/a;->d(Lcom/im/freechat/ui/chat/history/HistoryTab;)Lcom/im/freechat/ui/chat/history/HistoryTabFragment;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/chat/history/HistoryTabFragment;->m0(Ljava/util/List;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public F0(Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$Directions;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$Directions;
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
    sget-object v0, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment$a;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p1

    .line 3
    sget v0, Lb4/b$j;->O0:I

    .line 4
    invoke-virtual {p1, v0, p2}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/navigation/NavController;->navigateUp()Z

    :goto_0
    return-void
.end method

.method public final G0(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "extras"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;->v0()Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$Directions;->CHAT_DETAILS:Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$Directions;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "chatId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    invoke-virtual {v0, v1, p1}, Lcom/im/freechat/base/a;->e(Ljava/lang/Enum;Landroid/os/Bundle;)V

    return-void
.end method

.method public H0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lf4/v;
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

    invoke-static {p1, p2, v0}, Lf4/v;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/v;

    move-result-object p1

    const-string p2, "inflate(inflater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic Y()Lcom/im/freechat/base/a;
    .locals 1

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;->v0()Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;

    move-result-object v0

    return-object v0
.end method

.method protected Z()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "contactId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "fromUserSingleChat"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 3
    new-instance v2, Lk4/a;

    sget-object v4, Lcom/im/freechat/ui/chat/history/HistoryTab;->Members:Lcom/im/freechat/ui/chat/history/HistoryTab;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lk4/a;-><init>(Landroidx/fragment/app/Fragment;Ljava/util/List;)V

    iput-object v2, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;->c:Lk4/a;

    .line 4
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;->v0()Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->F(IZ)Lkotlinx/coroutines/j2;

    .line 5
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/v;

    iget-object v0, v0, Lf4/v;->h:Landroidx/viewpager2/widget/ViewPager2;

    .line 6
    iget-object v1, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;->c:Lk4/a;

    const/4 v2, 0x0

    const-string v4, "pageAdapter"

    if-nez v1, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Lk4/a;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 7
    iget-object v1, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;->c:Lk4/a;

    if-nez v1, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8
    invoke-virtual {v0, v3}, Landroidx/viewpager2/widget/ViewPager2;->setOrientation(I)V

    .line 9
    new-instance v0, Lcom/google/android/material/tabs/TabLayoutMediator;

    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lf4/v;

    iget-object v1, v1, Lf4/v;->i:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lf4/v;

    iget-object v2, v2, Lf4/v;->h:Landroidx/viewpager2/widget/ViewPager2;

    .line 10
    new-instance v3, Lcom/im/freechat/ui/chat/userprofile/i;

    invoke-direct {v3, p0}, Lcom/im/freechat/ui/chat/userprofile/i;-><init>(Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;)V

    .line 11
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 12
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    .line 13
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;->v0()Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->y()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    .line 15
    new-instance v2, Lcom/im/freechat/ui/chat/userprofile/c;

    invoke-direct {v2, p0}, Lcom/im/freechat/ui/chat/userprofile/c;-><init>(Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 16
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;->v0()Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->x()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    .line 18
    new-instance v2, Lcom/im/freechat/ui/chat/userprofile/g;

    invoke-direct {v2, p0}, Lcom/im/freechat/ui/chat/userprofile/g;-><init>(Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 19
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;->v0()Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->D()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    .line 21
    new-instance v2, Lcom/im/freechat/ui/chat/userprofile/d;

    invoke-direct {v2, p0}, Lcom/im/freechat/ui/chat/userprofile/d;-><init>(Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 22
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;->v0()Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->E()Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    .line 24
    new-instance v2, Lcom/im/freechat/ui/chat/userprofile/h;

    invoke-direct {v2, p0}, Lcom/im/freechat/ui/chat/userprofile/h;-><init>(Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 25
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;->v0()Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->C()Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    .line 27
    new-instance v2, Lcom/im/freechat/ui/chat/userprofile/e;

    invoke-direct {v2, p0}, Lcom/im/freechat/ui/chat/userprofile/e;-><init>(Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 28
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;->v0()Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->A()Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    .line 30
    new-instance v2, Lcom/im/freechat/ui/chat/userprofile/f;

    invoke-direct {v2, p0}, Lcom/im/freechat/ui/chat/userprofile/f;-><init>(Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 31
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/v;

    iget-object v0, v0, Lf4/v;->b:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v1, Lcom/im/freechat/ui/chat/userprofile/a;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/chat/userprofile/a;-><init>(Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/v;

    iget-object v0, v0, Lf4/v;->m:Landroid/widget/TextView;

    new-instance v1, Lcom/im/freechat/ui/chat/userprofile/b;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/chat/userprofile/b;-><init>(Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/v;

    iget-object v0, v0, Lf4/v;->j:Lf4/c2;

    invoke-virtual {v0}, Lf4/c2;->b()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    const-string v1, "binding.toolbar.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/im/freechat/base/f;->i0(Landroidx/appcompat/widget/Toolbar;)V

    return-void
.end method

.method public bridge synthetic a0(Ljava/lang/Enum;Landroid/os/Bundle;)V
    .locals 0

    check-cast p1, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$Directions;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;->F0(Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$Directions;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic g0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;->H0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lf4/v;

    move-result-object p1

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1    # Landroid/view/Menu;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuInflater;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lb4/b$n;->g:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2
    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;->v0()Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->y()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/im/freechat/shared/entities/contact/UserModel;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void

    .line 4
    :cond_0
    sget p2, Lb4/b$j;->q0:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 5
    sget p2, Lb4/b$j;->M0:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 6
    sget p2, Lb4/b$j;->g0:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 7
    sget p2, Lb4/b$j;->L0:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 2
    sget v1, Lb4/b$j;->q0:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;->v0()Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->w()Lkotlinx/coroutines/j2;

    goto :goto_0

    .line 3
    :cond_0
    sget v1, Lb4/b$j;->M0:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;->v0()Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->N()Lkotlinx/coroutines/j2;

    goto :goto_0

    .line 4
    :cond_1
    sget v1, Lb4/b$j;->g0:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;->v0()Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->u()Lkotlinx/coroutines/j2;

    goto :goto_0

    .line 5
    :cond_2
    sget v1, Lb4/b$j;->L0:I

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;->v0()Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;->M()Lkotlinx/coroutines/j2;

    goto :goto_0

    :cond_3
    const v1, 0x102002c

    if-ne v0, v1, :cond_4

    .line 6
    sget-object p1, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$Directions;->BACK:Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$Directions;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, v1}, Lcom/im/freechat/base/f;->d0(Lcom/im/freechat/base/f;Ljava/lang/Enum;Landroid/os/Bundle;ILjava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_4
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final u0(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$Directions;->CHAT_SELECTOR:Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel$Directions;

    invoke-virtual {p0, v0, p1}, Lcom/im/freechat/base/f;->c0(Ljava/lang/Enum;Landroid/os/Bundle;)V

    return-void
.end method

.method public v0()Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/userprofile/UserProfileFragment;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/ui/chat/userprofile/UserProfileViewModel;

    return-object v0
.end method
