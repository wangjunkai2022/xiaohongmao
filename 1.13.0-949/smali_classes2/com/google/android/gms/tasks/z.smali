.class final Lcom/google/android/gms/tasks/z;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/tasks/g;
.implements Lcom/google/android/gms/tasks/f;
.implements Lcom/google/android/gms/tasks/d;
.implements Lcom/google/android/gms/tasks/k0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        "TContinuationResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/g<",
        "TTContinuationResult;>;",
        "Lcom/google/android/gms/tasks/f;",
        "Lcom/google/android/gms/tasks/d;",
        "Lcom/google/android/gms/tasks/k0;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/google/android/gms/tasks/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/c<",
            "TTResult;",
            "Lcom/google/android/gms/tasks/k<",
            "TTContinuationResult;>;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/tasks/q0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/q0<",
            "TTContinuationResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/c;Lcom/google/android/gms/tasks/q0;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/tasks/q0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/c<",
            "TTResult;",
            "Lcom/google/android/gms/tasks/k<",
            "TTContinuationResult;>;>;",
            "Lcom/google/android/gms/tasks/q0<",
            "TTContinuationResult;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tasks/z;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/tasks/z;->b:Lcom/google/android/gms/tasks/c;

    iput-object p3, p0, Lcom/google/android/gms/tasks/z;->c:Lcom/google/android/gms/tasks/q0;

    return-void
.end method

.method static bridge synthetic d(Lcom/google/android/gms/tasks/z;)Lcom/google/android/gms/tasks/c;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/z;->b:Lcom/google/android/gms/tasks/c;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/google/android/gms/tasks/z;)Lcom/google/android/gms/tasks/q0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/z;->c:Lcom/google/android/gms/tasks/q0;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/tasks/z;->c:Lcom/google/android/gms/tasks/q0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/q0;->y(Ljava/lang/Exception;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tasks/z;->c:Lcom/google/android/gms/tasks/q0;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/q0;->A()Z

    return-void
.end method

.method public final c(Lcom/google/android/gms/tasks/k;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/tasks/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/k<",
            "TTResult;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tasks/z;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/tasks/y;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/tasks/y;-><init>(Lcom/google/android/gms/tasks/z;Lcom/google/android/gms/tasks/k;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTContinuationResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tasks/z;->c:Lcom/google/android/gms/tasks/q0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/q0;->z(Ljava/lang/Object;)V

    return-void
.end method
