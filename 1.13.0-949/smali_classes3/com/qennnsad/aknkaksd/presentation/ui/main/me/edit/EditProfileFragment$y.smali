.class final Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$y;
.super Lkotlin/jvm/internal/Lambda;
.source "EditProfileFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/String;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0012\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "",
        "",
        "it",
        "",
        "a",
        "(Ljava/util/List;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$y;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$y;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$y;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$y;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->P0(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v1

    .line 4
    invoke-static {v0, p1, v1}, Lp5/e;->s(Landroid/app/Activity;Ljava/util/List;Landroidx/activity/result/ActivityResultLauncher;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment$y;->a(Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
