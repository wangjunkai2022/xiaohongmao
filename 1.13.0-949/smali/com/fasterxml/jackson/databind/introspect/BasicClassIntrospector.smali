.class public Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;
.super Lcom/fasterxml/jackson/databind/introspect/l;
.source "BasicClassIntrospector.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x2L

.field private static final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected static final e:Lcom/fasterxml/jackson/databind/introspect/j;

.field protected static final f:Lcom/fasterxml/jackson/databind/introspect/j;

.field protected static final g:Lcom/fasterxml/jackson/databind/introspect/j;

.field protected static final h:Lcom/fasterxml/jackson/databind/introspect/j;

.field protected static final i:Lcom/fasterxml/jackson/databind/introspect/j;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Ljava/lang/String;

    const-class v1, Ljava/lang/Object;

    sput-object v1, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->b:Ljava/lang/Class;

    .line 2
    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->c:Ljava/lang/Class;

    .line 3
    const-class v2, Lcom/fasterxml/jackson/databind/e;

    sput-object v2, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->d:Ljava/lang/Class;

    .line 4
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/type/SimpleType;->constructUnsafe(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/SimpleType;

    move-result-object v2

    .line 5
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/introspect/d;->h(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object v0

    const/4 v3, 0x0

    .line 6
    invoke-static {v3, v2, v0}, Lcom/fasterxml/jackson/databind/introspect/j;->U(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/c;)Lcom/fasterxml/jackson/databind/introspect/j;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->e:Lcom/fasterxml/jackson/databind/introspect/j;

    .line 7
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/type/SimpleType;->constructUnsafe(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/SimpleType;

    move-result-object v2

    .line 8
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/introspect/d;->h(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object v0

    .line 9
    invoke-static {v3, v2, v0}, Lcom/fasterxml/jackson/databind/introspect/j;->U(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/c;)Lcom/fasterxml/jackson/databind/introspect/j;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->f:Lcom/fasterxml/jackson/databind/introspect/j;

    .line 10
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/type/SimpleType;->constructUnsafe(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/SimpleType;

    move-result-object v2

    .line 11
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/introspect/d;->h(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object v0

    .line 12
    invoke-static {v3, v2, v0}, Lcom/fasterxml/jackson/databind/introspect/j;->U(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/c;)Lcom/fasterxml/jackson/databind/introspect/j;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->g:Lcom/fasterxml/jackson/databind/introspect/j;

    .line 13
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/type/SimpleType;->constructUnsafe(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/SimpleType;

    move-result-object v2

    .line 14
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/introspect/d;->h(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object v0

    .line 15
    invoke-static {v3, v2, v0}, Lcom/fasterxml/jackson/databind/introspect/j;->U(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/c;)Lcom/fasterxml/jackson/databind/introspect/j;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->h:Lcom/fasterxml/jackson/databind/introspect/j;

    .line 16
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/type/SimpleType;->constructUnsafe(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/SimpleType;

    move-result-object v0

    .line 17
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/introspect/d;->h(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object v1

    .line 18
    invoke-static {v3, v0, v1}, Lcom/fasterxml/jackson/databind/introspect/j;->U(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/c;)Lcom/fasterxml/jackson/databind/introspect/j;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->i:Lcom/fasterxml/jackson/databind/introspect/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/l;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/introspect/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/j;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->c(Lcom/fasterxml/jackson/databind/JavaType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2, p1}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->d(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object v0

    .line 3
    invoke-static {p1, p2, v0}, Lcom/fasterxml/jackson/databind/introspect/j;->U(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/c;)Lcom/fasterxml/jackson/databind/introspect/j;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/introspect/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/j;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_0

    .line 4
    sget-object p1, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->g:Lcom/fasterxml/jackson/databind/introspect/j;

    return-object p1

    .line 5
    :cond_0
    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_1

    .line 6
    sget-object p1, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->h:Lcom/fasterxml/jackson/databind/introspect/j;

    return-object p1

    .line 7
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_8

    .line 8
    sget-object p1, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->f:Lcom/fasterxml/jackson/databind/introspect/j;

    return-object p1

    .line 9
    :cond_2
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/g;->Y(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 10
    sget-object p1, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->b:Ljava/lang/Class;

    if-ne v0, p1, :cond_3

    .line 11
    sget-object p1, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->i:Lcom/fasterxml/jackson/databind/introspect/j;

    return-object p1

    .line 12
    :cond_3
    sget-object p1, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->c:Ljava/lang/Class;

    if-ne v0, p1, :cond_4

    .line 13
    sget-object p1, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->e:Lcom/fasterxml/jackson/databind/introspect/j;

    return-object p1

    .line 14
    :cond_4
    const-class p1, Ljava/lang/Integer;

    if-ne v0, p1, :cond_5

    .line 15
    sget-object p1, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->g:Lcom/fasterxml/jackson/databind/introspect/j;

    return-object p1

    .line 16
    :cond_5
    const-class p1, Ljava/lang/Long;

    if-ne v0, p1, :cond_6

    .line 17
    sget-object p1, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->h:Lcom/fasterxml/jackson/databind/introspect/j;

    return-object p1

    .line 18
    :cond_6
    const-class p1, Ljava/lang/Boolean;

    if-ne v0, p1, :cond_8

    .line 19
    sget-object p1, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->f:Lcom/fasterxml/jackson/databind/introspect/j;

    return-object p1

    .line 20
    :cond_7
    sget-object v1, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->d:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 21
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/introspect/d;->h(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object v0

    .line 22
    invoke-static {p1, p2, v0}, Lcom/fasterxml/jackson/databind/introspect/j;->U(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/c;)Lcom/fasterxml/jackson/databind/introspect/j;

    move-result-object p1

    return-object p1

    :cond_8
    const/4 p1, 0x0

    return-object p1
.end method

.method protected c(Lcom/fasterxml/jackson/databind/JavaType;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->isArrayType()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->Y(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/util/Map;

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public copy()Lcom/fasterxml/jackson/databind/introspect/l;
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;-><init>()V

    return-object v0
.end method

.method protected d(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/introspect/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/introspect/l$a;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/c;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/d;->i(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/introspect/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/introspect/l$a;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/c;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/d;->m(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic forClassAnnotations(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->forClassAnnotations(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/introspect/j;

    move-result-object p1

    return-object p1
.end method

.method public forClassAnnotations(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/introspect/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/introspect/l$a;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/j;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->b(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/introspect/j;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->d(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object p3

    .line 4
    invoke-static {p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/j;->U(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/c;)Lcom/fasterxml/jackson/databind/introspect/j;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic forCreation(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->forCreation(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/introspect/j;

    move-result-object p1

    return-object p1
.end method

.method public forCreation(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/introspect/j;
    .locals 1

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->b(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/introspect/j;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->a(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/introspect/j;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->h(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;Z)Lcom/fasterxml/jackson/databind/introspect/q;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/introspect/j;->T(Lcom/fasterxml/jackson/databind/introspect/q;)Lcom/fasterxml/jackson/databind/introspect/j;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic forDeserialization(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->forDeserialization(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/introspect/j;

    move-result-object p1

    return-object p1
.end method

.method public forDeserialization(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/introspect/j;
    .locals 1

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->b(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/introspect/j;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->a(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/introspect/j;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->h(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;Z)Lcom/fasterxml/jackson/databind/introspect/q;

    move-result-object p1

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/introspect/j;->T(Lcom/fasterxml/jackson/databind/introspect/q;)Lcom/fasterxml/jackson/databind/introspect/j;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic forDeserializationWithBuilder(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/b;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->forDeserializationWithBuilder(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/introspect/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic forDeserializationWithBuilder(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->forDeserializationWithBuilder(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/introspect/j;

    move-result-object p1

    return-object p1
.end method

.method public forDeserializationWithBuilder(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/introspect/j;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->j(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;Lcom/fasterxml/jackson/databind/b;Z)Lcom/fasterxml/jackson/databind/introspect/q;

    move-result-object p1

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/introspect/j;->T(Lcom/fasterxml/jackson/databind/introspect/q;)Lcom/fasterxml/jackson/databind/introspect/j;

    move-result-object p1

    return-object p1
.end method

.method public forDeserializationWithBuilder(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/introspect/j;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->j(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;Lcom/fasterxml/jackson/databind/b;Z)Lcom/fasterxml/jackson/databind/introspect/q;

    move-result-object p1

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/introspect/j;->T(Lcom/fasterxml/jackson/databind/introspect/q;)Lcom/fasterxml/jackson/databind/introspect/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic forDirectClassAnnotations(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->forDirectClassAnnotations(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/introspect/j;

    move-result-object p1

    return-object p1
.end method

.method public forDirectClassAnnotations(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/introspect/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/introspect/l$a;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/j;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->b(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/introspect/j;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->e(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object p3

    .line 4
    invoke-static {p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/j;->U(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/c;)Lcom/fasterxml/jackson/databind/introspect/j;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic forSerialization(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->forSerialization(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/introspect/j;

    move-result-object p1

    return-object p1
.end method

.method public forSerialization(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/introspect/j;
    .locals 1

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->b(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/introspect/j;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->a(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/introspect/j;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->h(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;Z)Lcom/fasterxml/jackson/databind/introspect/q;

    move-result-object p1

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/introspect/j;->V(Lcom/fasterxml/jackson/databind/introspect/q;)Lcom/fasterxml/jackson/databind/introspect/j;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected h(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;Z)Lcom/fasterxml/jackson/databind/introspect/q;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/introspect/l$a;",
            "Z)",
            "Lcom/fasterxml/jackson/databind/introspect/q;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->d(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object v2

    .line 2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isRecordType()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAccessorNaming()Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy$Provider;

    move-result-object p3

    invoke-virtual {p3, p1, v2}, Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy$Provider;->forRecord(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/c;)Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy;

    move-result-object p3

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAccessorNaming()Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy$Provider;

    move-result-object p3

    invoke-virtual {p3, p1, v2}, Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy$Provider;->forPOJO(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/c;)Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy;

    move-result-object p3

    :goto_0
    move-object v5, p3

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p4

    .line 5
    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->l(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/c;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy;)Lcom/fasterxml/jackson/databind/introspect/q;

    move-result-object p1

    return-object p1
.end method

.method protected i(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;ZLjava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/q;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/introspect/l$a;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/q;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->d(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object v2

    .line 2
    new-instance p3, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;

    invoke-direct {p3}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;-><init>()V

    invoke-virtual {p3, p5}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->withSetterPrefix(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;

    move-result-object p3

    invoke-virtual {p3, p1, v2}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->forPOJO(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/c;)Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p4

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->l(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/c;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy;)Lcom/fasterxml/jackson/databind/introspect/q;

    move-result-object p1

    return-object p1
.end method

.method protected j(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;Lcom/fasterxml/jackson/databind/b;Z)Lcom/fasterxml/jackson/databind/introspect/q;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/introspect/l$a;",
            "Lcom/fasterxml/jackson/databind/b;",
            "Z)",
            "Lcom/fasterxml/jackson/databind/introspect/q;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->d(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;)Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object v2

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAccessorNaming()Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy$Provider;

    move-result-object p3

    .line 3
    invoke-virtual {p3, p1, v2, p4}, Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy$Provider;->forBuilder(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/c;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p5

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->l(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/c;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy;)Lcom/fasterxml/jackson/databind/introspect/q;

    move-result-object p1

    return-object p1
.end method

.method protected k(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;Z)Lcom/fasterxml/jackson/databind/introspect/q;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/introspect/l$a;",
            "Z)",
            "Lcom/fasterxml/jackson/databind/introspect/q;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;->j(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/l$a;Lcom/fasterxml/jackson/databind/b;Z)Lcom/fasterxml/jackson/databind/introspect/q;

    move-result-object p1

    return-object p1
.end method

.method protected l(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/c;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy;)Lcom/fasterxml/jackson/databind/introspect/q;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/c;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Z",
            "Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/q;"
        }
    .end annotation

    new-instance v6, Lcom/fasterxml/jackson/databind/introspect/q;

    move-object v0, v6

    move-object v1, p1

    move v2, p4

    move-object v3, p3

    move-object v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/q;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;ZLcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/c;Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy;)V

    return-object v6
.end method

.method protected m(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/c;Lcom/fasterxml/jackson/databind/JavaType;ZLjava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/q;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/c;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/q;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v6, Lcom/fasterxml/jackson/databind/introspect/q;

    move-object v0, v6

    move-object v1, p1

    move v2, p4

    move-object v3, p3

    move-object v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/q;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;ZLcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/c;Ljava/lang/String;)V

    return-object v6
.end method
