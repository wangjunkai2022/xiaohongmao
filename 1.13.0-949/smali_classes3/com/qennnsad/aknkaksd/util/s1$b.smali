.class final Lcom/qennnsad/aknkaksd/util/s1$b;
.super Lkotlin/jvm/internal/Lambda;
.source "ViewExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/util/s1;->m(Landroid/widget/ImageView;Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;Lcom/qennnsad/aknkaksd/data/repository/m;Lx4/a;)V
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
.field final synthetic a:Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;

.field final synthetic b:Lx4/a;

.field final synthetic c:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;Lx4/a;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/s1$b;->a:Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/s1$b;->b:Lx4/a;

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/util/s1$b;->c:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/s1$b;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 14

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/s1$b;->a:Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/s1$b;->b:Lx4/a;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/util/s1$b;->c:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;->getTargetUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    .line 4
    :cond_0
    sget-object v3, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_AD_CLICK:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;->getTargetUrl()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Lx4/a;->d(Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;[Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v1, "context"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;->getTargetUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;->getTarget()Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xc

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lcom/qennnsad/aknkaksd/util/l;->z(Landroid/content/Context;Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;ZZILjava/lang/Object;)V

    return-void
.end method
