.class public final enum Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;
.super Ljava/lang/Enum;
.source "KSYProbeMediaInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/player/misc/KSYProbeMediaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KSYAudioSampleFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

.field public static final enum KSY_SAMPLE_FMT_DBL:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

.field public static final enum KSY_SAMPLE_FMT_DBLP:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

.field public static final enum KSY_SAMPLE_FMT_FLT:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

.field public static final enum KSY_SAMPLE_FMT_FLTP:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

.field public static final enum KSY_SAMPLE_FMT_NB:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

.field public static final enum KSY_SAMPLE_FMT_NULL:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

.field public static final enum KSY_SAMPLE_FMT_S16:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

.field public static final enum KSY_SAMPLE_FMT_S16P:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

.field public static final enum KSY_SAMPLE_FMT_S32:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

.field public static final enum KSY_SAMPLE_FMT_S32P:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

.field public static final enum KSY_SAMPLE_FMT_U8:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

.field public static final enum KSY_SAMPLE_FMT_U8P:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

    const-string v1, "KSY_SAMPLE_FMT_NULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;->KSY_SAMPLE_FMT_NULL:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

    .line 2
    new-instance v1, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

    const-string v3, "KSY_SAMPLE_FMT_U8"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;->KSY_SAMPLE_FMT_U8:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

    .line 3
    new-instance v3, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

    const-string v5, "KSY_SAMPLE_FMT_S16"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;->KSY_SAMPLE_FMT_S16:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

    .line 4
    new-instance v5, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

    const-string v7, "KSY_SAMPLE_FMT_S32"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;->KSY_SAMPLE_FMT_S32:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

    .line 5
    new-instance v7, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

    const-string v9, "KSY_SAMPLE_FMT_FLT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;->KSY_SAMPLE_FMT_FLT:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

    .line 6
    new-instance v9, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

    const-string v11, "KSY_SAMPLE_FMT_DBL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;->KSY_SAMPLE_FMT_DBL:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

    .line 7
    new-instance v11, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

    const-string v13, "KSY_SAMPLE_FMT_U8P"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;->KSY_SAMPLE_FMT_U8P:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

    .line 8
    new-instance v13, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

    const-string v15, "KSY_SAMPLE_FMT_S16P"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;->KSY_SAMPLE_FMT_S16P:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

    .line 9
    new-instance v15, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

    const-string v14, "KSY_SAMPLE_FMT_S32P"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;->KSY_SAMPLE_FMT_S32P:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

    .line 10
    new-instance v14, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

    const-string v12, "KSY_SAMPLE_FMT_FLTP"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;->KSY_SAMPLE_FMT_FLTP:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

    .line 11
    new-instance v12, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

    const-string v10, "KSY_SAMPLE_FMT_DBLP"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;->KSY_SAMPLE_FMT_DBLP:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

    .line 12
    new-instance v10, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

    const-string v8, "KSY_SAMPLE_FMT_NB"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;->KSY_SAMPLE_FMT_NB:Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

    const/16 v8, 0xc

    new-array v8, v8, [Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    const/16 v0, 0xa

    aput-object v12, v8, v0

    aput-object v10, v8, v6

    .line 13
    sput-object v8, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;->$VALUES:[Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;
    .locals 1

    const-class v0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

    return-object p0
.end method

.method public static values()[Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;
    .locals 1

    sget-object v0, Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;->$VALUES:[Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

    invoke-virtual {v0}, [Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ksyun/media/player/misc/KSYProbeMediaInfo$KSYAudioSampleFormat;

    return-object v0
.end method
