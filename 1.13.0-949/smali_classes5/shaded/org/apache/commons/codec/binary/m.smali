.class public Lshaded/org/apache/commons/codec/binary/m;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 10

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_1

    goto :goto_1

    .line 1
    :cond_1
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_2

    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 3
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v2, v3, :cond_3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    move-object v4, p0

    move-object v7, p1

    invoke-static/range {v4 .. v9}, Lshaded/org/apache/commons/codec/binary/k;->a(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method private static b(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/nio/ByteBuffer;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 1

    sget-object v0, Lh9/d;->f:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lshaded/org/apache/commons/codec/binary/m;->b(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private static d(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;)[B
    .locals 1

    sget-object v0, Lh9/d;->a:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lshaded/org/apache/commons/codec/binary/m;->d(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-static {p1, p0}, Lshaded/org/apache/commons/codec/binary/m;->l(Ljava/lang/String;Ljava/io/UnsupportedEncodingException;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0
.end method

.method public static g(Ljava/lang/String;)[B
    .locals 1

    sget-object v0, Lh9/d;->b:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lshaded/org/apache/commons/codec/binary/m;->d(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/lang/String;)[B
    .locals 1

    sget-object v0, Lh9/d;->c:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lshaded/org/apache/commons/codec/binary/m;->d(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/String;)[B
    .locals 1

    sget-object v0, Lh9/d;->d:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lshaded/org/apache/commons/codec/binary/m;->d(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/lang/String;)[B
    .locals 1

    sget-object v0, Lh9/d;->e:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lshaded/org/apache/commons/codec/binary/m;->d(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljava/lang/String;)[B
    .locals 1

    sget-object v0, Lh9/d;->f:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lshaded/org/apache/commons/codec/binary/m;->d(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method private static l(Ljava/lang/String;Ljava/io/UnsupportedEncodingException;)Ljava/lang/IllegalStateException;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static m([BLjava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 2
    invoke-static {p1, p0}, Lshaded/org/apache/commons/codec/binary/m;->l(Ljava/lang/String;Ljava/io/UnsupportedEncodingException;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0
.end method

.method private static n([BLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static o([B)Ljava/lang/String;
    .locals 1

    sget-object v0, Lh9/d;->a:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lshaded/org/apache/commons/codec/binary/m;->n([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static p([B)Ljava/lang/String;
    .locals 1

    sget-object v0, Lh9/d;->b:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lshaded/org/apache/commons/codec/binary/m;->n([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static q([B)Ljava/lang/String;
    .locals 1

    sget-object v0, Lh9/d;->c:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lshaded/org/apache/commons/codec/binary/m;->n([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static r([B)Ljava/lang/String;
    .locals 1

    sget-object v0, Lh9/d;->d:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lshaded/org/apache/commons/codec/binary/m;->n([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static s([B)Ljava/lang/String;
    .locals 1

    sget-object v0, Lh9/d;->e:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lshaded/org/apache/commons/codec/binary/m;->n([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static t([B)Ljava/lang/String;
    .locals 1

    sget-object v0, Lh9/d;->f:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lshaded/org/apache/commons/codec/binary/m;->n([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
