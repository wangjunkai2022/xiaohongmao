.class public final Lcom/im/freechat/service/music/MusicService$a;
.super Ljava/lang/Object;
.source "MusicService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/service/music/MusicService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\t\u0010\nR$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/im/freechat/service/music/MusicService$a;",
        "",
        "Lcom/google/android/exoplayer2/v1;",
        "player",
        "Lcom/google/android/exoplayer2/v1;",
        "a",
        "()Lcom/google/android/exoplayer2/v1;",
        "b",
        "(Lcom/google/android/exoplayer2/v1;)V",
        "<init>",
        "()V",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/im/freechat/service/music/MusicService$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/exoplayer2/v1;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    invoke-static {}, Lcom/im/freechat/service/music/MusicService;->c()Lcom/google/android/exoplayer2/v1;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/google/android/exoplayer2/v1;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/v1;
        .annotation build Lm8/h;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/im/freechat/service/music/MusicService;->e(Lcom/google/android/exoplayer2/v1;)V

    return-void
.end method
