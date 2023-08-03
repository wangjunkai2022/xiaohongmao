.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/module/splash/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/AlertDialog;

.field public final synthetic b:Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/AlertDialog;Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/a;->a:Landroidx/appcompat/app/AlertDialog;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/a;->b:Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/a;->a:Landroidx/appcompat/app/AlertDialog;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/a;->b:Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;

    invoke-static {v0, v1, p1}, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;->O(Landroidx/appcompat/app/AlertDialog;Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;Landroid/view/View;)V

    return-void
.end method
