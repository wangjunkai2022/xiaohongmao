.class public final Lcom/qennnsad/aknkaksd/util/JwtUtil;
.super Ljava/lang/Object;
.source "JwtUtil.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/util/JwtUtil$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJwtUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JwtUtil.kt\ncom/qennnsad/aknkaksd/util/JwtUtil\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,163:1\n37#2:164\n36#2,3:165\n37#2:168\n36#2,3:169\n*S KotlinDebug\n*F\n+ 1 JwtUtil.kt\ncom/qennnsad/aknkaksd/util/JwtUtil\n*L\n67#1:164\n67#1:165,3\n74#1:168\n74#1:169,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001eB\u0011\u0008\u0007\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0008\u0010\u000c\u001a\u00020\u0006H\u0002J\u0010\u0010\u000f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0018\u0010\u0012\u001a\u00020\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0011\u001a\u00020\rJ\u0018\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\rJ$\u0010\u0018\u001a\u00020\u00082\u0008\u0010\u0015\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0016\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0008H\u0007\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/util/JwtUtil;",
        "",
        "",
        "serverDate",
        "Ljava/util/Date;",
        "expireDate",
        "",
        "printDates",
        "",
        "backup",
        "Ljava/security/PublicKey;",
        "genEcPubKey",
        "prepareBouncyCastle",
        "",
        "strEncoded",
        "getJson",
        "jwt",
        "targetField",
        "getJwtBodyField",
        "tag",
        "printJsonParts",
        "ticketJwt",
        "expiryOnly",
        "keyBackup",
        "isTicketValid",
        "Lg5/a;",
        "localDataManager",
        "<init>",
        "(Lg5/a;)V",
        "Companion",
        "a",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation

.annotation runtime Lu7/f;
.end annotation


# static fields
.field public static final Companion:Lcom/qennnsad/aknkaksd/util/JwtUtil$a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "JwtUtil"
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final TICKET_PUB_KEY:Ljava/lang/String; = "MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEUauU14ii/x9GTM5zGD18fF1J/Q1WnkDLM31/KMFjIf/pKC+Ooat90DhQTRm+XEoXyI0hGk/nNpb8rF4dHAPdvQ=="
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final TICKET_PUB_KEY2:Ljava/lang/String; = "MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAE549Pi7bzXwaVBH/kY2Z7PNtbfZ6D8+lZqalJRwIU4/nba28Yw2PILGycVius4RNGv0iqa6gP0kO94X98kCX7WA=="
    .annotation build Lm8/g;
    .end annotation
.end field


# instance fields
.field private final localDataManager:Lg5/a;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/qennnsad/aknkaksd/util/JwtUtil$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/qennnsad/aknkaksd/util/JwtUtil$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/qennnsad/aknkaksd/util/JwtUtil;->Companion:Lcom/qennnsad/aknkaksd/util/JwtUtil$a;

    return-void
.end method

.method public constructor <init>(Lg5/a;)V
    .locals 1
    .param p1    # Lg5/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    const-string v0, "localDataManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/JwtUtil;->localDataManager:Lg5/a;

    .line 3
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/util/JwtUtil;->prepareBouncyCastle()V

    return-void
.end method

