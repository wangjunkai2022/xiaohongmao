.class public final enum Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;
.super Ljava/lang/Enum;
.source "DnssecConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/constants/DnssecConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DigestAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum GOST:Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

.field public static final enum SHA1:Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

.field public static final enum SHA256:Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

.field public static final enum SHA384:Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

.field private static final synthetic a:[Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;


# instance fields
.field public final description:Ljava/lang/String;

.field public final value:B


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    const-string v1, "SHA1"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "SHA-1"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;->SHA1:Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    .line 2
    new-instance v1, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    const-string v4, "SHA256"

    const/4 v5, 0x2

    const-string v6, "SHA-256"

    invoke-direct {v1, v4, v3, v5, v6}, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;->SHA256:Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    .line 3
    new-instance v4, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    const-string v6, "GOST"

    const/4 v7, 0x3

    const-string v8, "GOST R 34.11-94"

    invoke-direct {v4, v6, v5, v7, v8}, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;->GOST:Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    .line 4
    new-instance v6, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    const-string v8, "SHA384"

    const/4 v9, 0x4

    const-string v10, "SHA-384"

    invoke-direct {v6, v8, v7, v9, v10}, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;->SHA384:Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    new-array v8, v9, [Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    .line 5
    sput-object v8, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;->a:[Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    if-ltz p3, :cond_0

    const/16 p1, 0xff

    if-gt p3, p1, :cond_0

    int-to-byte p1, p3

    .line 2
    iput-byte p1, p0, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;->value:B

    .line 3
    iput-object p4, p0, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;->description:Ljava/lang/String;

    .line 4
    invoke-static {}, Lorg/minidns/constants/DnssecConstants;->b()Ljava/util/Map;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public static forByte(B)Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;
    .locals 1

    invoke-static {}, Lorg/minidns/constants/DnssecConstants;->b()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;
    .locals 1

    const-class v0, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    return-object p0
.end method

.method public static values()[Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;
    .locals 1

    sget-object v0, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;->a:[Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    invoke-virtual {v0}, [Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    return-object v0
.end method
