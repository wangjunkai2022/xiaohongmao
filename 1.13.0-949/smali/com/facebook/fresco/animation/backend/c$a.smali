.class Lcom/facebook/fresco/animation/backend/c$a;
.super Ljava/lang/Object;
.source "AnimationBackendDelegateWithInactivityCheck.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/animation/backend/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/fresco/animation/backend/c;


# direct methods
.method constructor <init>(Lcom/facebook/fresco/animation/backend/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/fresco/animation/backend/c$a;->a:Lcom/facebook/fresco/animation/backend/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/backend/c$a;->a:Lcom/facebook/fresco/animation/backend/c;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/facebook/fresco/animation/backend/c$a;->a:Lcom/facebook/fresco/animation/backend/c;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/fresco/animation/backend/c;->n(Lcom/facebook/fresco/animation/backend/c;Z)Z

    .line 3
    iget-object v1, p0, Lcom/facebook/fresco/animation/backend/c$a;->a:Lcom/facebook/fresco/animation/backend/c;

    invoke-static {v1}, Lcom/facebook/fresco/animation/backend/c;->o(Lcom/facebook/fresco/animation/backend/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/facebook/fresco/animation/backend/c$a;->a:Lcom/facebook/fresco/animation/backend/c;

    invoke-static {v1}, Lcom/facebook/fresco/animation/backend/c;->p(Lcom/facebook/fresco/animation/backend/c;)Lcom/facebook/fresco/animation/backend/c$b;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/facebook/fresco/animation/backend/c$a;->a:Lcom/facebook/fresco/animation/backend/c;

    invoke-static {v1}, Lcom/facebook/fresco/animation/backend/c;->p(Lcom/facebook/fresco/animation/backend/c;)Lcom/facebook/fresco/animation/backend/c$b;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/fresco/animation/backend/c$b;->i()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/facebook/fresco/animation/backend/c$a;->a:Lcom/facebook/fresco/animation/backend/c;

    invoke-static {v1}, Lcom/facebook/fresco/animation/backend/c;->q(Lcom/facebook/fresco/animation/backend/c;)V

    .line 7
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
