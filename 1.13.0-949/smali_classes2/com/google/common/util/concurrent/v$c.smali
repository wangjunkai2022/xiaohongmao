.class Lcom/google/common/util/concurrent/v$c;
.super Ljava/lang/Object;
.source "ExecutionSequencer.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/v;->c(Lcom/google/common/util/concurrent/m;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/util/concurrent/q0;

.field final synthetic b:Ljava/util/concurrent/Executor;

.field final synthetic c:Lcom/google/common/util/concurrent/v;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/v;Lcom/google/common/util/concurrent/q0;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/v$c;->c:Lcom/google/common/util/concurrent/v;

    iput-object p2, p0, Lcom/google/common/util/concurrent/v$c;->a:Lcom/google/common/util/concurrent/q0;

    iput-object p3, p0, Lcom/google/common/util/concurrent/v$c;->b:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/v$c;->a:Lcom/google/common/util/concurrent/q0;

    iget-object v1, p0, Lcom/google/common/util/concurrent/v$c;->b:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1, v1}, Lcom/google/common/util/concurrent/q0;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
