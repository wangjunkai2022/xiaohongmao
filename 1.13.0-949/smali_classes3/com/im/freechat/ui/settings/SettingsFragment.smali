.class public final Lcom/im/freechat/ui/settings/SettingsFragment;
.super Lcom/im/freechat/base/f;
.source "SettingsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/im/freechat/base/f<",
        "Lcom/im/freechat/ui/settings/SettingsViewModel$Directions;",
        "Lf4/u;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsFragment.kt\ncom/im/freechat/ui/settings/SettingsFragment\n+ 2 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,192:1\n40#2,5:193\n254#3,2:198\n254#3,2:200\n254#3,2:202\n254#3,2:204\n254#3,2:206\n*S KotlinDebug\n*F\n+ 1 SettingsFragment.kt\ncom/im/freechat/ui/settings/SettingsFragment\n*L\n33#1:193,5\n60#1:198,2\n187#1:200,2\n39#1:202,2\n129#1:204,2\n152#1:206,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008%\u0010&J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002J\u0008\u0010\u0007\u001a\u00020\u0004H\u0002J\u0008\u0010\u0008\u001a\u00020\u0004H\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0002J\u001a\u0010\u0010\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016J\u0008\u0010\u0011\u001a\u00020\u0004H\u0014J\u0018\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u0008\u0010\u0016\u001a\u00020\u0004H\u0016R\u001b\u0010\u001c\u001a\u00020\u00178VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\"\u0010\"\u001a\u0010\u0012\u000c\u0012\n \u001f*\u0004\u0018\u00010\u001e0\u001e0\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\"\u0010$\u001a\u0010\u0012\u000c\u0012\n \u001f*\u0004\u0018\u00010\u001e0\u001e0\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010!\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/im/freechat/ui/settings/SettingsFragment;",
        "Lcom/im/freechat/base/f;",
        "Lcom/im/freechat/ui/settings/SettingsViewModel$Directions;",
        "Lf4/u;",
        "",
        "M0",
        "N0",
        "f1",
        "c1",
        "Lcom/im/freechat/shared/entities/auth/UserInfo;",
        "userInfo",
        "F0",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "a1",
        "Z",
        "direction",
        "Landroid/os/Bundle;",
        "extras",
        "Y0",
        "onResume",
        "Lcom/im/freechat/ui/settings/SettingsViewModel;",
        "b",
        "Lkotlin/Lazy;",
        "H0",
        "()Lcom/im/freechat/ui/settings/SettingsViewModel;",
        "viewModel",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "",
        "kotlin.jvm.PlatformType",
        "c",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "requestPermission",
        "d",
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

