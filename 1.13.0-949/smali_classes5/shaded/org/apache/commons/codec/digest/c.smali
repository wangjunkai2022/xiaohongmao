.class public Lshaded/org/apache/commons/codec/digest/c;
.super Ljava/lang/Object;
.source "DigestUtils.java"


# static fields
.field private static final b:I = 0x400


# instance fields
.field private final a:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lshaded/org/apache/commons/codec/digest/c;->a:Ljava/security/MessageDigest;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-static {p1}, Lshaded/org/apache/commons/codec/digest/c;->o(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    invoke-direct {p0, p1}, Lshaded/org/apache/commons/codec/digest/c;-><init>(Ljava/security/MessageDigest;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/MessageDigest;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lshaded/org/apache/commons/codec/digest/c;->a:Ljava/security/MessageDigest;

    return-void
.end method

.method public static A(Ljava/lang/String;)[B
    .locals 0

    invoke-static {p0}, Lshaded/org/apache/commons/codec/binary/m;->k(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lshaded/org/apache/commons/codec/digest/c;->B([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static B([B)[B
    .locals 1

    invoke-static {}, Lshaded/org/apache/commons/codec/digest/c;->q()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static C(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lshaded/org/apache/commons/codec/digest/c;->z(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lshaded/org/apache/commons/codec/binary/l;->r([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static D(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lshaded/org/apache/commons/codec/digest/c;->A(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lshaded/org/apache/commons/codec/binary/l;->r([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static E([B)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lshaded/org/apache/commons/codec/digest/c;->B([B)[B

    move-result-object p0

    invoke-static {p0}, Lshaded/org/apache/commons/codec/binary/l;->r([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static F(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lshaded/org/apache/commons/codec/digest/c;->r()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {v0, p0}, Lshaded/org/apache/commons/codec/digest/c;->f(Ljava/security/MessageDigest;Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static G(Ljava/lang/String;)[B
    .locals 0

    invoke-static {p0}, Lshaded/org/apache/commons/codec/binary/m;->k(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lshaded/org/apache/commons/codec/digest/c;->H([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static H([B)[B
    .locals 1

    invoke-static {}, Lshaded/org/apache/commons/codec/digest/c;->r()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static I(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lshaded/org/apache/commons/codec/digest/c;->F(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lshaded/org/apache/commons/codec/binary/l;->r([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static J(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lshaded/org/apache/commons/codec/digest/c;->G(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lshaded/org/apache/commons/codec/binary/l;->r([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static K([B)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lshaded/org/apache/commons/codec/digest/c;->H([B)[B

    move-result-object p0

    invoke-static {p0}, Lshaded/org/apache/commons/codec/binary/l;->r([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static L(Ljava/io/InputStream;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lshaded/org/apache/commons/codec/digest/c;->O(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static M(Ljava/lang/String;)[B
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lshaded/org/apache/commons/codec/digest/c;->P(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static N([B)[B
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lshaded/org/apache/commons/codec/digest/c;->Q([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static O(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lshaded/org/apache/commons/codec/digest/c;->t()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {v0, p0}, Lshaded/org/apache/commons/codec/digest/c;->f(Ljava/security/MessageDigest;Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static P(Ljava/lang/String;)[B
    .locals 0

    invoke-static {p0}, Lshaded/org/apache/commons/codec/binary/m;->k(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lshaded/org/apache/commons/codec/digest/c;->Q([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static Q([B)[B
    .locals 1

    invoke-static {}, Lshaded/org/apache/commons/codec/digest/c;->t()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static R(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lshaded/org/apache/commons/codec/digest/c;->O(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lshaded/org/apache/commons/codec/binary/l;->r([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static S(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lshaded/org/apache/commons/codec/digest/c;->P(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lshaded/org/apache/commons/codec/binary/l;->r([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static T([B)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lshaded/org/apache/commons/codec/digest/c;->Q([B)[B

    move-result-object p0

    invoke-static {p0}, Lshaded/org/apache/commons/codec/binary/l;->r([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static U(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lshaded/org/apache/commons/codec/digest/c;->u()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {v0, p0}, Lshaded/org/apache/commons/codec/digest/c;->f(Ljava/security/MessageDigest;Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static V(Ljava/lang/String;)[B
    .locals 0

    invoke-static {p0}, Lshaded/org/apache/commons/codec/binary/m;->k(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lshaded/org/apache/commons/codec/digest/c;->W([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static W([B)[B
    .locals 1

    invoke-static {}, Lshaded/org/apache/commons/codec/digest/c;->u()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static X(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lshaded/org/apache/commons/codec/digest/c;->U(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lshaded/org/apache/commons/codec/binary/l;->r([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static Y(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lshaded/org/apache/commons/codec/digest/c;->V(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lshaded/org/apache/commons/codec/binary/l;->r([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static Z([B)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lshaded/org/apache/commons/codec/digest/c;->W([B)[B

    move-result-object p0

    invoke-static {p0}, Lshaded/org/apache/commons/codec/binary/l;->r([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a0(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lshaded/org/apache/commons/codec/digest/c;->v()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {v0, p0}, Lshaded/org/apache/commons/codec/digest/c;->f(Ljava/security/MessageDigest;Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static b0(Ljava/lang/String;)[B
    .locals 0

    invoke-static {p0}, Lshaded/org/apache/commons/codec/binary/m;->k(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lshaded/org/apache/commons/codec/digest/c;->c0([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static c0([B)[B
    .locals 1

    invoke-static {}, Lshaded/org/apache/commons/codec/digest/c;->v()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static d0(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lshaded/org/apache/commons/codec/digest/c;->a0(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lshaded/org/apache/commons/codec/binary/l;->r([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/security/MessageDigest;Ljava/io/File;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lshaded/org/apache/commons/codec/digest/c;->p0(Ljava/security/MessageDigest;Ljava/io/File;)Ljava/security/MessageDigest;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0
.end method

.method public static e0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lshaded/org/apache/commons/codec/digest/c;->b0(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lshaded/org/apache/commons/codec/binary/l;->r([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/security/MessageDigest;Ljava/io/InputStream;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lshaded/org/apache/commons/codec/digest/c;->q0(Ljava/security/MessageDigest;Ljava/io/InputStream;)Ljava/security/MessageDigest;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0
.end method

.method public static f0([B)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lshaded/org/apache/commons/codec/digest/c;->c0([B)[B

    move-result-object p0

    invoke-static {p0}, Lshaded/org/apache/commons/codec/binary/l;->r([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/security/MessageDigest;Ljava/nio/ByteBuffer;)[B
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 2
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0
.end method

.method public static g0(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lshaded/org/apache/commons/codec/digest/c;->w()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {v0, p0}, Lshaded/org/apache/commons/codec/digest/c;->f(Ljava/security/MessageDigest;Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/security/MessageDigest;[B)[B
    .locals 0

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static h0(Ljava/lang/String;)[B
    .locals 0

    invoke-static {p0}, Lshaded/org/apache/commons/codec/binary/m;->k(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lshaded/org/apache/commons/codec/digest/c;->i0([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static i0([B)[B
    .locals 1

    invoke-static {}, Lshaded/org/apache/commons/codec/digest/c;->w()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static j0(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lshaded/org/apache/commons/codec/digest/c;->g0(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lshaded/org/apache/commons/codec/binary/l;->r([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static k0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lshaded/org/apache/commons/codec/digest/c;->h0(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lshaded/org/apache/commons/codec/binary/l;->r([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static l0([B)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lshaded/org/apache/commons/codec/digest/c;->i0([B)[B

    move-result-object p0

    invoke-static {p0}, Lshaded/org/apache/commons/codec/binary/l;->r([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static m0(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lshaded/org/apache/commons/codec/digest/c;->R(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static n0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lshaded/org/apache/commons/codec/digest/c;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static o(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static o0([B)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lshaded/org/apache/commons/codec/digest/c;->T([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static p(Ljava/lang/String;Ljava/security/MessageDigest;)Ljava/security/MessageDigest;
    .locals 0

    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object p1
.end method

.method public static p0(Ljava/security/MessageDigest;Ljava/io/File;)Ljava/security/MessageDigest;
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
    invoke-static {p0, v0}, Lshaded/org/apache/commons/codec/digest/c;->q0(Ljava/security/MessageDigest;Ljava/io/InputStream;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    throw p0
.end method

.method public static q()Ljava/security/MessageDigest;
    .locals 1

    const-string v0, "MD2"

    invoke-static {v0}, Lshaded/org/apache/commons/codec/digest/c;->o(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method public static q0(Ljava/security/MessageDigest;Ljava/io/InputStream;)Ljava/security/MessageDigest;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    :goto_0
    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 2
    invoke-virtual {p0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 3
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static r()Ljava/security/MessageDigest;
    .locals 1

    const-string v0, "MD5"

    invoke-static {v0}, Lshaded/org/apache/commons/codec/digest/c;->o(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method public static r0(Ljava/security/MessageDigest;Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 0

    invoke-static {p1}, Lshaded/org/apache/commons/codec/binary/m;->k(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    return-object p0
.end method

.method public static s0(Ljava/security/MessageDigest;Ljava/nio/ByteBuffer;)Ljava/security/MessageDigest;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public static t()Ljava/security/MessageDigest;
    .locals 1

    const-string v0, "SHA-1"

    invoke-static {v0}, Lshaded/org/apache/commons/codec/digest/c;->o(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method public static t0(Ljava/security/MessageDigest;[B)Ljava/security/MessageDigest;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    return-object p0
.end method

.method public static u()Ljava/security/MessageDigest;
    .locals 1

    const-string v0, "SHA-256"

    invoke-static {v0}, Lshaded/org/apache/commons/codec/digest/c;->o(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method public static v()Ljava/security/MessageDigest;
    .locals 1

    const-string v0, "SHA-384"

    invoke-static {v0}, Lshaded/org/apache/commons/codec/digest/c;->o(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method public static w()Ljava/security/MessageDigest;
    .locals 1

    const-string v0, "SHA-512"

    invoke-static {v0}, Lshaded/org/apache/commons/codec/digest/c;->o(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method public static x()Ljava/security/MessageDigest;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lshaded/org/apache/commons/codec/digest/c;->t()Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method public static y(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lshaded/org/apache/commons/codec/digest/c;->p(Ljava/lang/String;Ljava/security/MessageDigest;)Ljava/security/MessageDigest;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static z(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lshaded/org/apache/commons/codec/digest/c;->q()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {v0, p0}, Lshaded/org/apache/commons/codec/digest/c;->f(Ljava/security/MessageDigest;Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/io/File;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lshaded/org/apache/commons/codec/digest/c;->a:Ljava/security/MessageDigest;

    invoke-static {v0, p1}, Lshaded/org/apache/commons/codec/digest/c;->p0(Ljava/security/MessageDigest;Ljava/io/File;)Ljava/security/MessageDigest;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lshaded/org/apache/commons/codec/digest/c;->a:Ljava/security/MessageDigest;

    invoke-static {v0, p1}, Lshaded/org/apache/commons/codec/digest/c;->q0(Ljava/security/MessageDigest;Ljava/io/InputStream;)Ljava/security/MessageDigest;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)[B
    .locals 1

    iget-object v0, p0, Lshaded/org/apache/commons/codec/digest/c;->a:Ljava/security/MessageDigest;

    invoke-static {v0, p1}, Lshaded/org/apache/commons/codec/digest/c;->r0(Ljava/security/MessageDigest;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/nio/ByteBuffer;)[B
    .locals 1

    iget-object v0, p0, Lshaded/org/apache/commons/codec/digest/c;->a:Ljava/security/MessageDigest;

    invoke-static {v0, p1}, Lshaded/org/apache/commons/codec/digest/c;->s0(Ljava/security/MessageDigest;Ljava/nio/ByteBuffer;)Ljava/security/MessageDigest;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    return-object p1
.end method

.method public i([B)[B
    .locals 1

    iget-object v0, p0, Lshaded/org/apache/commons/codec/digest/c;->a:Ljava/security/MessageDigest;

    invoke-static {v0, p1}, Lshaded/org/apache/commons/codec/digest/c;->t0(Ljava/security/MessageDigest;[B)Ljava/security/MessageDigest;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/io/File;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lshaded/org/apache/commons/codec/digest/c;->a(Ljava/io/File;)[B

    move-result-object p1

    invoke-static {p1}, Lshaded/org/apache/commons/codec/binary/l;->r([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lshaded/org/apache/commons/codec/digest/c;->b(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-static {p1}, Lshaded/org/apache/commons/codec/binary/l;->r([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lshaded/org/apache/commons/codec/digest/c;->c(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lshaded/org/apache/commons/codec/binary/l;->r([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public m(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lshaded/org/apache/commons/codec/digest/c;->d(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    invoke-static {p1}, Lshaded/org/apache/commons/codec/binary/l;->r([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public n([B)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lshaded/org/apache/commons/codec/digest/c;->i([B)[B

    move-result-object p1

    invoke-static {p1}, Lshaded/org/apache/commons/codec/binary/l;->r([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public s()Ljava/security/MessageDigest;
    .locals 1

    iget-object v0, p0, Lshaded/org/apache/commons/codec/digest/c;->a:Ljava/security/MessageDigest;

    return-object v0
.end method
