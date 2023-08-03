.class public abstract Lcom/google/common/util/concurrent/h;
.super Ljava/lang/Object;
.source "AbstractScheduledService.java"

# interfaces
.implements Lcom/google/common/util/concurrent/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/h$c;,
        Lcom/google/common/util/concurrent/h$e;,
        Lcom/google/common/util/concurrent/h$d;
    }
.end annotation

.annotation build Lh3/a;
.end annotation

.annotation build Lh3/c;
.end annotation


# static fields
.field private static final b:Ljava/util/logging/Logger;


# instance fields
.field private final a:Lcom/google/common/util/concurrent/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/common/util/concurrent/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/h;->b:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/common/util/concurrent/h$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/util/concurrent/h$e;-><init>(Lcom/google/common/util/concurrent/h;Lcom/google/common/util/concurrent/h$a;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/h;->a:Lcom/google/common/util/concurrent/i;

    return-void
.end method

.method static synthetic j()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lcom/google/common/util/concurrent/h;->b:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic k(Lcom/google/common/util/concurrent/h;)Lcom/google/common/util/concurrent/i;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/h;->a:Lcom/google/common/util/concurrent/i;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/common/util/concurrent/Service$b;Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/h;->a:Lcom/google/common/util/concurrent/i;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/util/concurrent/i;->a(Lcom/google/common/util/concurrent/Service$b;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final b(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/h;->a:Lcom/google/common/util/concurrent/i;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/common/util/concurrent/i;->b(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public final c(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/h;->a:Lcom/google/common/util/concurrent/i;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/common/util/concurrent/i;->c(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/h;->a:Lcom/google/common/util/concurrent/i;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/i;->d()V

    return-void
.end method

.method public final e()Lcom/google/common/util/concurrent/Service;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/h;->a:Lcom/google/common/util/concurrent/i;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/i;->e()Lcom/google/common/util/concurrent/Service;

    return-object p0
.end method

.method public final f()Lcom/google/common/util/concurrent/Service$State;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/h;->a:Lcom/google/common/util/concurrent/i;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/i;->f()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    return-object v0
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/h;->a:Lcom/google/common/util/concurrent/i;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/i;->g()V

    return-void
.end method

.method public final h()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/h;->a:Lcom/google/common/util/concurrent/i;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/i;->h()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lcom/google/common/util/concurrent/Service;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/h;->a:Lcom/google/common/util/concurrent/i;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/i;->i()Lcom/google/common/util/concurrent/Service;

    return-object p0
.end method

.method public final isRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/h;->a:Lcom/google/common/util/concurrent/i;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/i;->isRunning()Z

    move-result v0

    return v0
.end method

.method protected l()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/h$b;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/h$b;-><init>(Lcom/google/common/util/concurrent/h;)V

    .line 2
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/google/common/util/concurrent/h$a;

    invoke-direct {v1, p0, v0}, Lcom/google/common/util/concurrent/h$a;-><init>(Lcom/google/common/util/concurrent/h;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 4
    invoke-static {}, Lcom/google/common/util/concurrent/x0;->c()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 5
    invoke-virtual {p0, v1, v2}, Lcom/google/common/util/concurrent/h;->a(Lcom/google/common/util/concurrent/Service$b;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method protected abstract m()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract n()Lcom/google/common/util/concurrent/h$d;
.end method

.method protected o()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected p()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method protected q()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/h;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/h;->f()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
