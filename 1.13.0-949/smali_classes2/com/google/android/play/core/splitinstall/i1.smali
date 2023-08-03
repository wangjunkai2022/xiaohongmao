.class final Lcom/google/android/play/core/splitinstall/i1;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/splitinstall/t0;


# instance fields
.field final synthetic a:Lcom/google/android/play/core/splitinstall/f;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/google/android/play/core/splitinstall/k1;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitinstall/k1;Lcom/google/android/play/core/splitinstall/f;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/i1;->d:Lcom/google/android/play/core/splitinstall/k1;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/i1;->a:Lcom/google/android/play/core/splitinstall/f;

    iput-object p3, p0, Lcom/google/android/play/core/splitinstall/i1;->b:Landroid/content/Intent;

    iput-object p4, p0, Lcom/google/android/play/core/splitinstall/i1;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3
    .param p1    # I
        .annotation build Lg3/a;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/i1;->d:Lcom/google/android/play/core/splitinstall/k1;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/i1;->a:Lcom/google/android/play/core/splitinstall/f;

    const/4 v2, 0x6

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/play/core/splitinstall/k1;->k(Lcom/google/android/play/core/splitinstall/k1;Lcom/google/android/play/core/splitinstall/f;II)V

    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/i1;->b:Landroid/content/Intent;

    const-string v1, "triggered_from_app_after_verification"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/i1;->b:Landroid/content/Intent;

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/i1;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/i1;->b:Landroid/content/Intent;

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/i1;->d:Lcom/google/android/play/core/splitinstall/k1;

    invoke-static {v0}, Lcom/google/android/play/core/splitinstall/k1;->i(Lcom/google/android/play/core/splitinstall/k1;)Lcom/google/android/play/core/internal/h;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Splits copied and verified more than once."

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/h;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public final zza()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/i1;->d:Lcom/google/android/play/core/splitinstall/k1;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/i1;->a:Lcom/google/android/play/core/splitinstall/f;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/play/core/splitinstall/k1;->k(Lcom/google/android/play/core/splitinstall/k1;Lcom/google/android/play/core/splitinstall/f;II)V

    return-void
.end method
