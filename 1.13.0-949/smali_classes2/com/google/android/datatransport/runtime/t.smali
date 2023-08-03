.class public Lcom/google/android/datatransport/runtime/t;
.super Ljava/lang/Object;
.source "TransportRuntime.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/s;


# annotations
.annotation runtime Lu7/f;
.end annotation


# static fields
.field private static volatile e:Lcom/google/android/datatransport/runtime/u;


# instance fields
.field private final a:Lcom/google/android/datatransport/runtime/time/a;

.field private final b:Lcom/google/android/datatransport/runtime/time/a;

.field private final c:Lcom/google/android/datatransport/runtime/scheduling/e;

.field private final d:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/google/android/datatransport/runtime/time/a;Lcom/google/android/datatransport/runtime/time/a;Lcom/google/android/datatransport/runtime/scheduling/e;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;)V
    .locals 0
    .param p1    # Lcom/google/android/datatransport/runtime/time/a;
        .annotation build Lcom/google/android/datatransport/runtime/time/h;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/datatransport/runtime/time/a;
        .annotation build Lcom/google/android/datatransport/runtime/time/b;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/t;->a:Lcom/google/android/datatransport/runtime/time/a;

    .line 3
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/t;->b:Lcom/google/android/datatransport/runtime/time/a;

    .line 4
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/t;->c:Lcom/google/android/datatransport/runtime/scheduling/e;

    .line 5
    iput-object p4, p0, Lcom/google/android/datatransport/runtime/t;->d:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;

    .line 6
    invoke-virtual {p5}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;->a()V

    return-void
.end method

