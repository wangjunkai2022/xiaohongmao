.class public final Lcom/google/android/gms/common/api/internal/n;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/internal/n$a;,
        Lcom/google/android/gms/common/api/internal/n$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lu2/a;
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private volatile b:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field private volatile c:Lcom/google/android/gms/common/api/internal/n$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/n$a<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Looper;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "T",
            "L;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/common/util/concurrent/a;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/util/concurrent/a;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/n;->a:Ljava/util/concurrent/Executor;

    const-string p1, "Listener must not be null"

    .line 2
    invoke-static {p2, p1}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/n;->b:Ljava/lang/Object;

    new-instance p1, Lcom/google/android/gms/common/api/internal/n$a;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/common/internal/u;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/common/api/internal/n$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/n;->c:Lcom/google/android/gms/common/api/internal/n$a;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "T",
            "L;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Executor must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/n;->a:Ljava/util/concurrent/Executor;

    const-string p1, "Listener must not be null"

    .line 5
    invoke-static {p2, p1}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/n;->b:Ljava/lang/Object;

    new-instance p1, Lcom/google/android/gms/common/api/internal/n$a;

    .line 6
    invoke-static {p3}, Lcom/google/android/gms/common/internal/u;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/common/api/internal/n$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/n;->c:Lcom/google/android/gms/common/api/internal/n$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1
    .annotation build Lu2/a;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/n;->b:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/n;->c:Lcom/google/android/gms/common/api/internal/n$a;

    return-void
.end method

.method public b()Lcom/google/android/gms/common/api/internal/n$a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/internal/n$a<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/n;->c:Lcom/google/android/gms/common/api/internal/n$a;

    return-object v0
.end method

.method public c()Z
    .locals 1
    .annotation build Lu2/a;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/n;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d(Lcom/google/android/gms/common/api/internal/n$b;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/api/internal/n$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/n$b<",
            "-T",
            "L;",
            ">;)V"
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    const-string v0, "Notifier must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/n;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/common/api/internal/h2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/internal/h2;-><init>(Lcom/google/android/gms/common/api/internal/n;Lcom/google/android/gms/common/api/internal/n$b;)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final e(Lcom/google/android/gms/common/api/internal/n$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/n$b<",
            "-T",
            "L;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/n;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/common/api/internal/n$b;->b()V

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/internal/n$b;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/common/api/internal/n$b;->b()V

    .line 4
    throw v0
.end method
