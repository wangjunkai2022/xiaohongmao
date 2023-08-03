.class public final synthetic Lcom/google/mlkit/common/sdkinternal/e0;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/mlkit/common/sdkinternal/n;

.field public final synthetic b:Lcom/google/android/gms/tasks/a;

.field public final synthetic c:Lcom/google/android/gms/tasks/b;

.field public final synthetic d:Ljava/util/concurrent/Callable;

.field public final synthetic e:Lcom/google/android/gms/tasks/l;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mlkit/common/sdkinternal/n;Lcom/google/android/gms/tasks/a;Lcom/google/android/gms/tasks/b;Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/e0;->a:Lcom/google/mlkit/common/sdkinternal/n;

    iput-object p2, p0, Lcom/google/mlkit/common/sdkinternal/e0;->b:Lcom/google/android/gms/tasks/a;

    iput-object p3, p0, Lcom/google/mlkit/common/sdkinternal/e0;->c:Lcom/google/android/gms/tasks/b;

    iput-object p4, p0, Lcom/google/mlkit/common/sdkinternal/e0;->d:Ljava/util/concurrent/Callable;

    iput-object p5, p0, Lcom/google/mlkit/common/sdkinternal/e0;->e:Lcom/google/android/gms/tasks/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/e0;->a:Lcom/google/mlkit/common/sdkinternal/n;

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/e0;->b:Lcom/google/android/gms/tasks/a;

    iget-object v2, p0, Lcom/google/mlkit/common/sdkinternal/e0;->c:Lcom/google/android/gms/tasks/b;

    iget-object v3, p0, Lcom/google/mlkit/common/sdkinternal/e0;->d:Ljava/util/concurrent/Callable;

    iget-object v4, p0, Lcom/google/mlkit/common/sdkinternal/e0;->e:Lcom/google/android/gms/tasks/l;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/mlkit/common/sdkinternal/n;->h(Lcom/google/android/gms/tasks/a;Lcom/google/android/gms/tasks/b;Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/l;)V

    return-void
.end method
