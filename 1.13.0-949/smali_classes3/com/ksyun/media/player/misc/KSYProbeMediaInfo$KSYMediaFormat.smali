.class public final enum Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;
.super Ljava/lang/Enum;
.source "KSYProbeMediaInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KSYMediaFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

.field public static final enum KSY_FORMAT_APE:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

.field public static final enum KSY_FORMAT_ASF:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

.field public static final enum KSY_FORMAT_AVI:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

.field public static final enum KSY_FORMAT_FLV:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

.field public static final enum KSY_FORMAT_HLS:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

.field public static final enum KSY_FORMAT_MKV:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

.field public static final enum KSY_FORMAT_MOV:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

.field public static final enum KSY_FORMAT_MP2T:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

.field public static final enum KSY_FORMAT_NULL:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

.field public static final enum KSY_FORMAT_OGG:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

.field public static final enum KSY_FORMAT_RAWVIDEO:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

.field public static final enum KSY_FORMAT_RM:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

.field public static final enum KSY_FORMAT_WAV:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

    const-string v1, "KSY_FORMAT_NULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;->KSY_FORMAT_NULL:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

    .line 2
    new-instance v1, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

    const-string v3, "KSY_FORMAT_MP2T"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;->KSY_FORMAT_MP2T:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

    .line 3
    new-instance v3, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

    const-string v5, "KSY_FORMAT_MOV"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;->KSY_FORMAT_MOV:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

    .line 4
    new-instance v5, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

    const-string v7, "KSY_FORMAT_AVI"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;->KSY_FORMAT_AVI:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

    .line 5
    new-instance v7, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

    const-string v9, "KSY_FORMAT_FLV"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;->KSY_FORMAT_FLV:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

    .line 6
    new-instance v9, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

    const-string v11, "KSY_FORMAT_MKV"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;->KSY_FORMAT_MKV:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

    .line 7
    new-instance v11, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

    const-string v13, "KSY_FORMAT_ASF"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;->KSY_FORMAT_ASF:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

    .line 8
    new-instance v13, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

    const-string v15, "KSY_FORMAT_RM"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;->KSY_FORMAT_RM:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

    .line 9
    new-instance v15, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

    const-string v14, "KSY_FORMAT_WAV"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;->KSY_FORMAT_WAV:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

    .line 10
    new-instance v14, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

    const-string v12, "KSY_FORMAT_OGG"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;->KSY_FORMAT_OGG:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

    .line 11
    new-instance v12, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

    const-string v10, "KSY_FORMAT_APE"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;->KSY_FORMAT_APE:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

    .line 12
    new-instance v10, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

    const-string v8, "KSY_FORMAT_RAWVIDEO"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;->KSY_FORMAT_RAWVIDEO:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

    .line 13
    new-instance v8, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

    const-string v6, "KSY_FORMAT_HLS"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;->KSY_FORMAT_HLS:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

    const/16 v6, 0xd

    new-array v6, v6, [Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

    aput-object v0, v6, v2

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    aput-object v8, v6, v4

    .line 14
    sput-object v6, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;->$VALUES:[Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;
    .locals 1

    const-class v0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

    return-object p0
.end method

.method public static values()[Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;
    .locals 1

    sget-object v0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;->$VALUES:[Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

    invoke-virtual {v0}, [Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYMediaFormat;

    return-object v0
.end method
