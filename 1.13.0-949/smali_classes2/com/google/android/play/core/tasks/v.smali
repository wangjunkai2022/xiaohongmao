.class final Lcom/google/android/play/core/tasks/v;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/tasks/u;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:I

.field private final c:Lcom/google/android/play/core/tasks/r;

.field private d:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private e:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private f:Ljava/lang/Exception;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/google/android/play/core/tasks/r;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/tasks/v;->a:Ljava/lang/Object;

    iput p1, p0, Lcom/google/android/play/core/tasks/v;->b:I

    iput-object p2, p0, Lcom/google/android/play/core/tasks/v;->c:Lcom/google/android/play/core/tasks/r;

    return-void
.end method

.method private final b()V
    .locals 6
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/play/core/tasks/v;->d:I

    iget v1, p0, Lcom/google/android/play/core/tasks/v;->e:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/play/core/tasks/v;->b:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/play/core/tasks/v;->f:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/tasks/v;->c:Lcom/google/android/play/core/tasks/r;

    new-instance v1, Ljava/util/concurrent/ExecutionException;

    iget v2, p0, Lcom/google/android/play/core/tasks/v;->e:I

    iget v3, p0, Lcom/google/android/play/core/tasks/v;->b:I

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x36

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " out of "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " underlying tasks failed"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/play/core/tasks/v;->f:Ljava/lang/Exception;

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/r;->l(Ljava/lang/Exception;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/tasks/v;->c:Lcom/google/android/play/core/tasks/r;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/r;->m(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 2
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/tasks/v;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/play/core/tasks/v;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/play/core/tasks/v;->e:I

    iput-object p1, p0, Lcom/google/android/play/core/tasks/v;->f:Ljava/lang/Exception;

    invoke-direct {p0}, Lcom/google/android/play/core/tasks/v;->b()V

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/tasks/v;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget v0, p0, Lcom/google/android/play/core/tasks/v;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/play/core/tasks/v;->d:I

    invoke-direct {p0}, Lcom/google/android/play/core/tasks/v;->b()V

    .line 2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
