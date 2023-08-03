.class public final Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;
.super Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/a;
.source "PrivateRoomFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/b;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrivateRoomFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivateRoomFragment.kt\ncom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,407:1\n172#2,9:408\n254#3,2:417\n254#3,2:419\n254#3,2:421\n254#3,2:423\n254#3,2:425\n254#3,2:427\n254#3,2:429\n254#3,2:431\n254#3,2:433\n254#3,2:435\n254#3,2:437\n254#3,2:439\n254#3,2:441\n254#3,2:443\n254#3,2:445\n254#3,2:447\n254#3,2:449\n254#3,2:451\n*S KotlinDebug\n*F\n+ 1 PrivateRoomFragment.kt\ncom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment\n*L\n49#1:408,9\n139#1:417,2\n151#1:419,2\n152#1:421,2\n157#1:423,2\n172#1:425,2\n177#1:427,2\n185#1:429,2\n188#1:431,2\n196#1:433,2\n201#1:435,2\n202#1:437,2\n220#1:439,2\n244#1:441,2\n260#1:443,2\n265#1:445,2\n268#1:447,2\n291#1:449,2\n310#1:451,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008;\u0010<J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0014\u0010\u0007\u001a\u00020\u0002*\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0014\u0010\u0008\u001a\u00020\u0002*\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0014\u0010\t\u001a\u00020\u0002*\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0014\u0010\n\u001a\u00020\u0002*\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0005H\u0003J\u0014\u0010\u000b\u001a\u00020\u0002*\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0008\u0010\u000c\u001a\u00020\u0002H\u0002J\u0014\u0010\u0010\u001a\u00020\u0002*\u00020\r2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0008\u0010\u0018\u001a\u00020\u0016H\u0002J\u0006\u0010\u0019\u001a\u00020\u0004J$\u0010!\u001a\u00020 2\u0006\u0010\u001b\u001a\u00020\u001a2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0016J\u001a\u0010#\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020 2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0016J\u001c\u0010&\u001a\u00020\u0002*\u00020\r2\u0008\u0008\u0001\u0010$\u001a\u00020\u00112\u0006\u0010%\u001a\u00020\u0011J\u0008\u0010\'\u001a\u00020\u0002H\u0016R\u001b\u0010-\u001a\u00020(8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,R$\u0010.\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008.\u0010/\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R\"\u00105\u001a\u0002048\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u00085\u00106\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010:\u00a8\u0006="
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;",
        "Landroidx/fragment/app/Fragment;",
        "",
        "k0",
        "Le5/o1;",
        "Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;",
        "summary",
        "g0",
        "h0",
        "f0",
        "i0",
        "j0",
        "a0",
        "Landroid/widget/TextView;",
        "",
        "title",
        "m0",
        "",
        "time",
        "o0",
        "",
        "withBackground",
        "Landroid/text/SpannableString;",
        "Z",
        "e0",
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
        "viewId",
        "previewTime",
        "r0",
        "onDestroyView",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;",
        "g",
        "Lkotlin/Lazy;",
        "d0",
        "()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;",
        "playerViewModel",
        "binding",
        "Le5/o1;",
        "c0",
        "()Le5/o1;",
        "q0",
        "(Le5/o1;)V",
        "Lx4/a;",
        "analytics",
        "Lx4/a;",
        "b0",
        "()Lx4/a;",
        "p0",
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
.field private f:Le5/o1;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final g:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field

