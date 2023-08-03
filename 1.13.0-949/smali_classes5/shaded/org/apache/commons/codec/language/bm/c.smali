.class public Lshaded/org/apache/commons/codec/language/bm/c;
.super Ljava/lang/Object;
.source "Languages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshaded/org/apache/commons/codec/language/bm/c$d;,
        Lshaded/org/apache/commons/codec/language/bm/c$c;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "any"

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lshaded/org/apache/commons/codec/language/bm/NameType;",
            "Lshaded/org/apache/commons/codec/language/bm/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lshaded/org/apache/commons/codec/language/bm/c$c;

.field public static final e:Lshaded/org/apache/commons/codec/language/bm/c$c;


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lshaded/org/apache/commons/codec/language/bm/NameType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lshaded/org/apache/commons/codec/language/bm/c;->c:Ljava/util/Map;

    .line 2
    invoke-static {}, Lshaded/org/apache/commons/codec/language/bm/NameType;->values()[Lshaded/org/apache/commons/codec/language/bm/NameType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    sget-object v4, Lshaded/org/apache/commons/codec/language/bm/c;->c:Ljava/util/Map;

    invoke-static {v3}, Lshaded/org/apache/commons/codec/language/bm/c;->d(Lshaded/org/apache/commons/codec/language/bm/NameType;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lshaded/org/apache/commons/codec/language/bm/c;->a(Ljava/lang/String;)Lshaded/org/apache/commons/codec/language/bm/c;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lshaded/org/apache/commons/codec/language/bm/c$a;

    invoke-direct {v0}, Lshaded/org/apache/commons/codec/language/bm/c$a;-><init>()V

    sput-object v0, Lshaded/org/apache/commons/codec/language/bm/c;->d:Lshaded/org/apache/commons/codec/language/bm/c$c;

    .line 5
    new-instance v0, Lshaded/org/apache/commons/codec/language/bm/c$b;

    invoke-direct {v0}, Lshaded/org/apache/commons/codec/language/bm/c$b;-><init>()V

    sput-object v0, Lshaded/org/apache/commons/codec/language/bm/c;->e:Lshaded/org/apache/commons/codec/language/bm/c$c;

    return-void
.end method

.method private constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lshaded/org/apache/commons/codec/language/bm/c;->a:Ljava/util/Set;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lshaded/org/apache/commons/codec/language/bm/c;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    const-class v1, Lshaded/org/apache/commons/codec/language/bm/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 3
    new-instance p0, Ljava/util/Scanner;

    const-string v2, "UTF-8"

    invoke-direct {p0, v1, v2}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    .line 4
    :cond_0
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5
    invoke-virtual {p0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_1

    const-string v4, "*/"

    .line 6
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const-string v4, "/*"

    .line 7
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 9
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {p0}, Ljava/util/Scanner;->close()V

    .line 11
    new-instance p0, Lshaded/org/apache/commons/codec/language/bm/c;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lshaded/org/apache/commons/codec/language/bm/c;-><init>(Ljava/util/Set;)V

    return-object p0

    :catchall_0
    move-exception v0

    .line 12
    invoke-virtual {p0}, Ljava/util/Scanner;->close()V

    throw v0

    .line 13
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to resolve required resource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Lshaded/org/apache/commons/codec/language/bm/NameType;)Lshaded/org/apache/commons/codec/language/bm/c;
    .locals 1

    sget-object v0, Lshaded/org/apache/commons/codec/language/bm/c;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lshaded/org/apache/commons/codec/language/bm/c;

    return-object p0
.end method

.method private static d(Lshaded/org/apache/commons/codec/language/bm/NameType;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lshaded/org/apache/commons/codec/language/bm/NameType;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "shaded/org/apache/commons/codec/language/bm/%s_languages.txt"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lshaded/org/apache/commons/codec/language/bm/c;->a:Ljava/util/Set;

    return-object v0
.end method
