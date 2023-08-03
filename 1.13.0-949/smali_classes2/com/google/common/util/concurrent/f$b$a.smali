.class Lcom/google/common/util/concurrent/f$b$a;
.super Ljava/lang/Object;
.source "AbstractIdleService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/f$b;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/util/concurrent/f$b;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/f$b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/f$b$a;->a:Lcom/google/common/util/concurrent/f$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/f$b$a;->a:Lcom/google/common/util/concurrent/f$b;

    iget-object v0, v0, Lcom/google/common/util/concurrent/f$b;->p:Lcom/google/common/util/concurrent/f;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/f;->n()V

    .line 2
    iget-object v0, p0, Lcom/google/common/util/concurrent/f$b$a;->a:Lcom/google/common/util/concurrent/f$b;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/i;->v()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    iget-object v1, p0, Lcom/google/common/util/concurrent/f$b$a;->a:Lcom/google/common/util/concurrent/f$b;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/i;->u(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
