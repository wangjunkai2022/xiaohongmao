.class public final Lshaded/org/apache/commons/codec/digest/d;
.super Ljava/lang/Object;
.source "HmacUtils.java"


# static fields
.field private static final b:I = 0x400


# instance fields
.field private final a:Ljavax/crypto/Mac;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lshaded/org/apache/commons/codec/digest/d;-><init>(Ljavax/crypto/Mac;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-static {p2}, Lshaded/org/apache/commons/codec/binary/m;->k(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lshaded/org/apache/commons/codec/digest/d;-><init>(Ljava/lang/String;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .line 4
    invoke-static {p1, p2}, Lshaded/org/apache/commons/codec/digest/d;->f(Ljava/lang/String;[B)Ljavax/crypto/Mac;

    move-result-object p1

    invoke-direct {p0, p1}, Lshaded/org/apache/commons/codec/digest/d;-><init>(Ljavax/crypto/Mac;)V

    return-void
.end method

.method private constructor <init>(Ljavax/crypto/Mac;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lshaded/org/apache/commons/codec/digest/d;->a:Ljavax/crypto/Mac;

    return-void
.end method

.method public constructor <init>(Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-virtual {p1}, Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lshaded/org/apache/commons/codec/binary/m;->k(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lshaded/org/apache/commons/codec/digest/d;-><init>(Ljava/lang/String;[B)V

    return-void
.end method

.method public constructor <init>(Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;[B)V
    .locals 0

    .line 7
    invoke-virtual {p1}, Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lshaded/org/apache/commons/codec/digest/d;-><init>(Ljava/lang/String;[B)V

    return-void
.end method

.method public static A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lshaded/org/apache/commons/codec/digest/d;

    sget-object v1, Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_1:Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lshaded/org/apache/commons/codec/digest/d;-><init>(Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lshaded/org/apache/commons/codec/digest/d;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static B([BLjava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lshaded/org/apache/commons/codec/digest/d;

    sget-object v1, Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_1:Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lshaded/org/apache/commons/codec/digest/d;-><init>(Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lshaded/org/apache/commons/codec/digest/d;->n(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static C([B[B)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lshaded/org/apache/commons/codec/digest/d;

    sget-object v1, Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_1:Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lshaded/org/apache/commons/codec/digest/d;-><init>(Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lshaded/org/apache/commons/codec/digest/d;->q([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static D(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lshaded/org/apache/commons/codec/digest/d;

    sget-object v1, Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_256:Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lshaded/org/apache/commons/codec/digest/d;-><init>(Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lshaded/org/apache/commons/codec/digest/d;->j(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static E([BLjava/io/InputStream;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lshaded/org/apache/commons/codec/digest/d;

    sget-object v1, Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_256:Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lshaded/org/apache/commons/codec/digest/d;-><init>(Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lshaded/org/apache/commons/codec/digest/d;->i(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static F([B[B)[B
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lshaded/org/apache/commons/codec/digest/d;

    sget-object v1, Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_256:Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lshaded/org/apache/commons/codec/digest/d;-><init>(Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lshaded/org/apache/commons/codec/digest/d;->l([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static G(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lshaded/org/apache/commons/codec/digest/d;

    sget-object v1, Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_256:Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lshaded/org/apache/commons/codec/digest/d;-><init>(Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lshaded/org/apache/commons/codec/digest/d;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static H([BLjava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lshaded/org/apache/commons/codec/digest/d;

    sget-object v1, Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_256:Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lshaded/org/apache/commons/codec/digest/d;-><init>(Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lshaded/org/apache/commons/codec/digest/d;->n(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static I([B[B)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lshaded/org/apache/commons/codec/digest/d;

    sget-object v1, Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_256:Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lshaded/org/apache/commons/codec/digest/d;-><init>(Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lshaded/org/apache/commons/codec/digest/d;->q([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static J(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lshaded/org/apache/commons/codec/digest/d;

    sget-object v1, Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_384:Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lshaded/org/apache/commons/codec/digest/d;-><init>(Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lshaded/org/apache/commons/codec/digest/d;->j(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static K([BLjava/io/InputStream;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lshaded/org/apache/commons/codec/digest/d;

    sget-object v1, Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_384:Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lshaded/org/apache/commons/codec/digest/d;-><init>(Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lshaded/org/apache/commons/codec/digest/d;->i(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static L([B[B)[B
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lshaded/org/apache/commons/codec/digest/d;

    sget-object v1, Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_384:Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lshaded/org/apache/commons/codec/digest/d;-><init>(Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lshaded/org/apache/commons/codec/digest/d;->l([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static M(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lshaded/org/apache/commons/codec/digest/d;

    sget-object v1, Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_384:Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lshaded/org/apache/commons/codec/digest/d;-><init>(Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lshaded/org/apache/commons/codec/digest/d;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static N([BLjava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lshaded/org/apache/commons/codec/digest/d;

    sget-object v1, Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_384:Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lshaded/org/apache/commons/codec/digest/d;-><init>(Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lshaded/org/apache/commons/codec/digest/d;->n(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static O([B[B)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lshaded/org/apache/commons/codec/digest/d;

    sget-object v1, Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_384:Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lshaded/org/apache/commons/codec/digest/d;-><init>(Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lshaded/org/apache/commons/codec/digest/d;->q([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static P(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lshaded/org/apache/commons/codec/digest/d;

    sget-object v1, Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_512:Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lshaded/org/apache/commons/codec/digest/d;-><init>(Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lshaded/org/apache/commons/codec/digest/d;->j(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static Q([BLjava/io/InputStream;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lshaded/org/apache/commons/codec/digest/d;

    sget-object v1, Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_512:Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lshaded/org/apache/commons/codec/digest/d;-><init>(Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lshaded/org/apache/commons/codec/digest/d;->i(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static R([B[B)[B
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lshaded/org/apache/commons/codec/digest/d;

    sget-object v1, Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_512:Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lshaded/org/apache/commons/codec/digest/d;-><init>(Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lshaded/org/apache/commons/codec/digest/d;->l([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static S(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lshaded/org/apache/commons/codec/digest/d;

    sget-object v1, Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_512:Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lshaded/org/apache/commons/codec/digest/d;-><init>(Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lshaded/org/apache/commons/codec/digest/d;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static T([BLjava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lshaded/org/apache/commons/codec/digest/d;

    sget-object v1, Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_512:Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lshaded/org/apache/commons/codec/digest/d;-><init>(Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lshaded/org/apache/commons/codec/digest/d;->n(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static U([B[B)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lshaded/org/apache/commons/codec/digest/d;

    sget-object v1, Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_512:Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lshaded/org/apache/commons/codec/digest/d;-><init>(Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lshaded/org/apache/commons/codec/digest/d;->q([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static V(Ljava/lang/String;)Z
    .locals 0

    :try_start_0
    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static W(Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;)Z
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static X(Ljavax/crypto/Mac;Ljava/io/InputStream;)Ljavax/crypto/Mac;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljavax/crypto/Mac;->reset()V

    const/16 v0, 0x400

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    :goto_0
    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 3
    invoke-virtual {p0, v1, v2, v3}, Ljavax/crypto/Mac;->update([BII)V

    .line 4
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static Y(Ljavax/crypto/Mac;Ljava/lang/String;)Ljavax/crypto/Mac;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljavax/crypto/Mac;->reset()V

    .line 2
    invoke-static {p1}, Lshaded/org/apache/commons/codec/binary/m;->k(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->update([B)V

    return-object p0
.end method

.method public static Z(Ljavax/crypto/Mac;[B)Ljavax/crypto/Mac;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljavax/crypto/Mac;->reset()V

    .line 2
    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->update([B)V

    return-object p0
.end method

.method public static a([B)Ljavax/crypto/Mac;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_MD5:Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;

    invoke-static {v0, p0}, Lshaded/org/apache/commons/codec/digest/d;->g(Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;[B)Ljavax/crypto/Mac;

    move-result-object p0

    return-object p0
.end method

.method public static b([B)Ljavax/crypto/Mac;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_1:Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;

    invoke-static {v0, p0}, Lshaded/org/apache/commons/codec/digest/d;->g(Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;[B)Ljavax/crypto/Mac;

    move-result-object p0

    return-object p0
.end method

.method public static c([B)Ljavax/crypto/Mac;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_256:Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;

    invoke-static {v0, p0}, Lshaded/org/apache/commons/codec/digest/d;->g(Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;[B)Ljavax/crypto/Mac;

    move-result-object p0

    return-object p0
.end method

.method public static d([B)Ljavax/crypto/Mac;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_384:Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;

    invoke-static {v0, p0}, Lshaded/org/apache/commons/codec/digest/d;->g(Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;[B)Ljavax/crypto/Mac;

    move-result-object p0

    return-object p0
.end method

.method public static e([B)Ljavax/crypto/Mac;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_512:Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;

    invoke-static {v0, p0}, Lshaded/org/apache/commons/codec/digest/d;->g(Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;[B)Ljavax/crypto/Mac;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;[B)Ljavax/crypto/Mac;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v0, p1, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 2
    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p0

    .line 3
    invoke-virtual {p0, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g(Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;[B)Ljavax/crypto/Mac;
    .locals 0

    invoke-virtual {p0}, Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lshaded/org/apache/commons/codec/digest/d;->f(Ljava/lang/String;[B)Ljavax/crypto/Mac;

    move-result-object p0

    return-object p0
.end method

.method public static r(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lshaded/org/apache/commons/codec/digest/d;

    sget-object v1, Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_MD5:Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lshaded/org/apache/commons/codec/digest/d;-><init>(Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lshaded/org/apache/commons/codec/digest/d;->j(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static s([BLjava/io/InputStream;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lshaded/org/apache/commons/codec/digest/d;

    sget-object v1, Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_MD5:Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lshaded/org/apache/commons/codec/digest/d;-><init>(Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lshaded/org/apache/commons/codec/digest/d;->i(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static t([B[B)[B
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lshaded/org/apache/commons/codec/digest/d;

    sget-object v1, Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_MD5:Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lshaded/org/apache/commons/codec/digest/d;-><init>(Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lshaded/org/apache/commons/codec/digest/d;->l([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lshaded/org/apache/commons/codec/digest/d;

    sget-object v1, Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_MD5:Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lshaded/org/apache/commons/codec/digest/d;-><init>(Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lshaded/org/apache/commons/codec/digest/d;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static v([BLjava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lshaded/org/apache/commons/codec/digest/d;

    sget-object v1, Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_MD5:Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lshaded/org/apache/commons/codec/digest/d;-><init>(Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lshaded/org/apache/commons/codec/digest/d;->n(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static w([B[B)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lshaded/org/apache/commons/codec/digest/d;

    sget-object v1, Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_MD5:Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lshaded/org/apache/commons/codec/digest/d;-><init>(Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lshaded/org/apache/commons/codec/digest/d;->q([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static x(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lshaded/org/apache/commons/codec/digest/d;

    sget-object v1, Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_1:Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lshaded/org/apache/commons/codec/digest/d;-><init>(Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lshaded/org/apache/commons/codec/digest/d;->j(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static y([BLjava/io/InputStream;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lshaded/org/apache/commons/codec/digest/d;

    sget-object v1, Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_1:Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lshaded/org/apache/commons/codec/digest/d;-><init>(Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lshaded/org/apache/commons/codec/digest/d;->i(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static z([B[B)[B
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lshaded/org/apache/commons/codec/digest/d;

    sget-object v1, Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_1:Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lshaded/org/apache/commons/codec/digest/d;-><init>(Lshaded/org/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lshaded/org/apache/commons/codec/digest/d;->l([B)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public h(Ljava/io/File;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1, p1}, Lio/sentry/instrumentation/file/h$b;->a(Ljava/io/FileInputStream;Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Lshaded/org/apache/commons/codec/digest/d;->i(Ljava/io/InputStream;)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    throw p1
.end method

.method public i(Ljava/io/InputStream;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    new-array v1, v0, [B

    :goto_0
    const/4 v2, 0x0

    .line 1
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 2
    iget-object v4, p0, Lshaded/org/apache/commons/codec/digest/d;->a:Ljavax/crypto/Mac;

    invoke-virtual {v4, v1, v2, v3}, Ljavax/crypto/Mac;->update([BII)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lshaded/org/apache/commons/codec/digest/d;->a:Ljavax/crypto/Mac;

    invoke-virtual {p1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/String;)[B
    .locals 1

    iget-object v0, p0, Lshaded/org/apache/commons/codec/digest/d;->a:Ljavax/crypto/Mac;

    invoke-static {p1}, Lshaded/org/apache/commons/codec/binary/m;->k(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/nio/ByteBuffer;)[B
    .locals 1

    .line 1
    iget-object v0, p0, Lshaded/org/apache/commons/codec/digest/d;->a:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update(Ljava/nio/ByteBuffer;)V

    .line 2
    iget-object p1, p0, Lshaded/org/apache/commons/codec/digest/d;->a:Ljavax/crypto/Mac;

    invoke-virtual {p1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p1

    return-object p1
.end method

.method public l([B)[B
    .locals 1

    iget-object v0, p0, Lshaded/org/apache/commons/codec/digest/d;->a:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    return-object p1
.end method

.method public m(Ljava/io/File;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lshaded/org/apache/commons/codec/digest/d;->h(Ljava/io/File;)[B

    move-result-object p1

    invoke-static {p1}, Lshaded/org/apache/commons/codec/binary/l;->r([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public n(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lshaded/org/apache/commons/codec/digest/d;->i(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-static {p1}, Lshaded/org/apache/commons/codec/binary/l;->r([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public o(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lshaded/org/apache/commons/codec/digest/d;->j(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lshaded/org/apache/commons/codec/binary/l;->r([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public p(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lshaded/org/apache/commons/codec/digest/d;->k(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    invoke-static {p1}, Lshaded/org/apache/commons/codec/binary/l;->r([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public q([B)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lshaded/org/apache/commons/codec/digest/d;->l([B)[B

    move-result-object p1

    invoke-static {p1}, Lshaded/org/apache/commons/codec/binary/l;->r([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
