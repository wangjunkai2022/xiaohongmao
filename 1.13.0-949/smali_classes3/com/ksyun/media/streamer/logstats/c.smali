.class public Lcom/ksyun/media/streamer/logstats/c;
.super Ljava/lang/Object;
.source "StatsUtil.java"


# static fields
.field public static a:Ljava/lang/String; = "UTF-8"

.field protected static b:[C = null

.field private static c:[B = null

.field private static d:Landroid/telephony/TelephonyManager; = null

.field private static e:Ljava/lang/String; = null

.field private static f:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ksyun/media/streamer/logstats/c;->b:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(C)B
    .locals 1

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    add-int/lit8 p0, p0, 0xa

    sub-int/2addr p0, v0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, -0x30

    :goto_0
    int-to-byte p0, p0

    return p0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    const-string v0, "ksystreamer_android"

    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "hard264"

    return-object p0

    :cond_0
    const/4 v0, 0x1

    const-string v1, "soft264"

    if-ne p0, v0, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string p0, "soft265"

    return-object p0

    :cond_2
    return-object v1
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 10
    invoke-static {p0, v1}, Lcom/ksyun/media/streamer/logstats/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "phone"

    .line 11
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_1

    .line 12
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 18
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/ksyun/media/streamer/logstats/c;->a([BI)[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 19
    invoke-static {p0}, Lcom/ksyun/media/streamer/logstats/c;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "HmacSHA1"

    .line 1
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v2, Lcom/ksyun/media/streamer/logstats/c;->a:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 2
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p0

    .line 3
    invoke-virtual {p0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 4
    sget-object v0, Lcom/ksyun/media/streamer/logstats/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    const/4 p1, 0x2

    .line 5
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/ksyun/media/streamer/logstats/c;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 7

    .line 20
    array-length v0, p0

    mul-int/lit8 v1, v0, 0x2

    .line 21
    new-array v1, v1, [C

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 22
    aget-byte v3, p0, v2

    mul-int/lit8 v4, v2, 0x2

    .line 23
    sget-object v5, Lcom/ksyun/media/streamer/logstats/c;->b:[C

    ushr-int/lit8 v6, v3, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v5, v6

    aput-char v6, v1, v4

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v3, v3, 0xf

    .line 24
    aget-char v3, v5, v3

    aput-char v3, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static a([BI)[B
    .locals 2

    :try_start_0
    const-string v0, "MD5"

    .line 13
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, p0, v1, p1}, Ljava/security/MessageDigest;->update([BII)V

    .line 15
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 9
    sget-object v0, Lcom/ksyun/media/streamer/logstats/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "Unknown"

    if-eqz p0, :cond_2

    const-string v1, "connectivity"

    .line 1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 2
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    return-object v0

    :cond_0
    const-string p0, "WIFI"

    return-object p0

    :cond_1
    const-string p0, "Mobile Network"

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static b(Ljava/lang/String;)[B
    .locals 5

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 6
    new-array v1, v0, [B

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x2

    .line 8
    aget-char v4, p0, v3

    invoke-static {v4}, Lcom/ksyun/media/streamer/logstats/c;->a(C)B

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v3, v3, 0x1

    aget-char v3, p0, v3

    invoke-static {v3}, Lcom/ksyun/media/streamer/logstats/c;->a(C)B

    move-result v3

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_5

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 1
    invoke-static {p0, v0}, Lcom/ksyun/media/streamer/logstats/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/ksyun/media/streamer/logstats/c;->d(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    sput-object p0, Lcom/ksyun/media/streamer/logstats/c;->d:Landroid/telephony/TelephonyManager;

    const-string v0, "N/A"

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/ksyun/media/streamer/logstats/c;->e:Ljava/lang/String;

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 5
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v1, Lcom/ksyun/media/streamer/logstats/c;->e:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6
    sget-object p0, Lcom/ksyun/media/streamer/logstats/c;->e:Ljava/lang/String;

    const-string v1, "46000"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    sget-object p0, Lcom/ksyun/media/streamer/logstats/c;->e:Ljava/lang/String;

    const-string v1, "46002"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    sget-object p0, Lcom/ksyun/media/streamer/logstats/c;->e:Ljava/lang/String;

    const-string v1, "46001"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "\u4e2d\u56fd\u8054\u901a"

    goto :goto_1

    .line 8
    :cond_2
    sget-object p0, Lcom/ksyun/media/streamer/logstats/c;->e:Ljava/lang/String;

    const-string v1, "46003"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "\u4e2d\u56fd\u7535\u4fe1"

    goto :goto_1

    :cond_3
    :goto_0
    const-string p0, "\u4e2d\u56fd\u79fb\u52a8"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v0, p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 9
    instance-of p0, p0, Ljava/lang/SecurityException;

    if-eqz p0, :cond_4

    const-string p0, "StatsUtil"

    const-string v1, "the apk do not have the permission of READ_PHONE_STATE"

    .line 10
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-object v0

    :cond_5
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 11
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ksyun/media/streamer/logstats/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/ksyun/media/streamer/logstats/c;->f:Ljava/lang/String;

    return-object p0
.end method

.method private static d(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/ksyun/media/streamer/logstats/c;->d:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    const-string v0, "phone"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    sput-object p0, Lcom/ksyun/media/streamer/logstats/c;->d:Landroid/telephony/TelephonyManager;

    .line 3
    :cond_0
    sget-object p0, Lcom/ksyun/media/streamer/logstats/c;->d:Landroid/telephony/TelephonyManager;

    return-object p0
.end method
