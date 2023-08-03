.class public abstract Lcom/google/common/util/concurrent/f;
.super Ljava/lang/Object;
.source "AbstractIdleService.java"

# interfaces
.implements Lcom/google/common/util/concurrent/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/f$b;,
        Lcom/google/common/util/concurrent/f$c;
    }
.end annotation

.annotation build Lh3/a;
.end annotation

.annotation build Lh3/c;
.end annotation


# instance fields
.field private final a:Lcom/google/common/base/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/i0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/common/util/concurrent/Service;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/common/util/concurrent/f$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/util/concurrent/f$c;-><init>(Lcom/google/common/util/concurrent/f;Lcom/google/common/util/concurrent/f$a;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/f;->a:Lcom/google/common/base/i0;

    .line 3
    new-instance v0, Lcom/google/common/util/concurrent/f$b;

    invoke-direct {v0, p0, v1}, Lcom/google/common/util/concurrent/f$b;-><init>(Lcom/google/common/util/concurrent/f;Lcom/google/common/util/concurrent/f$a;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/f;->b:Lcom/google/common/util/concurrent/Service;

    return-void
.end method

.method static synthetic j(Lcom/google/common/util/concurrent/f;)Lcom/google/common/base/i0;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/f;->a:Lcom/google/common/base/i0;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/common/util/concurrent/Service$b;Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/f;->b:Lcom/google/common/util/concurrent/Service;

    invoke-interface {v0, p1, p2}, Lcom/google/common/util/concurrent/Service;->a(Lcom/google/common/util/concurrent/Service$b;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final b(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/f;->b:Lcom/google/common/util/concurrent/Service;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/util/concurrent/Service;->b(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public final c(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/f;->b:Lcom/google/common/util/concurrent/Service;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/util/concurrent/Service;->c(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/f;->b:Lcom/google/common/util/concurrent/Service;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/Service;->d()V

    return-void
.end method

.method public final e()Lcom/google/common/util/concurrent/Service;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/f;->b:Lcom/google/common/util/concurrent/Service;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/Service;->e()Lcom/google/common/util/concurrent/Service;

    return-object p0
.end method

.method public final f()Lcom/google/common/util/concurrent/Service$State;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/f;->b:Lcom/google/common/util/concurrent/Service;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/Service;->f()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    return-object v0
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/f;->b:Lcom/google/common/util/concurrent/Service;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/Service;->g()V

    return-void
.end method

.method public final h()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/f;->b:Lcom/google/common/util/concurrent/Service;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/Service;->h()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lcom/google/common/util/concurrent/Service;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/f;->b:Lcom/google/common/util/concurrent/Service;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/Service;->i()Lcom/google/common/util/concurrent/Service;

    return-object p0
.end method

.method public final isRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/f;->b:Lcom/google/common/util/concurrent/Service;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/Service;->isRunning()Z

    move-result v0

    return v0
.end method

.method protected k()Ljava/util/concurrent/Executor;
    .locals 1

    new-instance v0, Lcom/google/common/util/concurrent/f$a;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/f$a;-><init>(Lcom/google/common/util/concurrent/f;)V

    return-object v0
.end method

.method protected l()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract m()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract n()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/f;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/f;->f()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
