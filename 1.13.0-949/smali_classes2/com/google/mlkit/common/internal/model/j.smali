.class public final Lcom/google/mlkit/common/internal/model/j;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"

# interfaces
.implements Lcom/google/mlkit/common/sdkinternal/model/k;


# instance fields
.field private final a:Lcom/google/mlkit/common/sdkinternal/k;

.field private final b:Lcom/google/android/gms/internal/mlkit_common/kb;


# direct methods
.method public constructor <init>(Lcom/google/mlkit/common/sdkinternal/k;)V
    .locals 1

    const-string v0, "common"

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_common/vb;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/kb;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/common/internal/model/j;->a:Lcom/google/mlkit/common/sdkinternal/k;

    iput-object v0, p0, Lcom/google/mlkit/common/internal/model/j;->b:Lcom/google/android/gms/internal/mlkit_common/kb;

    return-void
.end method

.method private final i(Lcom/google/mlkit/common/model/a;)Lcom/google/mlkit/common/sdkinternal/model/f;
    .locals 7

    .line 1
    new-instance v6, Lcom/google/mlkit/common/sdkinternal/model/g;

    iget-object v1, p0, Lcom/google/mlkit/common/internal/model/j;->a:Lcom/google/mlkit/common/sdkinternal/k;

    new-instance v4, Lcom/google/mlkit/common/sdkinternal/model/d;

    iget-object v0, p0, Lcom/google/mlkit/common/internal/model/j;->a:Lcom/google/mlkit/common/sdkinternal/k;

    invoke-direct {v4, v0}, Lcom/google/mlkit/common/sdkinternal/model/d;-><init>(Lcom/google/mlkit/common/sdkinternal/k;)V

    new-instance v5, Lcom/google/mlkit/common/internal/model/d;

    iget-object v0, p0, Lcom/google/mlkit/common/internal/model/j;->a:Lcom/google/mlkit/common/sdkinternal/k;

    .line 2
    invoke-virtual {p1}, Lcom/google/mlkit/common/model/d;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v0, v2}, Lcom/google/mlkit/common/internal/model/d;-><init>(Lcom/google/mlkit/common/sdkinternal/k;Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/mlkit/common/sdkinternal/model/g;-><init>(Lcom/google/mlkit/common/sdkinternal/k;Lcom/google/mlkit/common/model/d;Lcom/google/mlkit/common/sdkinternal/model/ModelValidator;Lcom/google/mlkit/common/sdkinternal/model/d;Lcom/google/mlkit/common/sdkinternal/model/h;)V

    iget-object v0, p0, Lcom/google/mlkit/common/internal/model/j;->a:Lcom/google/mlkit/common/sdkinternal/k;

    new-instance v1, Lcom/google/mlkit/common/sdkinternal/model/d;

    invoke-direct {v1, v0}, Lcom/google/mlkit/common/sdkinternal/model/d;-><init>(Lcom/google/mlkit/common/sdkinternal/k;)V

    const-class v2, Lcom/google/mlkit/common/sdkinternal/model/e;

    .line 3
    invoke-virtual {v0, v2}, Lcom/google/mlkit/common/sdkinternal/k;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/mlkit/common/sdkinternal/model/e;

    .line 4
    invoke-static {v0, p1, v1, v6, v2}, Lcom/google/mlkit/common/sdkinternal/model/f;->g(Lcom/google/mlkit/common/sdkinternal/k;Lcom/google/mlkit/common/model/d;Lcom/google/mlkit/common/sdkinternal/model/d;Lcom/google/mlkit/common/sdkinternal/model/g;Lcom/google/mlkit/common/sdkinternal/model/e;)Lcom/google/mlkit/common/sdkinternal/model/f;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/mlkit/common/model/d;Lcom/google/mlkit/common/model/b;)Lcom/google/android/gms/tasks/k;
    .locals 2

    .line 1
    check-cast p1, Lcom/google/mlkit/common/model/a;

    .line 2
    invoke-direct {p0, p1}, Lcom/google/mlkit/common/internal/model/j;->i(Lcom/google/mlkit/common/model/a;)Lcom/google/mlkit/common/sdkinternal/model/f;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/mlkit/common/sdkinternal/model/f;->k(Lcom/google/mlkit/common/model/b;)V

    const/4 p2, 0x0

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/tasks/n;->g(Ljava/lang/Object;)Lcom/google/android/gms/tasks/k;

    move-result-object p2

    .line 5
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/i;->g()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/mlkit/common/internal/model/e;

    invoke-direct {v1, p1}, Lcom/google/mlkit/common/internal/model/e;-><init>(Lcom/google/mlkit/common/sdkinternal/model/f;)V

    .line 6
    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/tasks/k;->x(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/j;)Lcom/google/android/gms/tasks/k;

    move-result-object p1

    return-object p1
.end method

