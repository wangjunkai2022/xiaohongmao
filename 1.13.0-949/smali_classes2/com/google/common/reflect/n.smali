.class final Lcom/google/common/reflect/n;
.super Ljava/lang/Object;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/reflect/n$f;,
        Lcom/google/common/reflect/n$e;,
        Lcom/google/common/reflect/n$j;,
        Lcom/google/common/reflect/n$h;,
        Lcom/google/common/reflect/n$i;,
        Lcom/google/common/reflect/n$g;,
        Lcom/google/common/reflect/n$d;,
        Lcom/google/common/reflect/n$c;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/base/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/q<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/google/common/base/u;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/reflect/n$a;

    invoke-direct {v0}, Lcom/google/common/reflect/n$a;-><init>()V

    sput-object v0, Lcom/google/common/reflect/n;->a:Lcom/google/common/base/q;

    const-string v0, ", "

    .line 2
    invoke-static {v0}, Lcom/google/common/base/u;->p(Ljava/lang/String;)Lcom/google/common/base/u;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Lcom/google/common/base/u;->s(Ljava/lang/String;)Lcom/google/common/base/u;

    move-result-object v0

    sput-object v0, Lcom/google/common/reflect/n;->b:Lcom/google/common/base/u;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a([Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 0

    invoke-static {p0}, Lcom/google/common/reflect/n;->q([Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b([Ljava/lang/reflect/Type;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/reflect/n;->g([Ljava/lang/reflect/Type;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Ljava/util/Collection;)[Ljava/lang/reflect/Type;
    .locals 0

    invoke-static {p0}, Lcom/google/common/reflect/n;->s(Ljava/util/Collection;)[Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d()Lcom/google/common/base/q;
    .locals 1

    sget-object v0, Lcom/google/common/reflect/n;->a:Lcom/google/common/base/q;

    return-object v0
.end method

.method static synthetic e()Lcom/google/common/base/u;
    .locals 1

    sget-object v0, Lcom/google/common/reflect/n;->b:Lcom/google/common/base/u;

    return-object v0
.end method

.method static synthetic f(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 0

    invoke-static {p0}, Lcom/google/common/reflect/n;->h(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method private static g([Ljava/lang/reflect/Type;Ljava/lang/String;)V
    .locals 5

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 2
    instance-of v3, v2, Ljava/lang/Class;

    if-eqz v3, :cond_0

    .line 3
    check-cast v2, Ljava/lang/Class;

    .line 4
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    const-string v4, "Primitive type \'%s\' used as %s"

    invoke-static {v3, v4, v2, p1}, Lcom/google/common/base/a0;->y(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static h(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/lang/Iterable<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/base/c0;->m(Ljava/lang/Object;)Lcom/google/common/base/b0;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/c0;->q(Lcom/google/common/base/b0;)Lcom/google/common/base/b0;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/w2;->o(Ljava/lang/Iterable;Lcom/google/common/base/b0;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method static i(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method static j(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 4
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 3
    new-instance v1, Lcom/google/common/reflect/n$b;

    invoke-direct {v1, v0}, Lcom/google/common/reflect/n$b;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/common/reflect/m;->a([Ljava/lang/reflect/Type;)V

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Type;

    return-object p0
.end method

.method static k(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 5

    .line 1
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_3

    .line 2
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 3
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 4
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v4, "Wildcard cannot have more than one lower bounds."

    invoke-static {v1, v4}, Lcom/google/common/base/a0;->e(ZLjava/lang/Object;)V

    .line 5
    array-length v1, v0

    if-ne v1, v3, :cond_1

    .line 6
    aget-object p0, v0, v2

    invoke-static {p0}, Lcom/google/common/reflect/n;->k(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/reflect/n;->r(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 8
    array-length v0, p0

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    const-string v0, "Wildcard should have only one upper bound."

    invoke-static {v3, v0}, Lcom/google/common/base/a0;->e(ZLjava/lang/Object;)V

    .line 9
    aget-object p0, p0, v2

    invoke-static {p0}, Lcom/google/common/reflect/n;->k(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/reflect/n;->p(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object p0

    return-object p0

    .line 10
    :cond_3
    sget-object v0, Lcom/google/common/reflect/n$e;->e:Lcom/google/common/reflect/n$e;

    invoke-virtual {v0, p0}, Lcom/google/common/reflect/n$e;->b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method static varargs l(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Ljava/lang/reflect/GenericDeclaration;",
            ">(TD;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/TypeVariable<",
            "TD;>;"
        }
    .end annotation

    array-length v0, p2

    if-nez v0, :cond_0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/reflect/Type;

    const/4 v0, 0x0

    const-class v1, Ljava/lang/Object;

    aput-object v1, p2, v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/common/reflect/n;->o(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;

    move-result-object p0

    return-object p0
.end method

.method static varargs m(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/ParameterizedType;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/reflect/n$g;

    sget-object v1, Lcom/google/common/reflect/n$c;->c:Lcom/google/common/reflect/n$c;

    .line 2
    invoke-virtual {v1, p0}, Lcom/google/common/reflect/n$c;->b(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/google/common/reflect/n$g;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method static varargs n(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .locals 2
    .param p0    # Ljava/lang/reflect/Type;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/ParameterizedType;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    invoke-static {p1, p2}, Lcom/google/common/reflect/n;->m(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p2}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Owner type for unenclosed %s"

    invoke-static {v0, v1, p1}, Lcom/google/common/base/a0;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lcom/google/common/reflect/n$g;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/reflect/n$g;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method private static o(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Ljava/lang/reflect/GenericDeclaration;",
            ">(TD;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/TypeVariable<",
            "TD;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/reflect/n$h;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/reflect/n$h;-><init>(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)V

    .line 2
    const-class p0, Ljava/lang/reflect/TypeVariable;

    new-instance p1, Lcom/google/common/reflect/n$i;

    invoke-direct {p1, v0}, Lcom/google/common/reflect/n$i;-><init>(Lcom/google/common/reflect/n$h;)V

    .line 3
    invoke-static {p0, p1}, Lcom/google/common/reflect/h;->d(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/TypeVariable;

    return-object p0
.end method

.method static p(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
    .locals 4
    .annotation build Lh3/d;
    .end annotation

    new-instance v0, Lcom/google/common/reflect/n$j;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/reflect/Type;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/reflect/Type;

    aput-object p0, v3, v1

    invoke-direct {v0, v2, v3}, Lcom/google/common/reflect/n$j;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method private static q([Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 3
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    .line 2
    invoke-static {v2}, Lcom/google/common/reflect/n;->j(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3
    instance-of p0, v2, Ljava/lang/Class;

    if-eqz p0, :cond_0

    .line 4
    move-object p0, v2

    check-cast p0, Ljava/lang/Class;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 6
    :cond_0
    invoke-static {v2}, Lcom/google/common/reflect/n;->p(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method static r(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
    .locals 4
    .annotation build Lh3/d;
    .end annotation

    new-instance v0, Lcom/google/common/reflect/n$j;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    new-array p0, v1, [Ljava/lang/reflect/Type;

    const-class v1, Ljava/lang/Object;

    aput-object v1, p0, v3

    invoke-direct {v0, v2, p0}, Lcom/google/common/reflect/n$j;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method private static s(Ljava/util/Collection;)[Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/reflect/Type;",
            ">;)[",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/reflect/Type;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/reflect/Type;

    return-object p0
.end method

.method static t(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
