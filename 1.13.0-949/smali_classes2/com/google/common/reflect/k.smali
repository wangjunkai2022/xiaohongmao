.class public final Lcom/google/common/reflect/k;
.super Ljava/lang/Object;
.source "TypeResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/reflect/k$d;,
        Lcom/google/common/reflect/k$e;,
        Lcom/google/common/reflect/k$b;,
        Lcom/google/common/reflect/k$c;
    }
.end annotation

.annotation build Lh3/a;
.end annotation


# instance fields
.field private final a:Lcom/google/common/reflect/k$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/google/common/reflect/k$c;

    invoke-direct {v0}, Lcom/google/common/reflect/k$c;-><init>()V

    iput-object v0, p0, Lcom/google/common/reflect/k;->a:Lcom/google/common/reflect/k$c;

    return-void
.end method

.method private constructor <init>(Lcom/google/common/reflect/k$c;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/google/common/reflect/k;->a:Lcom/google/common/reflect/k$c;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/reflect/k$c;Lcom/google/common/reflect/k$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/reflect/k;-><init>(Lcom/google/common/reflect/k$c;)V

    return-void
.end method

.method static synthetic a(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/common/reflect/k;->g(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    return-void
.end method

.method static synthetic b(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/reflect/k;->e(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/google/common/reflect/k;[Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/reflect/k;->k([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method static d(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/k;
    .locals 1

    new-instance v0, Lcom/google/common/reflect/k;

    invoke-direct {v0}, Lcom/google/common/reflect/k;-><init>()V

    invoke-static {p0}, Lcom/google/common/reflect/k$b;->g(Ljava/lang/reflect/Type;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/common/reflect/k;->o(Ljava/util/Map;)Lcom/google/common/reflect/k;

    move-result-object p0

    return-object p0
.end method

.method private static e(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static f(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/k;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/reflect/k$e;->b:Lcom/google/common/reflect/k$e;

    invoke-virtual {v0, p0}, Lcom/google/common/reflect/k$e;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 2
    new-instance v0, Lcom/google/common/reflect/k;

    invoke-direct {v0}, Lcom/google/common/reflect/k;-><init>()V

    invoke-static {p0}, Lcom/google/common/reflect/k$b;->g(Ljava/lang/reflect/Type;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/common/reflect/k;->o(Ljava/util/Map;)Lcom/google/common/reflect/k;

    move-result-object p0

    return-object p0
.end method

.method private static g(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/common/reflect/k$d;",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/google/common/reflect/k$a;

    invoke-direct {v0, p0, p2}, Lcom/google/common/reflect/k$a;-><init>(Ljava/util/Map;Ljava/lang/reflect/Type;)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/reflect/Type;

    const/4 p2, 0x0

    aput-object p1, p0, p2

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/common/reflect/m;->a([Ljava/lang/reflect/Type;)V

    return-void
.end method

.method private h(Ljava/lang/reflect/GenericArrayType;)Ljava/lang/reflect/Type;
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/common/reflect/k;->j(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/google/common/reflect/n;->k(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    return-object p1
.end method

.method private i(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/ParameterizedType;
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/common/reflect/k;->j(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/common/reflect/k;->j(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 4
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/google/common/reflect/k;->k([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object p1

    .line 6
    check-cast v1, Ljava/lang/Class;

    invoke-static {v0, v1, p1}, Lcom/google/common/reflect/n;->n(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p1

    return-object p1
.end method

.method private k([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .locals 3

    .line 1
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 3
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/google/common/reflect/k;->j(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private m(Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/WildcardType;
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    .line 3
    new-instance v1, Lcom/google/common/reflect/n$j;

    invoke-direct {p0, v0}, Lcom/google/common/reflect/k;->k([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/common/reflect/k;->k([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/google/common/reflect/n$j;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v1
.end method


# virtual methods
.method public j(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/common/reflect/k;->a:Lcom/google/common/reflect/k$c;

    check-cast p1, Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/k$c;->a(Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-direct {p0, p1}, Lcom/google/common/reflect/k;->i(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_2

    .line 7
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    invoke-direct {p0, p1}, Lcom/google/common/reflect/k;->h(Ljava/lang/reflect/GenericArrayType;)Ljava/lang/reflect/Type;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_3

    .line 9
    check-cast p1, Ljava/lang/reflect/WildcardType;

    invoke-direct {p0, p1}, Lcom/google/common/reflect/k;->m(Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/WildcardType;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method l([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 2
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/google/common/reflect/k;->j(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public n(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/google/common/reflect/k;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/common/collect/f3;->Y()Ljava/util/HashMap;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Type;

    invoke-static {p2}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/reflect/Type;

    invoke-static {v0, p1, p2}, Lcom/google/common/reflect/k;->g(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/common/reflect/k;->o(Ljava/util/Map;)Lcom/google/common/reflect/k;

    move-result-object p1

    return-object p1
.end method

.method o(Ljava/util/Map;)Lcom/google/common/reflect/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/common/reflect/k$d;",
            "+",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Lcom/google/common/reflect/k;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/reflect/k;

    iget-object v1, p0, Lcom/google/common/reflect/k;->a:Lcom/google/common/reflect/k$c;

    invoke-virtual {v1, p1}, Lcom/google/common/reflect/k$c;->c(Ljava/util/Map;)Lcom/google/common/reflect/k$c;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/common/reflect/k;-><init>(Lcom/google/common/reflect/k$c;)V

    return-object v0
.end method
