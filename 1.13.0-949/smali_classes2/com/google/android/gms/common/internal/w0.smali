.class final Lcom/google/android/gms/common/internal/w0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/common/api/l$a;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/l;

.field final synthetic b:Lcom/google/android/gms/tasks/l;

.field final synthetic c:Lcom/google/android/gms/common/internal/t$a;

.field final synthetic d:Lcom/google/android/gms/common/internal/z0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/tasks/l;Lcom/google/android/gms/common/internal/t$a;Lcom/google/android/gms/common/internal/z0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/w0;->a:Lcom/google/android/gms/common/api/l;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/w0;->b:Lcom/google/android/gms/tasks/l;

    iput-object p3, p0, Lcom/google/android/gms/common/internal/w0;->c:Lcom/google/android/gms/common/internal/t$a;

    iput-object p4, p0, Lcom/google/android/gms/common/internal/w0;->d:Lcom/google/android/gms/common/internal/z0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/common/internal/w0;->a:Lcom/google/android/gms/common/api/l;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    .line 2
    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/gms/common/api/l;->e(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/q;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/w0;->b:Lcom/google/android/gms/tasks/l;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/w0;->c:Lcom/google/android/gms/common/internal/t$a;

    .line 3
    invoke-interface {v1, p1}, Lcom/google/android/gms/common/internal/t$a;->a(Lcom/google/android/gms/common/api/q;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/l;->c(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/w0;->b:Lcom/google/android/gms/tasks/l;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/c;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/l;->b(Ljava/lang/Exception;)V

    return-void
.end method
