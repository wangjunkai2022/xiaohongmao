.class final Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$i;
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

.field final synthetic b:Lcom/qennnsad/aknkaksd/data/bean/TextAdBean;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;Lcom/qennnsad/aknkaksd/data/bean/TextAdBean;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$i;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$i;->b:Lcom/qennnsad/aknkaksd/data/bean/TextAdBean;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$i;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$i;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v0, "requireActivity()"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$i;->b:Lcom/qennnsad/aknkaksd/data/bean/TextAdBean;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/TextAdBean;->getTargetUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileFragment$i;->b:Lcom/qennnsad/aknkaksd/data/bean/TextAdBean;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/TextAdBean;->getTarget()Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 4
    invoke-static/range {v1 .. v7}, Lcom/qennnsad/aknkaksd/util/l;->z(Landroid/content/Context;Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;ZZILjava/lang/Object;)V

    return-void
.end method
