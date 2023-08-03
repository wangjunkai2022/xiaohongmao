.class public final enum Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;
.super Ljava/lang/Enum;
.source "KSYProbeMediaInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KSYAudioCodecType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

.field public static final enum KSY_Audio_AAC:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

.field public static final enum KSY_Audio_AC3:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

.field public static final enum KSY_Audio_AC3_PLUS:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

.field public static final enum KSY_Audio_ALAC:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

.field public static final enum KSY_Audio_AMR_NB:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

.field public static final enum KSY_Audio_AMR_WB:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

.field public static final enum KSY_Audio_APE:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

.field public static final enum KSY_Audio_COOK:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

.field public static final enum KSY_Audio_DIRAC:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

.field public static final enum KSY_Audio_DTS:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

.field public static final enum KSY_Audio_FLAC:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

.field public static final enum KSY_Audio_G723_1:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

.field public static final enum KSY_Audio_G729:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

.field public static final enum KSY_Audio_GSM:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

.field public static final enum KSY_Audio_GSM_MS:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

.field public static final enum KSY_Audio_MP3:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

.field public static final enum KSY_Audio_MPEG:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

.field public static final enum KSY_Audio_NELLYMOSER:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

.field public static final enum KSY_Audio_NULL:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

.field public static final enum KSY_Audio_PCM:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

.field public static final enum KSY_Audio_WMA1:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

.field public static final enum KSY_Audio_WMA2:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

.field public static final enum KSY_Audio_WMAPRO:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 1
    new-instance v0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    const-string v1, "KSY_Audio_NULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;->KSY_Audio_NULL:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    .line 2
    new-instance v1, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    const-string v3, "KSY_Audio_AAC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;->KSY_Audio_AAC:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    .line 3
    new-instance v3, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    const-string v5, "KSY_Audio_AC3"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;->KSY_Audio_AC3:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    .line 4
    new-instance v5, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    const-string v7, "KSY_Audio_AC3_PLUS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;->KSY_Audio_AC3_PLUS:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    .line 5
    new-instance v7, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    const-string v9, "KSY_Audio_PCM"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;->KSY_Audio_PCM:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    .line 6
    new-instance v9, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    const-string v11, "KSY_Audio_ALAC"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;->KSY_Audio_ALAC:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    .line 7
    new-instance v11, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    const-string v13, "KSY_Audio_AMR_NB"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;->KSY_Audio_AMR_NB:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    .line 8
    new-instance v13, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    const-string v15, "KSY_Audio_AMR_WB"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;->KSY_Audio_AMR_WB:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    .line 9
    new-instance v15, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    const-string v14, "KSY_Audio_APE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;->KSY_Audio_APE:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    .line 10
    new-instance v14, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    const-string v12, "KSY_Audio_MPEG"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;->KSY_Audio_MPEG:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    .line 11
    new-instance v12, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    const-string v10, "KSY_Audio_MP3"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;->KSY_Audio_MP3:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    .line 12
    new-instance v10, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    const-string v8, "KSY_Audio_COOK"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;->KSY_Audio_COOK:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    .line 13
    new-instance v8, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    const-string v6, "KSY_Audio_DTS"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;->KSY_Audio_DTS:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    .line 14
    new-instance v6, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    const-string v4, "KSY_Audio_DIRAC"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;->KSY_Audio_DIRAC:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    .line 15
    new-instance v4, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    const-string v2, "KSY_Audio_FLAC"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;->KSY_Audio_FLAC:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    .line 16
    new-instance v2, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    const-string v6, "KSY_Audio_G723_1"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;->KSY_Audio_G723_1:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    .line 17
    new-instance v6, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    const-string v4, "KSY_Audio_G729"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;->KSY_Audio_G729:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    .line 18
    new-instance v4, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    const-string v2, "KSY_Audio_GSM"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;->KSY_Audio_GSM:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    .line 19
    new-instance v2, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    const-string v6, "KSY_Audio_GSM_MS"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;->KSY_Audio_GSM_MS:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    .line 20
    new-instance v6, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    const-string v4, "KSY_Audio_WMA1"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;->KSY_Audio_WMA1:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    .line 21
    new-instance v4, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    const-string v2, "KSY_Audio_WMA2"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;->KSY_Audio_WMA2:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    .line 22
    new-instance v2, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    const-string v6, "KSY_Audio_WMAPRO"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;->KSY_Audio_WMAPRO:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    .line 23
    new-instance v6, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    const-string v4, "KSY_Audio_NELLYMOSER"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;->KSY_Audio_NELLYMOSER:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    const/16 v2, 0x17

    new-array v2, v2, [Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v16, v2, v0

    const/16 v0, 0xe

    aput-object v17, v2, v0

    const/16 v0, 0xf

    aput-object v18, v2, v0

    const/16 v0, 0x10

    aput-object v19, v2, v0

    const/16 v0, 0x11

    aput-object v20, v2, v0

    const/16 v0, 0x12

    aput-object v21, v2, v0

    const/16 v0, 0x13

    aput-object v22, v2, v0

    const/16 v0, 0x14

    aput-object v23, v2, v0

    const/16 v0, 0x15

    aput-object v24, v2, v0

    const/16 v0, 0x16

    aput-object v6, v2, v0

    .line 24
    sput-object v2, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;->$VALUES:[Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;
    .locals 1

    const-class v0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    return-object p0
.end method

.method public static values()[Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;
    .locals 1

    sget-object v0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;->$VALUES:[Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    invoke-virtual {v0}, [Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioCodecType;

    return-object v0
.end method
