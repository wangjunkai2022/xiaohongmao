.class public Lcom/google/common/util/concurrent/CycleDetectingLockFactory;
.super Ljava/lang/Object;
.source "CycleDetectingLockFactory.java"


# annotations
.annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$f;,
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$d;,
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;,
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$c;,
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;,
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$b;,
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;,
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;,
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$j;,
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;,
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$i;
    }
.end annotation

.annotation build Lh3/a;
.end annotation

.annotation build Lh3/c;
.end annotation


# static fields
.field private static final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Enum;",
            ">;",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Enum;",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/logging/Logger;

.field private static final d:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/d3;

    invoke-direct {v0}, Lcom/google/common/collect/d3;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/d3;->l()Lcom/google/common/collect/d3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/d3;->i()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    const-class v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->c:Ljava/util/logging/Logger;

    .line 3
    new-instance v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$a;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$a;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->d:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$i;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$i;

    iput-object p1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->a:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$i;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$i;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$i;)V

    return-void
.end method

.method private a(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$b;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3
    invoke-interface {p1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$b;->a()Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;

    move-result-object p1

    .line 4
    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->a:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$i;

    invoke-virtual {p1, v1, v0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;->b(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$i;Ljava/util/List;)V

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static synthetic b()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->c:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic c(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->a(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$b;)V

    return-void
.end method

.method static synthetic d(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$b;)V
    .locals 0

    invoke-static {p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->h(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$b;)V

    return-void
.end method

.method static e(Ljava/lang/Class;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/Map<",
            "TE;",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;",
            ">;"
        }
    .end annotation

    .annotation build Lh3/d;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/collect/f3;->W(Ljava/lang/Class;)Ljava/util/EnumMap;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Enum;

    .line 3
    array-length v1, p0

    .line 4
    invoke-static {v1}, Lcom/google/common/collect/b3;->u(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 5
    array-length v3, p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, p0, v5

    .line 6
    new-instance v7, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;

    invoke-static {v6}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->f(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {v0, v6, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_1
    if-ge p0, v1, :cond_1

    .line 9
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;

    sget-object v5, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->THROW:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    invoke-virtual {v2, v4, p0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;->b(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$i;Ljava/util/List;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 p0, v1, -0x1

    if-ge v4, p0, :cond_2

    .line 10
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;

    sget-object v3, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->DISABLED:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;->b(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$i;Ljava/util/List;)V

    goto :goto_2

    .line 11
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static f(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static g(Ljava/lang/Class;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Enum;",
            ">;)",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Enum;",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->e(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    .line 3
    invoke-interface {v0, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 4
    invoke-static {p0, v1}, Lcom/google/common/base/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method private static h(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$b;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$b;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3
    invoke-interface {p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$b;->a()Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;

    move-result-object p0

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static i(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$i;)Lcom/google/common/util/concurrent/CycleDetectingLockFactory;
    .locals 1

    new-instance v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$i;)V

    return-object v0
.end method

.method public static j(Ljava/lang/Class;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$i;)Lcom/google/common/util/concurrent/CycleDetectingLockFactory$j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$i;",
            ")",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$j<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->g(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p0

    .line 4
    new-instance v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$j;

    invoke-direct {v0, p1, p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$j;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$i;Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public k(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->l(Ljava/lang/String;Z)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/lang/String;Z)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->a:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$i;

    sget-object v1, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->DISABLED:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    if-ne v0, v1, :cond_0

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1, p2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$c;

    new-instance v1, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;

    invoke-direct {v1, p1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$c;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;ZLcom/google/common/util/concurrent/CycleDetectingLockFactory$a;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public m(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->n(Ljava/lang/String;Z)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object p1

    return-object p1
.end method

.method public n(Ljava/lang/String;Z)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->a:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$i;

    sget-object v1, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->DISABLED:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    if-ne v0, v1, :cond_0

    new-instance p1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {p1, p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;

    new-instance v1, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;

    invoke-direct {v1, p1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;ZLcom/google/common/util/concurrent/CycleDetectingLockFactory$a;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
