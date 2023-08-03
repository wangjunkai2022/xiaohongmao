.class public Lcom/ksyun/media/player/KSYMediaPlayer$Builder;
.super Ljava/lang/Object;
.source "KSYMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/player/KSYMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private enableStatModule:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/ksyun/media/player/KSYMediaPlayer$Builder;->enableStatModule:Z

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ksyun/media/player/KSYMediaPlayer$Builder;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lcom/ksyun/media/player/KSYMediaPlayer$Builder;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/player/KSYMediaPlayer$Builder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ksyun/media/player/KSYMediaPlayer$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ksyun/media/player/KSYMediaPlayer$Builder;->enableStatModule:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/ksyun/media/player/KSYMediaPlayer;
    .locals 2

    new-instance v0, Lcom/ksyun/media/player/KSYMediaPlayer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ksyun/media/player/KSYMediaPlayer;-><init>(Lcom/ksyun/media/player/KSYMediaPlayer$Builder;Lcom/ksyun/media/player/KSYMediaPlayer$1;)V

    return-object v0
.end method

.method public enableKSYStatModule(Z)Lcom/ksyun/media/player/KSYMediaPlayer$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/ksyun/media/player/KSYMediaPlayer$Builder;->enableStatModule:Z

    return-object p0
.end method
