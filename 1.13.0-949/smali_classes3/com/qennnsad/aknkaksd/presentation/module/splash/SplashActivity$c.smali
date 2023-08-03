.class final Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SplashActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;->Y(Lcom/qennnsad/aknkaksd/data/bean/LaunchAdBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSplashActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SplashActivity.kt\ncom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity$displayAd$1$2$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,231:1\n254#2,2:232\n*S KotlinDebug\n*F\n+ 1 SplashActivity.kt\ncom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity$displayAd$1$2$1\n*L\n160#1:232,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "foundInCache",
        "",
        "a",
        "(Z)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;

.field final synthetic c:Lcom/qennnsad/aknkaksd/data/bean/LaunchAdBean;


# direct methods
.method constructor <init>(Landroid/net/Uri;Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;Lcom/qennnsad/aknkaksd/data/bean/LaunchAdBean;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity$c;->a:Landroid/net/Uri;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity$c;->b:Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity$c;->c:Lcom/qennnsad/aknkaksd/data/bean/LaunchAdBean;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LaunchAd is not cached yet, let\'s download it"

    invoke-virtual {p1, v1, v0}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    sget-object p1, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->Companion:Lcom/qennnsad/aknkaksd/BaseBeautyApplication$a;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/BaseBeautyApplication$a;->a()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity$c;->a:Landroid/net/Uri;

    const-string v1, "uri"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/util/img/f;->c(Landroid/content/Context;Landroid/net/Uri;)V

    .line 3
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity$c;->b:Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;->v0()V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "LaunchAd found in cache!"

    invoke-virtual {p1, v2, v1}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity$c;->b:Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;->g0()Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashViewModel;->v()Lx4/a;

    move-result-object p1

    sget-object v1, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_SHOW_LAUNCH_AD:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity$c;->c:Lcom/qennnsad/aknkaksd/data/bean/LaunchAdBean;

    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/data/bean/LaunchAdBean;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1, v1, v2}, Lx4/a;->d(Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;[Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity$c;->b:Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;->c0()Le5/k;

    move-result-object p1

    iget-object p1, p1, Le5/k;->b:Le5/q3;

    invoke-virtual {p1}, Le5/q3;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const-string v1, "binding.ad.root"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity$c;->b:Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity$c;->c:Lcom/qennnsad/aknkaksd/data/bean/LaunchAdBean;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;->X(Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;Lcom/qennnsad/aknkaksd/data/bean/LaunchAdBean;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity$c;->a(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
