.class public final Lcom/google/android/gms/common/api/m;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"


# direct methods
.method private constructor <init>()V
    .locals 0
    .annotation build Lu2/a;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/common/api/l;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/l<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/internal/z;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/internal/z;-><init>(Landroid/os/Looper;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->f()V

    return-object v0
.end method

.method public static b(Lcom/google/android/gms/common/api/q;)Lcom/google/android/gms/common/api/l;
    .locals 2
    .param p0    # Lcom/google/android/gms/common/api/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/q;",
            ">(TR;)",
            "Lcom/google/android/gms/common/api/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "Result must not be null"

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/common/api/q;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Status code must be CommonStatusCodes.CANCELED"

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->b(ZLjava/lang/Object;)V

    .line 4
    new-instance v0, Lcom/google/android/gms/common/api/a0;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/a0;-><init>(Lcom/google/android/gms/common/api/q;)V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->f()V

    return-object v0
.end method

.method public static c(Lcom/google/android/gms/common/api/q;Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/common/api/l;
    .locals 2
    .param p0    # Lcom/google/android/gms/common/api/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/common/api/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/q;",
            ">(TR;",
            "Lcom/google/android/gms/common/api/i;",
            ")",
            "Lcom/google/android/gms/common/api/l<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    const-string v0, "Result must not be null"

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/common/api/q;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Status code must not be SUCCESS"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/u;->b(ZLjava/lang/Object;)V

    .line 3
    new-instance v0, Lcom/google/android/gms/common/api/b0;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/common/api/b0;-><init>(Lcom/google/android/gms/common/api/i;Lcom/google/android/gms/common/api/q;)V

    .line 4
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->o(Lcom/google/android/gms/common/api/q;)V

    return-object v0
.end method

.method public static d(Lcom/google/android/gms/common/api/q;)Lcom/google/android/gms/common/api/k;
    .locals 2
    .param p0    # Lcom/google/android/gms/common/api/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/q;",
            ">(TR;)",
            "Lcom/google/android/gms/common/api/k<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    const-string v0, "Result must not be null"

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/android/gms/common/api/c0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/c0;-><init>(Lcom/google/android/gms/common/api/i;)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->o(Lcom/google/android/gms/common/api/q;)V

    new-instance p0, Lcom/google/android/gms/common/api/internal/r;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/r;-><init>(Lcom/google/android/gms/common/api/l;)V

    return-object p0
.end method

.method public static e(Lcom/google/android/gms/common/api/q;Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/common/api/k;
    .locals 1
    .param p0    # Lcom/google/android/gms/common/api/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/common/api/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/q;",
            ">(TR;",
            "Lcom/google/android/gms/common/api/i;",
            ")",
            "Lcom/google/android/gms/common/api/k<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    const-string v0, "Result must not be null"

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/android/gms/common/api/c0;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/c0;-><init>(Lcom/google/android/gms/common/api/i;)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->o(Lcom/google/android/gms/common/api/q;)V

    new-instance p0, Lcom/google/android/gms/common/api/internal/r;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/r;-><init>(Lcom/google/android/gms/common/api/l;)V

    return-object p0
.end method

.method public static f(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/l;
    .locals 2
    .param p0    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            ")",
            "Lcom/google/android/gms/common/api/l<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    const-string v0, "Result must not be null"

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/android/gms/common/api/internal/z;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/internal/z;-><init>(Landroid/os/Looper;)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->o(Lcom/google/android/gms/common/api/q;)V

    return-object v0
.end method

.method public static g(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/common/api/l;
    .locals 1
    .param p0    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/common/api/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            "Lcom/google/android/gms/common/api/i;",
            ")",
            "Lcom/google/android/gms/common/api/l<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    const-string v0, "Result must not be null"

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/android/gms/common/api/internal/z;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/internal/z;-><init>(Lcom/google/android/gms/common/api/i;)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->o(Lcom/google/android/gms/common/api/q;)V

    return-object v0
.end method
