.class final Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity$d$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SplashActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity$d;->invoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/qennnsad/aknkaksd/data/bean/AppUpdateBean;",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/data/bean/AppUpdateBean;",
        "bean",
        "",
        "isForceUpdate",
        "",
        "a",
        "(Lcom/qennnsad/aknkaksd/data/bean/AppUpdateBean;Z)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity$d$a;->a:Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/qennnsad/aknkaksd/data/bean/AppUpdateBean;Z)V
    .locals 2
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/AppUpdateBean;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity$d$a;->a:Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;->g0()Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashViewModel;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity$d$a;->a:Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;->g0()Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashViewModel;->y()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity$d$a;->a:Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity$d$a$a;

    invoke-direct {v1, v0}, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity$d$a$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;)V

    invoke-static {v0, p1, p2, v1}, Lcom/qennnsad/aknkaksd/util/l;->U(Landroidx/fragment/app/FragmentActivity;Lcom/qennnsad/aknkaksd/data/bean/AppUpdateBean;ZLkotlin/jvm/functions/Function0;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/AppUpdateBean;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity$d$a;->a(Lcom/qennnsad/aknkaksd/data/bean/AppUpdateBean;Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
