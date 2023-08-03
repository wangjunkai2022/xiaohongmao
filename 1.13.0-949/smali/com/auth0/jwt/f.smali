.class public final Lcom/auth0/jwt/f;
.super Ljava/lang/Object;
.source "JWTVerifier.java"

# interfaces
.implements Lcom/auth0/jwt/interfaces/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/auth0/jwt/f$b;,
        Lcom/auth0/jwt/f$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/auth0/jwt/algorithms/a;

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/auth0/jwt/interfaces/b;

.field private final d:Lcom/auth0/jwt/impl/d;


# direct methods
.method constructor <init>(Lcom/auth0/jwt/algorithms/a;Ljava/util/Map;Lcom/auth0/jwt/interfaces/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/auth0/jwt/algorithms/a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/auth0/jwt/interfaces/b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/auth0/jwt/f;->a:Lcom/auth0/jwt/algorithms/a;

    .line 3
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/auth0/jwt/f;->b:Ljava/util/Map;

    .line 4
    iput-object p3, p0, Lcom/auth0/jwt/f;->c:Lcom/auth0/jwt/interfaces/b;

    .line 5
    new-instance p1, Lcom/auth0/jwt/impl/d;

    invoke-direct {p1}, Lcom/auth0/jwt/impl/d;-><init>()V

    iput-object p1, p0, Lcom/auth0/jwt/f;->d:Lcom/auth0/jwt/impl/d;

    return-void
.end method

.method static synthetic c([Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/auth0/jwt/f;->m([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private d(Lcom/auth0/jwt/interfaces/a;Ljava/lang/String;)V
    .locals 2

    .line 1
    instance-of p1, p1, Lcom/auth0/jwt/impl/f;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Lcom/auth0/jwt/exceptions/InvalidClaimException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "The Claim \'%s\' is not present in the JWT."

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/auth0/jwt/exceptions/InvalidClaimException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private e(Ljava/util/Date;JLjava/util/Date;)V
    .locals 4

    .line 1
    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long p2, p2, v2

    sub-long/2addr v0, p2

    invoke-virtual {p4, v0, v1}, Ljava/util/Date;->setTime(J)V

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p4, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p2, Lcom/auth0/jwt/exceptions/TokenExpiredException;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    const-string p1, "The Token has expired on %s."

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/auth0/jwt/exceptions/TokenExpiredException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    return-void
.end method

.method private f(Ljava/util/Date;JLjava/util/Date;)V
    .locals 4

    .line 1
    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long p2, p2, v2

    add-long/2addr v0, p2

    invoke-virtual {p4, v0, v1}, Ljava/util/Date;->setTime(J)V

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p4, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p2, Lcom/auth0/jwt/exceptions/InvalidClaimException;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    const-string p1, "The Token can\'t be used before %s."

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/auth0/jwt/exceptions/InvalidClaimException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    return-void
.end method

.method private g(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Lcom/auth0/jwt/exceptions/InvalidClaimException;

    const-string p2, "The Claim \'aud\' value doesn\'t contain the required audience."

    invoke-direct {p1, p2}, Lcom/auth0/jwt/exceptions/InvalidClaimException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private h(Lcom/auth0/jwt/interfaces/a;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .line 1
    const-class v0, [Ljava/lang/Object;

    .line 2
    instance-of v1, p3, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto/16 :goto_3

    .line 4
    :cond_0
    instance-of v1, p3, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/a;->f()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto/16 :goto_3

    .line 6
    :cond_1
    instance-of v1, p3, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 7
    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/a;->g()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto/16 :goto_3

    .line 8
    :cond_2
    instance-of v1, p3, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 9
    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/a;->i()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto/16 :goto_3

    .line 10
    :cond_3
    instance-of v1, p3, Ljava/lang/Double;

    if-eqz v1, :cond_4

    .line 11
    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/a;->h()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_3

    .line 12
    :cond_4
    instance-of v1, p3, Ljava/util/Date;

    if-eqz v1, :cond_5

    .line 13
    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/a;->b()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_3

    .line 14
    :cond_5
    instance-of v1, p3, [Ljava/lang/Object;

    if-eqz v1, :cond_a

    .line 15
    invoke-interface {p1, v0}, Lcom/auth0/jwt/interfaces/a;->j(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 16
    instance-of v3, p3, [Ljava/lang/Long;

    if-eqz v3, :cond_7

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    array-length v0, v1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    array-length v0, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_9

    aget-object v4, v1, v3

    .line 19
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_6

    .line 20
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 21
    :cond_6
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 22
    :cond_7
    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/a;->c()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_2

    :cond_8
    invoke-interface {p1, v0}, Lcom/auth0/jwt/interfaces/a;->j(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 23
    :cond_9
    :goto_2
    check-cast p3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 24
    invoke-interface {p1, p3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    goto :goto_3

    :cond_a
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_b

    return-void

    .line 25
    :cond_b
    new-instance p1, Lcom/auth0/jwt/exceptions/InvalidClaimException;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p2, p3, v2

    const-string p2, "The Claim \'%s\' value doesn\'t match the required one."

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/auth0/jwt/exceptions/InvalidClaimException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private i(Ljava/util/Date;JZ)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/auth0/jwt/f;->c:Lcom/auth0/jwt/interfaces/b;

    invoke-interface {v1}, Lcom/auth0/jwt/interfaces/b;->a()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 2
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    mul-long v1, v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    if-eqz p4, :cond_0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/auth0/jwt/f;->e(Ljava/util/Date;JLjava/util/Date;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/auth0/jwt/f;->f(Ljava/util/Date;JLjava/util/Date;)V

    :goto_0
    return-void
.end method

.method private j(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Lcom/auth0/jwt/exceptions/InvalidClaimException;

    const-string p2, "The Claim \'iss\' value doesn\'t match the required issuer."

    invoke-direct {p1, p2}, Lcom/auth0/jwt/exceptions/InvalidClaimException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p2, Lcom/auth0/jwt/exceptions/InvalidClaimException;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    const-string p1, "The Claim \'%s\' value doesn\'t match the required one."

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/auth0/jwt/exceptions/InvalidClaimException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method static l(Lcom/auth0/jwt/algorithms/a;)Lcom/auth0/jwt/interfaces/k;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lcom/auth0/jwt/f$a;

    invoke-direct {v0, p0}, Lcom/auth0/jwt/f$a;-><init>(Lcom/auth0/jwt/algorithms/a;)V

    return-object v0
.end method

.method private static m([Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    .line 1
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private n(Lcom/auth0/jwt/interfaces/c;Lcom/auth0/jwt/algorithms/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/AlgorithmMismatchException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/auth0/jwt/algorithms/a;->B()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/e;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Lcom/auth0/jwt/exceptions/AlgorithmMismatchException;

    const-string p2, "The provided Algorithm doesn\'t match the one defined in the JWT\'s Header."

    invoke-direct {p1, p2}, Lcom/auth0/jwt/exceptions/AlgorithmMismatchException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private o(Lcom/auth0/jwt/interfaces/c;Ljava/util/Map$Entry;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/auth0/jwt/interfaces/c;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "sub"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_1
    const-string v1, "nbf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_2
    const-string v1, "jti"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_3
    const-string v1, "iss"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "iat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_5
    const-string v1, "exp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_6
    const-string v1, "aud"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 2
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/auth0/jwt/interfaces/i;->l(Ljava/lang/String;)Lcom/auth0/jwt/interfaces/a;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/auth0/jwt/f;->h(Lcom/auth0/jwt/interfaces/a;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 3
    :pswitch_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/i;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/auth0/jwt/f;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :pswitch_1
    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/i;->getNotBefore()Ljava/util/Date;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1, v3}, Lcom/auth0/jwt/f;->i(Ljava/util/Date;JZ)V

    goto :goto_1

    .line 5
    :pswitch_2
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/i;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/auth0/jwt/f;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :pswitch_3
    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/i;->getIssuer()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/f;->j(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 7
    :pswitch_4
    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/i;->c()Ljava/util/Date;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1, v3}, Lcom/auth0/jwt/f;->i(Ljava/util/Date;JZ)V

    goto :goto_1

    .line 8
    :pswitch_5
    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/i;->b()Ljava/util/Date;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/auth0/jwt/f;->i(Ljava/util/Date;JZ)V

    goto :goto_1

    .line 9
    :pswitch_6
    invoke-interface {p1}, Lcom/auth0/jwt/interfaces/i;->k()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/auth0/jwt/f;->g(Ljava/util/List;Ljava/util/List;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x17ab0 -> :sswitch_6
        0x18a1d -> :sswitch_5
        0x1965c -> :sswitch_4
        0x19889 -> :sswitch_3
        0x19c5f -> :sswitch_2
        0x1a932 -> :sswitch_1
        0x1be40 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private p(Lcom/auth0/jwt/interfaces/c;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/auth0/jwt/interfaces/c;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/TokenExpiredException;,
            Lcom/auth0/jwt/exceptions/InvalidClaimException;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/auth0/jwt/f$b;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/auth0/jwt/interfaces/i;->l(Ljava/lang/String;)Lcom/auth0/jwt/interfaces/a;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/auth0/jwt/f;->d(Lcom/auth0/jwt/interfaces/a;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/auth0/jwt/f;->o(Lcom/auth0/jwt/interfaces/c;Ljava/util/Map$Entry;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/auth0/jwt/interfaces/c;)Lcom/auth0/jwt/interfaces/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/JWTVerificationException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/auth0/jwt/f;->a:Lcom/auth0/jwt/algorithms/a;

    invoke-direct {p0, p1, v0}, Lcom/auth0/jwt/f;->n(Lcom/auth0/jwt/interfaces/c;Lcom/auth0/jwt/algorithms/a;)V

    .line 2
    iget-object v0, p0, Lcom/auth0/jwt/f;->a:Lcom/auth0/jwt/algorithms/a;

    invoke-virtual {v0, p1}, Lcom/auth0/jwt/algorithms/a;->G(Lcom/auth0/jwt/interfaces/c;)V

    .line 3
    iget-object v0, p0, Lcom/auth0/jwt/f;->b:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/auth0/jwt/f;->p(Lcom/auth0/jwt/interfaces/c;Ljava/util/Map;)V

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/auth0/jwt/interfaces/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/JWTVerificationException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/auth0/jwt/e;

    iget-object v1, p0, Lcom/auth0/jwt/f;->d:Lcom/auth0/jwt/impl/d;

    invoke-direct {v0, v1, p1}, Lcom/auth0/jwt/e;-><init>(Lcom/auth0/jwt/impl/d;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/auth0/jwt/f;->a(Lcom/auth0/jwt/interfaces/c;)Lcom/auth0/jwt/interfaces/c;

    move-result-object p1

    return-object p1
.end method
