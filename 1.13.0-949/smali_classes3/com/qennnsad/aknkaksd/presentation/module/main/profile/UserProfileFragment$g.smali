.class final Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$g;
.super Lkotlin/jvm/internal/Lambda;
.source "UserProfileFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;->N0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$g;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$g;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsActivity;->d:Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsActivity$a;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$g;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "requireActivity()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$g;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;->G0()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/module/contributors/ContributorsActivity$a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
