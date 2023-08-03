.class public final Lcom/squareup/moshi/u;
.super Ljava/lang/Object;
.source "Moshi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/moshi/u$c;,
        Lcom/squareup/moshi/u$e;,
        Lcom/squareup/moshi/u$d;
    }
.end annotation


# static fields
.field static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/moshi/h$e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/moshi/h$e;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/squareup/moshi/u$e;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/squareup/moshi/h<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/squareup/moshi/u;->e:Ljava/util/List;

    .line 2
    sget-object v1, Lcom/squareup/moshi/x;->a:Lcom/squareup/moshi/h$e;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object v1, Lcom/squareup/moshi/e;->b:Lcom/squareup/moshi/h$e;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v1, Lcom/squareup/moshi/t;->c:Lcom/squareup/moshi/h$e;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v1, Lcom/squareup/moshi/b;->c:Lcom/squareup/moshi/h$e;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v1, Lcom/squareup/moshi/v;->a:Lcom/squareup/moshi/h$e;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v1, Lcom/squareup/moshi/d;->d:Lcom/squareup/moshi/h$e;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>(Lcom/squareup/moshi/u$c;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/squareup/moshi/u;->c:Ljava/lang/ThreadLocal;

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/moshi/u;->d:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/squareup/moshi/u$c;->a:Ljava/util/List;

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget-object v2, Lcom/squareup/moshi/u;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v1, v3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    iget-object v1, p1, Lcom/squareup/moshi/u$c;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/moshi/u;->a:Ljava/util/List;

    .line 9
    iget p1, p1, Lcom/squareup/moshi/u$c;->b:I

    iput p1, p0, Lcom/squareup/moshi/u;->b:I

    return-void
.end method

.method static synthetic a(Lcom/squareup/moshi/u;)Ljava/lang/ThreadLocal;
    .locals 0

    iget-object p0, p0, Lcom/squareup/moshi/u;->c:Ljava/lang/ThreadLocal;

    return-object p0
.end method

.method static synthetic b(Lcom/squareup/moshi/u;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/squareup/moshi/u;->d:Ljava/util/Map;

    return-object p0
.end method

.method private i(Ljava/lang/reflect/Type;Ljava/util/Set;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method static j(Ljava/lang/reflect/Type;Lcom/squareup/moshi/h;)Lcom/squareup/moshi/h$e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Lcom/squareup/moshi/h<",
            "TT;>;)",
            "Lcom/squareup/moshi/h$e;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lcom/squareup/moshi/u$a;

    invoke-direct {v0, p0, p1}, Lcom/squareup/moshi/u$a;-><init>(Ljava/lang/reflect/Type;Lcom/squareup/moshi/h;)V

    return-object v0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "jsonAdapter == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "type == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static k(Ljava/lang/reflect/Type;Ljava/lang/Class;Lcom/squareup/moshi/h;)Lcom/squareup/moshi/h$e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/squareup/moshi/h<",
            "TT;>;)",
            "Lcom/squareup/moshi/h$e;"
        }
    .end annotation

    if-eqz p0, :cond_4

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 1
    const-class v0, Lcom/squareup/moshi/j;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_0

    .line 3
    new-instance v0, Lcom/squareup/moshi/u$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/squareup/moshi/u$b;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Lcom/squareup/moshi/h;)V

    return-object v0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Use JsonAdapter.Factory for annotations with elements"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " does not have @JsonQualifier"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "jsonAdapter == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "annotation == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "type == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public c(Ljava/lang/Class;)Lcom/squareup/moshi/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/squareup/moshi/h<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lr7/c;
    .end annotation

    sget-object v0, Lcom/squareup/moshi/internal/c;->a:Ljava/util/Set;

    invoke-virtual {p0, p1, v0}, Lcom/squareup/moshi/u;->f(Ljava/lang/reflect/Type;Ljava/util/Set;)Lcom/squareup/moshi/h;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/reflect/Type;)Lcom/squareup/moshi/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/squareup/moshi/h<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lr7/c;
    .end annotation

    sget-object v0, Lcom/squareup/moshi/internal/c;->a:Ljava/util/Set;

    invoke-virtual {p0, p1, v0}, Lcom/squareup/moshi/u;->f(Ljava/lang/reflect/Type;Ljava/util/Set;)Lcom/squareup/moshi/h;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/squareup/moshi/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/squareup/moshi/h<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lr7/c;
    .end annotation

    const-string v0, "annotationType == null"

    .line 1
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/squareup/moshi/z;->d(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/squareup/moshi/u;->f(Ljava/lang/reflect/Type;Ljava/util/Set;)Lcom/squareup/moshi/h;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/reflect/Type;Ljava/util/Set;)Lcom/squareup/moshi/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/squareup/moshi/h<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lr7/c;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/squareup/moshi/u;->g(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/moshi/h;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/moshi/h;
    .locals 4
    .param p3    # Ljava/lang/String;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/squareup/moshi/h<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lr7/c;
    .end annotation

    const-string v0, "type == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "annotations == null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Lcom/squareup/moshi/internal/c;->b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p1}, Lcom/squareup/moshi/internal/c;->t(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/squareup/moshi/u;->i(Ljava/lang/reflect/Type;Ljava/util/Set;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/squareup/moshi/u;->d:Ljava/util/Map;

    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/squareup/moshi/u;->d:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/moshi/h;

    if-eqz v2, :cond_0

    .line 7
    monitor-exit v1

    return-object v2

    .line 8
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    iget-object v1, p0, Lcom/squareup/moshi/u;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/moshi/u$e;

    if-nez v1, :cond_1

    .line 10
    new-instance v1, Lcom/squareup/moshi/u$e;

    invoke-direct {v1, p0}, Lcom/squareup/moshi/u$e;-><init>(Lcom/squareup/moshi/u;)V

    .line 11
    iget-object v2, p0, Lcom/squareup/moshi/u;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 12
    :cond_1
    invoke-virtual {v1, p1, p3, v0}, Lcom/squareup/moshi/u$e;->d(Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/lang/Object;)Lcom/squareup/moshi/h;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 13
    invoke-virtual {v1, v0}, Lcom/squareup/moshi/u$e;->c(Z)V

    return-object p3

    .line 14
    :cond_2
    :try_start_1
    iget-object p3, p0, Lcom/squareup/moshi/u;->a:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_4

    .line 15
    iget-object v3, p0, Lcom/squareup/moshi/u;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/moshi/h$e;

    invoke-interface {v3, p1, p2, p0}, Lcom/squareup/moshi/h$e;->create(Ljava/lang/reflect/Type;Ljava/util/Set;Lcom/squareup/moshi/u;)Lcom/squareup/moshi/h;

    move-result-object v3

    if-nez v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {v1, v3}, Lcom/squareup/moshi/u$e;->a(Lcom/squareup/moshi/h;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 17
    invoke-virtual {v1, p1}, Lcom/squareup/moshi/u$e;->c(Z)V

    return-object v3

    .line 18
    :cond_4
    :try_start_2
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No JsonAdapter for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-static {p1, p2}, Lcom/squareup/moshi/internal/c;->y(Ljava/lang/reflect/Type;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 20
    :try_start_3
    invoke-virtual {v1, p1}, Lcom/squareup/moshi/u$e;->b(Ljava/lang/IllegalArgumentException;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 21
    :goto_1
    invoke-virtual {v1, v0}, Lcom/squareup/moshi/u$e;->c(Z)V

    .line 22
    throw p1

    :catchall_1
    move-exception p1

    .line 23
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public varargs h(Ljava/lang/reflect/Type;[Ljava/lang/Class;)Lcom/squareup/moshi/h;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/squareup/moshi/h<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lr7/c;
    .end annotation

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2
    aget-object p2, p2, v1

    invoke-virtual {p0, p1, p2}, Lcom/squareup/moshi/u;->e(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/squareup/moshi/h;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    array-length v2, p2

    invoke-direct {v0, v2}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 4
    array-length v2, p2

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p2, v1

    .line 5
    invoke-static {v3}, Lcom/squareup/moshi/z;->d(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/squareup/moshi/u;->f(Ljava/lang/reflect/Type;Ljava/util/Set;)Lcom/squareup/moshi/h;

    move-result-object p1

    return-object p1
.end method

.method public l()Lcom/squareup/moshi/u$c;
    .locals 4
    .annotation runtime Lr7/c;
    .end annotation

    .line 1
    new-instance v0, Lcom/squareup/moshi/u$c;

    invoke-direct {v0}, Lcom/squareup/moshi/u$c;-><init>()V

    .line 2
    iget v1, p0, Lcom/squareup/moshi/u;->b:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 3
    iget-object v3, p0, Lcom/squareup/moshi/u;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/moshi/h$e;

    invoke-virtual {v0, v3}, Lcom/squareup/moshi/u$c;->a(Lcom/squareup/moshi/h$e;)Lcom/squareup/moshi/u$c;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget v1, p0, Lcom/squareup/moshi/u;->b:I

    iget-object v2, p0, Lcom/squareup/moshi/u;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sget-object v3, Lcom/squareup/moshi/u;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v2, v3

    :goto_1
    if-ge v1, v2, :cond_1

    .line 5
    iget-object v3, p0, Lcom/squareup/moshi/u;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/moshi/h$e;

    invoke-virtual {v0, v3}, Lcom/squareup/moshi/u$c;->e(Lcom/squareup/moshi/h$e;)Lcom/squareup/moshi/u$c;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public m(Lcom/squareup/moshi/h$e;Ljava/lang/reflect/Type;Ljava/util/Set;)Lcom/squareup/moshi/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/moshi/h$e;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/squareup/moshi/h<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lr7/c;
    .end annotation

    const-string v0, "annotations == null"

    .line 1
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/squareup/moshi/internal/c;->b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-static {p2}, Lcom/squareup/moshi/internal/c;->t(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lcom/squareup/moshi/u;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 4
    iget-object p1, p0, Lcom/squareup/moshi/u;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_0
    if-ge v0, p1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/squareup/moshi/u;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/moshi/h$e;

    invoke-interface {v1, p2, p3, p0}, Lcom/squareup/moshi/h$e;->create(Ljava/lang/reflect/Type;Ljava/util/Set;Lcom/squareup/moshi/u;)Lcom/squareup/moshi/h;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No next JsonAdapter for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {p2, p3}, Lcom/squareup/moshi/internal/c;->y(Ljava/lang/reflect/Type;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to skip past unknown factory "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
