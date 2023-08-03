.class public final Lcom/google/android/gms/common/api/internal/i2;
.super Lcom/google/android/gms/common/api/internal/v3;
.source "com.google.android.gms:play-services-base@@18.0.1"


# instance fields
.field private f:Lcom/google/android/gms/tasks/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/l<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/m;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/e;->x()Lcom/google/android/gms/common/e;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/v3;-><init>(Lcom/google/android/gms/common/api/internal/m;Lcom/google/android/gms/common/e;)V

    .line 2
    new-instance p1, Lcom/google/android/gms/tasks/l;

    invoke-direct {p1}, Lcom/google/android/gms/tasks/l;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/i2;->f:Lcom/google/android/gms/tasks/l;

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a:Lcom/google/android/gms/common/api/internal/m;

    const-string v0, "GmsAvailabilityHelper"

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/common/api/internal/m;->h(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V

    return-void
.end method

.method public static u(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/i2;
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->c(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/m;

    move-result-object p0

    const-class v0, Lcom/google/android/gms/common/api/internal/i2;

    const-string v1, "GmsAvailabilityHelper"

    .line 2
    invoke-interface {p0, v1, v0}, Lcom/google/android/gms/common/api/internal/m;->m(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/i2;

    if-eqz v0, :cond_1

    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/i2;->f:Lcom/google/android/gms/tasks/l;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/l;->a()Lcom/google/android/gms/tasks/k;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/k;->u()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/android/gms/tasks/l;

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/tasks/l;-><init>()V

    iput-object p0, v0, Lcom/google/android/gms/common/api/internal/i2;->f:Lcom/google/android/gms/tasks/l;

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/api/internal/i2;

    .line 5
    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/i2;-><init>(Lcom/google/android/gms/common/api/internal/m;)V

    return-object v0
.end method


# virtual methods
.method public final h()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->h()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/i2;->f:Lcom/google/android/gms/tasks/l;

    .line 2
    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "Host activity was destroyed before Google Play services could be made available."

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/l;->d(Ljava/lang/Exception;)Z

    return-void
.end method

.method protected final n(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "Error connecting to Google Play services"

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/i2;->f:Lcom/google/android/gms/tasks/l;

    .line 2
    new-instance v1, Lcom/google/android/gms/common/api/ApiException;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v3

    invoke-direct {v2, p1, p2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;I)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/l;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method protected final o()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a:Lcom/google/android/gms/common/api/internal/m;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/m;->H()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/i2;->f:Lcom/google/android/gms/tasks/l;

    .line 2
    new-instance v1, Lcom/google/android/gms/common/api/ApiException;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/l;->d(Ljava/lang/Exception;)Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/v3;->e:Lcom/google/android/gms/common/e;

    .line 3
    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/e;->j(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/i2;->f:Lcom/google/android/gms/tasks/l;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/l;->e(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/i2;->f:Lcom/google/android/gms/tasks/l;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/tasks/l;->a()Lcom/google/android/gms/tasks/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/tasks/k;->u()Z

    move-result v2

    if-nez v2, :cond_2

    .line 6
    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/common/api/internal/v3;->t(Lcom/google/android/gms/common/ConnectionResult;I)V

    :cond_2
    return-void
.end method

.method public final v()Lcom/google/android/gms/tasks/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/i2;->f:Lcom/google/android/gms/tasks/l;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/l;->a()Lcom/google/android/gms/tasks/k;

    move-result-object v0

    return-object v0
.end method
