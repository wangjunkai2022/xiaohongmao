.class public abstract Lcom/auth0/jwt/algorithms/a;
.super Ljava/lang/Object;
.source "Algorithm.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/auth0/jwt/algorithms/a;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/auth0/jwt/algorithms/a;->b:Ljava/lang/String;

    return-void
.end method

.method public static D()Lcom/auth0/jwt/algorithms/a;
    .locals 1

    new-instance v0, Lcom/auth0/jwt/algorithms/e;

    invoke-direct {v0}, Lcom/auth0/jwt/algorithms/e;-><init>()V

    return-object v0
.end method

.method public static a(Lcom/auth0/jwt/interfaces/d;)Lcom/auth0/jwt/algorithms/a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lcom/auth0/jwt/algorithms/c;

    const-string v1, "ES256"

    const-string v2, "SHA256withECDSA"

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/auth0/jwt/algorithms/c;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/auth0/jwt/interfaces/d;)V

    return-object v0
.end method

.method public static b(Ljava/security/interfaces/ECKey;)Lcom/auth0/jwt/algorithms/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/security/interfaces/ECPublicKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2
    :goto_0
    instance-of v2, p0, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v2, :cond_1

    move-object v1, p0

    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    .line 3
    :cond_1
    invoke-static {v0, v1}, Lcom/auth0/jwt/algorithms/a;->c(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)Lcom/auth0/jwt/algorithms/a;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)Lcom/auth0/jwt/algorithms/a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/auth0/jwt/algorithms/c;->K(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)Lcom/auth0/jwt/interfaces/d;

    move-result-object p0

    invoke-static {p0}, Lcom/auth0/jwt/algorithms/a;->a(Lcom/auth0/jwt/interfaces/d;)Lcom/auth0/jwt/algorithms/a;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lcom/auth0/jwt/interfaces/d;)Lcom/auth0/jwt/algorithms/a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lcom/auth0/jwt/algorithms/c;

    const-string v1, "ES256K"

    const-string v2, "SHA256withECDSA"

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/auth0/jwt/algorithms/c;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/auth0/jwt/interfaces/d;)V

    return-object v0
.end method

.method public static e(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)Lcom/auth0/jwt/algorithms/a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/auth0/jwt/algorithms/c;->K(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)Lcom/auth0/jwt/interfaces/d;

    move-result-object p0

    invoke-static {p0}, Lcom/auth0/jwt/algorithms/a;->d(Lcom/auth0/jwt/interfaces/d;)Lcom/auth0/jwt/algorithms/a;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lcom/auth0/jwt/interfaces/d;)Lcom/auth0/jwt/algorithms/a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lcom/auth0/jwt/algorithms/c;

    const-string v1, "ES384"

    const-string v2, "SHA384withECDSA"

    const/16 v3, 0x30

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/auth0/jwt/algorithms/c;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/auth0/jwt/interfaces/d;)V

    return-object v0
.end method

.method public static g(Ljava/security/interfaces/ECKey;)Lcom/auth0/jwt/algorithms/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/security/interfaces/ECPublicKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2
    :goto_0
    instance-of v2, p0, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v2, :cond_1

    move-object v1, p0

    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    .line 3
    :cond_1
    invoke-static {v0, v1}, Lcom/auth0/jwt/algorithms/a;->h(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)Lcom/auth0/jwt/algorithms/a;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)Lcom/auth0/jwt/algorithms/a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/auth0/jwt/algorithms/c;->K(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)Lcom/auth0/jwt/interfaces/d;

    move-result-object p0

    invoke-static {p0}, Lcom/auth0/jwt/algorithms/a;->f(Lcom/auth0/jwt/interfaces/d;)Lcom/auth0/jwt/algorithms/a;

    move-result-object p0

    return-object p0
.end method

.method public static i(Lcom/auth0/jwt/interfaces/d;)Lcom/auth0/jwt/algorithms/a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lcom/auth0/jwt/algorithms/c;

    const-string v1, "ES512"

    const-string v2, "SHA512withECDSA"

    const/16 v3, 0x42

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/auth0/jwt/algorithms/c;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/auth0/jwt/interfaces/d;)V

    return-object v0
.end method

