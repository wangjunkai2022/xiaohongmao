.class final Lcom/google/common/eventbus/d$c;
.super Lcom/google/common/eventbus/d;
.source "Dispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/eventbus/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/eventbus/d$c$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/google/common/eventbus/d$c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/common/eventbus/d;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/common/collect/v3;->f()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/eventbus/d$c;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/eventbus/d$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/common/eventbus/d$c;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;Ljava/util/Iterator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Iterator<",
            "Lcom/google/common/eventbus/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/common/eventbus/d$c;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/google/common/eventbus/d$c$a;

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/eventbus/g;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/google/common/eventbus/d$c$a;-><init>(Ljava/lang/Object;Lcom/google/common/eventbus/g;Lcom/google/common/eventbus/d$a;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    :goto_1
    iget-object p1, p0, Lcom/google/common/eventbus/d$c;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/eventbus/d$c$a;

    if-eqz p1, :cond_1

    .line 5
    invoke-static {p1}, Lcom/google/common/eventbus/d$c$a;->b(Lcom/google/common/eventbus/d$c$a;)Lcom/google/common/eventbus/g;

    move-result-object p2

    invoke-static {p1}, Lcom/google/common/eventbus/d$c$a;->a(Lcom/google/common/eventbus/d$c$a;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/common/eventbus/g;->e(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method
