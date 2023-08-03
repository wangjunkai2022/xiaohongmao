.class abstract Lcom/google/common/util/concurrent/l;
.super Ljava/lang/Object;
.source "AggregateFutureState.java"


# annotations
.annotation build Lcom/google/j2objc/annotations/ReflectionSupport;
    value = .enum Lcom/google/j2objc/annotations/ReflectionSupport$Level;->FULL:Lcom/google/j2objc/annotations/ReflectionSupport$Level;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/l$d;,
        Lcom/google/common/util/concurrent/l$c;,
        Lcom/google/common/util/concurrent/l$b;
    }
.end annotation

.annotation build Lh3/b;
    emulated = true
.end annotation


# static fields
.field private static final c:Lcom/google/common/util/concurrent/l$b;

.field private static final d:Ljava/util/logging/Logger;


# instance fields
.field private volatile a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile b:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-class v0, Lcom/google/common/util/concurrent/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lcom/google/common/util/concurrent/l;->d:Ljava/util/logging/Logger;

    const/4 v1, 0x0

    .line 2
    :try_start_0
    new-instance v2, Lcom/google/common/util/concurrent/l$c;

    const-class v3, Ljava/util/Set;

    const-string v4, "a"

    .line 3
    invoke-static {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    const-string v4, "b"

    .line 4
    invoke-static {v0, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/google/common/util/concurrent/l$c;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    new-instance v2, Lcom/google/common/util/concurrent/l$d;

    invoke-direct {v2, v1}, Lcom/google/common/util/concurrent/l$d;-><init>(Lcom/google/common/util/concurrent/l$a;)V

    move-object v1, v0

    .line 6
    :goto_0
    sput-object v2, Lcom/google/common/util/concurrent/l;->c:Lcom/google/common/util/concurrent/l$b;

    if-eqz v1, :cond_0

    .line 7
    sget-object v0, Lcom/google/common/util/concurrent/l;->d:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "SafeAtomicHelper is broken!"

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/common/util/concurrent/l;->a:Ljava/util/Set;

    .line 3
    iput p1, p0, Lcom/google/common/util/concurrent/l;->b:I

    return-void
.end method

.method static synthetic a(Lcom/google/common/util/concurrent/l;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/l;->a:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic b(Lcom/google/common/util/concurrent/l;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/l;->a:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic c(Lcom/google/common/util/concurrent/l;)I
    .locals 0

    iget p0, p0, Lcom/google/common/util/concurrent/l;->b:I

    return p0
.end method

.method static synthetic d(Lcom/google/common/util/concurrent/l;)I
    .locals 2

    iget v0, p0, Lcom/google/common/util/concurrent/l;->b:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/common/util/concurrent/l;->b:I

    return v0
.end method


# virtual methods
.method abstract e(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation
.end method

.method final f()I
    .locals 1

    sget-object v0, Lcom/google/common/util/concurrent/l;->c:Lcom/google/common/util/concurrent/l$b;

    invoke-virtual {v0, p0}, Lcom/google/common/util/concurrent/l$b;->b(Lcom/google/common/util/concurrent/l;)I

    move-result v0

    return v0
.end method

.method final g()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/l;->a:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/common/collect/o4;->p()Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/l;->e(Ljava/util/Set;)V

    .line 4
    sget-object v1, Lcom/google/common/util/concurrent/l;->c:Lcom/google/common/util/concurrent/l$b;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Lcom/google/common/util/concurrent/l$b;->a(Lcom/google/common/util/concurrent/l;Ljava/util/Set;Ljava/util/Set;)V

    .line 5
    iget-object v0, p0, Lcom/google/common/util/concurrent/l;->a:Ljava/util/Set;

    :cond_0
    return-object v0
.end method