.method public static j(Ljava/security/interfaces/ECKey;)Lcom/auth0/jwt/algorithms/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/security/interfaces/ECPublicKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2
    :goto_0
    instance-of v2, p0, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v2, :cond_1

    move-object v1, p0

    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    .line 3
    :cond_1
    invoke-static {v0, v1}, Lcom/auth0/jwt/algorithms/a;->k(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)Lcom/auth0/jwt/algorithms/a;

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)Lcom/auth0/jwt/algorithms/a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/auth0/jwt/algorithms/c;->K(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)Lcom/auth0/jwt/interfaces/d;

    move-result-object p0

    invoke-static {p0}, Lcom/auth0/jwt/algorithms/a;->i(Lcom/auth0/jwt/interfaces/d;)Lcom/auth0/jwt/algorithms/a;

    move-result-object p0

    return-object p0
.end method

.method public static l(Ljava/lang/String;)Lcom/auth0/jwt/algorithms/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lcom/auth0/jwt/algorithms/d;

    const-string v1, "HS256"

    const-string v2, "HmacSHA256"

    invoke-direct {v0, v1, v2, p0}, Lcom/auth0/jwt/algorithms/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static m([B)Lcom/auth0/jwt/algorithms/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lcom/auth0/jwt/algorithms/d;

    const-string v1, "HS256"

    const-string v2, "HmacSHA256"

    invoke-direct {v0, v1, v2, p0}, Lcom/auth0/jwt/algorithms/d;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v0
.end method

.method public static n(Ljava/lang/String;)Lcom/auth0/jwt/algorithms/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lcom/auth0/jwt/algorithms/d;

    const-string v1, "HS384"

    const-string v2, "HmacSHA384"

    invoke-direct {v0, v1, v2, p0}, Lcom/auth0/jwt/algorithms/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static o([B)Lcom/auth0/jwt/algorithms/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lcom/auth0/jwt/algorithms/d;

    const-string v1, "HS384"

    const-string v2, "HmacSHA384"

    invoke-direct {v0, v1, v2, p0}, Lcom/auth0/jwt/algorithms/d;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v0
.end method

.method public static p(Ljava/lang/String;)Lcom/auth0/jwt/algorithms/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lcom/auth0/jwt/algorithms/d;

    const-string v1, "HS512"

    const-string v2, "HmacSHA512"

    invoke-direct {v0, v1, v2, p0}, Lcom/auth0/jwt/algorithms/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static q([B)Lcom/auth0/jwt/algorithms/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lcom/auth0/jwt/algorithms/d;

    const-string v1, "HS512"

    const-string v2, "HmacSHA512"

    invoke-direct {v0, v1, v2, p0}, Lcom/auth0/jwt/algorithms/d;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v0
.end method

.method public static r(Lcom/auth0/jwt/interfaces/j;)Lcom/auth0/jwt/algorithms/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lcom/auth0/jwt/algorithms/f;

    const-string v1, "RS256"

    const-string v2, "SHA256withRSA"

    invoke-direct {v0, v1, v2, p0}, Lcom/auth0/jwt/algorithms/f;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/auth0/jwt/interfaces/j;)V

    return-object v0
.end method

.method public static s(Ljava/security/interfaces/RSAKey;)Lcom/auth0/jwt/algorithms/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/security/interfaces/RSAPublicKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2
    :goto_0
    instance-of v2, p0, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v2, :cond_1

    move-object v1, p0

    check-cast v1, Ljava/security/interfaces/RSAPrivateKey;

    .line 3
    :cond_1
    invoke-static {v0, v1}, Lcom/auth0/jwt/algorithms/a;->t(Ljava/security/interfaces/RSAPublicKey;Ljava/security/interfaces/RSAPrivateKey;)Lcom/auth0/jwt/algorithms/a;

    move-result-object p0

    return-object p0
.end method

.method public static t(Ljava/security/interfaces/RSAPublicKey;Ljava/security/interfaces/RSAPrivateKey;)Lcom/auth0/jwt/algorithms/a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/auth0/jwt/algorithms/f;->H(Ljava/security/interfaces/RSAPublicKey;Ljava/security/interfaces/RSAPrivateKey;)Lcom/auth0/jwt/interfaces/j;

    move-result-object p0

    invoke-static {p0}, Lcom/auth0/jwt/algorithms/a;->r(Lcom/auth0/jwt/interfaces/j;)Lcom/auth0/jwt/algorithms/a;

    move-result-object p0

    return-object p0
.end method

.method public static u(Lcom/auth0/jwt/interfaces/j;)Lcom/auth0/jwt/algorithms/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lcom/auth0/jwt/algorithms/f;

    const-string v1, "RS384"

    const-string v2, "SHA384withRSA"

    invoke-direct {v0, v1, v2, p0}, Lcom/auth0/jwt/algorithms/f;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/auth0/jwt/interfaces/j;)V

    return-object v0
.end method

.method public static v(Ljava/security/interfaces/RSAKey;)Lcom/auth0/jwt/algorithms/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/security/interfaces/RSAPublicKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2
    :goto_0
    instance-of v2, p0, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v2, :cond_1

    move-object v1, p0

    check-cast v1, Ljava/security/interfaces/RSAPrivateKey;

    .line 3
    :cond_1
    invoke-static {v0, v1}, Lcom/auth0/jwt/algorithms/a;->w(Ljava/security/interfaces/RSAPublicKey;Ljava/security/interfaces/RSAPrivateKey;)Lcom/auth0/jwt/algorithms/a;

    move-result-object p0

    return-object p0
.end method

.method public static w(Ljava/security/interfaces/RSAPublicKey;Ljava/security/interfaces/RSAPrivateKey;)Lcom/auth0/jwt/algorithms/a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/auth0/jwt/algorithms/f;->H(Ljava/security/interfaces/RSAPublicKey;Ljava/security/interfaces/RSAPrivateKey;)Lcom/auth0/jwt/interfaces/j;

    move-result-object p0

    invoke-static {p0}, Lcom/auth0/jwt/algorithms/a;->u(Lcom/auth0/jwt/interfaces/j;)Lcom/auth0/jwt/algorithms/a;

    move-result-object p0

    return-object p0
.end method

.method public static x(Lcom/auth0/jwt/interfaces/j;)Lcom/auth0/jwt/algorithms/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lcom/auth0/jwt/algorithms/f;

    const-string v1, "RS512"

    const-string v2, "SHA512withRSA"

    invoke-direct {v0, v1, v2, p0}, Lcom/auth0/jwt/algorithms/f;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/auth0/jwt/interfaces/j;)V

    return-object v0
