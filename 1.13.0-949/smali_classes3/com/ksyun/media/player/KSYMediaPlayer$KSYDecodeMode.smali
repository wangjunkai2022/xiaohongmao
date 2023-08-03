.class public final enum Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;
.super Ljava/lang/Enum;
.source "KSYMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/player/KSYMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KSYDecodeMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;

.field public static final enum KSY_DECODE_MODE_AUTO:Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;

.field public static final enum KSY_DECODE_MODE_HARDWARE:Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;

.field public static final enum KSY_DECODE_MODE_SOFTWARE:Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;

    const-string v1, "KSY_DECODE_MODE_SOFTWARE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;->KSY_DECODE_MODE_SOFTWARE:Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;

    .line 2
    new-instance v1, Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;

    const-string v3, "KSY_DECODE_MODE_AUTO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;->KSY_DECODE_MODE_AUTO:Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;

    .line 3
    new-instance v3, Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;

    const-string v5, "KSY_DECODE_MODE_HARDWARE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;->KSY_DECODE_MODE_HARDWARE:Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;->$VALUES:[Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;
    .locals 1

    const-class v0, Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;

    return-object p0
.end method

.method public static values()[Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;
    .locals 1

    sget-object v0, Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;->$VALUES:[Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;

    invoke-virtual {v0}, [Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ksyun/media/player/KSYMediaPlayer$KSYDecodeMode;

    return-object v0
.end method
