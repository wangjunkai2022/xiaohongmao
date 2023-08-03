.class public final Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileActivity;
.super Lcom/qennnsad/aknkaksd/presentation/module/main/profile/Hilt_UserProfileActivity;
.source "UserProfileActivity.kt"


# annotations
.annotation runtime Ldagger/hilt/android/b;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/presentation/module/main/profile/Hilt_UserProfileActivity<",
        "Le5/f;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0007\u0018\u0000 \u00132\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0014B\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0010\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u0012\u0010\t\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014R\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileActivity;",
        "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;",
        "Le5/f;",
        "Landroid/view/LayoutInflater;",
        "layoutInflater",
        "j0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "Lg5/a;",
        "localDataManager",
        "Lg5/a;",
        "k0",
        "()Lg5/a;",
        "l0",
        "(Lg5/a;)V",
        "<init>",
        "()V",
        "l",
        "a",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final l:Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileActivity$a;
    .annotation build Lm8/g;
    .end annotation
.end field


# instance fields
.field public k:Lg5/a;
    .annotation runtime Lu7/a;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileActivity;->l:Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/Hilt_UserProfileActivity;-><init>()V

    return-void
.end method

.method public static final m0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileActivity;->l:Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileActivity$a;

    invoke-virtual {v0, p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileActivity$a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic I(Landroid/view/LayoutInflater;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileActivity;->j0(Landroid/view/LayoutInflater;)Le5/f;

    move-result-object p1

    return-object p1
.end method

.method public j0(Landroid/view/LayoutInflater;)Le5/f;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "layoutInflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le5/f;->c(Landroid/view/LayoutInflater;)Le5/f;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final k0()Lg5/a;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileActivity;->k:Lg5/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "localDataManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final l0(Lg5/a;)V
    .locals 1
    .param p1    # Lg5/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileActivity;->k:Lg5/a;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 2
    invoke-static {p0, p1, p1}, Lq5/b;->h(Landroid/app/Activity;ZZ)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;-><init>()V

    .line 5
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "user_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 8
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const v1, 0x7f0a02d6

    .line 9
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 11
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileActivity;->k0()Lg5/a;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/util/l;->t(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;Lg5/a;)V

    return-void
.end method
