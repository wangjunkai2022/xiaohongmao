.class public Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;
.super Ljava/lang/Object;
.source "NullsConstantProvider.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/deser/l;
.implements Ljava/io/Serializable;


# static fields
.field private static final c:J = 0x1L

.field private static final d:Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;

.field private static final e:Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;


# instance fields
.field protected final a:Ljava/lang/Object;

.field protected final b:Lcom/fasterxml/jackson/databind/util/AccessPattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;->d:Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;->e:Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;->a:Ljava/lang/Object;

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lcom/fasterxml/jackson/databind/util/AccessPattern;->ALWAYS_NULL:Lcom/fasterxml/jackson/databind/util/AccessPattern;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/fasterxml/jackson/databind/util/AccessPattern;->CONSTANT:Lcom/fasterxml/jackson/databind/util/AccessPattern;

    :goto_0
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;->b:Lcom/fasterxml/jackson/databind/util/AccessPattern;

    return-void
.end method

.method public static forValue(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;
    .locals 1

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;->e:Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static isNuller(Lcom/fasterxml/jackson/databind/deser/l;)Z
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;->e:Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSkipper(Lcom/fasterxml/jackson/databind/deser/l;)Z
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;->d:Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static nuller()Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;->e:Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;

    return-object v0
.end method

.method public static skipper()Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;->d:Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;

    return-object v0
.end method


# virtual methods
.method public synthetic getAbsentValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lcom/fasterxml/jackson/databind/deser/k;->a(Lcom/fasterxml/jackson/databind/deser/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getNullAccessPattern()Lcom/fasterxml/jackson/databind/util/AccessPattern;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;->b:Lcom/fasterxml/jackson/databind/util/AccessPattern;

    return-object v0
.end method

.method public getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;->a:Ljava/lang/Object;

    return-object p1
.end method
