.class public Lcom/auth0/jwt/d$b;
.super Ljava/lang/Object;
.source "JWTCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/auth0/jwt/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/auth0/jwt/d$b;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/auth0/jwt/d$b;->b:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/auth0/jwt/d$b;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/auth0/jwt/d$b;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The Custom Claim\'s name can\'t be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static c(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 3
    const-class v0, [Ljava/lang/Integer;

    if-eq p0, v0, :cond_0

    const-class v0, [Ljava/lang/Long;

    if-eq p0, v0, :cond_0

    const-class v0, [Ljava/lang/String;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 4
    :cond_2
    const-class v0, Ljava/lang/String;

    if-eq p0, v0, :cond_3

    const-class v0, Ljava/lang/Integer;

    if-eq p0, v0, :cond_3

    const-class v0, Ljava/lang/Long;

    if-eq p0, v0, :cond_3

    const-class v0, Ljava/lang/Double;

    if-eq p0, v0, :cond_3

    const-class v0, Ljava/util/Date;

    if-eq p0, v0, :cond_3

    const-class v0, Ljava/lang/Boolean;

    if-ne p0, v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method private static d(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/auth0/jwt/d$b;->f(Ljava/util/List;)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Ljava/util/Map;

    invoke-static {p0}, Lcom/auth0/jwt/d$b;->g(Ljava/util/Map;)Z

    move-result p0

    return p0

    .line 5
    :cond_1
    invoke-static {p0}, Lcom/auth0/jwt/d$b;->c(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static f(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/auth0/jwt/d$b;->d(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static g(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 3
    invoke-static {v1}, Lcom/auth0/jwt/d$b;->d(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-nez v0, :cond_0

    :cond_2
    :goto_0
    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public A(Ljava/lang/String;)Lcom/auth0/jwt/d$b;
    .locals 1

    const-string v0, "sub"

    invoke-direct {p0, v0, p1}, Lcom/auth0/jwt/d$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public e(Lcom/auth0/jwt/algorithms/a;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/auth0/jwt/exceptions/JWTCreationException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lcom/auth0/jwt/d$b;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/auth0/jwt/algorithms/a;->B()Ljava/lang/String;

    move-result-object v1

    const-string v2, "alg"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/auth0/jwt/d$b;->b:Ljava/util/Map;

    const-string v1, "typ"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/auth0/jwt/d$b;->b:Ljava/util/Map;

    const-string v2, "JWT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/auth0/jwt/algorithms/a;->C()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Lcom/auth0/jwt/d$b;->y(Ljava/lang/String;)Lcom/auth0/jwt/d$b;

    .line 6
    :cond_1
    new-instance v0, Lcom/auth0/jwt/d;

    iget-object v1, p0, Lcom/auth0/jwt/d$b;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/auth0/jwt/d$b;->a:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/auth0/jwt/d;-><init>(Lcom/auth0/jwt/algorithms/a;Ljava/util/Map;Ljava/util/Map;Lcom/auth0/jwt/d$a;)V

    invoke-static {v0}, Lcom/auth0/jwt/d;->a(Lcom/auth0/jwt/d;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The Algorithm cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h(Ljava/lang/String;[Ljava/lang/Integer;)Lcom/auth0/jwt/d$b;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/auth0/jwt/d$b;->b(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/d$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public i(Ljava/lang/String;[Ljava/lang/Long;)Lcom/auth0/jwt/d$b;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/auth0/jwt/d$b;->b(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/d$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public j(Ljava/lang/String;[Ljava/lang/String;)Lcom/auth0/jwt/d$b;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/auth0/jwt/d$b;->b(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/d$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public varargs k([Ljava/lang/String;)Lcom/auth0/jwt/d$b;
    .locals 1

    const-string v0, "aud"

    invoke-direct {p0, v0, p1}, Lcom/auth0/jwt/d$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public l(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/auth0/jwt/d$b;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/auth0/jwt/d$b;->b(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/d$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public m(Ljava/lang/String;Ljava/lang/Double;)Lcom/auth0/jwt/d$b;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/auth0/jwt/d$b;->b(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/d$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public n(Ljava/lang/String;Ljava/lang/Integer;)Lcom/auth0/jwt/d$b;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/auth0/jwt/d$b;->b(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/d$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public o(Ljava/lang/String;Ljava/lang/Long;)Lcom/auth0/jwt/d$b;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/auth0/jwt/d$b;->b(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/d$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public p(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/jwt/d$b;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/auth0/jwt/d$b;->b(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/d$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public q(Ljava/lang/String;Ljava/util/Date;)Lcom/auth0/jwt/d$b;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/auth0/jwt/d$b;->b(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/d$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public r(Ljava/lang/String;Ljava/util/List;)Lcom/auth0/jwt/d$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "*>;)",
            "Lcom/auth0/jwt/d$b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/auth0/jwt/d$b;->b(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 2
    invoke-static {p2}, Lcom/auth0/jwt/d$b;->f(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Expected list containing Map, List, Boolean, Integer, Long, Double, String and Date"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/d$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public s(Ljava/lang/String;Ljava/util/Map;)Lcom/auth0/jwt/d$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/auth0/jwt/d$b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/auth0/jwt/d$b;->b(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 2
    invoke-static {p2}, Lcom/auth0/jwt/d$b;->g(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Expected map containing Map, List, Boolean, Integer, Long, Double, String and Date"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/d$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public t(Ljava/util/Date;)Lcom/auth0/jwt/d$b;
    .locals 1

    const-string v0, "exp"

    invoke-direct {p0, v0, p1}, Lcom/auth0/jwt/d$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public u(Ljava/util/Map;)Lcom/auth0/jwt/d$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/auth0/jwt/d$b;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/auth0/jwt/d$b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/auth0/jwt/d$b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public v(Ljava/util/Date;)Lcom/auth0/jwt/d$b;
    .locals 1

    const-string v0, "iat"

    invoke-direct {p0, v0, p1}, Lcom/auth0/jwt/d$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public w(Ljava/lang/String;)Lcom/auth0/jwt/d$b;
    .locals 1

    const-string v0, "iss"

    invoke-direct {p0, v0, p1}, Lcom/auth0/jwt/d$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public x(Ljava/lang/String;)Lcom/auth0/jwt/d$b;
    .locals 1

    const-string v0, "jti"

    invoke-direct {p0, v0, p1}, Lcom/auth0/jwt/d$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public y(Ljava/lang/String;)Lcom/auth0/jwt/d$b;
    .locals 2

    iget-object v0, p0, Lcom/auth0/jwt/d$b;->b:Ljava/util/Map;

    const-string v1, "kid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public z(Ljava/util/Date;)Lcom/auth0/jwt/d$b;
    .locals 1

    const-string v0, "nbf"

    invoke-direct {p0, v0, p1}, Lcom/auth0/jwt/d$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method
