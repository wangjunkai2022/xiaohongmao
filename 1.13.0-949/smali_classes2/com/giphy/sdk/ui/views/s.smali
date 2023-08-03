.class public final Lcom/giphy/sdk/ui/views/s;
.super Landroidx/fragment/app/DialogFragment;
.source "UserProfileInfoDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/giphy/sdk/ui/views/s$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 #2\u00020\u0001:\u0001\u0012B\u0007\u00a2\u0006\u0004\u0008!\u0010\"J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016J\u0008\u0010\u0006\u001a\u00020\u0002H\u0016J&\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016J\u001a\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\r2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016R\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R$\u0010 \u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001f\u00a8\u0006$"
    }
    d2 = {
        "Lcom/giphy/sdk/ui/views/s;",
        "Landroidx/fragment/app/DialogFragment;",
        "",
        "Y",
        "",
        "getTheme",
        "onDestroy",
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
        "Lcom/giphy/sdk/core/models/User;",
        "a",
        "Lcom/giphy/sdk/core/models/User;",
        "user",
        "Lcom/giphy/sdk/ui/views/u;",
        "b",
        "Lcom/giphy/sdk/ui/views/u;",
        "profileLoader",
        "Lcom/giphy/sdk/ui/views/t;",
        "d",
        "Lcom/giphy/sdk/ui/views/t;",
        "X",
        "()Lcom/giphy/sdk/ui/views/t;",
        "Z",
        "(Lcom/giphy/sdk/ui/views/t;)V",
        "closeListener",
        "<init>",
        "()V",
        "f",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String;

.field public static final f:Lcom/giphy/sdk/ui/views/s$a;
    .annotation build Lm8/g;
    .end annotation
.end field


# instance fields
.field private a:Lcom/giphy/sdk/core/models/User;

.field private b:Lcom/giphy/sdk/ui/views/u;

.field private c:Lh2/o;

.field private d:Lcom/giphy/sdk/ui/views/t;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/giphy/sdk/ui/views/s$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/giphy/sdk/ui/views/s$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/giphy/sdk/ui/views/s;->f:Lcom/giphy/sdk/ui/views/s$a;

    const-string v0, "user"

    sput-object v0, Lcom/giphy/sdk/ui/views/s;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static final synthetic U()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/giphy/sdk/ui/views/s;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic V(Lcom/giphy/sdk/ui/views/s;)Lh2/o;
    .locals 1

    iget-object p0, p0, Lcom/giphy/sdk/ui/views/s;->c:Lh2/o;

    if-nez p0, :cond_0

    const-string v0, "userProfileInfoDialogBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic W(Lcom/giphy/sdk/ui/views/s;Lh2/o;)V
    .locals 0

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/s;->c:Lh2/o;

    return-void
.end method

.method private final Y()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/s;->c:Lh2/o;

    if-nez v0, :cond_0

    const-string v1, "userProfileInfoDialogBinding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lh2/o;->b:Landroidx/core/widget/NestedScrollView;

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const-string v1, "BottomSheetBehavior.from\u2026leInfoDialogBinding.body)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcom/giphy/sdk/ui/views/s$b;

    invoke-direct {v1, p0}, Lcom/giphy/sdk/ui/views/s$b;-><init>(Lcom/giphy/sdk/ui/views/s;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->addBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/giphy/sdk/ui/views/s$c;

    invoke-direct {v1, p0}, Lcom/giphy/sdk/ui/views/s$c;-><init>(Lcom/giphy/sdk/ui/views/s;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final X()Lcom/giphy/sdk/ui/views/t;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/s;->d:Lcom/giphy/sdk/ui/views/t;

    return-object v0
.end method

.method public final Z(Lcom/giphy/sdk/ui/views/t;)V
    .locals 0
    .param p1    # Lcom/giphy/sdk/ui/views/t;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/s;->d:Lcom/giphy/sdk/ui/views/t;

    return-void
.end method

.method public getTheme()I
    .locals 1

    sget v0, Lcom/giphy/sdk/ui/p$p;->U3:I

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
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

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    .line 2
    invoke-static {p1, p2, p3}, Lh2/o;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lh2/o;

    move-result-object p1

    const-string p2, "GphUserProfileInfoDialog\u2026          false\n        )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/s;->c:Lh2/o;

    const-string p2, "userProfileInfoDialogBinding"

    if-nez p1, :cond_0

    .line 3
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object p3, p1, Lh2/o;->b:Landroidx/core/widget/NestedScrollView;

    const-string v0, "body"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 5
    sget-object v0, Lcom/giphy/sdk/ui/l;->f:Lcom/giphy/sdk/ui/l;

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/l;->m()Li2/e;

    move-result-object v1

    invoke-virtual {v1}, Li2/e;->d()I

    move-result v1

    .line 6
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 7
    invoke-virtual {p3, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 8
    iget-object p3, p1, Lh2/o;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/l;->m()Li2/e;

    move-result-object v1

    invoke-virtual {v1}, Li2/e;->k()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    iget-object p3, p1, Lh2/o;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/l;->m()Li2/e;

    move-result-object v1

    invoke-virtual {v1}, Li2/e;->k()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    iget-object p1, p1, Lh2/o;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/l;->m()Li2/e;

    move-result-object p3

    invoke-virtual {p3}, Li2/e;->k()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/s;->c:Lh2/o;

    if-nez p1, :cond_1

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lh2/o;->b()Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/giphy/sdk/ui/views/s;->d:Lcom/giphy/sdk/ui/views/t;

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object p1

    sget-object p2, Lcom/giphy/sdk/ui/views/s;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/giphy/sdk/core/models/User;

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/s;->a:Lcom/giphy/sdk/core/models/User;

    .line 3
    new-instance p1, Lcom/giphy/sdk/ui/views/u;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "requireContext()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/s;->a:Lcom/giphy/sdk/core/models/User;

    if-nez v0, :cond_0

    const-string v1, "user"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p1, p2, v0}, Lcom/giphy/sdk/ui/views/u;-><init>(Landroid/content/Context;Lcom/giphy/sdk/core/models/User;)V

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/s;->b:Lcom/giphy/sdk/ui/views/u;

    .line 4
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/s;->c:Lh2/o;

    if-nez p1, :cond_1

    const-string p2, "userProfileInfoDialogBinding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/giphy/sdk/ui/views/s;->b:Lcom/giphy/sdk/ui/views/u;

    const-string v0, "profileLoader"

    if-nez p2, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 6
    :cond_2
    iget-object v1, p1, Lh2/o;->i:Landroid/widget/TextView;

    const-string v2, "userName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v2, p1, Lh2/o;->e:Landroid/widget/TextView;

    const-string v3, "channelName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v3, p1, Lh2/o;->j:Landroid/widget/ImageView;

    const-string v4, "verifiedBadge"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v4, p1, Lh2/o;->h:Lcom/giphy/sdk/ui/views/GifView;

    const-string v5, "userChannelGifAvatar"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2, v1, v2, v3, v4}, Lcom/giphy/sdk/ui/views/u;->e(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/giphy/sdk/ui/views/GifView;)V

    .line 11
    iget-object p2, p0, Lcom/giphy/sdk/ui/views/s;->b:Lcom/giphy/sdk/ui/views/u;

    if-nez p2, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p1, Lh2/o;->d:Landroid/widget/TextView;

    const-string v1, "channelDescription"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p1, Lh2/o;->k:Landroid/widget/TextView;

    const-string v2, "websiteUrl"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p1, Lh2/o;->g:Landroid/widget/LinearLayout;

    const-string v3, "socialContainer"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1, v2}, Lcom/giphy/sdk/ui/views/u;->f(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V

    .line 12
    iget-object p1, p1, Lh2/o;->f:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    new-instance p2, Lcom/giphy/sdk/ui/views/s$d;

    invoke-direct {p2, p0}, Lcom/giphy/sdk/ui/views/s$d;-><init>(Lcom/giphy/sdk/ui/views/s;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/s;->Y()V

    return-void
.end method
