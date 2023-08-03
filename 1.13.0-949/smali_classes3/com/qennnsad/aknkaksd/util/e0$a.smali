.class final Lcom/qennnsad/aknkaksd/util/e0$a;
.super Lkotlin/jvm/internal/Lambda;
.source "FanClubUtil.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/util/e0;->x(Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;Lcom/qennnsad/aknkaksd/util/e0;Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
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
.field final synthetic a:Lcom/qennnsad/aknkaksd/util/e0;

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;

.field final synthetic d:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/util/e0;Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/util/e0;",
            "Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity<",
            "*>;",
            "Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/e0$a;->a:Lcom/qennnsad/aknkaksd/util/e0;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/e0$a;->b:Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/util/e0$a;->c:Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;

    iput-object p4, p0, Lcom/qennnsad/aknkaksd/util/e0$a;->d:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/e0$a;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/e0$a;->a:Lcom/qennnsad/aknkaksd/util/e0;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/e0$a;->b:Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;

    .line 3
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/util/e0$a;->c:Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;->getPrice()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/util/e0$a;->d:Lkotlin/jvm/functions/Function0;

    .line 4
    invoke-static {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/util/e0;->j(Lcom/qennnsad/aknkaksd/util/e0;Landroid/app/Activity;ILkotlin/jvm/functions/Function0;)V

    return-void
.end method
