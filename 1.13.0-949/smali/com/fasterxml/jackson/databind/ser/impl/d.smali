.class public final Lcom/fasterxml/jackson/databind/ser/impl/d;
.super Ljava/lang/Object;
.source "ReadOnlyClassToSerializerMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/ser/impl/d$a;
    }
.end annotation


# instance fields
.field private final a:[Lcom/fasterxml/jackson/databind/ser/impl/d$a;

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/fasterxml/jackson/databind/util/v;",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/ser/impl/d;->a(I)I

    move-result v0

    .line 3
    iput v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/d;->b:I

    add-int/lit8 v1, v0, -0x1

    .line 4
    iput v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/d;->c:I

    .line 5
    new-array v0, v0, [Lcom/fasterxml/jackson/databind/ser/impl/d$a;

    .line 6
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/util/v;

    .line 8
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/util/v;->hashCode()I

    move-result v3

    iget v4, p0, Lcom/fasterxml/jackson/databind/ser/impl/d;->c:I

    and-int/2addr v3, v4

    .line 9
    new-instance v4, Lcom/fasterxml/jackson/databind/ser/impl/d$a;

    aget-object v5, v0, v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/g;

    invoke-direct {v4, v5, v2, v1}, Lcom/fasterxml/jackson/databind/ser/impl/d$a;-><init>(Lcom/fasterxml/jackson/databind/ser/impl/d$a;Lcom/fasterxml/jackson/databind/util/v;Lcom/fasterxml/jackson/databind/g;)V

    aput-object v4, v0, v3

    goto :goto_0

    .line 10
    :cond_0
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/d;->a:[Lcom/fasterxml/jackson/databind/ser/impl/d$a;

    return-void
.end method

.method private static final a(I)I
    .locals 1

    const/16 v0, 0x40

    if-gt p0, v0, :cond_0

    add-int/2addr p0, p0

    goto :goto_0

    :cond_0
    shr-int/lit8 v0, p0, 0x2

    add-int/2addr p0, v0

    :goto_0
    const/16 v0, 0x8

    :goto_1
    if-ge v0, p0, :cond_1

    add-int/2addr v0, v0

    goto :goto_1

    :cond_1
    return v0
.end method

.method public static b(Ljava/util/HashMap;)Lcom/fasterxml/jackson/databind/ser/impl/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/fasterxml/jackson/databind/util/v;",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lcom/fasterxml/jackson/databind/ser/impl/d;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/d;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/ser/impl/d;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public c()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/d;->b:I

    return v0
.end method

.method public d(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/d;->a:[Lcom/fasterxml/jackson/databind/ser/impl/d$a;

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/v;->h(Lcom/fasterxml/jackson/databind/JavaType;)I

    move-result v1

    iget v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/d;->c:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/d$a;->a(Lcom/fasterxml/jackson/databind/JavaType;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    iget-object p1, v0, Lcom/fasterxml/jackson/databind/ser/impl/d$a;->a:Lcom/fasterxml/jackson/databind/g;

    return-object p1

    .line 4
    :cond_1
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/impl/d$a;->b:Lcom/fasterxml/jackson/databind/ser/impl/d$a;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/d$a;->a(Lcom/fasterxml/jackson/databind/JavaType;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iget-object p1, v0, Lcom/fasterxml/jackson/databind/ser/impl/d$a;->a:Lcom/fasterxml/jackson/databind/g;

    return-object p1

    :cond_2
    return-object v1
.end method

.method public e(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/d;->a:[Lcom/fasterxml/jackson/databind/ser/impl/d$a;

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/v;->i(Ljava/lang/Class;)I

    move-result v1

    iget v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/d;->c:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/d$a;->b(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    iget-object p1, v0, Lcom/fasterxml/jackson/databind/ser/impl/d$a;->a:Lcom/fasterxml/jackson/databind/g;

    return-object p1

    .line 4
    :cond_1
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/impl/d$a;->b:Lcom/fasterxml/jackson/databind/ser/impl/d$a;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/d$a;->b(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iget-object p1, v0, Lcom/fasterxml/jackson/databind/ser/impl/d$a;->a:Lcom/fasterxml/jackson/databind/g;

    return-object p1

    :cond_2
    return-object v1
.end method

.method public f(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/d;->a:[Lcom/fasterxml/jackson/databind/ser/impl/d$a;

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/v;->j(Lcom/fasterxml/jackson/databind/JavaType;)I

    move-result v1

    iget v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/d;->c:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/d$a;->c(Lcom/fasterxml/jackson/databind/JavaType;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    iget-object p1, v0, Lcom/fasterxml/jackson/databind/ser/impl/d$a;->a:Lcom/fasterxml/jackson/databind/g;

    return-object p1

    .line 4
    :cond_1
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/impl/d$a;->b:Lcom/fasterxml/jackson/databind/ser/impl/d$a;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/d$a;->c(Lcom/fasterxml/jackson/databind/JavaType;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iget-object p1, v0, Lcom/fasterxml/jackson/databind/ser/impl/d$a;->a:Lcom/fasterxml/jackson/databind/g;

    return-object p1

    :cond_2
    return-object v1
.end method

.method public g(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/d;->a:[Lcom/fasterxml/jackson/databind/ser/impl/d$a;

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/v;->k(Ljava/lang/Class;)I

    move-result v1

    iget v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/d;->c:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/d$a;->d(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    iget-object p1, v0, Lcom/fasterxml/jackson/databind/ser/impl/d$a;->a:Lcom/fasterxml/jackson/databind/g;

    return-object p1

    .line 4
    :cond_1
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/impl/d$a;->b:Lcom/fasterxml/jackson/databind/ser/impl/d$a;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/d$a;->d(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iget-object p1, v0, Lcom/fasterxml/jackson/databind/ser/impl/d$a;->a:Lcom/fasterxml/jackson/databind/g;

    return-object p1

    :cond_2
    return-object v1
.end method
