.class public Lcom/auth0/jwt/f$a;
.super Ljava/lang/Object;
.source "JWTVerifier.java"

# interfaces
.implements Lcom/auth0/jwt/interfaces/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/auth0/jwt/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/auth0/jwt/algorithms/a;

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

.field private c:J

.field private d:Z


# direct methods
.method constructor <init>(Lcom/auth0/jwt/algorithms/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/auth0/jwt/f$a;->a:Lcom/auth0/jwt/algorithms/a;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/auth0/jwt/f$a;->b:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/auth0/jwt/f$a;->c:J

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The Algorithm cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private t()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/auth0/jwt/f$a;->b:Ljava/util/Map;

    const-string v1, "exp"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/auth0/jwt/f$a;->b:Ljava/util/Map;

    iget-wide v2, p0, Lcom/auth0/jwt/f$a;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/auth0/jwt/f$a;->b:Ljava/util/Map;

    const-string v1, "nbf"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/auth0/jwt/f$a;->b:Ljava/util/Map;

    iget-wide v2, p0, Lcom/auth0/jwt/f$a;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/auth0/jwt/f$a;->d:Z

    const-string v1, "iat"

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/auth0/jwt/f$a;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/auth0/jwt/f$a;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/auth0/jwt/f$a;->b:Ljava/util/Map;

    iget-wide v2, p0, Lcom/auth0/jwt/f$a;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method private u(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The Custom Claim\'s name can\'t be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private v(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Leeway value can\'t be negative."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private x(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/auth0/jwt/f$a;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/auth0/jwt/f$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/String;)Lcom/auth0/jwt/interfaces/k;
    .locals 1

    invoke-static {p1}, Lcom/auth0/jwt/f;->c([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    const-string v0, "iss"

    invoke-direct {p0, v0, p1}, Lcom/auth0/jwt/f$a;->x(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public b(J)Lcom/auth0/jwt/interfaces/k;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/f$a;->v(J)V

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "exp"

    invoke-direct {p0, p2, p1}, Lcom/auth0/jwt/f$a;->x(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public build()Lcom/auth0/jwt/f;
    .locals 1

    new-instance v0, Lcom/auth0/jwt/b;

    invoke-direct {v0}, Lcom/auth0/jwt/b;-><init>()V

    invoke-virtual {p0, v0}, Lcom/auth0/jwt/f$a;->w(Lcom/auth0/jwt/interfaces/b;)Lcom/auth0/jwt/f;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/auth0/jwt/interfaces/k;
    .locals 1

    const-string v0, "jti"

    invoke-direct {p0, v0, p1}, Lcom/auth0/jwt/f$a;->x(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/auth0/jwt/interfaces/k;
    .locals 1

    const-string v0, "sub"

    invoke-direct {p0, v0, p1}, Lcom/auth0/jwt/f$a;->x(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public e(Ljava/lang/String;Ljava/lang/Double;)Lcom/auth0/jwt/interfaces/k;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/auth0/jwt/f$a;->u(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/f$a;->x(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public f(Ljava/lang/String;Ljava/util/Date;)Lcom/auth0/jwt/interfaces/k;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/auth0/jwt/f$a;->u(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/f$a;->x(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public varargs g([Ljava/lang/String;)Lcom/auth0/jwt/interfaces/k;
    .locals 1

    invoke-static {p1}, Lcom/auth0/jwt/f;->c([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    const-string v0, "aud"

    invoke-direct {p0, v0, p1}, Lcom/auth0/jwt/f$a;->x(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public h(Ljava/lang/String;Ljava/lang/Long;)Lcom/auth0/jwt/interfaces/k;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/auth0/jwt/f$a;->u(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/f$a;->x(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public varargs i(Ljava/lang/String;[Ljava/lang/Long;)Lcom/auth0/jwt/interfaces/k;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/auth0/jwt/f$a;->u(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/f$a;->x(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public j(J)Lcom/auth0/jwt/interfaces/k;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/f$a;->v(J)V

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "iat"

    invoke-direct {p0, p2, p1}, Lcom/auth0/jwt/f$a;->x(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public k()Lcom/auth0/jwt/interfaces/k;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/auth0/jwt/f$a;->d:Z

    return-object p0
.end method

.method public varargs l(Ljava/lang/String;[Ljava/lang/Integer;)Lcom/auth0/jwt/interfaces/k;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/auth0/jwt/f$a;->u(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/f$a;->x(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public m(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/auth0/jwt/interfaces/k;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/auth0/jwt/f$a;->u(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/f$a;->x(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public varargs n(Ljava/lang/String;[Ljava/lang/String;)Lcom/auth0/jwt/interfaces/k;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/auth0/jwt/f$a;->u(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/f$a;->x(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public o(J)Lcom/auth0/jwt/interfaces/k;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/f$a;->v(J)V

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "nbf"

    invoke-direct {p0, p2, p1}, Lcom/auth0/jwt/f$a;->x(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public p(J)Lcom/auth0/jwt/interfaces/k;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/f$a;->v(J)V

    .line 2
    iput-wide p1, p0, Lcom/auth0/jwt/f$a;->c:J

    return-object p0
.end method

.method public q(Ljava/lang/String;Ljava/lang/Integer;)Lcom/auth0/jwt/interfaces/k;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/auth0/jwt/f$a;->u(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/f$a;->x(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public r(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/jwt/interfaces/k;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/auth0/jwt/f$a;->u(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/f$a;->x(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public s(Ljava/lang/String;)Lcom/auth0/jwt/interfaces/k;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/auth0/jwt/f$a;->u(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/auth0/jwt/f$b;->a()Lcom/auth0/jwt/f$b;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/auth0/jwt/f$a;->x(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public w(Lcom/auth0/jwt/interfaces/b;)Lcom/auth0/jwt/f;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/auth0/jwt/f$a;->t()V

    .line 2
    new-instance v0, Lcom/auth0/jwt/f;

    iget-object v1, p0, Lcom/auth0/jwt/f$a;->a:Lcom/auth0/jwt/algorithms/a;

    iget-object v2, p0, Lcom/auth0/jwt/f$a;->b:Ljava/util/Map;

    invoke-direct {v0, v1, v2, p1}, Lcom/auth0/jwt/f;-><init>(Lcom/auth0/jwt/algorithms/a;Ljava/util/Map;Lcom/auth0/jwt/interfaces/b;)V

    return-object v0
.end method
