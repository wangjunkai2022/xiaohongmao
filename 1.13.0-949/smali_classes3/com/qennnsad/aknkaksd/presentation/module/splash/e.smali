.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/module/splash/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/e;->a:Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/e;->a:Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;

    check-cast p1, Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;->M(Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$DnsResolutionResult;)V

    return-void
.end method
