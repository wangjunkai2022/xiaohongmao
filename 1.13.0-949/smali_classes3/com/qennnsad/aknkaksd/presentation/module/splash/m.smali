.class public final Lcom/qennnsad/aknkaksd/presentation/module/splash/m;
.super Ljava/lang/Object;
.source "SplashActivity_MembersInjector.java"

# interfaces
.implements Ld6/g;


# annotations
.annotation build Ldagger/internal/e;
.end annotation

.annotation build Ldagger/internal/r;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld6/g<",
        "Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lg5/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/util/t0;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/util/m1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu7/c;Lu7/c;Lu7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lg5/a;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/util/t0;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/util/m1;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/m;->a:Lu7/c;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/m;->b:Lu7/c;

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/m;->c:Lu7/c;

    return-void
.end method

.method public static b(Lu7/c;Lu7/c;Lu7/c;)Ld6/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lg5/a;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/util/t0;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/util/m1;",
            ">;)",
            "Ld6/g<",
            "Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/splash/m;

    invoke-direct {v0, p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/splash/m;-><init>(Lu7/c;Lu7/c;Lu7/c;)V

    return-object v0
.end method

.method public static c(Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;Lg5/a;)V
    .locals 0
    .annotation build Ldagger/internal/j;
        value = "com.qennnsad.aknkaksd.presentation.module.splash.SplashActivity.localDataManager"
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;->f:Lg5/a;

    return-void
.end method

.method public static e(Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;Lcom/qennnsad/aknkaksd/util/t0;)V
    .locals 0
    .annotation build Ldagger/internal/j;
        value = "com.qennnsad.aknkaksd.presentation.module.splash.SplashActivity.networkUtility"
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;->g:Lcom/qennnsad/aknkaksd/util/t0;

    return-void
.end method

.method public static f(Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;Lcom/qennnsad/aknkaksd/util/m1;)V
    .locals 0
    .annotation build Ldagger/internal/j;
        value = "com.qennnsad.aknkaksd.presentation.module.splash.SplashActivity.updateUtil"
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;->h:Lcom/qennnsad/aknkaksd/util/m1;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/splash/m;->d(Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;)V

    return-void
.end method

.method public d(Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/m;->a:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/module/splash/m;->c(Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;Lg5/a;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/m;->b:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/util/t0;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/module/splash/m;->e(Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;Lcom/qennnsad/aknkaksd/util/t0;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/m;->c:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/util/m1;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/module/splash/m;->f(Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;Lcom/qennnsad/aknkaksd/util/m1;)V

    return-void
.end method