.field public h:Lx4/a;
    .annotation runtime Lu7/a;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/a;-><init>()V

    .line 2
    const-class v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$special$$inlined$activityViewModels$default$1;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$special$$inlined$activityViewModels$default$2;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$special$$inlined$activityViewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$special$$inlined$activityViewModels$default$3;

    invoke-direct {v3, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->g:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic Y(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;Le5/o1;Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->l0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;Le5/o1;Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;)V

    return-void
.end method

.method private final Z(Z)Landroid/text/SpannableString;
    .locals 7

    if-eqz p1, :cond_0

    const-string v0, "\u5145\u503c"

    goto :goto_0

    :cond_0
    const-string v0, "\u5145\u503c\u91d1\u5e01"

    .line 1
    :goto_0
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1

    const v2, 0x7f0602f5

    goto :goto_1

    :cond_1
    const v2, 0x7f06005d

    .line 2
    :goto_1
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x21

    .line 4
    invoke-virtual {v1, v3, v5, v4, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 5
    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$a;

    invoke-direct {v3, p0, v2, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;IZ)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, v3, v5, p1, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method

.method private final a0()V
    .locals 5

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->d0()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;

    const v2, 0x7f130414

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v3, v2, v4, v3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;-><init>(Ljava/lang/Throwable;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->l(Ljava/lang/Object;)V

    return-void
.end method

.method private final e0()Landroid/text/SpannableString;
    .locals 5

    .line 1
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, "\u4e86\u89e3\u63a8\u5e7f\u8ba1\u5212"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f06005d

    .line 4
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 5
    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x6

    const/16 v4, 0x21

    .line 6
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 7
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$b;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$b;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;)V

    .line 8
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    .line 9
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private final f0(Le5/o1;Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;)V
    .locals 13

    .line 1
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Bind level views"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v2, p1, Le5/o1;->l:Landroid/widget/TextView;

    const-string v3, "privaterRoomDialogType"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v2, p1, Le5/o1;->l:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v5, p1, Le5/o1;->l:Landroid/widget/TextView;

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f080484

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1c

    const/4 v12, 0x0

    invoke-static/range {v5 .. v12}, Lcom/qennnsad/aknkaksd/util/s1;->o(Landroid/widget/TextView;Ljava/lang/Integer;ZZZZILjava/lang/Object;)V

    .line 6
    iget-object v2, p1, Le5/o1;->m:Landroid/widget/TextView;

    const-string v3, "tvGuestPreviewHint"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    .line 7
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v2, p1, Le5/o1;->b:Le5/g3;

    iget-object v4, v2, Le5/g3;->c:Landroid/widget/TextView;

    const-string v2, "layoutLevel.privaterRoomDialogLevelCommit"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$c;

    invoke-direct {v7, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$c;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;)V

    const-wide/16 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 9
    iget-object v4, p1, Le5/o1;->b:Le5/g3;

    iget-object v4, v4, Le5/g3;->g:Landroid/widget/TextView;

    .line 10
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->d0()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->b0()Lg5/a;

    move-result-object v5

    invoke-virtual {v5}, Lg5/a;->C()Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->getEmceelevel()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v6

    .line 11
    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v4, p1, Le5/o1;->b:Le5/g3;

    iget-object v4, v4, Le5/g3;->h:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getLimit()Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getPrerequisite()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v4, p1, Le5/o1;->b:Le5/g3;

    iget-object v4, v4, Le5/g3;->b:Landroid/widget/RelativeLayout;

    const-string v5, "layoutLevel.privaterRoomDialogLevel"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getLimit()Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getPrerequisite()I

    move-result p2

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->d0()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->b0()Lg5/a;

    move-result-object v4

    invoke-virtual {v4}, Lg5/a;->C()Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->getEmceelevel()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v4}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-le p2, v4, :cond_2

    new-array p2, v1, [Ljava/lang/Object;

    const-string v4, "Current user level is lower than required"

    .line 16
    invoke-virtual {v0, v4, p2}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    iget-object p2, p1, Le5/o1;->b:Le5/g3;

    iget-object p2, p2, Le5/g3;->d:Landroid/widget/TextView;

    const-string v0, "layoutLevel.privaterRoomDialogLevelDenied"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object p2, p1, Le5/o1;->b:Le5/g3;

    iget-object p2, p2, Le5/g3;->c:Landroid/widget/TextView;

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 21
    iget-object p2, p1, Le5/o1;->b:Le5/g3;

    iget-object v7, p2, Le5/g3;->d:Landroid/widget/TextView;

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v8, 0x0

    new-instance v10, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$d;

    invoke-direct {v10, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$d;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;)V

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 22
    iget-object p2, p1, Le5/o1;->b:Le5/g3;

    iget-object p2, p2, Le5/g3;->d:Landroid/widget/TextView;

    const-string v0, "\u7b49\u7ea7\u4e0d\u8db3\uff0c\u65e0\u6cd5\u8fdb\u5165"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object p2, p1, Le5/o1;->b:Le5/g3;

    iget-object p2, p2, Le5/g3;->h:Landroid/widget/TextView;

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 24
    iget-object p1, p1, Le5/o1;->b:Le5/g3;

    iget-object p1, p1, Le5/g3;->h:Landroid/widget/TextView;

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f06005d

    .line 26
    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    .line 27
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-void
.end method

.method private final g0(Le5/o1;Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;)V
    .locals 7

    .line 1
    sget-object p2, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Bind pwd views"

    invoke-virtual {p2, v2, v1}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p2, p1, Le5/o1;->l:Landroid/widget/TextView;

    const-string v1, "privaterRoomDialogType"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p2, p1, Le5/o1;->c:Le5/h3;

    iget-object p2, p2, Le5/h3;->b:Landroid/widget/ImageView;

    const-string v1, "layoutPwd.ivPasswordAd"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->d0()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->b0()Lg5/a;

    move-result-object v1

    invoke-virtual {v1}, Lg5/a;->b()Lcom/qennnsad/aknkaksd/data/bean/AdConfigBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/AdConfigBean;->getPasswordRoom()Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->d0()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->q0()Lcom/qennnsad/aknkaksd/data/repository/m;

    move-result-object v2

    .line 7
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->b0()Lx4/a;

    move-result-object v3

    .line 8
    invoke-static {p2, v1, v2, v3}, Lcom/qennnsad/aknkaksd/util/s1;->m(Landroid/widget/ImageView;Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;Lcom/qennnsad/aknkaksd/data/repository/m;Lx4/a;)V

    .line 9
    iget-object p2, p1, Le5/o1;->c:Le5/h3;

    iget-object v1, p2, Le5/h3;->d:Landroid/widget/TextView;

    const-string p2, "layoutPwd.privaterRoomDialogPasswdCommit"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$e;

    invoke-direct {v4, p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$e;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;Le5/o1;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 10
    iget-object p2, p1, Le5/o1;->m:Landroid/widget/TextView;

    const-string v1, "tvGuestPreviewHint"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 11
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object p1, p1, Le5/o1;->c:Le5/h3;

    iget-object p1, p1, Le5/h3;->c:Landroid/widget/RelativeLayout;

    const-string p2, "layoutPwd.privaterRoomDialogPasswd"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final h0(Le5/o1;Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;)V
    .locals 9

    .line 1
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Bind ticket views"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p1, Le5/o1;->l:Landroid/widget/TextView;

    const-string v2, "privaterRoomDialogType"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p1, Le5/o1;->l:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getLimit()Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getPtname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p1, Le5/o1;->d:Le5/i3;

    iget-object v0, v0, Le5/i3;->h:Landroid/widget/TextView;

    const-string v2, "layoutTicket.privaterRoomDialogTicketCommit"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f1301d4

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.goprivate_room_pwd_commit)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->m0(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 6
    iget-object v0, p1, Le5/o1;->d:Le5/i3;

    iget-object v3, v0, Le5/i3;->h:Landroid/widget/TextView;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$f;

    invoke-direct {v6, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$f;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;)V

    const-wide/16 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 7
    iget-object v0, p1, Le5/o1;->d:Le5/i3;

    iget-object v0, v0, Le5/i3;->b:Landroid/widget/ImageView;

    const-string v2, "layoutTicket.ivTicketAd"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->d0()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->b0()Lg5/a;

    move-result-object v2

    invoke-virtual {v2}, Lg5/a;->b()Lcom/qennnsad/aknkaksd/data/bean/AdConfigBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/data/bean/AdConfigBean;->getTicketRoom()Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;

    move-result-object v2

    .line 9
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->d0()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->q0()Lcom/qennnsad/aknkaksd/data/repository/m;

    move-result-object v3

    .line 10
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->b0()Lx4/a;

    move-result-object v4

    .line 11
    invoke-static {v0, v2, v3, v4}, Lcom/qennnsad/aknkaksd/util/s1;->m(Landroid/widget/ImageView;Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;Lcom/qennnsad/aknkaksd/data/repository/m;Lx4/a;)V

    .line 12
    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getLimit()Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getCome()I

    move-result v0

    const-string v2, "tvGuestPreviewHint"

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getLimit()Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getPreview_time()I

    move-result v0

    if-lez v0, :cond_0

    .line 13
    iget-object v0, p1, Le5/o1;->m:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0a040e

    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getLimit()Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getPreview_time()I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->r0(Landroid/widget/TextView;II)V

    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p1, Le5/o1;->m:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    .line 15
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    :goto_0
    iget-object v0, p1, Le5/o1;->d:Le5/i3;

    iget-object v0, v0, Le5/i3;->d:Landroid/widget/TextView;

    const-string v2, "\u95e8\u7968\u4ef7\u683c:"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p1, Le5/o1;->d:Le5/i3;

    iget-object v0, v0, Le5/i3;->e:Landroid/widget/TextView;

    .line 18
    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getLimit()Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getPrerequisite()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 19
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object p2, p1, Le5/o1;->d:Le5/i3;

    iget-object p2, p2, Le5/i3;->f:Landroid/widget/LinearLayout;

    const-string v0, "layoutTicket.privaterRoomDialogTicket"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    iget-object p2, p1, Le5/o1;->d:Le5/i3;

    iget-object p2, p2, Le5/i3;->g:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->Z(Z)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object p1, p1, Le5/o1;->d:Le5/i3;

    iget-object p1, p1, Le5/i3;->g:Landroid/widget/TextView;

    new-instance p2, Landroid/text/method/LinkMovementMethod;

    invoke-direct {p2}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method private final i0(Le5/o1;Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Bind time views"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p1, Le5/o1;->l:Landroid/widget/TextView;

    const-string v2, "privaterRoomDialogType"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p1, Le5/o1;->e:Le5/j3;

    iget-object v0, v0, Le5/j3;->l:Landroid/widget/TextView;

    .line 5
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v3

    or-int/2addr v3, v2

    .line 6
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 7
    iget-object v0, p1, Le5/o1;->e:Le5/j3;

    iget-object v3, v0, Le5/j3;->l:Landroid/widget/TextView;

    const-string v0, "layoutTime.privaterRoomDialogTimePointTuiguang2"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$g;

    invoke-direct {v6, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$g;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;)V

    const-wide/16 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 8
    iget-object v0, p1, Le5/o1;->e:Le5/j3;

    iget-object v3, v0, Le5/j3;->g:Landroid/widget/TextView;

    const-string v0, "layoutTime.privaterRoomDialogTimeCommit"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$h;

    invoke-direct {v6, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$h;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;)V

    invoke-static/range {v3 .. v8}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 9
    iget-object v3, p1, Le5/o1;->e:Le5/j3;

    iget-object v4, v3, Le5/j3;->f:Landroid/widget/TextView;

    const-string v3, "layoutTime.privaterRoomDialogTimeAddmoney"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$i;

    invoke-direct {v7, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$i;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;)V

    const-wide/16 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 10
    iget-object v3, p1, Le5/o1;->e:Le5/j3;

    iget-object v3, v3, Le5/j3;->g:Landroid/widget/TextView;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f1301d4

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "getString(R.string.goprivate_room_pwd_commit)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->m0(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 11
    iget-object v0, p1, Le5/o1;->e:Le5/j3;

    iget-object v3, v0, Le5/j3;->j:Landroid/widget/TextView;

    const-string v0, "layoutTime.privaterRoomDialogTimePointComimt"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$j;

    invoke-direct {v6, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$j;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;)V

    const-wide/16 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 12
    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getLimit()Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getCome()I

    move-result v0

    const-string v3, "tvGuestPreviewHint"

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getLimit()Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getPreview_time()I

    move-result v0

    if-lez v0, :cond_0

    .line 13
    iget-object v0, p1, Le5/o1;->m:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0a040f

    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getLimit()Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getPreview_time()I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->r0(Landroid/widget/TextView;II)V

    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p1, Le5/o1;->m:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    :goto_0
    iget-object v0, p1, Le5/o1;->e:Le5/j3;

    iget-object v0, v0, Le5/j3;->c:Landroid/widget/TextView;

    const-string v2, "\u8ba1\u8d39\u4ef7\u683c:"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p1, Le5/o1;->e:Le5/j3;

    iget-object v0, v0, Le5/j3;->d:Landroid/widget/TextView;

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getLimit()Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getPrerequisite()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\u91d1\u5e01/\u5206\u949f"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 19
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object p2, p1, Le5/o1;->e:Le5/j3;

    iget-object p2, p2, Le5/j3;->f:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->Z(Z)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object p2, p1, Le5/o1;->e:Le5/j3;

    iget-object p2, p2, Le5/j3;->f:Landroid/widget/TextView;

    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0602f5

    .line 23
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 24
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    iget-object p2, p1, Le5/o1;->e:Le5/j3;

    iget-object p2, p2, Le5/j3;->f:Landroid/widget/TextView;

    const v0, 0x7f0805ca

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 26
    iget-object p2, p1, Le5/o1;->e:Le5/j3;

    iget-object p2, p2, Le5/j3;->k:Landroid/widget/TextView;

    const-string v0, "\u53c2\u4e0e\u63a8\u5e7f\u8ba1\u5212\uff0c\u53ef\u4ee5\u514d\u8d39\u83b7\u5f97\u89c2\u770b\u6536\u8d39\u623f\u7684\u65f6\u957f"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object p2, p1, Le5/o1;->e:Le5/j3;

    iget-object p2, p2, Le5/j3;->l:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->e0()Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object p1, p1, Le5/o1;->e:Le5/j3;

    iget-object p1, p1, Le5/j3;->e:Landroid/widget/RelativeLayout;

    const-string p2, "layoutTime.privaterRoomDialogTime"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final j0(Le5/o1;Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;)V
    .locals 12

    .line 1
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Bind video views"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p1, Le5/o1;->l:Landroid/widget/TextView;

    const-string v2, "privaterRoomDialogType"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p1, Le5/o1;->l:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v4, p1, Le5/o1;->l:Landroid/widget/TextView;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f080484

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1c

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Lcom/qennnsad/aknkaksd/util/s1;->o(Landroid/widget/TextView;Ljava/lang/Integer;ZZZZILjava/lang/Object;)V

    .line 6
    iget-object v0, p1, Le5/o1;->m:Landroid/widget/TextView;

    const-string v2, "tvGuestPreviewHint"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    .line 7
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p1, Le5/o1;->f:Le5/k3;

    iget-object v2, v0, Le5/k3;->n:Landroid/widget/TextView;

    const-string v0, "layoutVideo.privaterRoomDialogVideoPointTuiguang2"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$k;

    invoke-direct {v5, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$k;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;)V

    const-wide/16 v3, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 9
    iget-object v0, p1, Le5/o1;->f:Le5/k3;

    iget-object v2, v0, Le5/k3;->k:Landroid/widget/TextView;

    const-string v0, "layoutVideo.privaterRoomDialogVideoPointComimt"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$l;

    invoke-direct {v5, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$l;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;)V

    invoke-static/range {v2 .. v7}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 10
    iget-object v0, p1, Le5/o1;->f:Le5/k3;

    iget-object v2, v0, Le5/k3;->f:Landroid/widget/TextView;

    const-string v0, "layoutVideo.privaterRoomDialogVideoAddmoney"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$m;

    invoke-direct {v5, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$m;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;)V

    invoke-static/range {v2 .. v7}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 11
    iget-object v0, p1, Le5/o1;->f:Le5/k3;

    iget-object v2, v0, Le5/k3;->g:Landroid/widget/TextView;

    const-string v0, "layoutVideo.privaterRoomDialogVideoCommit"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$n;

    invoke-direct {v5, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$n;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;)V

    invoke-static/range {v2 .. v7}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 12
    iget-object v0, p1, Le5/o1;->f:Le5/k3;

    iget-object v0, v0, Le5/k3;->c:Landroid/widget/TextView;

    const-string v2, "\u8ba1\u8d39\u4ef7\u683c:"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p1, Le5/o1;->f:Le5/k3;

    iget-object v0, v0, Le5/k3;->d:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getLimit()Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getPrerequisite()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/\u5206\u949f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p1, Le5/o1;->f:Le5/k3;

    iget-object v0, v0, Le5/k3;->f:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->Z(Z)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p1, Le5/o1;->f:Le5/k3;

    iget-object v0, v0, Le5/k3;->n:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->e0()Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p1, Le5/o1;->f:Le5/k3;

    iget-object v0, v0, Le5/k3;->h:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8ba1\u8d39\u4ef7\u683c:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getLimit()Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getPrerequisite_coin()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u91d1\u5e01\u53ef\u89c2\u770b24\u5c0f\u65f6\u6240\u6709\u798f\u5229\u623f"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p1, Le5/o1;->f:Le5/k3;

    iget-object v0, v0, Le5/k3;->l:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getLimit()Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getPrerequisite_minute()F

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "\u5206\u949f\u514d\u8d39\u89c2\u770b\u65f6\u957f\uff0c\u53ef\u89c2\u770b24\u5c0f\u65f6\u6240\u6709\u798f\u5229\u623f"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object p1, p1, Le5/o1;->f:Le5/k3;

    iget-object p1, p1, Le5/k3;->e:Landroid/widget/RelativeLayout;

    const-string p2, "layoutVideo.privaterRoomDialogVideo"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final k0()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->n0()Le5/o1;

    move-result-object v1

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->d0()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->t0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v3

    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/b;

    invoke-direct {v4, v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/b;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;Le5/o1;)V

    invoke-virtual {v2, v3, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 3
    iget-object v5, v1, Le5/o1;->h:Landroid/widget/ImageView;

    const-string v2, "privaterRoomDialogClose"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$o;

    invoke-direct {v8, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$o;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;)V

    const-wide/16 v6, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 4
    iget-object v11, v1, Le5/o1;->j:Landroid/widget/ImageView;

    const-string v2, "privaterRoomDialogPhoto"

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$p;

    invoke-direct {v14, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$p;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;)V

    const-wide/16 v12, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lcom/qennnsad/aknkaksd/util/s1;->U(Landroid/view/View;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->d0()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->n0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;

    if-eqz v2, :cond_5

    .line 6
    iget-object v3, v1, Le5/o1;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getNickname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    sget-object v3, Lcom/qennnsad/aknkaksd/util/img/e;->a:Lcom/qennnsad/aknkaksd/util/img/e;

    iget-object v4, v1, Le5/o1;->j:Landroid/widget/ImageView;

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->d0()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->q0()Lcom/qennnsad/aknkaksd/data/repository/m;

    move-result-object v5

    .line 9
    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getAvatar()Ljava/lang/String;

    move-result-object v6

    const-string v7, "it.avatar"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v5, v6}, Lcom/qennnsad/aknkaksd/data/repository/m;->j(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 11
    invoke-virtual {v3, v4, v5}, Lcom/qennnsad/aknkaksd/util/img/e;->d(Landroid/widget/ImageView;Landroid/net/Uri;)V

    .line 12
    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;->getLimit()Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;->getPtid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "it"

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v4, "5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->j0(Le5/o1;Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;)V

    goto :goto_0

    :pswitch_1
    const-string v4, "4"

    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 15
    :cond_1
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->i0(Le5/o1;Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;)V

    goto :goto_0

    :pswitch_2
    const-string v4, "3"

    .line 16
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 17
    :cond_2
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->f0(Le5/o1;Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;)V

    goto :goto_0

    :pswitch_3
    const-string v4, "2"

    .line 18
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 19
    :cond_3
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->h0(Le5/o1;Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;)V

    goto :goto_0

    :pswitch_4
    const-string v4, "1"

    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    .line 21
    :cond_4
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->g0(Le5/o1;Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;)V

    .line 22
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_6

    .line 23
    invoke-direct/range {p0 .. p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->a0()V

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final l0(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;Le5/o1;Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_with"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4f60\u73b0\u5728\u62e5\u6709:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;->getCoinbalance()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u4e2a\u91d1\u5e01"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f06005d

    .line 4
    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    .line 5
    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 6
    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;->getCoinbalance()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x8

    add-int/2addr v3, v5

    const/16 v6, 0x21

    .line 7
    invoke-virtual {v0, v1, v5, v3, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 8
    invoke-virtual {p2}, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;->getPointbalance()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->o0(I)Ljava/lang/String;

    move-result-object p2

    .line 9
    new-instance v1, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u5206\u949f"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u514d\u8d39\u89c2\u770b\u65f6\u957f"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 10
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    .line 12
    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    .line 13
    invoke-direct {v2, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 14
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, v5

    add-int/lit8 p0, p0, 0x2

    .line 15
    invoke-virtual {v1, v2, v5, p0, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 16
    iget-object p0, p1, Le5/o1;->d:Le5/i3;

    iget-object p0, p0, Le5/i3;->j:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object p0, p1, Le5/o1;->e:Le5/j3;

    iget-object p0, p0, Le5/j3;->h:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object p0, p1, Le5/o1;->f:Le5/k3;

    iget-object p0, p0, Le5/k3;->i:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object p0, p1, Le5/o1;->f:Le5/k3;

    iget-object p0, p0, Le5/k3;->j:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object p0, p1, Le5/o1;->e:Le5/j3;

    iget-object p0, p0, Le5/j3;->i:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final m0(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08019f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lcom/qennnsad/aknkaksd/util/h1;->f(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    .line 3
    invoke-static {v0, v1, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/qennnsad/aknkaksd/util/j1$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v0, v2}, Lcom/qennnsad/aknkaksd/util/j1$a;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    .line 5
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v3, "W"

    invoke-direct {v0, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const-string v1, " "

    .line 7
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 8
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final o0(I)Ljava/lang/String;
    .locals 1

    div-int/lit8 p1, p1, 0x3c

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final b0()Lx4/a;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->h:Lx4/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "analytics"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c0()Le5/o1;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->f:Le5/o1;

    return-object v0
.end method

.method public final d0()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    return-object v0
.end method

.method public final n0()Le5/o1;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->f:Le5/o1;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
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

    const/4 p3, 0x0

    .line 1
    invoke-static {p1, p2, p3}, Le5/o1;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Le5/o1;

    move-result-object p1

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->f:Le5/o1;

    .line 3
    invoke-virtual {p1}, Le5/o1;->b()Landroid/widget/FrameLayout;

    move-result-object p1

    const-string p2, "inflate(inflater, contai\u2026nding = it\n        }.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->f:Le5/o1;

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
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->k0()V

    return-void
.end method

.method public final p0(Lx4/a;)V
    .locals 1
    .param p1    # Lx4/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->h:Lx4/a;

    return-void
.end method

.method public final q0(Le5/o1;)V
    .locals 0
    .param p1    # Le5/o1;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->f:Le5/o1;

    return-void
.end method

.method public final r0(Landroid/widget/TextView;II)V
    .locals 9
    .param p1    # Landroid/widget/TextView;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7ed1\u5b9a\u624b\u673a\u53f7\u540e\uff0c\u6536\u8d39\u623f\u95f4\u6709"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u79d2\u8bd5\u770b\u65f6\u95f4\uff01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0602a1

    .line 6
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 7
    invoke-direct {v8, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 8
    div-int/lit8 p3, p3, 0xa

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, v0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p3

    const-string v3, "\u8bd5"

    .line 9
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    const/16 v2, 0x21

    .line 10
    invoke-virtual {v1, v8, p3, v0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 11
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xe

    .line 13
    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/h1;->f(Landroid/content/Context;I)I

    move-result v0

    iput v0, p3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/4 v0, 0x3

    .line 15
    invoke-virtual {p3, v0, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 16
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