.field private final c:Landroidx/activity/result/ActivityResultLauncher;
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


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/base/f;-><init>()V

    .line 2
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 3
    new-instance v1, Lcom/im/freechat/ui/settings/SettingsFragment$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/im/freechat/ui/settings/SettingsFragment$special$$inlined$inject$default$1;-><init>(Landroid/content/ComponentCallbacks;Lz8/a;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/im/freechat/ui/settings/SettingsFragment;->b:Lkotlin/Lazy;

    .line 5
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;-><init>()V

    new-instance v1, Lcom/im/freechat/ui/settings/h;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/settings/h;-><init>(Lcom/im/freechat/ui/settings/SettingsFragment;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResul\u2026mission))\n        }\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/im/freechat/ui/settings/SettingsFragment;->c:Landroidx/activity/result/ActivityResultLauncher;

    .line 6
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;-><init>()V

    new-instance v1, Lcom/im/freechat/ui/settings/g;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/settings/g;-><init>(Lcom/im/freechat/ui/settings/SettingsFragment;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResul\u2026vatar(it)\n        }\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/im/freechat/ui/settings/SettingsFragment;->d:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static synthetic A0(Lcom/im/freechat/ui/settings/SettingsFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/settings/SettingsFragment;->b1(Lcom/im/freechat/ui/settings/SettingsFragment;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic B0(Lcom/im/freechat/ui/settings/SettingsFragment;Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/settings/SettingsFragment;->Z0(Lcom/im/freechat/ui/settings/SettingsFragment;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic C0(Lcom/im/freechat/ui/settings/SettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/settings/SettingsFragment;->G0(Lcom/im/freechat/ui/settings/SettingsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic D0(Lcom/im/freechat/ui/settings/SettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/settings/SettingsFragment;->Q0(Lcom/im/freechat/ui/settings/SettingsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic E0(Lcom/im/freechat/ui/settings/SettingsFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/settings/SettingsFragment;->I0(Lcom/im/freechat/ui/settings/SettingsFragment;Ljava/lang/Boolean;)V

    return-void
.end method

.method private final F0(Lcom/im/freechat/shared/entities/auth/UserInfo;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/u;

    iget-object v0, v0, Lf4/u;->e:Lf4/y;

    .line 2
    iget-object v1, v0, Lf4/y;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/auth/UserInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v1, v0, Lf4/y;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/auth/UserInfo;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/text/StringsKt;->first(Ljava/lang/CharSequence;)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v1, v0, Lf4/y;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/auth/UserInfo;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/im/freechat/extend/r;->a(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 5
    iget-object v1, v0, Lf4/y;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/auth/UserInfo;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/auth/UserInfo;->getUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, v0, Lf4/y;->c:Landroid/widget/ImageView;

    const-string v1, "ivIcon"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/auth/UserInfo;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/im/freechat/extend/m;->o(Landroid/widget/ImageView;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/auth/UserInfo;->getManagementRole()Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    move-result-object v0

    sget-object v1, Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;->NORMAL:Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/u;

    iget-object v0, v0, Lf4/u;->g:Landroid/widget/TextView;

    new-instance v1, Lcom/im/freechat/ui/settings/e;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/settings/e;-><init>(Lcom/im/freechat/ui/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/u;

    iget-object v0, v0, Lf4/u;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    .line 10
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/u;

    iget-object v0, v0, Lf4/u;->b:Landroid/widget/CheckedTextView;

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/auth/UserInfo;->getLastOnline()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long p1, v3, v5

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    return-void
.end method

.method private static final G0(Lcom/im/freechat/ui/settings/SettingsFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "https://dev.testwebmessenger.ml/admin"

    .line 2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static final I0(Lcom/im/freechat/ui/settings/SettingsFragment;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lf4/u;

    iget-object p0, p0, Lf4/u;->e:Lf4/y;

    iget-object p0, p0, Lf4/y;->d:Landroid/widget/ProgressBar;

    const-string v0, "binding.header.pbAvatar"

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

.method private static final J0(Lcom/im/freechat/ui/settings/SettingsFragment;Lcom/im/freechat/shared/entities/auth/UserInfo;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/im/freechat/ui/settings/SettingsFragment;->F0(Lcom/im/freechat/shared/entities/auth/UserInfo;)V

    return-void
.end method

.method private static final K0(Lcom/im/freechat/ui/settings/SettingsFragment;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lf4/u;

    iget-object p0, p0, Lf4/u;->c:Landroid/widget/CheckedTextView;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    return-void
.end method

.method private static final L0(Lcom/im/freechat/ui/settings/SettingsFragment;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lf4/u;

    iget-object p0, p0, Lf4/u;->d:Landroid/widget/CheckedTextView;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    return-void
.end method

.method private final M0()V
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

    check-cast v1, Lf4/u;

    iget-object v1, v1, Lf4/u;->f:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/u;

    iget-object v0, v0, Lf4/u;->f:Landroidx/appcompat/widget/Toolbar;

    const-string v1, "binding.toolbar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private final N0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/u;

    iget-object v0, v0, Lf4/u;->m:Landroid/widget/TextView;

    new-instance v1, Lcom/im/freechat/ui/settings/q;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/settings/q;-><init>(Lcom/im/freechat/ui/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/u;

    iget-object v0, v0, Lf4/u;->l:Landroid/widget/TextView;

    new-instance v1, Lcom/im/freechat/ui/settings/c;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/settings/c;-><init>(Lcom/im/freechat/ui/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/u;

    iget-object v0, v0, Lf4/u;->j:Landroid/widget/TextView;

    new-instance v1, Lcom/im/freechat/ui/settings/u;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/settings/u;-><init>(Lcom/im/freechat/ui/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/u;

    iget-object v0, v0, Lf4/u;->h:Landroid/widget/TextView;

    new-instance v1, Lcom/im/freechat/ui/settings/p;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/settings/p;-><init>(Lcom/im/freechat/ui/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/u;

    iget-object v0, v0, Lf4/u;->i:Landroid/widget/TextView;

    new-instance v1, Lcom/im/freechat/ui/settings/r;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/settings/r;-><init>(Lcom/im/freechat/ui/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/u;

    iget-object v0, v0, Lf4/u;->e:Lf4/y;

    iget-object v0, v0, Lf4/y;->f:Landroid/widget/TextView;

    new-instance v1, Lcom/im/freechat/ui/settings/b;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/settings/b;-><init>(Lcom/im/freechat/ui/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/u;

    iget-object v0, v0, Lf4/u;->b:Landroid/widget/CheckedTextView;

    new-instance v1, Lcom/im/freechat/ui/settings/f;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/settings/f;-><init>(Lcom/im/freechat/ui/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/u;

    iget-object v0, v0, Lf4/u;->c:Landroid/widget/CheckedTextView;

    new-instance v1, Lcom/im/freechat/ui/settings/t;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/settings/t;-><init>(Lcom/im/freechat/ui/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/u;

    iget-object v0, v0, Lf4/u;->d:Landroid/widget/CheckedTextView;

    new-instance v1, Lcom/im/freechat/ui/settings/s;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/settings/s;-><init>(Lcom/im/freechat/ui/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lf4/u;

    iget-object v0, v0, Lf4/u;->k:Landroid/widget/TextView;

    new-instance v1, Lcom/im/freechat/ui/settings/d;

    invoke-direct {v1, p0}, Lcom/im/freechat/ui/settings/d;-><init>(Lcom/im/freechat/ui/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final O0(Lcom/im/freechat/ui/settings/SettingsFragment;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "requireActivity()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget v0, Lb4/b$s;->c9:I

    .line 3
    sget v1, Lb4/b$s;->d9:I

    .line 4
    new-instance v2, Lcom/im/freechat/ui/settings/SettingsFragment$a;

    invoke-direct {v2, p0}, Lcom/im/freechat/ui/settings/SettingsFragment$a;-><init>(Lcom/im/freechat/ui/settings/SettingsFragment;)V

    invoke-static {p1, v0, v1, v2}, Lcom/im/freechat/extend/f;->g(Landroid/app/Activity;IILkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final P0(Lcom/im/freechat/ui/settings/SettingsFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/ui/settings/SettingsFragment;->H0()Lcom/im/freechat/ui/settings/SettingsViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/ui/settings/SettingsViewModel;->x()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/im/freechat/shared/entities/auth/UserInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/auth/UserInfo;->getUserId()I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v0, "requireActivity()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/im/freechat/extend/m;->c(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static final Q0(Lcom/im/freechat/ui/settings/SettingsFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/im/freechat/ui/settings/SettingsFragment;->H0()Lcom/im/freechat/ui/settings/SettingsViewModel;

    move-result-object p1

    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lf4/u;

    iget-object p0, p0, Lf4/u;->b:Landroid/widget/CheckedTextView;

    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lcom/im/freechat/ui/settings/SettingsViewModel;->C(Z)Lkotlinx/coroutines/j2;

    return-void
.end method

.method private static final R0(Lcom/im/freechat/ui/settings/SettingsFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/im/freechat/ui/settings/SettingsFragment;->H0()Lcom/im/freechat/ui/settings/SettingsViewModel;

    move-result-object p1

    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lf4/u;

    iget-object p0, p0, Lf4/u;->c:Landroid/widget/CheckedTextView;

    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lcom/im/freechat/ui/settings/SettingsViewModel;->B(Z)Lkotlinx/coroutines/j2;

    return-void
.end method

.method private static final S0(Lcom/im/freechat/ui/settings/SettingsFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/im/freechat/ui/settings/SettingsFragment;->H0()Lcom/im/freechat/ui/settings/SettingsViewModel;

    move-result-object p1

    invoke-virtual {p0}, Lcom/im/freechat/base/f;->W()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lf4/u;

    iget-object p0, p0, Lf4/u;->d:Landroid/widget/CheckedTextView;

    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lcom/im/freechat/ui/settings/SettingsViewModel;->D(Z)Lkotlinx/coroutines/j2;

    return-void
.end method

.method private static final T0(Lcom/im/freechat/ui/settings/SettingsFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/im/freechat/ui/settings/SettingsFragment;->c:Landroidx/activity/result/ActivityResultLauncher;

    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method private static final U0(Lcom/im/freechat/ui/settings/SettingsFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/im/freechat/ui/settings/SettingsFragment;->f1()V

    return-void
.end method

.method private static final V0(Lcom/im/freechat/ui/settings/SettingsFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/im/freechat/ui/settings/SettingsFragment;->c1()V

    return-void
.end method

.method private static final W0(Lcom/im/freechat/ui/settings/SettingsFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/im/freechat/ui/settings/SettingsViewModel$Directions;->DATA_USAGE:Lcom/im/freechat/ui/settings/SettingsViewModel$Directions;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/im/freechat/base/f;->d0(Lcom/im/freechat/base/f;Ljava/lang/Enum;Landroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method private static final X0(Lcom/im/freechat/ui/settings/SettingsFragment;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcom/im/freechat/ui/settings/SettingsViewModel$Directions;->BLACKLISTED_CONTACTS:Lcom/im/freechat/ui/settings/SettingsViewModel$Directions;

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/Pair;

    .line 2
    sget-object v1, Lcom/im/freechat/shared/entities/contact/ContactType;->BLOCK:Lcom/im/freechat/shared/entities/contact/ContactType;

    const-string v2, "contactListType"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "showServiceContact"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 4
    invoke-static {v0}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/im/freechat/base/f;->c0(Ljava/lang/Enum;Landroid/os/Bundle;)V

    return-void
.end method

.method private static final Z0(Lcom/im/freechat/ui/settings/SettingsFragment;Landroid/net/Uri;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/im/freechat/ui/settings/SettingsFragment;->H0()Lcom/im/freechat/ui/settings/SettingsViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/settings/SettingsViewModel;->E(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method private static final b1(Lcom/im/freechat/ui/settings/SettingsFragment;Ljava/lang/Boolean;)V
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
    iget-object p0, p0, Lcom/im/freechat/ui/settings/SettingsFragment;->d:Landroidx/activity/result/ActivityResultLauncher;

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

.method private final c1()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lf4/f;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/f;

    move-result-object v0

    const-string v2, "inflate(layoutInflater, null, false)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3
    sget v3, Lb4/b$s;->T8:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 4
    invoke-virtual {v0}, Lf4/f;->b()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 5
    new-instance v3, Lcom/im/freechat/ui/settings/a;

    invoke-direct {v3, p0, v0}, Lcom/im/freechat/ui/settings/a;-><init>(Lcom/im/freechat/ui/settings/SettingsFragment;Lf4/f;)V

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

    .line 8
    new-instance v2, Lcom/im/freechat/ui/settings/n;

    invoke-direct {v2, p0, v0}, Lcom/im/freechat/ui/settings/n;-><init>(Lcom/im/freechat/ui/settings/SettingsFragment;Lf4/f;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 9
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static final d1(Lcom/im/freechat/ui/settings/SettingsFragment;Lf4/f;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$dialogBinding"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/im/freechat/ui/settings/SettingsFragment;->H0()Lcom/im/freechat/ui/settings/SettingsViewModel;

    move-result-object p0

    iget-object p1, p1, Lf4/f;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/settings/SettingsViewModel;->z(Ljava/lang/String;)V

    return-void
.end method

.method private static final e1(Lcom/im/freechat/ui/settings/SettingsFragment;Lf4/f;Landroid/content/DialogInterface;)V
    .locals 1

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$dialogBinding"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/ui/settings/SettingsFragment;->H0()Lcom/im/freechat/ui/settings/SettingsViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/im/freechat/ui/settings/SettingsViewModel;->x()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/im/freechat/shared/entities/auth/UserInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/auth/UserInfo;->getBio()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p2, 0x1

    :goto_2
    if-nez p2, :cond_3

    .line 3
    iget-object p2, p1, Lf4/f;->b:Landroid/widget/TextView;

    const-string v0, "dialogBinding.disclaimer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p1, Lf4/f;->c:Landroid/widget/EditText;

    .line 6
    sget p2, Lb4/b$s;->r3:I

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(I)V

    .line 7
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method private final f1()V
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
    new-instance v3, Lcom/im/freechat/ui/settings/l;

    invoke-direct {v3, p0, v0}, Lcom/im/freechat/ui/settings/l;-><init>(Lcom/im/freechat/ui/settings/SettingsFragment;Lf4/g;)V

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

    .line 8
    new-instance v2, Lcom/im/freechat/ui/settings/o;

    invoke-direct {v2, v0, p0}, Lcom/im/freechat/ui/settings/o;-><init>(Lf4/g;Lcom/im/freechat/ui/settings/SettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 9
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static final g1(Lcom/im/freechat/ui/settings/SettingsFragment;Lf4/g;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$dialogBinding"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/im/freechat/ui/settings/SettingsFragment;->H0()Lcom/im/freechat/ui/settings/SettingsViewModel;

    move-result-object p0

    iget-object p1, p1, Lf4/g;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/im/freechat/ui/settings/SettingsViewModel;->A(Ljava/lang/String;)V

    return-void
.end method

.method private static final h1(Lf4/g;Lcom/im/freechat/ui/settings/SettingsFragment;Landroid/content/DialogInterface;)V
    .locals 1

    const-string p2, "$dialogBinding"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lf4/g;->b:Landroid/widget/TextView;

    const-string v0, "dialogBinding.disclaimer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p0, p0, Lf4/g;->c:Landroid/widget/EditText;

    .line 4
    sget p2, Lb4/b$s;->g2:I

    invoke-virtual {p0, p2}, Landroid/widget/EditText;->setHint(I)V

    .line 5
    invoke-virtual {p1}, Lcom/im/freechat/ui/settings/SettingsFragment;->H0()Lcom/im/freechat/ui/settings/SettingsViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/im/freechat/ui/settings/SettingsViewModel;->x()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/im/freechat/shared/entities/auth/UserInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/auth/UserInfo;->getNickname()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic k0(Lcom/im/freechat/ui/settings/SettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/settings/SettingsFragment;->X0(Lcom/im/freechat/ui/settings/SettingsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l0(Lcom/im/freechat/ui/settings/SettingsFragment;Lcom/im/freechat/shared/entities/auth/UserInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/settings/SettingsFragment;->J0(Lcom/im/freechat/ui/settings/SettingsFragment;Lcom/im/freechat/shared/entities/auth/UserInfo;)V

    return-void
.end method

.method public static synthetic m0(Lcom/im/freechat/ui/settings/SettingsFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/settings/SettingsFragment;->K0(Lcom/im/freechat/ui/settings/SettingsFragment;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic n0(Lf4/g;Lcom/im/freechat/ui/settings/SettingsFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/ui/settings/SettingsFragment;->h1(Lf4/g;Lcom/im/freechat/ui/settings/SettingsFragment;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic o0(Lcom/im/freechat/ui/settings/SettingsFragment;Lf4/f;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/im/freechat/ui/settings/SettingsFragment;->d1(Lcom/im/freechat/ui/settings/SettingsFragment;Lf4/f;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic p0(Lcom/im/freechat/ui/settings/SettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/settings/SettingsFragment;->U0(Lcom/im/freechat/ui/settings/SettingsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q0(Lcom/im/freechat/ui/settings/SettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/settings/SettingsFragment;->O0(Lcom/im/freechat/ui/settings/SettingsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r0(Lcom/im/freechat/ui/settings/SettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/settings/SettingsFragment;->S0(Lcom/im/freechat/ui/settings/SettingsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s0(Lcom/im/freechat/ui/settings/SettingsFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/settings/SettingsFragment;->L0(Lcom/im/freechat/ui/settings/SettingsFragment;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic t0(Lcom/im/freechat/ui/settings/SettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/settings/SettingsFragment;->R0(Lcom/im/freechat/ui/settings/SettingsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u0(Lcom/im/freechat/ui/settings/SettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/settings/SettingsFragment;->W0(Lcom/im/freechat/ui/settings/SettingsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v0(Lcom/im/freechat/ui/settings/SettingsFragment;Lf4/g;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/im/freechat/ui/settings/SettingsFragment;->g1(Lcom/im/freechat/ui/settings/SettingsFragment;Lf4/g;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic w0(Lcom/im/freechat/ui/settings/SettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/settings/SettingsFragment;->P0(Lcom/im/freechat/ui/settings/SettingsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x0(Lcom/im/freechat/ui/settings/SettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/settings/SettingsFragment;->V0(Lcom/im/freechat/ui/settings/SettingsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic y0(Lcom/im/freechat/ui/settings/SettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/im/freechat/ui/settings/SettingsFragment;->T0(Lcom/im/freechat/ui/settings/SettingsFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic z0(Lcom/im/freechat/ui/settings/SettingsFragment;Lf4/f;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/ui/settings/SettingsFragment;->e1(Lcom/im/freechat/ui/settings/SettingsFragment;Lf4/f;Landroid/content/DialogInterface;)V

    return-void
.end method


# virtual methods
.method public H0()Lcom/im/freechat/ui/settings/SettingsViewModel;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/settings/SettingsFragment;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/im/freechat/ui/settings/SettingsViewModel;

    return-object v0
.end method

.method public bridge synthetic Y()Lcom/im/freechat/base/a;
    .locals 1

    invoke-virtual {p0}, Lcom/im/freechat/ui/settings/SettingsFragment;->H0()Lcom/im/freechat/ui/settings/SettingsViewModel;

    move-result-object v0

    return-object v0
.end method

.method public Y0(Lcom/im/freechat/ui/settings/SettingsViewModel$Directions;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Lcom/im/freechat/ui/settings/SettingsViewModel$Directions;
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

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    return-void
.end method

.method protected Z()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/ui/settings/SettingsFragment;->H0()Lcom/im/freechat/ui/settings/SettingsViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/settings/SettingsViewModel;->u()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/im/freechat/ui/settings/m;

    invoke-direct {v2, p0}, Lcom/im/freechat/ui/settings/m;-><init>(Lcom/im/freechat/ui/settings/SettingsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 2
    invoke-virtual {p0}, Lcom/im/freechat/ui/settings/SettingsFragment;->H0()Lcom/im/freechat/ui/settings/SettingsViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/settings/SettingsViewModel;->x()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/im/freechat/ui/settings/i;

    invoke-direct {v2, p0}, Lcom/im/freechat/ui/settings/i;-><init>(Lcom/im/freechat/ui/settings/SettingsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 3
    invoke-virtual {p0}, Lcom/im/freechat/ui/settings/SettingsFragment;->H0()Lcom/im/freechat/ui/settings/SettingsViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/settings/SettingsViewModel;->v()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/im/freechat/ui/settings/j;

    invoke-direct {v2, p0}, Lcom/im/freechat/ui/settings/j;-><init>(Lcom/im/freechat/ui/settings/SettingsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 4
    invoke-virtual {p0}, Lcom/im/freechat/ui/settings/SettingsFragment;->H0()Lcom/im/freechat/ui/settings/SettingsViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/settings/SettingsViewModel;->w()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/im/freechat/ui/settings/k;

    invoke-direct {v2, p0}, Lcom/im/freechat/ui/settings/k;-><init>(Lcom/im/freechat/ui/settings/SettingsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 5
    invoke-virtual {p0}, Lcom/im/freechat/ui/settings/SettingsFragment;->H0()Lcom/im/freechat/ui/settings/SettingsViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/im/freechat/ui/settings/SettingsViewModel;->y()Lkotlinx/coroutines/j2;

    .line 6
    invoke-direct {p0}, Lcom/im/freechat/ui/settings/SettingsFragment;->M0()V

    .line 7
    invoke-direct {p0}, Lcom/im/freechat/ui/settings/SettingsFragment;->N0()V

    return-void
.end method

.method public bridge synthetic a0(Ljava/lang/Enum;Landroid/os/Bundle;)V
    .locals 0

    check-cast p1, Lcom/im/freechat/ui/settings/SettingsViewModel$Directions;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/settings/SettingsFragment;->Y0(Lcom/im/freechat/ui/settings/SettingsViewModel$Directions;Landroid/os/Bundle;)V

    return-void
.end method

.method public a1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lf4/u;
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

    invoke-static {p1, p2, v0}, Lf4/u;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/u;

    move-result-object p1

    const-string p2, "inflate(inflater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic g0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/settings/SettingsFragment;->a1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lf4/u;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
