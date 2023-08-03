.class public Lshaded/org/apache/commons/codec/language/bm/f;
.super Ljava/lang/Object;
.source "Rule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshaded/org/apache/commons/codec/language/bm/f$n;,
        Lshaded/org/apache/commons/codec/language/bm/f$m;,
        Lshaded/org/apache/commons/codec/language/bm/f$l;,
        Lshaded/org/apache/commons/codec/language/bm/f$k;
    }
.end annotation


# static fields
.field public static final e:Lshaded/org/apache/commons/codec/language/bm/f$n;

.field public static final f:Ljava/lang/String; = "ALL"

.field private static final g:Ljava/lang/String; = "\""

.field private static final h:Ljava/lang/String; = "#include"

.field private static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lshaded/org/apache/commons/codec/language/bm/NameType;",
            "Ljava/util/Map<",
            "Lshaded/org/apache/commons/codec/language/bm/RuleType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lshaded/org/apache/commons/codec/language/bm/f;",
            ">;>;>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lshaded/org/apache/commons/codec/language/bm/f$n;

.field private final b:Ljava/lang/String;

.field private final c:Lshaded/org/apache/commons/codec/language/bm/f$l;

.field private final d:Lshaded/org/apache/commons/codec/language/bm/f$n;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lshaded/org/apache/commons/codec/language/bm/f$b;

    invoke-direct {v0}, Lshaded/org/apache/commons/codec/language/bm/f$b;-><init>()V

    sput-object v0, Lshaded/org/apache/commons/codec/language/bm/f;->e:Lshaded/org/apache/commons/codec/language/bm/f$n;

    .line 2
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lshaded/org/apache/commons/codec/language/bm/NameType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lshaded/org/apache/commons/codec/language/bm/f;->i:Ljava/util/Map;

    .line 3
    invoke-static {}, Lshaded/org/apache/commons/codec/language/bm/NameType;->values()[Lshaded/org/apache/commons/codec/language/bm/NameType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 4
    new-instance v5, Ljava/util/EnumMap;

    const-class v6, Lshaded/org/apache/commons/codec/language/bm/RuleType;

    invoke-direct {v5, v6}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 5
    invoke-static {}, Lshaded/org/apache/commons/codec/language/bm/RuleType;->values()[Lshaded/org/apache/commons/codec/language/bm/RuleType;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    .line 6
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 7
    invoke-static {v4}, Lshaded/org/apache/commons/codec/language/bm/c;->b(Lshaded/org/apache/commons/codec/language/bm/NameType;)Lshaded/org/apache/commons/codec/language/bm/c;

    move-result-object v11

    .line 8
    invoke-virtual {v11}, Lshaded/org/apache/commons/codec/language/bm/c;->c()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 9
    invoke-static {v4, v9, v12}, Lshaded/org/apache/commons/codec/language/bm/f;->g(Lshaded/org/apache/commons/codec/language/bm/NameType;Lshaded/org/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v13

    .line 10
    :try_start_0
    invoke-static {v4, v9, v12}, Lshaded/org/apache/commons/codec/language/bm/f;->e(Lshaded/org/apache/commons/codec/language/bm/NameType;Lshaded/org/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lshaded/org/apache/commons/codec/language/bm/f;->s(Ljava/util/Scanner;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v14

    invoke-interface {v10, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {v13}, Ljava/util/Scanner;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 12
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem processing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v9, v12}, Lshaded/org/apache/commons/codec/language/bm/f;->e(Lshaded/org/apache/commons/codec/language/bm/NameType;Lshaded/org/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :goto_3
    invoke-virtual {v13}, Ljava/util/Scanner;->close()V

    throw v0

    .line 14
    :cond_0
    sget-object v11, Lshaded/org/apache/commons/codec/language/bm/RuleType;->RULES:Lshaded/org/apache/commons/codec/language/bm/RuleType;

    invoke-virtual {v9, v11}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "common"

    .line 15
    invoke-static {v4, v9, v11}, Lshaded/org/apache/commons/codec/language/bm/f;->g(Lshaded/org/apache/commons/codec/language/bm/NameType;Lshaded/org/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v12

    .line 16
    :try_start_2
    invoke-static {v4, v9, v11}, Lshaded/org/apache/commons/codec/language/bm/f;->e(Lshaded/org/apache/commons/codec/language/bm/NameType;Lshaded/org/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lshaded/org/apache/commons/codec/language/bm/f;->s(Ljava/util/Scanner;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v13

    invoke-interface {v10, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 17
    invoke-virtual {v12}, Ljava/util/Scanner;->close()V

    goto :goto_4

    :catchall_1
    move-exception v0

    invoke-virtual {v12}, Ljava/util/Scanner;->close()V

    throw v0

    .line 18
    :cond_1
    :goto_4
    invoke-static {v10}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 19
    :cond_2
    sget-object v6, Lshaded/org/apache/commons/codec/language/bm/f;->i:Ljava/util/Map;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lshaded/org/apache/commons/codec/language/bm/f$l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lshaded/org/apache/commons/codec/language/bm/f;->b:Ljava/lang/String;

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "$"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lshaded/org/apache/commons/codec/language/bm/f;->t(Ljava/lang/String;)Lshaded/org/apache/commons/codec/language/bm/f$n;

    move-result-object p1

    iput-object p1, p0, Lshaded/org/apache/commons/codec/language/bm/f;->a:Lshaded/org/apache/commons/codec/language/bm/f$n;

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "^"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lshaded/org/apache/commons/codec/language/bm/f;->t(Ljava/lang/String;)Lshaded/org/apache/commons/codec/language/bm/f$n;

    move-result-object p1

    iput-object p1, p0, Lshaded/org/apache/commons/codec/language/bm/f;->d:Lshaded/org/apache/commons/codec/language/bm/f$n;

    .line 5
    iput-object p4, p0, Lshaded/org/apache/commons/codec/language/bm/f;->c:Lshaded/org/apache/commons/codec/language/bm/f$l;

    return-void
.end method

.method static synthetic a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 0

    invoke-static {p0, p1}, Lshaded/org/apache/commons/codec/language/bm/f;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 0

    invoke-static {p0, p1}, Lshaded/org/apache/commons/codec/language/bm/f;->h(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Ljava/lang/CharSequence;C)Z
    .locals 0

    invoke-static {p0, p1}, Lshaded/org/apache/commons/codec/language/bm/f;->d(Ljava/lang/CharSequence;C)Z

    move-result p0

    return p0
.end method

.method private static d(Ljava/lang/CharSequence;C)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static e(Lshaded/org/apache/commons/codec/language/bm/NameType;Lshaded/org/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p0}, Lshaded/org/apache/commons/codec/language/bm/NameType;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1}, Lshaded/org/apache/commons/codec/language/bm/RuleType;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const-string p0, "shaded/org/apache/commons/codec/language/bm/%s_%s_%s.txt"

    .line 2
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static f(Ljava/lang/String;)Ljava/util/Scanner;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "shaded/org/apache/commons/codec/language/bm/%s.txt"

    .line 1
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2
    const-class v0, Lshaded/org/apache/commons/codec/language/bm/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance p0, Ljava/util/Scanner;

    const-string v1, "UTF-8"

    invoke-direct {p0, v0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load resource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static g(Lshaded/org/apache/commons/codec/language/bm/NameType;Lshaded/org/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/Scanner;
    .locals 1

    .line 1
    invoke-static {p0, p1, p2}, Lshaded/org/apache/commons/codec/language/bm/f;->e(Lshaded/org/apache/commons/codec/language/bm/NameType;Lshaded/org/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    const-class p1, Lshaded/org/apache/commons/codec/language/bm/c;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p0, Ljava/util/Scanner;

    const-string p2, "UTF-8"

    invoke-direct {p0, p1, p2}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to load resource: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static h(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 6

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_0
    if-ltz v3, :cond_2

    .line 3
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static i(Lshaded/org/apache/commons/codec/language/bm/NameType;Lshaded/org/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lshaded/org/apache/commons/codec/language/bm/NameType;",
            "Lshaded/org/apache/commons/codec/language/bm/RuleType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lshaded/org/apache/commons/codec/language/bm/f;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lshaded/org/apache/commons/codec/language/bm/c$c;->b(Ljava/util/Set;)Lshaded/org/apache/commons/codec/language/bm/c$c;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lshaded/org/apache/commons/codec/language/bm/f;->j(Lshaded/org/apache/commons/codec/language/bm/NameType;Lshaded/org/apache/commons/codec/language/bm/RuleType;Lshaded/org/apache/commons/codec/language/bm/c$c;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static j(Lshaded/org/apache/commons/codec/language/bm/NameType;Lshaded/org/apache/commons/codec/language/bm/RuleType;Lshaded/org/apache/commons/codec/language/bm/c$c;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lshaded/org/apache/commons/codec/language/bm/NameType;",
            "Lshaded/org/apache/commons/codec/language/bm/RuleType;",
            "Lshaded/org/apache/commons/codec/language/bm/c$c;",
            ")",
            "Ljava/util/List<",
            "Lshaded/org/apache/commons/codec/language/bm/f;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lshaded/org/apache/commons/codec/language/bm/f;->l(Lshaded/org/apache/commons/codec/language/bm/NameType;Lshaded/org/apache/commons/codec/language/bm/RuleType;Lshaded/org/apache/commons/codec/language/bm/c$c;)Ljava/util/Map;

    move-result-object p0

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 4
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static k(Lshaded/org/apache/commons/codec/language/bm/NameType;Lshaded/org/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lshaded/org/apache/commons/codec/language/bm/NameType;",
            "Lshaded/org/apache/commons/codec/language/bm/RuleType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lshaded/org/apache/commons/codec/language/bm/f;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lshaded/org/apache/commons/codec/language/bm/f;->i:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0}, Lshaded/org/apache/commons/codec/language/bm/NameType;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    invoke-virtual {p1}, Lshaded/org/apache/commons/codec/language/bm/RuleType;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const-string p0, "No rules found for %s, %s, %s."

    .line 4
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static l(Lshaded/org/apache/commons/codec/language/bm/NameType;Lshaded/org/apache/commons/codec/language/bm/RuleType;Lshaded/org/apache/commons/codec/language/bm/c$c;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lshaded/org/apache/commons/codec/language/bm/NameType;",
            "Lshaded/org/apache/commons/codec/language/bm/RuleType;",
            "Lshaded/org/apache/commons/codec/language/bm/c$c;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lshaded/org/apache/commons/codec/language/bm/f;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lshaded/org/apache/commons/codec/language/bm/c$c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lshaded/org/apache/commons/codec/language/bm/c$c;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lshaded/org/apache/commons/codec/language/bm/f;->k(Lshaded/org/apache/commons/codec/language/bm/NameType;Lshaded/org/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p2, "any"

    .line 2
    invoke-static {p0, p1, p2}, Lshaded/org/apache/commons/codec/language/bm/f;->k(Lshaded/org/apache/commons/codec/language/bm/NameType;Lshaded/org/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static q(Ljava/lang/String;)Lshaded/org/apache/commons/codec/language/bm/f$k;
    .locals 3

    const-string v0, "["

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    const-string v1, "]"

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/HashSet;

    const-string v2, "[+]"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 6
    new-instance p0, Lshaded/org/apache/commons/codec/language/bm/f$k;

    invoke-static {v0}, Lshaded/org/apache/commons/codec/language/bm/c$c;->b(Ljava/util/Set;)Lshaded/org/apache/commons/codec/language/bm/c$c;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lshaded/org/apache/commons/codec/language/bm/f$k;-><init>(Ljava/lang/CharSequence;Lshaded/org/apache/commons/codec/language/bm/c$c;)V

    return-object p0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Phoneme expression contains a \'[\' but does not end in \']\'"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_1
    new-instance v0, Lshaded/org/apache/commons/codec/language/bm/f$k;

    sget-object v1, Lshaded/org/apache/commons/codec/language/bm/c;->e:Lshaded/org/apache/commons/codec/language/bm/c$c;

    invoke-direct {v0, p0, v1}, Lshaded/org/apache/commons/codec/language/bm/f$k;-><init>(Ljava/lang/CharSequence;Lshaded/org/apache/commons/codec/language/bm/c$c;)V

    return-object v0
.end method

.method private static r(Ljava/lang/String;)Lshaded/org/apache/commons/codec/language/bm/f$l;
    .locals 5

    const-string v0, "("

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ")"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v1, "[|]"

    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 6
    invoke-static {v4}, Lshaded/org/apache/commons/codec/language/bm/f;->q(Ljava/lang/String;)Lshaded/org/apache/commons/codec/language/bm/f$k;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "|"

    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 8
    :cond_1
    new-instance p0, Lshaded/org/apache/commons/codec/language/bm/f$k;

    sget-object v1, Lshaded/org/apache/commons/codec/language/bm/c;->e:Lshaded/org/apache/commons/codec/language/bm/c$c;

    const-string v2, ""

    invoke-direct {p0, v2, v1}, Lshaded/org/apache/commons/codec/language/bm/f$k;-><init>(Ljava/lang/CharSequence;Lshaded/org/apache/commons/codec/language/bm/c$c;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_2
    new-instance p0, Lshaded/org/apache/commons/codec/language/bm/f$m;

    invoke-direct {p0, v0}, Lshaded/org/apache/commons/codec/language/bm/f$m;-><init>(Ljava/util/List;)V

    return-object p0

    .line 10
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Phoneme starts with \'(\' so must end with \')\'"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_4
    invoke-static {p0}, Lshaded/org/apache/commons/codec/language/bm/f;->q(Ljava/lang/String;)Lshaded/org/apache/commons/codec/language/bm/f$k;

    move-result-object p0

    return-object p0
.end method

.method private static s(Ljava/util/Scanner;Ljava/lang/String;)Ljava/util/Map;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Scanner;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lshaded/org/apache/commons/codec/language/bm/f;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v11, p1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v13, 0x0

    .line 2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v14, 0x1

    add-int/lit8 v15, v1, 0x1

    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v13, :cond_1

    const-string v2, "*/"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const/4 v13, 0x0

    goto/16 :goto_3

    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_1
    const-string v2, "/*"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    const/4 v13, 0x1

    goto/16 :goto_3

    :cond_2
    const-string v2, "//"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3

    .line 7
    invoke-virtual {v1, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v1

    .line 8
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    move v1, v15

    goto :goto_0

    :cond_4
    const-string v3, "#include"

    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v10, "\' in "

    if-eqz v3, :cond_6

    const/16 v3, 0x8

    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 13
    invoke-static {v2}, Lshaded/org/apache/commons/codec/language/bm/f;->f(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v1

    .line 14
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lshaded/org/apache/commons/codec/language/bm/f;->s(Ljava/util/Scanner;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    throw v0

    .line 16
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed import statement \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string v3, "\\s+"

    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 18
    array-length v3, v2

    const/4 v4, 0x4

    if-ne v3, v4, :cond_8

    .line 19
    :try_start_1
    aget-object v1, v2, v12

    invoke-static {v1}, Lshaded/org/apache/commons/codec/language/bm/f;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 20
    aget-object v1, v2, v14

    invoke-static {v1}, Lshaded/org/apache/commons/codec/language/bm/f;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v1, 0x2

    .line 21
    aget-object v1, v2, v1

    invoke-static {v1}, Lshaded/org/apache/commons/codec/language/bm/f;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/4 v1, 0x3

    .line 22
    aget-object v1, v2, v1

    invoke-static {v1}, Lshaded/org/apache/commons/codec/language/bm/f;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lshaded/org/apache/commons/codec/language/bm/f;->r(Ljava/lang/String;)Lshaded/org/apache/commons/codec/language/bm/f$l;

    move-result-object v5

    .line 23
    new-instance v7, Lshaded/org/apache/commons/codec/language/bm/f$c;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object/from16 v4, v16

    move v6, v15

    move-object v12, v7

    move-object/from16 v7, p1

    move-object/from16 v17, v10

    move-object/from16 v10, v16

    :try_start_2
    invoke-direct/range {v1 .. v10}, Lshaded/org/apache/commons/codec/language/bm/f$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lshaded/org/apache/commons/codec/language/bm/f$l;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v1, v12, Lshaded/org/apache/commons/codec/language/bm/f;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_7

    .line 26
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_7
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    move v1, v15

    const/4 v12, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v17, v10

    .line 29
    :goto_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem parsing line \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v3, v17

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 30
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed rule statement split into "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " parts: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    return-object v0
.end method

.method private static t(Ljava/lang/String;)Lshaded/org/apache/commons/codec/language/bm/f$n;
    .locals 8

    const-string v0, "^"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "$"

    .line 2
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v2, :cond_0

    sub-int/2addr v4, v3

    :cond_0
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "["

    .line 4
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_1

    .line 6
    new-instance p0, Lshaded/org/apache/commons/codec/language/bm/f$d;

    invoke-direct {p0}, Lshaded/org/apache/commons/codec/language/bm/f$d;-><init>()V

    return-object p0

    .line 7
    :cond_1
    new-instance p0, Lshaded/org/apache/commons/codec/language/bm/f$e;

    invoke-direct {p0, v4}, Lshaded/org/apache/commons/codec/language/bm/f$e;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_2
    if-nez v1, :cond_3

    if-eqz v2, :cond_4

    .line 8
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 9
    sget-object p0, Lshaded/org/apache/commons/codec/language/bm/f;->e:Lshaded/org/apache/commons/codec/language/bm/f$n;

    return-object p0

    :cond_4
    if-eqz v1, :cond_5

    .line 10
    new-instance p0, Lshaded/org/apache/commons/codec/language/bm/f$f;

    invoke-direct {p0, v4}, Lshaded/org/apache/commons/codec/language/bm/f$f;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_5
    if-eqz v2, :cond_a

    .line 11
    new-instance p0, Lshaded/org/apache/commons/codec/language/bm/f$g;

    invoke-direct {p0, v4}, Lshaded/org/apache/commons/codec/language/bm/f$g;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 12
    :cond_6
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "]"

    .line 13
    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v6, :cond_a

    if-eqz v7, :cond_a

    .line 14
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {v4, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 16
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 17
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_7
    xor-int/2addr v0, v3

    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    .line 18
    new-instance p0, Lshaded/org/apache/commons/codec/language/bm/f$h;

    invoke-direct {p0, v4, v0}, Lshaded/org/apache/commons/codec/language/bm/f$h;-><init>(Ljava/lang/String;Z)V

    return-object p0

    :cond_8
    if-eqz v1, :cond_9

    .line 19
    new-instance p0, Lshaded/org/apache/commons/codec/language/bm/f$i;

    invoke-direct {p0, v4, v0}, Lshaded/org/apache/commons/codec/language/bm/f$i;-><init>(Ljava/lang/String;Z)V

    return-object p0

    :cond_9
    if-eqz v2, :cond_a

    .line 20
    new-instance p0, Lshaded/org/apache/commons/codec/language/bm/f$j;

    invoke-direct {p0, v4, v0}, Lshaded/org/apache/commons/codec/language/bm/f$j;-><init>(Ljava/lang/String;Z)V

    return-object p0

    .line 21
    :cond_a
    new-instance v0, Lshaded/org/apache/commons/codec/language/bm/f$a;

    invoke-direct {v0, p0}, Lshaded/org/apache/commons/codec/language/bm/f$a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static w(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "\""

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public m()Lshaded/org/apache/commons/codec/language/bm/f$n;
    .locals 1

    iget-object v0, p0, Lshaded/org/apache/commons/codec/language/bm/f;->a:Lshaded/org/apache/commons/codec/language/bm/f$n;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lshaded/org/apache/commons/codec/language/bm/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public o()Lshaded/org/apache/commons/codec/language/bm/f$l;
    .locals 1

    iget-object v0, p0, Lshaded/org/apache/commons/codec/language/bm/f;->c:Lshaded/org/apache/commons/codec/language/bm/f$l;

    return-object v0
.end method

.method public p()Lshaded/org/apache/commons/codec/language/bm/f$n;
    .locals 1

    iget-object v0, p0, Lshaded/org/apache/commons/codec/language/bm/f;->d:Lshaded/org/apache/commons/codec/language/bm/f$n;

    return-object v0
.end method

.method public u(Ljava/lang/CharSequence;I)Z
    .locals 4

    if-ltz p2, :cond_3

    .line 1
    iget-object v0, p0, Lshaded/org/apache/commons/codec/language/bm/f;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    .line 3
    :cond_0
    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v3, p0, Lshaded/org/apache/commons/codec/language/bm/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    .line 4
    :cond_1
    iget-object v1, p0, Lshaded/org/apache/commons/codec/language/bm/f;->d:Lshaded/org/apache/commons/codec/language/bm/f$n;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {p1, v0, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v1, v0}, Lshaded/org/apache/commons/codec/language/bm/f$n;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    .line 5
    :cond_2
    iget-object v0, p0, Lshaded/org/apache/commons/codec/language/bm/f;->a:Lshaded/org/apache/commons/codec/language/bm/f$n;

    invoke-interface {p1, v2, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {v0, p1}, Lshaded/org/apache/commons/codec/language/bm/f$n;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    .line 6
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Can not match pattern at negative indexes"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
