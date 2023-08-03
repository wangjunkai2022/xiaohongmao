.class public final Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;
.super Ljava/lang/Object;
.source "SerializerFactoryConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final d:J = 0x1L

.field protected static final e:[Lcom/fasterxml/jackson/databind/ser/l;

.field protected static final f:[Lcom/fasterxml/jackson/databind/ser/d;


# instance fields
.field protected final a:[Lcom/fasterxml/jackson/databind/ser/l;

.field protected final b:[Lcom/fasterxml/jackson/databind/ser/l;

.field protected final c:[Lcom/fasterxml/jackson/databind/ser/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/fasterxml/jackson/databind/ser/l;

    .line 1
    sput-object v1, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->e:[Lcom/fasterxml/jackson/databind/ser/l;

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/ser/d;

    .line 2
    sput-object v0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->f:[Lcom/fasterxml/jackson/databind/ser/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v0}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;-><init>([Lcom/fasterxml/jackson/databind/ser/l;[Lcom/fasterxml/jackson/databind/ser/l;[Lcom/fasterxml/jackson/databind/ser/d;)V

    return-void
.end method

.method protected constructor <init>([Lcom/fasterxml/jackson/databind/ser/l;[Lcom/fasterxml/jackson/databind/ser/l;[Lcom/fasterxml/jackson/databind/ser/d;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->e:[Lcom/fasterxml/jackson/databind/ser/l;

    :cond_0
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->a:[Lcom/fasterxml/jackson/databind/ser/l;

    if-nez p2, :cond_1

    .line 4
    sget-object p2, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->e:[Lcom/fasterxml/jackson/databind/ser/l;

    :cond_1
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->b:[Lcom/fasterxml/jackson/databind/ser/l;

    if-nez p3, :cond_2

    .line 5
    sget-object p3, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->f:[Lcom/fasterxml/jackson/databind/ser/d;

    :cond_2
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->c:[Lcom/fasterxml/jackson/databind/ser/d;

    return-void
.end method


# virtual methods
.method public hasKeySerializers()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->b:[Lcom/fasterxml/jackson/databind/ser/l;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSerializerModifiers()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->c:[Lcom/fasterxml/jackson/databind/ser/d;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSerializers()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->a:[Lcom/fasterxml/jackson/databind/ser/l;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keySerializers()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/fasterxml/jackson/databind/ser/l;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/util/c;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->b:[Lcom/fasterxml/jackson/databind/ser/l;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/util/c;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public serializerModifiers()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/fasterxml/jackson/databind/ser/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/util/c;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->c:[Lcom/fasterxml/jackson/databind/ser/d;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/util/c;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public serializers()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/fasterxml/jackson/databind/ser/l;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/util/c;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->a:[Lcom/fasterxml/jackson/databind/ser/l;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/util/c;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public withAdditionalKeySerializers(Lcom/fasterxml/jackson/databind/ser/l;)Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->b:[Lcom/fasterxml/jackson/databind/ser/l;

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/util/b;->j([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/fasterxml/jackson/databind/ser/l;

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->a:[Lcom/fasterxml/jackson/databind/ser/l;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->c:[Lcom/fasterxml/jackson/databind/ser/d;

    invoke-direct {v0, v1, p1, v2}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;-><init>([Lcom/fasterxml/jackson/databind/ser/l;[Lcom/fasterxml/jackson/databind/ser/l;[Lcom/fasterxml/jackson/databind/ser/d;)V

    return-object v0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot pass null Serializers"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withAdditionalSerializers(Lcom/fasterxml/jackson/databind/ser/l;)Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->a:[Lcom/fasterxml/jackson/databind/ser/l;

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/util/b;->j([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/fasterxml/jackson/databind/ser/l;

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->b:[Lcom/fasterxml/jackson/databind/ser/l;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->c:[Lcom/fasterxml/jackson/databind/ser/d;

    invoke-direct {v0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;-><init>([Lcom/fasterxml/jackson/databind/ser/l;[Lcom/fasterxml/jackson/databind/ser/l;[Lcom/fasterxml/jackson/databind/ser/d;)V

    return-object v0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot pass null Serializers"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withSerializerModifier(Lcom/fasterxml/jackson/databind/ser/d;)Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->c:[Lcom/fasterxml/jackson/databind/ser/d;

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/util/b;->j([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/fasterxml/jackson/databind/ser/d;

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->a:[Lcom/fasterxml/jackson/databind/ser/l;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->b:[Lcom/fasterxml/jackson/databind/ser/l;

    invoke-direct {v0, v1, v2, p1}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;-><init>([Lcom/fasterxml/jackson/databind/ser/l;[Lcom/fasterxml/jackson/databind/ser/l;[Lcom/fasterxml/jackson/databind/ser/d;)V

    return-object v0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot pass null modifier"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
