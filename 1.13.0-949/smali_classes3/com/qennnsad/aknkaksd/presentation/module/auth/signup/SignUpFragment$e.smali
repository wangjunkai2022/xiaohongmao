.class public final Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment$e;
.super Landroid/os/CountDownTimer;
.source "SignUpFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment;->U0()V
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
        "com/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment$e",
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
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment;)V
    .locals 4

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment$e;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment;

    const-wide/32 v0, 0xea60

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method

.method public static synthetic a(Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment$e;->d(Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment;J)V

    return-void
.end method

.method public static synthetic b(Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment$e;->c(Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment;)V

    return-void
.end method

.method private static final c(Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment;->y0(Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment;)Le5/w1;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Le5/w1;->i:Landroid/widget/Button;

    if-eqz p0, :cond_0

    const v0, 0x7f130271

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(I)V

    :cond_0
    return-void
.end method

.method private static final d(Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment;J)V
    .locals 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment;->y0(Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment;)Le5/w1;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Le5/w1;->i:Landroid/widget/Button;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const v1, 0x7f130270

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0x3e8

    int-to-long v4, v4

    div-long/2addr p1, v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment$e;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment;->y0(Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment;)Le5/w1;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Le5/w1;->i:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment$e;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment;

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/n;

    invoke-direct {v2, v1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/n;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment$e;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment;->Q0(Landroid/os/CountDownTimer;)V

    return-void
.end method

.method public onTick(J)V
    .locals 3

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment$e;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment;->y0(Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment;)Le5/w1;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Le5/w1;->i:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment$e;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment;

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/o;

    invoke-direct {v2, v1, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/o;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpFragment;J)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
