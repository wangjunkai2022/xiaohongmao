.class final Lcom/google/common/util/concurrent/h$e;
.super Lcom/google/common/util/concurrent/i;
.source "AbstractScheduledService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/h$e$d;
    }
.end annotation


# instance fields
.field private volatile p:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private volatile q:Ljava/util/concurrent/ScheduledExecutorService;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private final r:Ljava/util/concurrent/locks/ReentrantLock;

.field private final s:Ljava/lang/Runnable;

.field final synthetic t:Lcom/google/common/util/concurrent/h;


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/h$e;->t:Lcom/google/common/util/concurrent/h;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/i;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/h$e;->r:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    new-instance p1, Lcom/google/common/util/concurrent/h$e$d;

    invoke-direct {p1, p0}, Lcom/google/common/util/concurrent/h$e$d;-><init>(Lcom/google/common/util/concurrent/h$e;)V

    iput-object p1, p0, Lcom/google/common/util/concurrent/h$e;->s:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/h;Lcom/google/common/util/concurrent/h$a;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/h$e;-><init>(Lcom/google/common/util/concurrent/h;)V

    return-void
.end method

.method static synthetic A(Lcom/google/common/util/concurrent/h$e;)Ljava/util/concurrent/Future;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/h$e;->p:Ljava/util/concurrent/Future;

    return-object p0
.end method

.method static synthetic B(Lcom/google/common/util/concurrent/h$e;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/h$e;->p:Ljava/util/concurrent/Future;

    return-object p1
.end method

.method static synthetic C(Lcom/google/common/util/concurrent/h$e;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/h$e;->q:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic D(Lcom/google/common/util/concurrent/h$e;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/h$e;->s:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic z(Lcom/google/common/util/concurrent/h$e;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/h$e;->r:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method


# virtual methods
.method protected final n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/h$e;->t:Lcom/google/common/util/concurrent/h;

    .line 2
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/h;->l()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/common/util/concurrent/h$e$a;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/h$e$a;-><init>(Lcom/google/common/util/concurrent/h$e;)V

    .line 3
    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/x0;->s(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/common/base/i0;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/h$e;->q:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    iget-object v0, p0, Lcom/google/common/util/concurrent/h$e;->q:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/common/util/concurrent/h$e$b;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/h$e$b;-><init>(Lcom/google/common/util/concurrent/h$e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/h$e;->p:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 2
    iget-object v0, p0, Lcom/google/common/util/concurrent/h$e;->q:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/common/util/concurrent/h$e$c;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/h$e$c;-><init>(Lcom/google/common/util/concurrent/h$e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/h$e;->t:Lcom/google/common/util/concurrent/h;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/h;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
