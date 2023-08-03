.class public Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
.super Ljava/lang/Object;
.source "DeserializerFactoryConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final f:J = 0x1L

.field protected static final g:[Lcom/fasterxml/jackson/databind/deser/i;

.field protected static final h:[Lcom/fasterxml/jackson/databind/deser/b;

.field protected static final i:[Lcom/fasterxml/jackson/databind/a;

.field protected static final j:[Lcom/fasterxml/jackson/databind/deser/o;

.field protected static final k:[Lcom/fasterxml/jackson/databind/deser/j;


# instance fields
.field protected final a:[Lcom/fasterxml/jackson/databind/deser/i;

.field protected final b:[Lcom/fasterxml/jackson/databind/deser/j;

.field protected final c:[Lcom/fasterxml/jackson/databind/deser/b;

.field protected final d:[Lcom/fasterxml/jackson/databind/a;

.field protected final e:[Lcom/fasterxml/jackson/databind/deser/o;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/fasterxml/jackson/databind/deser/i;

    .line 1
    sput-object v1, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->g:[Lcom/fasterxml/jackson/databind/deser/i;

    new-array v1, v0, [Lcom/fasterxml/jackson/databind/deser/b;

    .line 2
    sput-object v1, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->h:[Lcom/fasterxml/jackson/databind/deser/b;

    new-array v1, v0, [Lcom/fasterxml/jackson/databind/a;

    .line 3
    sput-object v1, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->i:[Lcom/fasterxml/jackson/databind/a;

    new-array v1, v0, [Lcom/fasterxml/jackson/databind/deser/o;

    .line 4
    sput-object v1, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->j:[Lcom/fasterxml/jackson/databind/deser/o;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/fasterxml/jackson/databind/deser/j;

    .line 5
    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;

    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;-><init>()V

    aput-object v2, v1, v0

    sput-object v1, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->k:[Lcom/fasterxml/jackson/databind/deser/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;-><init>([Lcom/fasterxml/jackson/databind/deser/i;[Lcom/fasterxml/jackson/databind/deser/j;[Lcom/fasterxml/jackson/databind/deser/b;[Lcom/fasterxml/jackson/databind/a;[Lcom/fasterxml/jackson/databind/deser/o;)V

    return-void
.end method

.method protected constructor <init>([Lcom/fasterxml/jackson/databind/deser/i;[Lcom/fasterxml/jackson/databind/deser/j;[Lcom/fasterxml/jackson/databind/deser/b;[Lcom/fasterxml/jackson/databind/a;[Lcom/fasterxml/jackson/databind/deser/o;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->g:[Lcom/fasterxml/jackson/databind/deser/i;

    :cond_0
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->a:[Lcom/fasterxml/jackson/databind/deser/i;

    if-nez p2, :cond_1

    .line 4
    sget-object p2, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->k:[Lcom/fasterxml/jackson/databind/deser/j;

    :cond_1
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->b:[Lcom/fasterxml/jackson/databind/deser/j;

    if-nez p3, :cond_2

    .line 5
    sget-object p3, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->h:[Lcom/fasterxml/jackson/databind/deser/b;

    :cond_2
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->c:[Lcom/fasterxml/jackson/databind/deser/b;

    if-nez p4, :cond_3

    .line 6
    sget-object p4, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->i:[Lcom/fasterxml/jackson/databind/a;

    :cond_3
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->d:[Lcom/fasterxml/jackson/databind/a;

    if-nez p5, :cond_4

    .line 7
    sget-object p5, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->j:[Lcom/fasterxml/jackson/databind/deser/o;

    :cond_4
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->e:[Lcom/fasterxml/jackson/databind/deser/o;

    return-void
.end method


# virtual methods
.method public abstractTypeResolvers()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/fasterxml/jackson/databind/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/util/c;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->d:[Lcom/fasterxml/jackson/databind/a;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/util/c;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public deserializerModifiers()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/fasterxml/jackson/databind/deser/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/util/c;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->c:[Lcom/fasterxml/jackson/databind/deser/b;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/util/c;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public deserializers()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/fasterxml/jackson/databind/deser/i;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/util/c;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->a:[Lcom/fasterxml/jackson/databind/deser/i;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/util/c;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public hasAbstractTypeResolvers()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->d:[Lcom/fasterxml/jackson/databind/a;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeserializerModifiers()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->c:[Lcom/fasterxml/jackson/databind/deser/b;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeserializers()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->a:[Lcom/fasterxml/jackson/databind/deser/i;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasKeyDeserializers()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->b:[Lcom/fasterxml/jackson/databind/deser/j;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasValueInstantiators()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->e:[Lcom/fasterxml/jackson/databind/deser/o;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keyDeserializers()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/fasterxml/jackson/databind/deser/j;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/util/c;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->b:[Lcom/fasterxml/jackson/databind/deser/j;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/util/c;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public valueInstantiators()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/fasterxml/jackson/databind/deser/o;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/util/c;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->e:[Lcom/fasterxml/jackson/databind/deser/o;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/util/c;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public withAbstractTypeResolver(Lcom/fasterxml/jackson/databind/a;)Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
    .locals 6

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->d:[Lcom/fasterxml/jackson/databind/a;

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/util/b;->j([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, [Lcom/fasterxml/jackson/databind/a;

    .line 2
    new-instance p1, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->a:[Lcom/fasterxml/jackson/databind/deser/i;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->b:[Lcom/fasterxml/jackson/databind/deser/j;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->c:[Lcom/fasterxml/jackson/databind/deser/b;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->e:[Lcom/fasterxml/jackson/databind/deser/o;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;-><init>([Lcom/fasterxml/jackson/databind/deser/i;[Lcom/fasterxml/jackson/databind/deser/j;[Lcom/fasterxml/jackson/databind/deser/b;[Lcom/fasterxml/jackson/databind/a;[Lcom/fasterxml/jackson/databind/deser/o;)V

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot pass null resolver"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withAdditionalDeserializers(Lcom/fasterxml/jackson/databind/deser/i;)Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
    .locals 6

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->a:[Lcom/fasterxml/jackson/databind/deser/i;

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/util/b;->j([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, [Lcom/fasterxml/jackson/databind/deser/i;

    .line 2
    new-instance p1, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->b:[Lcom/fasterxml/jackson/databind/deser/j;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->c:[Lcom/fasterxml/jackson/databind/deser/b;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->d:[Lcom/fasterxml/jackson/databind/a;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->e:[Lcom/fasterxml/jackson/databind/deser/o;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;-><init>([Lcom/fasterxml/jackson/databind/deser/i;[Lcom/fasterxml/jackson/databind/deser/j;[Lcom/fasterxml/jackson/databind/deser/b;[Lcom/fasterxml/jackson/databind/a;[Lcom/fasterxml/jackson/databind/deser/o;)V

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot pass null Deserializers"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withAdditionalKeyDeserializers(Lcom/fasterxml/jackson/databind/deser/j;)Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
    .locals 6

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->b:[Lcom/fasterxml/jackson/databind/deser/j;

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/util/b;->j([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, [Lcom/fasterxml/jackson/databind/deser/j;

    .line 2
    new-instance p1, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->a:[Lcom/fasterxml/jackson/databind/deser/i;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->c:[Lcom/fasterxml/jackson/databind/deser/b;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->d:[Lcom/fasterxml/jackson/databind/a;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->e:[Lcom/fasterxml/jackson/databind/deser/o;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;-><init>([Lcom/fasterxml/jackson/databind/deser/i;[Lcom/fasterxml/jackson/databind/deser/j;[Lcom/fasterxml/jackson/databind/deser/b;[Lcom/fasterxml/jackson/databind/a;[Lcom/fasterxml/jackson/databind/deser/o;)V

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot pass null KeyDeserializers"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withDeserializerModifier(Lcom/fasterxml/jackson/databind/deser/b;)Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
    .locals 6

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->c:[Lcom/fasterxml/jackson/databind/deser/b;

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/util/b;->j([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, [Lcom/fasterxml/jackson/databind/deser/b;

    .line 2
    new-instance p1, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->a:[Lcom/fasterxml/jackson/databind/deser/i;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->b:[Lcom/fasterxml/jackson/databind/deser/j;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->d:[Lcom/fasterxml/jackson/databind/a;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->e:[Lcom/fasterxml/jackson/databind/deser/o;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;-><init>([Lcom/fasterxml/jackson/databind/deser/i;[Lcom/fasterxml/jackson/databind/deser/j;[Lcom/fasterxml/jackson/databind/deser/b;[Lcom/fasterxml/jackson/databind/a;[Lcom/fasterxml/jackson/databind/deser/o;)V

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot pass null modifier"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withValueInstantiators(Lcom/fasterxml/jackson/databind/deser/o;)Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
    .locals 6

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->e:[Lcom/fasterxml/jackson/databind/deser/o;

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/util/b;->j([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, [Lcom/fasterxml/jackson/databind/deser/o;

    .line 2
    new-instance p1, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->a:[Lcom/fasterxml/jackson/databind/deser/i;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->b:[Lcom/fasterxml/jackson/databind/deser/j;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->c:[Lcom/fasterxml/jackson/databind/deser/b;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->d:[Lcom/fasterxml/jackson/databind/a;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;-><init>([Lcom/fasterxml/jackson/databind/deser/i;[Lcom/fasterxml/jackson/databind/deser/j;[Lcom/fasterxml/jackson/databind/deser/b;[Lcom/fasterxml/jackson/databind/a;[Lcom/fasterxml/jackson/databind/deser/o;)V

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot pass null resolver"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
