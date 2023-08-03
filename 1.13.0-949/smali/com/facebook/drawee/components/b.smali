.class Lcom/facebook/drawee/components/b;
.super Lcom/facebook/drawee/components/a;
.source "DeferredReleaserConcurrentImpl.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# instance fields
.field private final b:Ljava/lang/Object;

.field private final c:Landroid/os/Handler;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/drawee/components/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/drawee/components/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/facebook/drawee/components/a;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/components/b;->b:Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/facebook/drawee/components/b$a;

    invoke-direct {v0, p0}, Lcom/facebook/drawee/components/b$a;-><init>(Lcom/facebook/drawee/components/b;)V

    iput-object v0, p0, Lcom/facebook/drawee/components/b;->f:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/components/b;->d:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/components/b;->e:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/drawee/components/b;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic e(Lcom/facebook/drawee/components/b;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/facebook/drawee/components/b;->b:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic f(Lcom/facebook/drawee/components/b;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/facebook/drawee/components/b;->e:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic g(Lcom/facebook/drawee/components/b;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/facebook/drawee/components/b;->e:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic h(Lcom/facebook/drawee/components/b;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/facebook/drawee/components/b;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic i(Lcom/facebook/drawee/components/b;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/facebook/drawee/components/b;->d:Ljava/util/ArrayList;

    return-object p1
.end method


# virtual methods
.method public a(Lcom/facebook/drawee/components/a$a;)V
    .locals 2
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "releasable"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/components/b;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/facebook/drawee/components/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d(Lcom/facebook/drawee/components/a$a;)V
    .locals 2
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "releasable"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/drawee/components/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/facebook/drawee/components/a$a;->release()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/components/b;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/facebook/drawee/components/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/facebook/drawee/components/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Lcom/facebook/drawee/components/b;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 8
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/facebook/drawee/components/b;->c:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/drawee/components/b;->f:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
