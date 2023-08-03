.class final Lcom/google/common/util/concurrent/f$b;
.super Lcom/google/common/util/concurrent/i;
.source "AbstractIdleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic p:Lcom/google/common/util/concurrent/f;


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/f$b;->p:Lcom/google/common/util/concurrent/f;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/i;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/f;Lcom/google/common/util/concurrent/f$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/f$b;-><init>(Lcom/google/common/util/concurrent/f;)V

    return-void
.end method


# virtual methods
.method protected final n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/f$b;->p:Lcom/google/common/util/concurrent/f;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/f;->k()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/f$b;->p:Lcom/google/common/util/concurrent/f;

    invoke-static {v1}, Lcom/google/common/util/concurrent/f;->j(Lcom/google/common/util/concurrent/f;)Lcom/google/common/base/i0;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/x0;->q(Ljava/util/concurrent/Executor;Lcom/google/common/base/i0;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/common/util/concurrent/f$b$a;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/f$b$a;-><init>(Lcom/google/common/util/concurrent/f$b;)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/f$b;->p:Lcom/google/common/util/concurrent/f;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/f;->k()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/f$b;->p:Lcom/google/common/util/concurrent/f;

    invoke-static {v1}, Lcom/google/common/util/concurrent/f;->j(Lcom/google/common/util/concurrent/f;)Lcom/google/common/base/i0;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/x0;->q(Ljava/util/concurrent/Executor;Lcom/google/common/base/i0;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/common/util/concurrent/f$b$b;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/f$b$b;-><init>(Lcom/google/common/util/concurrent/f$b;)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/f$b;->p:Lcom/google/common/util/concurrent/f;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/f;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
