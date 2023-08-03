.class public abstract Lcom/fasterxml/jackson/databind/deser/impl/f;
.super Ljava/lang/Object;
.source "JavaUtilCollectionsDeserializers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/impl/f$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x1

.field private static final b:I = 0x2

.field private static final c:I = 0x3

.field private static final d:I = 0x4

.field private static final e:I = 0x5

.field private static final f:I = 0x6

.field private static final g:I = 0x7

.field private static final h:I = 0x8

.field private static final i:I = 0x9

.field private static final j:I = 0xa

.field public static final k:I = 0xb

.field private static final l:Ljava/lang/String; = "java.util.Collections$"

.field private static final m:Ljava/lang/String; = "java.util.Arrays$"

.field private static final n:Ljava/lang/String; = "java.util.ImmutableCollections$"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "Singleton"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "Synchronized"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "Unmodifiable"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "java.util.Arrays$"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "java.util.ImmutableCollections$"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "java.util.Collections$"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static g(ILcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/impl/f$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/deser/impl/f$a;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/f$a;

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/JavaType;->findSuperType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/f$a;-><init>(ILcom/fasterxml/jackson/databind/JavaType;)V

    return-object v0
.end method

.method public static h(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "java.util."

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/deser/impl/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x5

    const-string v4, "Set"

    const-string v5, "List"

    if-eqz v0, :cond_9

    .line 4
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/deser/impl/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 5
    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    const-class p0, Ljava/util/Set;

    invoke-static {v2, p1, p0}, Lcom/fasterxml/jackson/databind/deser/impl/f;->g(ILcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/impl/f$a;

    move-result-object p0

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 8
    const-class p0, Ljava/util/List;

    invoke-static {v3, p1, p0}, Lcom/fasterxml/jackson/databind/deser/impl/f;->g(ILcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/impl/f$a;

    move-result-object p0

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/deser/impl/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 10
    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x1

    .line 11
    const-class v0, Ljava/util/Set;

    invoke-static {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/f;->g(ILcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/impl/f$a;

    move-result-object p0

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x2

    .line 13
    const-class v0, Ljava/util/List;

    invoke-static {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/f;->g(ILcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/impl/f$a;

    move-result-object p0

    goto :goto_0

    .line 14
    :cond_4
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/deser/impl/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 15
    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p0, 0x7

    .line 16
    const-class v0, Ljava/util/Set;

    invoke-static {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/f;->g(ILcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/impl/f$a;

    move-result-object p0

    goto :goto_0

    .line 17
    :cond_5
    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 p0, 0x9

    .line 18
    const-class v0, Ljava/util/List;

    invoke-static {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/f;->g(ILcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/impl/f$a;

    move-result-object p0

    goto :goto_0

    :cond_6
    const-string v0, "Collection"

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/16 p0, 0x8

    .line 20
    const-class v0, Ljava/util/Collection;

    invoke-static {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/f;->g(ILcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/impl/f$a;

    move-result-object p0

    goto :goto_0

    :cond_7
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_8

    goto :goto_1

    .line 21
    :cond_8
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;

    invoke-direct {v1, p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;-><init>(Lcom/fasterxml/jackson/databind/util/h;)V

    :goto_1
    return-object v1

    .line 22
    :cond_9
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/deser/impl/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 23
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 24
    new-instance p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;

    const-class v0, Ljava/util/List;

    .line 25
    invoke-static {v3, p1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/f;->g(ILcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/impl/f$a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;-><init>(Lcom/fasterxml/jackson/databind/util/h;)V

    return-object p0

    :cond_a
    return-object v1

    .line 26
    :cond_b
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/deser/impl/f;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 27
    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 28
    new-instance p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;

    const/16 v0, 0xb

    const-class v1, Ljava/util/List;

    .line 29
    invoke-static {v0, p1, v1}, Lcom/fasterxml/jackson/databind/deser/impl/f;->g(ILcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/impl/f$a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;-><init>(Lcom/fasterxml/jackson/databind/util/h;)V

    return-object p0

    .line 30
    :cond_c
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 31
    new-instance p0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;

    const-class v0, Ljava/util/Set;

    .line 32
    invoke-static {v2, p1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/f;->g(ILcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/impl/f$a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;-><init>(Lcom/fasterxml/jackson/databind/util/h;)V

    return-object p0

    :cond_d
    return-object v1
.end method

.method public static i(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/d<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/deser/impl/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    const-string v3, "Map"

    if-eqz v0, :cond_2

    .line 3
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/deser/impl/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 5
    const-class p0, Ljava/util/Map;

    invoke-static {v1, p1, p0}, Lcom/fasterxml/jackson/databind/deser/impl/f;->g(ILcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/impl/f$a;

    move-result-object p0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/deser/impl/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 7
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x3

    .line 8
    const-class v0, Ljava/util/Map;

    invoke-static {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/f;->g(ILcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/impl/f$a;

    move-result-object p0

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/deser/impl/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 10
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 p0, 0xa

    .line 11
    const-class v0, Ljava/util/Map;

    invoke-static {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/f;->g(ILcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/impl/f$a;

    move-result-object p0

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/deser/impl/f;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 13
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 14
    const-class p0, Ljava/util/Map;

    invoke-static {v1, p1, p0}, Lcom/fasterxml/jackson/databind/deser/impl/f;->g(ILcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/impl/f$a;

    move-result-object p0

    goto :goto_0

    :cond_3
    move-object p0, v2

    :goto_0
    if-nez p0, :cond_4

    goto :goto_1

    .line 15
    :cond_4
    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;

    invoke-direct {v2, p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;-><init>(Lcom/fasterxml/jackson/databind/util/h;)V

    :goto_1
    return-object v2
.end method
