.class public Lcom/google/mlkit/common/sdkinternal/c;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/common/sdkinternal/c$a;
    }
.end annotation

.annotation build Lu2/a;
.end annotation


# static fields
.field public static final d:I = 0x1
    .annotation build Lu2/a;
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/mlkit/common/sdkinternal/a$a;


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/mlkit/common/sdkinternal/a;Ljava/lang/Runnable;Lcom/google/android/gms/internal/mlkit_common/kb;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/common/sdkinternal/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mlkit/common/sdkinternal/c;->b:Ljava/lang/String;

    new-instance v0, Lcom/google/mlkit/common/sdkinternal/v;

    invoke-direct {v0, p0, p2, p5, p4}, Lcom/google/mlkit/common/sdkinternal/v;-><init>(Lcom/google/mlkit/common/sdkinternal/c;ILcom/google/android/gms/internal/mlkit_common/kb;Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {p3, p1, v0}, Lcom/google/mlkit/common/sdkinternal/a;->b(Ljava/lang/Object;Ljava/lang/Runnable;)Lcom/google/mlkit/common/sdkinternal/a$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/c;->c:Lcom/google/mlkit/common/sdkinternal/a$a;

    return-void
.end method


# virtual methods
.method final synthetic a(ILcom/google/android/gms/internal/mlkit_common/kb;Ljava/lang/Runnable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/mlkit/common/sdkinternal/c;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "%s has not been closed"

    .line 2
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MlKitCloseGuard"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/w7;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_common/w7;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/t7;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/t7;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_common/zzip;->zzb(I)Lcom/google/android/gms/internal/mlkit_common/zzip;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_common/t7;->b(Lcom/google/android/gms/internal/mlkit_common/zzip;)Lcom/google/android/gms/internal/mlkit_common/t7;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/t7;->c()Lcom/google/android/gms/internal/mlkit_common/v7;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/w7;->h(Lcom/google/android/gms/internal/mlkit_common/v7;)Lcom/google/android/gms/internal/mlkit_common/w7;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_common/nb;->f(Lcom/google/android/gms/internal/mlkit_common/w7;)Lcom/google/android/gms/internal/mlkit_common/ab;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zziu;->zzby:Lcom/google/android/gms/internal/mlkit_common/zziu;

    .line 6
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/mlkit_common/kb;->d(Lcom/google/android/gms/internal/mlkit_common/ab;Lcom/google/android/gms/internal/mlkit_common/zziu;)V

    .line 7
    :cond_0
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/c;->c:Lcom/google/mlkit/common/sdkinternal/a$a;

    .line 2
    invoke-interface {v0}, Lcom/google/mlkit/common/sdkinternal/a$a;->a()V

    return-void
.end method
