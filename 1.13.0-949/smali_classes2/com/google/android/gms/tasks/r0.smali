.class public final synthetic Lcom/google/android/gms/tasks/r0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/tasks/e;


# instance fields
.field public final synthetic a:Lz2/a;

.field public final synthetic b:Lcom/google/android/gms/tasks/l;

.field public final synthetic c:Lcom/google/android/gms/tasks/v;


# direct methods
.method public synthetic constructor <init>(Lz2/a;Lcom/google/android/gms/tasks/l;Lcom/google/android/gms/tasks/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tasks/r0;->a:Lz2/a;

    iput-object p2, p0, Lcom/google/android/gms/tasks/r0;->b:Lcom/google/android/gms/tasks/l;

    iput-object p3, p0, Lcom/google/android/gms/tasks/r0;->c:Lcom/google/android/gms/tasks/v;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/k;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/r0;->a:Lz2/a;

    iget-object v1, p0, Lcom/google/android/gms/tasks/r0;->b:Lcom/google/android/gms/tasks/l;

    iget-object v2, p0, Lcom/google/android/gms/tasks/r0;->c:Lcom/google/android/gms/tasks/v;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/k;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/k;->r()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/tasks/l;->e(Ljava/lang/Object;)Z

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/k;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/tasks/v;->c()V

    return-void

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/k;->q()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/tasks/l;->d(Ljava/lang/Exception;)Z

    return-void
.end method
