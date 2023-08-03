.class public final Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity$e;
.super Landroid/os/CountDownTimer;
.source "SplashActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;->w0(Lcom/qennnsad/aknkaksd/data/bean/LaunchAdBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/qennnsad/aknkaksd/presentation/module/splash/SplashActivity$e",
        "Landroid/os/CountDownTimer;",
        "",
        "millisUntilFinished",
        "",
        "onTick",
        "onFinish",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;J)V
    .locals 2

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity$e;->a:Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method

.method public static synthetic a(Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity$e;->d(Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;J)V

    return-void
.end method

.method public static synthetic b(Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity$e;->c(Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;Landroid/view/View;)V

    return-void
.end method

.method private static final c(Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;->v0()V

    return-void
.end method

.method private static final d(Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;J)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;->c0()Le5/k;

    move-result-object v0

    iget-object v0, v0, Le5/k;->b:Le5/q3;

    iget-object v0, v0, Le5/q3;->d:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x3e8

    int-to-long v2, v2

    .line 2
    div-long/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    const p1, 0x7f1303d9

    .line 3
    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity$e;->a:Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;->c0()Le5/k;

    move-result-object v0

    iget-object v0, v0, Le5/k;->b:Le5/q3;

    iget-object v0, v0, Le5/q3;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity$e;->a:Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;

    const-string v2, "\u8df3\u8fc7"

    .line 2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/splash/j;

    invoke-direct {v2, v1}, Lcom/qennnsad/aknkaksd/presentation/module/splash/j;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onTick(J)V
    .locals 3

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity$e;->a:Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;->c0()Le5/k;

    move-result-object v0

    iget-object v0, v0, Le5/k;->b:Le5/q3;

    iget-object v0, v0, Le5/q3;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity$e;->a:Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/splash/k;

    invoke-direct {v2, v1, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/splash/k;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/splash/SplashActivity;J)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