.method public static final asMd5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    sget-object v0, Lcom/qennnsad/aknkaksd/util/JwtUtil;->Companion:Lcom/qennnsad/aknkaksd/util/JwtUtil$a;

    invoke-virtual {v0, p0}, Lcom/qennnsad/aknkaksd/util/JwtUtil$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final genEcPubKey(Z)Ljava/security/PublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEUauU14ii/x9GTM5zGD18fF1J/Q1WnkDLM31/KMFjIf/pKC+Ooat90DhQTRm+XEoXyI0hGk/nNpb8rF4dHAPdvQ=="

    goto :goto_0

    :cond_0
    const-string p1, "MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAE549Pi7bzXwaVBH/kY2Z7PNtbfZ6D8+lZqalJRwIU4/nba28Yw2PILGycVius4RNGv0iqa6gP0kO94X98kCX7WA=="

    .line 1
    :goto_0
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string p1, "ECDSA"

    const-string v1, "BC"

    .line 2
    invoke-static {p1, v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 3
    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    return-object p1
.end method

.method private final getJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 1
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    const-string v0, "decode(strEncoded, Base64.URL_SAFE)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    .line 2
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static synthetic isTicketValid$default(Lcom/qennnsad/aknkaksd/util/JwtUtil;Ljava/lang/String;ZZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/util/JwtUtil;->isTicketValid(Ljava/lang/String;ZZ)Z

    move-result p0

    return p0
.end method

.method private final prepareBouncyCastle()V
    .locals 2

    const-string v0, "BC"

    .line 1
    invoke-static {v0}, Ljava/security/Security;->removeProvider(Ljava/lang/String;)V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    new-instance v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v1, v0}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    return-void
.end method

.method private final printDates(JLjava/util/Date;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd MMM yyyy HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "GMT"

    .line 2
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ticket JWT Expires at "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", Server Date: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JwtUtil"

    invoke-static {p2, p1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic printJsonParts$default(Lcom/qennnsad/aknkaksd/util/JwtUtil;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/util/JwtUtil;->printJsonParts(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getJwtBodyField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "targetField"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const-string v3, ""

    if-eqz v2, :cond_2

    return-object v3

    .line 2
    :cond_2
    new-instance v2, Lkotlin/text/Regex;

    const-string v4, "\\."

    invoke-direct {v2, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, v1}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/String;

    .line 3
    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    check-cast p1, [Ljava/lang/String;

    .line 5
    aget-object p1, p1, v0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/util/JwtUtil;->getJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "JSONObject(body).optString(targetField, \"\")"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final isTicketValid(Ljava/lang/String;Z)Z
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/qennnsad/aknkaksd/util/JwtUtil;->isTicketValid$default(Lcom/qennnsad/aknkaksd/util/JwtUtil;Ljava/lang/String;ZZILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isTicketValid(Ljava/lang/String;ZZ)Z
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Validating Ticket JWT... expiracyOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " keyBackup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JwtUtil"

    invoke-static {v1, v0}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p1, "Ticket JWT Empty!"

    .line 3
    invoke-static {v1, p1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 4
    :cond_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "Ticket"

    invoke-virtual {p0, p1, v0}, Lcom/qennnsad/aknkaksd/util/JwtUtil;->printJsonParts(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 5
    :try_start_0
    invoke-static {p1}, Lcom/auth0/jwt/c;->b(Ljava/lang/String;)Lcom/auth0/jwt/interfaces/c;

    move-result-object v3

    .line 6
    iget-object v4, p0, Lcom/qennnsad/aknkaksd/util/JwtUtil;->localDataManager:Lg5/a;

    invoke-virtual {v4}, Lg5/a;->v()J

    move-result-wide v4

    .line 7
    invoke-interface {v3}, Lcom/auth0/jwt/interfaces/i;->b()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-ltz v8, :cond_1

    const-string v3, "Ticket JWT Expired!"

    .line 8
    invoke-static {v1, v3}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    if-eqz p2, :cond_2

    const-string v3, "Ticket JWT is still not expired. Valid!"

    .line 9
    invoke-static {v1, v3}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 10
    :cond_2
    invoke-direct {p0, p3}, Lcom/qennnsad/aknkaksd/util/JwtUtil;->genEcPubKey(Z)Ljava/security/PublicKey;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type java.security.interfaces.ECPublicKey"

    .line 11
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/security/interfaces/ECPublicKey;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/auth0/jwt/algorithms/a;->c(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)Lcom/auth0/jwt/algorithms/a;

    move-result-object v4

    const-string v5, "ECDSA256(ecdsa256PublicKey as ECPublicKey, null)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v4, v3}, Lcom/auth0/jwt/algorithms/a;->G(Lcom/auth0/jwt/interfaces/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "Ticket JWT Valid!"

    .line 13
    invoke-static {v1, p1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catch_0
    move-exception v3

    const-string v4, "Error validating ticket JWT:"

    .line 14
    invoke-static {v1, v4, v3}, Lcom/qennnsad/aknkaksd/util/o0;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    if-nez p3, :cond_3

    .line 16
    invoke-virtual {p0, p1, p2, v0}, Lcom/qennnsad/aknkaksd/util/JwtUtil;->isTicketValid(Ljava/lang/String;ZZ)Z

    move-result p1

    return p1

    :cond_3
    return v2
.end method

.method public final printJsonParts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "JwtUtil"

    const-string v1, "jwt"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "tag"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "\\."

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/String;

    .line 2
    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    check-cast p1, [Ljava/lang/String;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Header: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v2

    invoke-direct {p0, v2}, Lcom/qennnsad/aknkaksd/util/JwtUtil;->getJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Body: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/util/JwtUtil;->getJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/util/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Error decoding json parts"

    .line 6
    invoke-static {v0, p2, p1}, Lcom/qennnsad/aknkaksd/util/o0;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
