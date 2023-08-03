.class abstract Lorg/jsoup/helper/c$b;
.super Ljava/lang/Object;
.source "HttpConnection.java"

# interfaces
.implements Lorg/jsoup/Connection$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/helper/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/jsoup/Connection$a<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lorg/jsoup/Connection$a<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final e:Ljava/net/URL;


# instance fields
.field a:Ljava/net/URL;

.field b:Lorg/jsoup/Connection$Method;

.field c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "http://undefined/"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jsoup/helper/c$b;->e:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lorg/jsoup/helper/c$b;->e:Ljava/net/URL;

    iput-object v0, p0, Lorg/jsoup/helper/c$b;->a:Ljava/net/URL;

    .line 5
    sget-object v0, Lorg/jsoup/Connection$Method;->GET:Lorg/jsoup/Connection$Method;

    iput-object v0, p0, Lorg/jsoup/helper/c$b;->b:Lorg/jsoup/Connection$Method;

    .line 6
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jsoup/helper/c$b;->c:Ljava/util/Map;

    .line 7
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jsoup/helper/c$b;->d:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lorg/jsoup/helper/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/jsoup/helper/c$b;-><init>()V

    return-void
.end method

.method private constructor <init>(Lorg/jsoup/helper/c$b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsoup/helper/c$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget-object v0, Lorg/jsoup/helper/c$b;->e:Ljava/net/URL;

    iput-object v0, p0, Lorg/jsoup/helper/c$b;->a:Ljava/net/URL;

    .line 10
    sget-object v0, Lorg/jsoup/Connection$Method;->GET:Lorg/jsoup/Connection$Method;

    iput-object v0, p0, Lorg/jsoup/helper/c$b;->b:Lorg/jsoup/Connection$Method;

    .line 11
    iget-object v0, p1, Lorg/jsoup/helper/c$b;->a:Ljava/net/URL;

    iput-object v0, p0, Lorg/jsoup/helper/c$b;->a:Ljava/net/URL;

    .line 12
    iget-object v0, p1, Lorg/jsoup/helper/c$b;->b:Lorg/jsoup/Connection$Method;

    iput-object v0, p0, Lorg/jsoup/helper/c$b;->b:Lorg/jsoup/Connection$Method;

    .line 13
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jsoup/helper/c$b;->c:Ljava/util/Map;

    .line 14
    iget-object v0, p1, Lorg/jsoup/helper/c$b;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 15
    iget-object v2, p0, Lorg/jsoup/helper/c$b;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jsoup/helper/c$b;->d:Ljava/util/Map;

    iget-object p1, p1, Lorg/jsoup/helper/c$b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jsoup/helper/c$b;Lorg/jsoup/helper/c$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/jsoup/helper/c$b;-><init>(Lorg/jsoup/helper/c$b;)V

    return-void
.end method

.method private static V(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lorg/jsoup/helper/c;->K()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 2
    invoke-static {v0}, Lorg/jsoup/helper/c$b;->X([B)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-static {}, Lorg/jsoup/helper/c;->L()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0
.end method

.method private W(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lorg/jsoup/helper/c$b;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    .line 5
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private static X([B)Z
    .locals 8

    .line 1
    array-length v0, p0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    const/16 v4, 0xef

    if-ne v0, v4, :cond_0

    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v4, 0xbb

    if-ne v0, v4, :cond_0

    const/4 v0, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v4, 0xbf

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v0, p0

    :goto_1
    if-ge v1, v0, :cond_7

    .line 3
    aget-byte v4, p0, v1

    and-int/lit16 v5, v4, 0x80

    if-nez v5, :cond_1

    goto :goto_3

    :cond_1
    and-int/lit16 v5, v4, 0xe0

    const/16 v6, 0xc0

    if-ne v5, v6, :cond_2

    add-int/lit8 v4, v1, 0x1

    goto :goto_2

    :cond_2
    and-int/lit16 v5, v4, 0xf0

    const/16 v7, 0xe0

    if-ne v5, v7, :cond_3

    add-int/lit8 v4, v1, 0x2

    goto :goto_2

    :cond_3
    and-int/lit16 v4, v4, 0xf8

    const/16 v5, 0xf0

    if-ne v4, v5, :cond_6

    add-int/lit8 v4, v1, 0x3

    .line 4
    :goto_2
    array-length v5, p0

    if-lt v4, v5, :cond_4

    return v3

    :cond_4
    if-ge v1, v4, :cond_5

    add-int/lit8 v1, v1, 0x1

    .line 5
    aget-byte v5, p0, v1

    and-int/2addr v5, v6

    const/16 v7, 0x80

    if-eq v5, v7, :cond_4

    return v3

    :cond_5
    :goto_3
    add-int/2addr v1, v2

    goto :goto_1

    :cond_6
    return v3

    :cond_7
    return v2
.end method

.method private Y(Ljava/lang/String;)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/jsoup/internal/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lorg/jsoup/helper/c$b;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lorg/jsoup/internal/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public A()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jsoup/helper/c$b;->d:Ljava/util/Map;

    return-object v0
.end method

.method public B(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "Cookie name must not be empty"

    .line 1
    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lorg/jsoup/helper/c$b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public E(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->h(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string p2, ""

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lorg/jsoup/helper/c$b;->M(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v1, p0, Lorg/jsoup/helper/c$b;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    invoke-static {p2}, Lorg/jsoup/helper/c$b;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public F(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Cookie name must not be empty"

    .line 1
    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lorg/jsoup/helper/c$b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public G(Ljava/lang/String;)Lorg/jsoup/Connection$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "Header name must not be empty"

    .line 1
    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lorg/jsoup/helper/c$b;->Y(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lorg/jsoup/helper/c$b;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public H(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "Header name must not be null"

    .line 1
    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lorg/jsoup/helper/c$b;->W(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, ", "

    .line 4
    invoke-static {p1, v0}, Lorg/jsoup/internal/f;->k(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public I(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Header name must not be empty"

    .line 1
    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lorg/jsoup/helper/c$b;->W(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public K(Ljava/lang/String;)Lorg/jsoup/Connection$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "Cookie name must not be empty"

    .line 1
    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lorg/jsoup/helper/c$b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public M(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->h(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lorg/jsoup/helper/c$b;->W(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public N()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jsoup/helper/c$b;->c:Ljava/util/Map;

    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "Cookie name must not be empty"

    .line 1
    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Cookie value must not be null"

    .line 2
    invoke-static {p2, v0}, Lorg/jsoup/helper/d;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lorg/jsoup/helper/c$b;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public f()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lorg/jsoup/helper/c$b;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 2
    iget-object v1, p0, Lorg/jsoup/helper/c$b;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x0

    .line 6
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public k(Ljava/net/URL;)Lorg/jsoup/Connection$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")TT;"
        }
    .end annotation

    const-string v0, "URL must not be null"

    .line 1
    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lorg/jsoup/helper/c;->I(Ljava/net/URL;)Ljava/net/URL;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/helper/c$b;->a:Ljava/net/URL;

    return-object p0
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "Header name must not be empty"

    .line 1
    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lorg/jsoup/helper/c$b;->G(Ljava/lang/String;)Lorg/jsoup/Connection$a;

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/helper/c$b;->E(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;

    return-object p0
.end method

.method public m(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsoup/Connection$Method;",
            ")TT;"
        }
    .end annotation

    const-string v0, "Method must not be null"

    .line 1
    invoke-static {p1, v0}, Lorg/jsoup/helper/d;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lorg/jsoup/helper/c$b;->b:Lorg/jsoup/Connection$Method;

    return-object p0
.end method

.method public method()Lorg/jsoup/Connection$Method;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/c$b;->b:Lorg/jsoup/Connection$Method;

    return-object v0
.end method

.method public v()Ljava/net/URL;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/helper/c$b;->a:Ljava/net/URL;

    sget-object v1, Lorg/jsoup/helper/c$b;->e:Ljava/net/URL;

    if-eq v0, v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URL not set. Make sure to call #url(...) before executing the request."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->h(Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Lorg/jsoup/helper/d;->h(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lorg/jsoup/helper/c$b;->M(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
