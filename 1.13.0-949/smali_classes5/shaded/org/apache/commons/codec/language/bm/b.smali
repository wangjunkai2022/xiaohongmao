.class public Lshaded/org/apache/commons/codec/language/bm/b;
.super Ljava/lang/Object;
.source "Lang.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshaded/org/apache/commons/codec/language/bm/b$b;
    }
.end annotation


# static fields
.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lshaded/org/apache/commons/codec/language/bm/NameType;",
            "Lshaded/org/apache/commons/codec/language/bm/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/lang/String; = "shaded/org/apache/commons/codec/language/bm/%s_lang.txt"


# instance fields
.field private final a:Lshaded/org/apache/commons/codec/language/bm/c;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lshaded/org/apache/commons/codec/language/bm/b$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lshaded/org/apache/commons/codec/language/bm/NameType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lshaded/org/apache/commons/codec/language/bm/b;->c:Ljava/util/Map;

    .line 2
    invoke-static {}, Lshaded/org/apache/commons/codec/language/bm/NameType;->values()[Lshaded/org/apache/commons/codec/language/bm/NameType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 3
    sget-object v5, Lshaded/org/apache/commons/codec/language/bm/b;->c:Ljava/util/Map;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4}, Lshaded/org/apache/commons/codec/language/bm/NameType;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v7, "shaded/org/apache/commons/codec/language/bm/%s_lang.txt"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Lshaded/org/apache/commons/codec/language/bm/c;->b(Lshaded/org/apache/commons/codec/language/bm/NameType;)Lshaded/org/apache/commons/codec/language/bm/c;

    move-result-object v7

    invoke-static {v6, v7}, Lshaded/org/apache/commons/codec/language/bm/b;->d(Ljava/lang/String;Lshaded/org/apache/commons/codec/language/bm/c;)Lshaded/org/apache/commons/codec/language/bm/b;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/util/List;Lshaded/org/apache/commons/codec/language/bm/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lshaded/org/apache/commons/codec/language/bm/b$b;",
            ">;",
            "Lshaded/org/apache/commons/codec/language/bm/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lshaded/org/apache/commons/codec/language/bm/b;->b:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lshaded/org/apache/commons/codec/language/bm/b;->a:Lshaded/org/apache/commons/codec/language/bm/c;

    return-void
.end method

.method public static c(Lshaded/org/apache/commons/codec/language/bm/NameType;)Lshaded/org/apache/commons/codec/language/bm/b;
    .locals 1

    sget-object v0, Lshaded/org/apache/commons/codec/language/bm/b;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lshaded/org/apache/commons/codec/language/bm/b;

    return-object p0
.end method

.method public static d(Ljava/lang/String;Lshaded/org/apache/commons/codec/language/bm/c;)Lshaded/org/apache/commons/codec/language/bm/b;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    const-class v1, Lshaded/org/apache/commons/codec/language/bm/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 3
    new-instance v2, Ljava/util/Scanner;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x0

    .line 4
    :cond_0
    :goto_1
    :try_start_0
    invoke-virtual {v2}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5
    invoke-virtual {v2}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    const-string v5, "*/"

    .line 6
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    const-string v6, "/*"

    .line 7
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const-string v6, "//"

    .line 8
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_3

    .line 9
    invoke-virtual {v4, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_3
    move-object v6, v4

    .line 10
    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 11
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    const-string v7, "\\s+"

    .line 12
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 13
    array-length v7, v6

    const/4 v8, 0x3

    if-ne v7, v8, :cond_5

    .line 14
    aget-object v4, v6, v1

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 15
    aget-object v5, v6, v5

    const-string v7, "\\+"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    .line 16
    aget-object v6, v6, v7

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 17
    new-instance v7, Lshaded/org/apache/commons/codec/language/bm/b$b;

    new-instance v8, Ljava/util/HashSet;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v8, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v5, 0x0

    invoke-direct {v7, v4, v8, v6, v5}, Lshaded/org/apache/commons/codec/language/bm/b$b;-><init>(Ljava/util/regex/Pattern;Ljava/util/Set;ZLshaded/org/apache/commons/codec/language/bm/b$a;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 18
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Malformed line \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' in language resource \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :cond_6
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    .line 20
    new-instance p0, Lshaded/org/apache/commons/codec/language/bm/b;

    invoke-direct {p0, v0, p1}, Lshaded/org/apache/commons/codec/language/bm/b;-><init>(Ljava/util/List;Lshaded/org/apache/commons/codec/language/bm/c;)V

    return-object p0

    :catchall_0
    move-exception p0

    .line 21
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    throw p0

    .line 22
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unable to resolve required resource:org/apache/commons/codec/language/bm/%s_lang.txt"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lshaded/org/apache/commons/codec/language/bm/b;->b(Ljava/lang/String;)Lshaded/org/apache/commons/codec/language/bm/c$c;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lshaded/org/apache/commons/codec/language/bm/c$c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lshaded/org/apache/commons/codec/language/bm/c$c;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "any"

    :goto_0
    return-object p1
.end method

.method public b(Ljava/lang/String;)Lshaded/org/apache/commons/codec/language/bm/c$c;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lshaded/org/apache/commons/codec/language/bm/b;->a:Lshaded/org/apache/commons/codec/language/bm/c;

    invoke-virtual {v1}, Lshaded/org/apache/commons/codec/language/bm/c;->c()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3
    iget-object v1, p0, Lshaded/org/apache/commons/codec/language/bm/b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lshaded/org/apache/commons/codec/language/bm/b$b;

    .line 4
    invoke-virtual {v2, p1}, Lshaded/org/apache/commons/codec/language/bm/b$b;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-static {v2}, Lshaded/org/apache/commons/codec/language/bm/b$b;->a(Lshaded/org/apache/commons/codec/language/bm/b$b;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-static {v2}, Lshaded/org/apache/commons/codec/language/bm/b$b;->b(Lshaded/org/apache/commons/codec/language/bm/b$b;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v2}, Lshaded/org/apache/commons/codec/language/bm/b$b;->b(Lshaded/org/apache/commons/codec/language/bm/b$b;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {v0}, Lshaded/org/apache/commons/codec/language/bm/c$c;->b(Ljava/util/Set;)Lshaded/org/apache/commons/codec/language/bm/c$c;

    move-result-object p1

    .line 9
    sget-object v0, Lshaded/org/apache/commons/codec/language/bm/c;->d:Lshaded/org/apache/commons/codec/language/bm/c$c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, Lshaded/org/apache/commons/codec/language/bm/c;->e:Lshaded/org/apache/commons/codec/language/bm/c$c;

    :cond_3
    return-object p1
.end method
