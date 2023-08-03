.class final Lcom/auth0/jwt/e;
.super Ljava/lang/Object;
.source "JWTDecoder.java"

# interfaces
.implements Lcom/auth0/jwt/interfaces/c;
.implements Ljava/io/Serializable;


# static fields
.field private static final d:J = 0x19ff85363df075ffL


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:Lcom/auth0/jwt/interfaces/e;

.field private final c:Lcom/auth0/jwt/interfaces/i;


# direct methods
.method constructor <init>(Lcom/auth0/jwt/impl/d;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/JWTDecodeException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p2}, Lcom/auth0/jwt/h;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/auth0/jwt/e;->a:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    :try_start_0
    aget-object v0, p2, v0

    invoke-static {v0}, Lshaded/org/apache/commons/codec/binary/d;->x(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lshaded/org/apache/commons/codec/binary/m;->t([B)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 5
    aget-object p2, p2, v1

    invoke-static {p2}, Lshaded/org/apache/commons/codec/binary/d;->x(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p2}, Lshaded/org/apache/commons/codec/binary/m;->t([B)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    invoke-virtual {p1, v0}, Lcom/auth0/jwt/impl/d;->b(Ljava/lang/String;)Lcom/auth0/jwt/interfaces/e;

    move-result-object v0

    iput-object v0, p0, Lcom/auth0/jwt/e;->b:Lcom/auth0/jwt/interfaces/e;

    .line 7
    invoke-virtual {p1, p2}, Lcom/auth0/jwt/impl/d;->a(Ljava/lang/String;)Lcom/auth0/jwt/interfaces/i;

    move-result-object p1

    iput-object p1, p0, Lcom/auth0/jwt/e;->c:Lcom/auth0/jwt/interfaces/i;

    return-void

    :catch_0
    move-exception p1

    .line 8
    new-instance p2, Lcom/auth0/jwt/exceptions/JWTDecodeException;

    const-string v0, "The input is not a valid base 64 encoded string."

    invoke-direct {p2, v0, p1}, Lcom/auth0/jwt/exceptions/JWTDecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 9
    new-instance p2, Lcom/auth0/jwt/exceptions/JWTDecodeException;

    const-string v0, "The UTF-8 Charset isn\'t initialized."

    invoke-direct {p2, v0, p1}, Lcom/auth0/jwt/exceptions/JWTDecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/JWTDecodeException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/auth0/jwt/impl/d;

    invoke-direct {v0}, Lcom/auth0/jwt/impl/d;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/auth0/jwt/e;-><init>(Lcom/auth0/jwt/impl/d;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/jwt/e;->c:Lcom/auth0/jwt/interfaces/i;

    invoke-interface {v0}, Lcom/auth0/jwt/interfaces/i;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/auth0/jwt/e;->c:Lcom/auth0/jwt/interfaces/i;

    invoke-interface {v0}, Lcom/auth0/jwt/interfaces/i;->b()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/auth0/jwt/e;->c:Lcom/auth0/jwt/interfaces/i;

    invoke-interface {v0}, Lcom/auth0/jwt/interfaces/i;->c()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/jwt/e;->b:Lcom/auth0/jwt/interfaces/e;

    invoke-interface {v0}, Lcom/auth0/jwt/interfaces/e;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/auth0/jwt/e;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/jwt/e;->b:Lcom/auth0/jwt/interfaces/e;

    invoke-interface {v0}, Lcom/auth0/jwt/interfaces/e;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/jwt/e;->b:Lcom/auth0/jwt/interfaces/e;

    invoke-interface {v0}, Lcom/auth0/jwt/interfaces/e;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/jwt/e;->c:Lcom/auth0/jwt/interfaces/i;

    invoke-interface {v0}, Lcom/auth0/jwt/interfaces/i;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIssuer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/jwt/e;->c:Lcom/auth0/jwt/interfaces/i;

    invoke-interface {v0}, Lcom/auth0/jwt/interfaces/i;->getIssuer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/auth0/jwt/e;->c:Lcom/auth0/jwt/interfaces/i;

    invoke-interface {v0}, Lcom/auth0/jwt/interfaces/i;->getNotBefore()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/auth0/jwt/e;->a:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/jwt/e;->b:Lcom/auth0/jwt/interfaces/e;

    invoke-interface {v0}, Lcom/auth0/jwt/interfaces/e;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/auth0/jwt/interfaces/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/auth0/jwt/e;->c:Lcom/auth0/jwt/interfaces/i;

    invoke-interface {v0}, Lcom/auth0/jwt/interfaces/i;->h()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/auth0/jwt/e;->a:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aget-object v3, v1, v2

    aput-object v3, v0, v2

    const/4 v2, 0x2

    aget-object v1, v1, v2

    aput-object v1, v0, v2

    const-string v1, "%s.%s.%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/auth0/jwt/e;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/auth0/jwt/e;->c:Lcom/auth0/jwt/interfaces/i;

    invoke-interface {v0}, Lcom/auth0/jwt/interfaces/i;->k()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public l(Ljava/lang/String;)Lcom/auth0/jwt/interfaces/a;
    .locals 1

    iget-object v0, p0, Lcom/auth0/jwt/e;->c:Lcom/auth0/jwt/interfaces/i;

    invoke-interface {v0, p1}, Lcom/auth0/jwt/interfaces/i;->l(Ljava/lang/String;)Lcom/auth0/jwt/interfaces/a;

    move-result-object p1

    return-object p1
.end method

.method public m(Ljava/lang/String;)Lcom/auth0/jwt/interfaces/a;
    .locals 1

    iget-object v0, p0, Lcom/auth0/jwt/e;->b:Lcom/auth0/jwt/interfaces/e;

    invoke-interface {v0, p1}, Lcom/auth0/jwt/interfaces/e;->m(Ljava/lang/String;)Lcom/auth0/jwt/interfaces/a;

    move-result-object p1

    return-object p1
.end method
