.class public final enum Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;
.super Ljava/lang/Enum;
.source "DnssecConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/constants/DnssecConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SignatureAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DH:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

.field public static final enum DSA:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

.field public static final enum DSA_NSEC3_SHA1:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

.field public static final enum ECC_GOST:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

.field public static final enum ECDSAP256SHA256:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

.field public static final enum ECDSAP384SHA384:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

.field public static final enum INDIRECT:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

.field public static final enum PRIVATEDNS:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

.field public static final enum PRIVATEOID:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

.field public static final enum RSAMD5:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum RSASHA1:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

.field public static final enum RSASHA1_NSEC3_SHA1:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

.field public static final enum RSASHA256:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

.field public static final enum RSASHA512:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

.field private static final synthetic a:[Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;


# instance fields
.field public final description:Ljava/lang/String;

.field public final number:B


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    const-string v1, "RSAMD5"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "RSA/MD5"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->RSAMD5:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 2
    new-instance v1, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    const-string v4, "DH"

    const/4 v5, 0x2

    const-string v6, "Diffie-Hellman"

    invoke-direct {v1, v4, v3, v5, v6}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->DH:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 3
    new-instance v4, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    const-string v6, "DSA"

    const/4 v7, 0x3

    const-string v8, "DSA/SHA1"

    invoke-direct {v4, v6, v5, v7, v8}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->DSA:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 4
    new-instance v6, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    const-string v8, "RSASHA1"

    const/4 v9, 0x5

    const-string v10, "RSA/SHA-1"

    invoke-direct {v6, v8, v7, v9, v10}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->RSASHA1:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 5
    new-instance v8, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    const-string v10, "DSA_NSEC3_SHA1"

    const/4 v11, 0x4

    const/4 v12, 0x6

    const-string v13, "DSA_NSEC3-SHA1"

    invoke-direct {v8, v10, v11, v12, v13}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->DSA_NSEC3_SHA1:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 6
    new-instance v10, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    const-string v13, "RSASHA1_NSEC3_SHA1"

    const/4 v14, 0x7

    const-string v15, "RSASHA1-NSEC3-SHA1"

    invoke-direct {v10, v13, v9, v14, v15}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->RSASHA1_NSEC3_SHA1:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 7
    new-instance v13, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    const-string v15, "RSASHA256"

    const/16 v9, 0x8

    const-string v11, "RSA/SHA-256"

    invoke-direct {v13, v15, v12, v9, v11}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->RSASHA256:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 8
    new-instance v11, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    const-string v15, "RSASHA512"

    const/16 v12, 0xa

    const-string v7, "RSA/SHA-512"

    invoke-direct {v11, v15, v14, v12, v7}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->RSASHA512:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 9
    new-instance v7, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    const-string v15, "ECC_GOST"

    const/16 v14, 0xc

    const-string v5, "GOST R 34.10-2001"

    invoke-direct {v7, v15, v9, v14, v5}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->ECC_GOST:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 10
    new-instance v5, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    const-string v15, "ECDSAP256SHA256"

    const/16 v9, 0x9

    const/16 v3, 0xd

    const-string v2, "ECDSA Curve P-256 with SHA-256"

    invoke-direct {v5, v15, v9, v3, v2}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->ECDSAP256SHA256:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 11
    new-instance v2, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    const-string v15, "ECDSAP384SHA384"

    const/16 v9, 0xe

    const-string v3, "ECDSA Curve P-384 with SHA-384"

    invoke-direct {v2, v15, v12, v9, v3}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->ECDSAP384SHA384:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 12
    new-instance v3, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    const-string v15, "INDIRECT"

    const/16 v12, 0xb

    const/16 v9, 0xfc

    const-string v14, "Reserved for Indirect Keys"

    invoke-direct {v3, v15, v12, v9, v14}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->INDIRECT:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 13
    new-instance v9, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    const-string v14, "PRIVATEDNS"

    const/16 v15, 0xfd

    const-string v12, "private algorithm"

    move-object/from16 v16, v3

    const/16 v3, 0xc

    invoke-direct {v9, v14, v3, v15, v12}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->PRIVATEDNS:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 14
    new-instance v3, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    const-string v12, "PRIVATEOID"

    const/16 v14, 0xfe

    const-string v15, "private algorithm oid"

    move-object/from16 v17, v9

    const/16 v9, 0xd

    invoke-direct {v3, v12, v9, v14, v15}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->PRIVATEOID:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    const/16 v9, 0xe

    new-array v9, v9, [Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    const/4 v12, 0x0

    aput-object v0, v9, v12

    const/4 v0, 0x1

    aput-object v1, v9, v0

    const/4 v0, 0x2

    aput-object v4, v9, v0

    const/4 v0, 0x3

    aput-object v6, v9, v0

    const/4 v0, 0x4

    aput-object v8, v9, v0

    const/4 v0, 0x5

    aput-object v10, v9, v0

    const/4 v0, 0x6

    aput-object v13, v9, v0

    const/4 v0, 0x7

    aput-object v11, v9, v0

    const/16 v0, 0x8

    aput-object v7, v9, v0

    const/16 v0, 0x9

    aput-object v5, v9, v0

    const/16 v0, 0xa

    aput-object v2, v9, v0

    const/16 v0, 0xb

    aput-object v16, v9, v0

    const/16 v0, 0xc

    aput-object v17, v9, v0

    const/16 v0, 0xd

    aput-object v3, v9, v0

    .line 15
    sput-object v9, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->a:[Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

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
    iput-byte p1, p0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->number:B

    .line 3
    iput-object p4, p0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->description:Ljava/lang/String;

    .line 4
    invoke-static {}, Lorg/minidns/constants/DnssecConstants;->a()Ljava/util/Map;

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

.method public static forByte(B)Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;
    .locals 1

    invoke-static {}, Lorg/minidns/constants/DnssecConstants;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;
    .locals 1

    const-class v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    return-object p0
.end method

.method public static values()[Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;
    .locals 1

    sget-object v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->a:[Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    invoke-virtual {v0}, [Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    return-object v0
.end method
