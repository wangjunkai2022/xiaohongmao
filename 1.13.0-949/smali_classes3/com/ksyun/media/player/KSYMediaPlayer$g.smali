.class final enum Lcom/ksyun/media/player/KSYMediaPlayer$g;
.super Ljava/lang/Enum;
.source "KSYMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/player/KSYMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ksyun/media/player/KSYMediaPlayer$g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ksyun/media/player/KSYMediaPlayer$g;

.field public static final enum b:Lcom/ksyun/media/player/KSYMediaPlayer$g;

.field public static final enum c:Lcom/ksyun/media/player/KSYMediaPlayer$g;

.field public static final enum d:Lcom/ksyun/media/player/KSYMediaPlayer$g;

.field public static final enum e:Lcom/ksyun/media/player/KSYMediaPlayer$g;

.field public static final enum f:Lcom/ksyun/media/player/KSYMediaPlayer$g;

.field public static final enum g:Lcom/ksyun/media/player/KSYMediaPlayer$g;

.field public static final enum h:Lcom/ksyun/media/player/KSYMediaPlayer$g;

.field public static final enum i:Lcom/ksyun/media/player/KSYMediaPlayer$g;

.field public static final enum j:Lcom/ksyun/media/player/KSYMediaPlayer$g;

.field private static final synthetic k:[Lcom/ksyun/media/player/KSYMediaPlayer$g;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/ksyun/media/player/KSYMediaPlayer$g;

    const-string v1, "STATE_IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ksyun/media/player/KSYMediaPlayer$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ksyun/media/player/KSYMediaPlayer$g;->a:Lcom/ksyun/media/player/KSYMediaPlayer$g;

    .line 2
    new-instance v1, Lcom/ksyun/media/player/KSYMediaPlayer$g;

    const-string v3, "STATE_INITIALIZED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ksyun/media/player/KSYMediaPlayer$g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ksyun/media/player/KSYMediaPlayer$g;->b:Lcom/ksyun/media/player/KSYMediaPlayer$g;

    .line 3
    new-instance v3, Lcom/ksyun/media/player/KSYMediaPlayer$g;

    const-string v5, "STATE_PREPARING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ksyun/media/player/KSYMediaPlayer$g;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ksyun/media/player/KSYMediaPlayer$g;->c:Lcom/ksyun/media/player/KSYMediaPlayer$g;

    .line 4
    new-instance v5, Lcom/ksyun/media/player/KSYMediaPlayer$g;

    const-string v7, "STATE_PREPARED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ksyun/media/player/KSYMediaPlayer$g;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ksyun/media/player/KSYMediaPlayer$g;->d:Lcom/ksyun/media/player/KSYMediaPlayer$g;

    .line 5
    new-instance v7, Lcom/ksyun/media/player/KSYMediaPlayer$g;

    const-string v9, "STATE_PLAYING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/ksyun/media/player/KSYMediaPlayer$g;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ksyun/media/player/KSYMediaPlayer$g;->e:Lcom/ksyun/media/player/KSYMediaPlayer$g;

    .line 6
    new-instance v9, Lcom/ksyun/media/player/KSYMediaPlayer$g;

    const-string v11, "STATE_PAUSED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/ksyun/media/player/KSYMediaPlayer$g;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ksyun/media/player/KSYMediaPlayer$g;->f:Lcom/ksyun/media/player/KSYMediaPlayer$g;

    .line 7
    new-instance v11, Lcom/ksyun/media/player/KSYMediaPlayer$g;

    const-string v13, "STATE_STOPPED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/ksyun/media/player/KSYMediaPlayer$g;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/ksyun/media/player/KSYMediaPlayer$g;->g:Lcom/ksyun/media/player/KSYMediaPlayer$g;

    .line 8
    new-instance v13, Lcom/ksyun/media/player/KSYMediaPlayer$g;

    const-string v15, "STATE_COMPLETED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/ksyun/media/player/KSYMediaPlayer$g;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/ksyun/media/player/KSYMediaPlayer$g;->h:Lcom/ksyun/media/player/KSYMediaPlayer$g;

    .line 9
    new-instance v15, Lcom/ksyun/media/player/KSYMediaPlayer$g;

    const-string v14, "STATE_ERROR"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/ksyun/media/player/KSYMediaPlayer$g;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/ksyun/media/player/KSYMediaPlayer$g;->i:Lcom/ksyun/media/player/KSYMediaPlayer$g;

    .line 10
    new-instance v14, Lcom/ksyun/media/player/KSYMediaPlayer$g;

    const-string v12, "STATE_END"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/ksyun/media/player/KSYMediaPlayer$g;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/ksyun/media/player/KSYMediaPlayer$g;->j:Lcom/ksyun/media/player/KSYMediaPlayer$g;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/ksyun/media/player/KSYMediaPlayer$g;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    .line 11
    sput-object v12, Lcom/ksyun/media/player/KSYMediaPlayer$g;->k:[Lcom/ksyun/media/player/KSYMediaPlayer$g;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ksyun/media/player/KSYMediaPlayer$g;
    .locals 1

    const-class v0, Lcom/ksyun/media/player/KSYMediaPlayer$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ksyun/media/player/KSYMediaPlayer$g;

    return-object p0
.end method

.method public static values()[Lcom/ksyun/media/player/KSYMediaPlayer$g;
    .locals 1

    sget-object v0, Lcom/ksyun/media/player/KSYMediaPlayer$g;->k:[Lcom/ksyun/media/player/KSYMediaPlayer$g;

    invoke-virtual {v0}, [Lcom/ksyun/media/player/KSYMediaPlayer$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ksyun/media/player/KSYMediaPlayer$g;

    return-object v0
.end method
