.class public Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator;
.super Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Base;
.source "BasicPolymorphicTypeValidator.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;,
        Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$b;,
        Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$c;
    }
.end annotation


# static fields
.field private static final g:J = 0x1L


# instance fields
.field protected final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected final d:[Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$c;

.field protected final e:[Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$b;

.field protected final f:[Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$c;


# direct methods
.method protected constructor <init>(Ljava/util/Set;[Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$c;[Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$b;[Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;[",
            "Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$c;",
            "[",
            "Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$b;",
            "[",
            "Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Base;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator;->c:Ljava/util/Set;

    .line 3
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator;->d:[Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$c;

    .line 4
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator;->e:[Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$b;

    .line 5
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator;->f:[Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$c;

    return-void
.end method

.method public static builder()Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public validateBaseType(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator;->c:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object p1, Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;->DENIED:Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;

    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator;->d:[Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$c;

    if-eqz v0, :cond_2

    .line 6
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 7
    invoke-virtual {v3, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$c;->a(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    sget-object p1, Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;->ALLOWED:Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;

    return-object p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_2
    sget-object p1, Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;->INDETERMINATE:Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;

    return-object p1
.end method

.method public validateSubClassName(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/String;",
            ")",
            "Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator;->e:[Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$b;

    if-eqz p2, :cond_1

    .line 2
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 3
    invoke-virtual {v2, p1, p3}, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$b;->a(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    sget-object p1, Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;->ALLOWED:Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    sget-object p1, Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;->INDETERMINATE:Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;

    return-object p1
.end method

.method public validateSubType(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator;->f:[Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$c;

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p2

    .line 3
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator;->f:[Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$c;

    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p3, v1

    .line 4
    invoke-virtual {v2, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$c;->a(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    sget-object p1, Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;->ALLOWED:Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    sget-object p1, Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;->INDETERMINATE:Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator$Validity;

    return-object p1
.end method
