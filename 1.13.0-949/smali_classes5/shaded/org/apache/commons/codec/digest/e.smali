.class public Lshaded/org/apache/commons/codec/digest/e;
.super Ljava/lang/Object;
.source "Md5Crypt.java"


# static fields
.field static final a:Ljava/lang/String; = "$apr1$"

.field private static final b:I = 0x10

.field static final c:Ljava/lang/String; = "$1$"

.field private static final d:I = 0x3e8


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lh9/d;->f:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lshaded/org/apache/commons/codec/digest/e;->c([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lh9/d;->f:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0, p1}, Lshaded/org/apache/commons/codec/digest/e;->d([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c([B)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$apr1$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-static {v1}, Lshaded/org/apache/commons/codec/digest/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lshaded/org/apache/commons/codec/digest/e;->d([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d([BLjava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "$apr1$"

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    :cond_0
    invoke-static {p0, p1, v0}, Lshaded/org/apache/commons/codec/digest/e;->g([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e([B)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$1$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-static {v1}, Lshaded/org/apache/commons/codec/digest/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lshaded/org/apache/commons/codec/digest/e;->f([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f([BLjava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "$1$"

    invoke-static {p0, p1, v0}, Lshaded/org/apache/commons/codec/digest/e;->g([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 1
    array-length v0, p0

    const/16 v1, 0x8

    const-string v2, "$"

    const/4 v3, 0x1

    if-nez p1, :cond_0

    .line 2
    invoke-static {v1}, Lshaded/org/apache/commons/codec/digest/a;->b(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\\$"

    invoke-virtual {p2, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "([\\.\\/a-zA-Z0-9]{1,8}).*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 4
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 5
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 6
    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 7
    :goto_0
    sget-object v4, Lh9/d;->f:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 8
    invoke-static {}, Lshaded/org/apache/commons/codec/digest/c;->r()Ljava/security/MessageDigest;

    move-result-object v6

    .line 9
    invoke-virtual {v6, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 10
    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 11
    invoke-virtual {v6, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 12
    invoke-static {}, Lshaded/org/apache/commons/codec/digest/c;->r()Ljava/security/MessageDigest;

    move-result-object v4

    .line 13
    invoke-virtual {v4, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 14
    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 15
    invoke-virtual {v4, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 16
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    move v8, v0

    :goto_1
    const/16 v9, 0x10

    const/4 v10, 0x0

    if-lez v8, :cond_2

    if-le v8, v9, :cond_1

    goto :goto_2

    :cond_1
    move v9, v8

    .line 17
    :goto_2
    invoke-virtual {v6, v7, v10, v9}, Ljava/security/MessageDigest;->update([BII)V

    add-int/lit8 v8, v8, -0x10

    goto :goto_1

    .line 18
    :cond_2
    invoke-static {v7, v10}, Ljava/util/Arrays;->fill([BB)V

    :goto_3
    if-lez v0, :cond_4

    and-int/lit8 v8, v0, 0x1

    if-ne v8, v3, :cond_3

    .line 19
    aget-byte v8, v7, v10

    invoke-virtual {v6, v8}, Ljava/security/MessageDigest;->update(B)V

    goto :goto_4

    .line 20
    :cond_3
    aget-byte v8, p0, v10

    invoke-virtual {v6, v8}, Ljava/security/MessageDigest;->update(B)V

    :goto_4
    shr-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 21
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    const/4 p2, 0x0

    :goto_5
    const/16 v2, 0x3e8

    if-ge p2, v2, :cond_9

    .line 23
    invoke-static {}, Lshaded/org/apache/commons/codec/digest/c;->r()Ljava/security/MessageDigest;

    move-result-object v4

    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_5

    .line 24
    invoke-virtual {v4, p0}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_6

    .line 25
    :cond_5
    invoke-virtual {v4, p1, v10, v9}, Ljava/security/MessageDigest;->update([BII)V

    .line 26
    :goto_6
    rem-int/lit8 v7, p2, 0x3

    if-eqz v7, :cond_6

    .line 27
    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 28
    :cond_6
    rem-int/lit8 v7, p2, 0x7

    if-eqz v7, :cond_7

    .line 29
    invoke-virtual {v4, p0}, Ljava/security/MessageDigest;->update([B)V

    :cond_7
    if-eqz v2, :cond_8

    .line 30
    invoke-virtual {v4, p1, v10, v9}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_7

    .line 31
    :cond_8
    invoke-virtual {v4, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 32
    :goto_7
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 33
    :cond_9
    aget-byte p2, p1, v10

    const/4 v2, 0x6

    aget-byte v2, p1, v2

    const/16 v7, 0xc

    aget-byte v7, p1, v7

    const/4 v8, 0x4

    invoke-static {p2, v2, v7, v8, v0}, Lshaded/org/apache/commons/codec/digest/a;->a(BBBILjava/lang/StringBuilder;)V

    .line 34
    aget-byte p2, p1, v3

    const/4 v2, 0x7

    aget-byte v2, p1, v2

    const/16 v3, 0xd

    aget-byte v3, p1, v3

    invoke-static {p2, v2, v3, v8, v0}, Lshaded/org/apache/commons/codec/digest/a;->a(BBBILjava/lang/StringBuilder;)V

    const/4 p2, 0x2

    .line 35
    aget-byte v2, p1, p2

    aget-byte v1, p1, v1

    const/16 v3, 0xe

    aget-byte v3, p1, v3

    invoke-static {v2, v1, v3, v8, v0}, Lshaded/org/apache/commons/codec/digest/a;->a(BBBILjava/lang/StringBuilder;)V

    const/4 v1, 0x3

    .line 36
    aget-byte v1, p1, v1

    const/16 v2, 0x9

    aget-byte v2, p1, v2

    const/16 v3, 0xf

    aget-byte v3, p1, v3

    invoke-static {v1, v2, v3, v8, v0}, Lshaded/org/apache/commons/codec/digest/a;->a(BBBILjava/lang/StringBuilder;)V

    .line 37
    aget-byte v1, p1, v8

    const/16 v2, 0xa

    aget-byte v2, p1, v2

    const/4 v3, 0x5

    aget-byte v3, p1, v3

    invoke-static {v1, v2, v3, v8, v0}, Lshaded/org/apache/commons/codec/digest/a;->a(BBBILjava/lang/StringBuilder;)V

    const/16 v1, 0xb

    .line 38
    aget-byte v1, p1, v1

    invoke-static {v10, v10, v1, p2, v0}, Lshaded/org/apache/commons/codec/digest/a;->a(BBBILjava/lang/StringBuilder;)V

    .line 39
    invoke-virtual {v6}, Ljava/security/MessageDigest;->reset()V

    .line 40
    invoke-virtual {v4}, Ljava/security/MessageDigest;->reset()V

    .line 41
    invoke-static {p0, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 42
    invoke-static {v5, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 43
    invoke-static {p1, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 45
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid salt value: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
