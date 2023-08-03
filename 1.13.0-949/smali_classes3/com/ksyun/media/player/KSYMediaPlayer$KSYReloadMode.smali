.class public final enum Lcom/ksyun/media/player/KSYMediaPlayer$KSYReloadMode;
.super Ljava/lang/Enum;
.source "KSYMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/player/KSYMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KSYReloadMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ksyun/media/player/KSYMediaPlayer$KSYReloadMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ksyun/media/player/KSYMediaPlayer$KSYReloadMode;

.field public static final enum KSY_RELOAD_MODE_ACCURATE:Lcom/ksyun/media/player/KSYMediaPlayer$KSYReloadMode;

.field public static final enum KSY_RELOAD_MODE_FAST:Lcom/ksyun/media/player/KSYMediaPlayer$KSYReloadMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/ksyun/media/player/KSYMediaPlayer$KSYReloadMode;

    const-string v1, "KSY_RELOAD_MODE_FAST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ksyun/media/player/KSYMediaPlayer$KSYReloadMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ksyun/media/player/KSYMediaPlayer$KSYReloadMode;->KSY_RELOAD_MODE_FAST:Lcom/ksyun/media/player/KSYMediaPlayer$KSYReloadMode;

    .line 2
    new-instance v1, Lcom/ksyun/media/player/KSYMediaPlayer$KSYReloadMode;

    const-string v3, "KSY_RELOAD_MODE_ACCURATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ksyun/media/player/KSYMediaPlayer$KSYReloadMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ksyun/media/player/KSYMediaPlayer$KSYReloadMode;->KSY_RELOAD_MODE_ACCURATE:Lcom/ksyun/media/player/KSYMediaPlayer$KSYReloadMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/ksyun/media/player/KSYMediaPlayer$KSYReloadMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/ksyun/media/player/KSYMediaPlayer$KSYReloadMode;->$VALUES:[Lcom/ksyun/media/player/KSYMediaPlayer$KSYReloadMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ksyun/media/player/KSYMediaPlayer$KSYReloadMode;
    .locals 1

    const-class v0, Lcom/ksyun/media/player/KSYMediaPlayer$KSYReloadMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ksyun/media/player/KSYMediaPlayer$KSYReloadMode;

    return-object p0
.end method

.method public static values()[Lcom/ksyun/media/player/KSYMediaPlayer$KSYReloadMode;
    .locals 1

    sget-object v0, Lcom/ksyun/media/player/KSYMediaPlayer$KSYReloadMode;->$VALUES:[Lcom/ksyun/media/player/KSYMediaPlayer$KSYReloadMode;

    invoke-virtual {v0}, [Lcom/ksyun/media/player/KSYMediaPlayer$KSYReloadMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ksyun/media/player/KSYMediaPlayer$KSYReloadMode;

    return-object v0
.end method
