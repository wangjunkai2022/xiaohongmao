.class abstract Lcom/ksyun/media/player/misc/KSYMediaFormat$a;
.super Ljava/lang/Object;
.source "KSYMediaFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/player/misc/KSYMediaFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ksyun/media/player/misc/KSYMediaFormat$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/ksyun/media/player/misc/KSYMediaFormat$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "N/A"

    return-object v0
.end method

.method protected abstract a(Lcom/ksyun/media/player/misc/KSYMediaFormat;)Ljava/lang/String;
.end method

.method public b(Lcom/ksyun/media/player/misc/KSYMediaFormat;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/ksyun/media/player/misc/KSYMediaFormat$a;->a(Lcom/ksyun/media/player/misc/KSYMediaFormat;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/ksyun/media/player/misc/KSYMediaFormat$a;->a()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method
