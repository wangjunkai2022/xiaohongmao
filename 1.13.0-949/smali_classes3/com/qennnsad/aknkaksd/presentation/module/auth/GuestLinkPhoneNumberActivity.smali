.class public final Lcom/qennnsad/aknkaksd/presentation/module/auth/GuestLinkPhoneNumberActivity;
.super Lcom/qennnsad/aknkaksd/presentation/module/auth/Hilt_GuestLinkPhoneNumberActivity;
.source "GuestLinkPhoneNumberActivity.kt"


# annotations
.annotation runtime Ldagger/hilt/android/b;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/module/auth/GuestLinkPhoneNumberActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/Hilt_GuestLinkPhoneNumberActivity<",
        "Le5/g;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 \u000c2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\rB\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u0012\u0010\t\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/GuestLinkPhoneNumberActivity;",
        "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;",
        "Le5/g;",
        "Landroid/view/LayoutInflater;",
        "layoutInflater",
        "j0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "<init>",
        "()V",
        "k",
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
.field public static final k:Lcom/qennnsad/aknkaksd/presentation/module/auth/GuestLinkPhoneNumberActivity$a;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/GuestLinkPhoneNumberActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/GuestLinkPhoneNumberActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/GuestLinkPhoneNumberActivity;->k:Lcom/qennnsad/aknkaksd/presentation/module/auth/GuestLinkPhoneNumberActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/Hilt_GuestLinkPhoneNumberActivity;-><init>()V

    return-void
.end method

.method public static final k0(Landroid/content/Context;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/GuestLinkPhoneNumberActivity;->k:Lcom/qennnsad/aknkaksd/presentation/module/auth/GuestLinkPhoneNumberActivity$a;

    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/GuestLinkPhoneNumberActivity$a;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic I(Landroid/view/LayoutInflater;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/GuestLinkPhoneNumberActivity;->j0(Landroid/view/LayoutInflater;)Le5/g;

    move-result-object p1

    return-object p1
.end method

.method public j0(Landroid/view/LayoutInflater;)Le5/g;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "layoutInflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le5/g;->c(Landroid/view/LayoutInflater;)Le5/g;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f0a04bc

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type androidx.navigation.fragment.NavHostFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/navigation/fragment/NavHostFragment;

    .line 3
    invoke-virtual {p1}, Landroidx/navigation/fragment/NavHostFragment;->getNavController()Landroidx/navigation/NavController;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->b0(Landroidx/navigation/NavController;)V

    return-void
.end method