.end method

.method public static y(Ljava/security/interfaces/RSAKey;)Lcom/auth0/jwt/algorithms/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/security/interfaces/RSAPublicKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2
    :goto_0
    instance-of v2, p0, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v2, :cond_1

    move-object v1, p0

    check-cast v1, Ljava/security/interfaces/RSAPrivateKey;

    .line 3
    :cond_1
    invoke-static {v0, v1}, Lcom/auth0/jwt/algorithms/a;->z(Ljava/security/interfaces/RSAPublicKey;Ljava/security/interfaces/RSAPrivateKey;)Lcom/auth0/jwt/algorithms/a;

    move-result-object p0

    return-object p0
.end method

.method public static z(Ljava/security/interfaces/RSAPublicKey;Ljava/security/interfaces/RSAPrivateKey;)Lcom/auth0/jwt/algorithms/a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/auth0/jwt/algorithms/f;->H(Ljava/security/interfaces/RSAPublicKey;Ljava/security/interfaces/RSAPrivateKey;)Lcom/auth0/jwt/interfaces/j;

    move-result-object p0

    invoke-static {p0}, Lcom/auth0/jwt/algorithms/a;->x(Lcom/auth0/jwt/interfaces/j;)Lcom/auth0/jwt/algorithms/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method A()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/jwt/algorithms/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/jwt/algorithms/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract E([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/SignatureGenerationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public F([B[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/SignatureGenerationException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    array-length v1, p1

    const/16 v3, 0x2e

    aput-byte v3, v0, v1

    .line 4
    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    array-length v1, p2

    invoke-static {p2, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/auth0/jwt/algorithms/a;->E([B)[B

    move-result-object p1

    return-object p1
.end method

.method public abstract G(Lcom/auth0/jwt/interfaces/c;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/SignatureVerificationException;
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/jwt/algorithms/a;->b:Ljava/lang/String;

    return-object v0
.end method