.method private b(Lcom/google/android/datatransport/runtime/n;)Lcom/google/android/datatransport/runtime/i;
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/datatransport/runtime/i;->a()Lcom/google/android/datatransport/runtime/i$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/t;->a:Lcom/google/android/datatransport/runtime/time/a;

    .line 2
    invoke-interface {v1}, Lcom/google/android/datatransport/runtime/time/a;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/datatransport/runtime/i$a;->i(J)Lcom/google/android/datatransport/runtime/i$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/t;->b:Lcom/google/android/datatransport/runtime/time/a;

    .line 3
    invoke-interface {v1}, Lcom/google/android/datatransport/runtime/time/a;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/datatransport/runtime/i$a;->k(J)Lcom/google/android/datatransport/runtime/i$a;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/n;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/i$a;->j(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/i$a;

    move-result-object v0

    new-instance v1, Lcom/google/android/datatransport/runtime/h;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/n;->b()Lcom/google/android/datatransport/c;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/n;->d()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/datatransport/runtime/h;-><init>(Lcom/google/android/datatransport/c;[B)V

    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/i$a;->h(Lcom/google/android/datatransport/runtime/h;)Lcom/google/android/datatransport/runtime/i$a;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/n;->c()Lcom/google/android/datatransport/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/datatransport/d;->a()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/datatransport/runtime/i$a;->g(Ljava/lang/Integer;)Lcom/google/android/datatransport/runtime/i$a;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/i$a;->d()Lcom/google/android/datatransport/runtime/i;

    move-result-object p1

    return-object p1
.end method

.method public static c()Lcom/google/android/datatransport/runtime/t;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/datatransport/runtime/t;->e:Lcom/google/android/datatransport/runtime/u;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/u;->b()Lcom/google/android/datatransport/runtime/t;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static d(Lcom/google/android/datatransport/runtime/f;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/runtime/f;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/datatransport/c;",
            ">;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/android/datatransport/runtime/g;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/google/android/datatransport/runtime/g;

    .line 3
    invoke-interface {p0}, Lcom/google/android/datatransport/runtime/g;->a()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "proto"

    .line 4
    invoke-static {p0}, Lcom/google/android/datatransport/c;->b(Ljava/lang/String;)Lcom/google/android/datatransport/c;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/datatransport/runtime/t;->e:Lcom/google/android/datatransport/runtime/u;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/google/android/datatransport/runtime/t;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/android/datatransport/runtime/t;->e:Lcom/google/android/datatransport/runtime/u;

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, Lcom/google/android/datatransport/runtime/e;->d()Lcom/google/android/datatransport/runtime/u$a;

    move-result-object v1

    .line 5
    invoke-interface {v1, p0}, Lcom/google/android/datatransport/runtime/u$a;->a(Landroid/content/Context;)Lcom/google/android/datatransport/runtime/u$a;

    move-result-object p0

    .line 6
    invoke-interface {p0}, Lcom/google/android/datatransport/runtime/u$a;->build()Lcom/google/android/datatransport/runtime/u;

    move-result-object p0

    sput-object p0, Lcom/google/android/datatransport/runtime/t;->e:Lcom/google/android/datatransport/runtime/u;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method static i(Lcom/google/android/datatransport/runtime/u;Ljava/util/concurrent/Callable;)V
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->TESTS:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/runtime/u;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/datatransport/runtime/t;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/google/android/datatransport/runtime/t;->e:Lcom/google/android/datatransport/runtime/u;

    .line 3
    sput-object p0, Lcom/google/android/datatransport/runtime/t;->e:Lcom/google/android/datatransport/runtime/u;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 5
    :try_start_1
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    monitor-enter v0

    .line 7
    :try_start_2
    sput-object v1, Lcom/google/android/datatransport/runtime/t;->e:Lcom/google/android/datatransport/runtime/u;

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 9
    monitor-enter v0

    .line 10
    :try_start_3
    sput-object v1, Lcom/google/android/datatransport/runtime/t;->e:Lcom/google/android/datatransport/runtime/u;

    .line 11
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 12
    throw p0

    :catchall_2
    move-exception p0

    .line 13
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    .line 14
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p0
.end method


# virtual methods
.method public a(Lcom/google/android/datatransport/runtime/n;Lcom/google/android/datatransport/i;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/t;->c:Lcom/google/android/datatransport/runtime/scheduling/e;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/n;->f()Lcom/google/android/datatransport/runtime/o;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/n;->c()Lcom/google/android/datatransport/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/datatransport/d;->c()Lcom/google/android/datatransport/Priority;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/datatransport/runtime/o;->e(Lcom/google/android/datatransport/Priority;)Lcom/google/android/datatransport/runtime/o;

    move-result-object v1

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/datatransport/runtime/t;->b(Lcom/google/android/datatransport/runtime/n;)Lcom/google/android/datatransport/runtime/i;

    move-result-object p1

    .line 4
    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/e;->a(Lcom/google/android/datatransport/runtime/o;Lcom/google/android/datatransport/runtime/i;Lcom/google/android/datatransport/i;)V

    return-void
.end method

.method public e()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/t;->d:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;

    return-object v0
.end method

.method public g(Lcom/google/android/datatransport/runtime/f;)Lcom/google/android/datatransport/h;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/datatransport/runtime/p;

    .line 2
    invoke-static {p1}, Lcom/google/android/datatransport/runtime/t;->d(Lcom/google/android/datatransport/runtime/f;)Ljava/util/Set;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/google/android/datatransport/runtime/o;->a()Lcom/google/android/datatransport/runtime/o$a;

    move-result-object v2

    .line 4
    invoke-interface {p1}, Lcom/google/android/datatransport/runtime/f;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/datatransport/runtime/o$a;->b(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/o$a;

    move-result-object v2

    .line 5
    invoke-interface {p1}, Lcom/google/android/datatransport/runtime/f;->getExtras()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/datatransport/runtime/o$a;->c([B)Lcom/google/android/datatransport/runtime/o$a;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/o$a;->a()Lcom/google/android/datatransport/runtime/o;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Lcom/google/android/datatransport/runtime/p;-><init>(Ljava/util/Set;Lcom/google/android/datatransport/runtime/o;Lcom/google/android/datatransport/runtime/s;)V

    return-object v0
.end method

.method public h(Ljava/lang/String;)Lcom/google/android/datatransport/h;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/datatransport/runtime/p;

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Lcom/google/android/datatransport/runtime/t;->d(Lcom/google/android/datatransport/runtime/f;)Ljava/util/Set;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/google/android/datatransport/runtime/o;->a()Lcom/google/android/datatransport/runtime/o$a;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/datatransport/runtime/o$a;->b(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/o$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/o$a;->a()Lcom/google/android/datatransport/runtime/o;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Lcom/google/android/datatransport/runtime/p;-><init>(Ljava/util/Set;Lcom/google/android/datatransport/runtime/o;Lcom/google/android/datatransport/runtime/s;)V

    return-object v0
.end method