.method public final b()Lcom/google/android/gms/tasks/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/k<",
            "Ljava/util/Set<",
            "Lcom/google/mlkit/common/model/a;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const-string v1, "Custom Remote model does not support listing downloaded models"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/google/android/gms/tasks/n;->f(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/k;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic c(Lcom/google/mlkit/common/model/d;)Lcom/google/android/gms/tasks/k;
    .locals 3

    .line 1
    check-cast p1, Lcom/google/mlkit/common/model/a;

    .line 2
    new-instance v0, Lcom/google/android/gms/tasks/l;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/l;-><init>()V

    .line 3
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/i;->g()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/mlkit/common/internal/model/f;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/mlkit/common/internal/model/f;-><init>(Lcom/google/mlkit/common/internal/model/j;Lcom/google/mlkit/common/model/a;Lcom/google/android/gms/tasks/l;)V

    .line 4
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/l;->a()Lcom/google/android/gms/tasks/k;

    move-result-object p1

    new-instance v0, Lcom/google/mlkit/common/internal/model/g;

    invoke-direct {v0, p0}, Lcom/google/mlkit/common/internal/model/g;-><init>(Lcom/google/mlkit/common/internal/model/j;)V

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/k;->e(Lcom/google/android/gms/tasks/e;)Lcom/google/android/gms/tasks/k;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(Lcom/google/mlkit/common/model/d;)Lcom/google/android/gms/tasks/k;
    .locals 2

    .line 1
    check-cast p1, Lcom/google/mlkit/common/model/a;

    .line 2
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/i;->b()Lcom/google/mlkit/common/sdkinternal/i;

    move-result-object v0

    new-instance v1, Lcom/google/mlkit/common/internal/model/h;

    invoke-direct {v1, p0, p1}, Lcom/google/mlkit/common/internal/model/h;-><init>(Lcom/google/mlkit/common/internal/model/j;Lcom/google/mlkit/common/model/a;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/mlkit/common/sdkinternal/i;->c(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/k;

    move-result-object p1

    new-instance v0, Lcom/google/mlkit/common/internal/model/i;

    invoke-direct {v0, p0}, Lcom/google/mlkit/common/internal/model/i;-><init>(Lcom/google/mlkit/common/internal/model/j;)V

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/k;->e(Lcom/google/android/gms/tasks/e;)Lcom/google/android/gms/tasks/k;

    move-result-object p1

    return-object p1
.end method

.method final synthetic e(Lcom/google/mlkit/common/model/a;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/mlkit/common/internal/model/j;->i(Lcom/google/mlkit/common/model/a;)Lcom/google/mlkit/common/sdkinternal/model/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/mlkit/common/sdkinternal/model/f;->h()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method final synthetic f(Lcom/google/mlkit/common/model/a;Lcom/google/android/gms/tasks/l;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/mlkit/common/sdkinternal/model/d;

    iget-object v1, p0, Lcom/google/mlkit/common/internal/model/j;->a:Lcom/google/mlkit/common/sdkinternal/k;

    invoke-direct {v0, v1}, Lcom/google/mlkit/common/sdkinternal/model/d;-><init>(Lcom/google/mlkit/common/sdkinternal/k;)V

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/ModelType;->CUSTOM:Lcom/google/mlkit/common/sdkinternal/ModelType;

    .line 2
    invoke-virtual {p1}, Lcom/google/mlkit/common/model/d;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/mlkit/common/sdkinternal/model/d;->a(Lcom/google/mlkit/common/sdkinternal/ModelType;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/l;->c(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const/16 v1, 0xd

    const-string v2, "Internal error has occurred when executing ML Kit tasks"

    .line 4
    invoke-direct {v0, v2, v1, p1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/l;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method final synthetic g(Lcom/google/android/gms/tasks/k;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/k;->v()Z

    move-result p1

    iget-object v0, p0, Lcom/google/mlkit/common/internal/model/j;->b:Lcom/google/android/gms/internal/mlkit_common/kb;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/w7;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/w7;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/mlkit_common/e7;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_common/e7;-><init>()V

    .line 2
    sget-object v3, Lcom/google/android/gms/internal/mlkit_common/zzjd;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzjd;

    .line 3
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_common/e7;->b(Lcom/google/android/gms/internal/mlkit_common/zzjd;)Lcom/google/android/gms/internal/mlkit_common/e7;

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/mlkit_common/e7;->a(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_common/e7;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_common/e7;->c()Lcom/google/android/gms/internal/mlkit_common/g7;

    move-result-object p1

    .line 5
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_common/w7;->e(Lcom/google/android/gms/internal/mlkit_common/g7;)Lcom/google/android/gms/internal/mlkit_common/w7;

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_common/nb;->f(Lcom/google/android/gms/internal/mlkit_common/w7;)Lcom/google/android/gms/internal/mlkit_common/ab;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zziu;->zzaY:Lcom/google/android/gms/internal/mlkit_common/zziu;

    .line 7
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/mlkit_common/kb;->d(Lcom/google/android/gms/internal/mlkit_common/ab;Lcom/google/android/gms/internal/mlkit_common/zziu;)V

    return-void
.end method

.method final synthetic h(Lcom/google/android/gms/tasks/k;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/k;->r()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v0, p0, Lcom/google/mlkit/common/internal/model/j;->b:Lcom/google/android/gms/internal/mlkit_common/kb;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/w7;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/w7;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/mlkit_common/o7;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_common/o7;-><init>()V

    .line 2
    sget-object v3, Lcom/google/android/gms/internal/mlkit_common/zzjd;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzjd;

    .line 3
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_common/o7;->b(Lcom/google/android/gms/internal/mlkit_common/zzjd;)Lcom/google/android/gms/internal/mlkit_common/o7;

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/mlkit_common/o7;->a(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_common/o7;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_common/o7;->c()Lcom/google/android/gms/internal/mlkit_common/q7;

    move-result-object p1

    .line 5
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_common/w7;->g(Lcom/google/android/gms/internal/mlkit_common/q7;)Lcom/google/android/gms/internal/mlkit_common/w7;

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_common/nb;->f(Lcom/google/android/gms/internal/mlkit_common/w7;)Lcom/google/android/gms/internal/mlkit_common/ab;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zziu;->zzaX:Lcom/google/android/gms/internal/mlkit_common/zziu;

    .line 7
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/mlkit_common/kb;->d(Lcom/google/android/gms/internal/mlkit_common/ab;Lcom/google/android/gms/internal/mlkit_common/zziu;)V

    return-void
.end method
