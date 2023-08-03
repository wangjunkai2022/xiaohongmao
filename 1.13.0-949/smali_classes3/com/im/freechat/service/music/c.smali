.class public final Lcom/im/freechat/service/music/c;
.super Ljava/lang/Object;
.source "MediaSessionConnection.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\"\u001d\u0010\u0006\u001a\u00020\u00008\u0006\u00a2\u0006\u0012\n\u0004\u0008\u0001\u0010\u0002\u0012\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0001\u0010\u0003\"\u001d\u0010\r\u001a\u00020\u00078\u0006\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\t\u0012\u0004\u0008\u000c\u0010\u0005\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroid/support/v4/media/session/PlaybackStateCompat;",
        "a",
        "Landroid/support/v4/media/session/PlaybackStateCompat;",
        "()Landroid/support/v4/media/session/PlaybackStateCompat;",
        "getEMPTY_PLAYBACK_STATE$annotations",
        "()V",
        "EMPTY_PLAYBACK_STATE",
        "Landroid/support/v4/media/MediaMetadataCompat;",
        "b",
        "Landroid/support/v4/media/MediaMetadataCompat;",
        "c",
        "()Landroid/support/v4/media/MediaMetadataCompat;",
        "getNOTHING_PLAYING$annotations",
        "NOTHING_PLAYING",
        "app_prodRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field private static final a:Landroid/support/v4/media/session/PlaybackStateCompat;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final b:Landroid/support/v4/media/MediaMetadataCompat;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$c;

    invoke-direct {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$c;-><init>()V

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/media/session/PlaybackStateCompat$c;->j(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$c;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$c;->c()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    const-string v1, "Builder()\n    .setState(\u2026NONE, 0, 0f)\n    .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/im/freechat/service/music/c;->a:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 4
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$b;

    invoke-direct {v0}, Landroid/support/v4/media/MediaMetadataCompat$b;-><init>()V

    const-string v1, "android.media.metadata.MEDIA_ID"

    const-string v4, ""

    .line 5
    invoke-virtual {v0, v1, v4}, Landroid/support/v4/media/MediaMetadataCompat$b;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$b;

    move-result-object v0

    const-string v1, "android.media.metadata.DURATION"

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/media/MediaMetadataCompat$b;->c(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$b;

    move-result-object v0

    const-string v1, "android.media.metadata.MEDIA_URI"

    .line 7
    invoke-virtual {v0, v1, v4}, Landroid/support/v4/media/MediaMetadataCompat$b;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$b;

    move-result-object v0

    const-string v1, "android.media.metadata.DATE"

    .line 8
    invoke-virtual {v0, v1, v4}, Landroid/support/v4/media/MediaMetadataCompat$b;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$b;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat$b;->a()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    const-string v1, "Builder()\n    .putString\u2026EY_DATE, \"\")\n    .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/im/freechat/service/music/c;->b:Landroid/support/v4/media/MediaMetadataCompat;

    return-void
.end method

.method public static final a()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/im/freechat/service/music/c;->a:Landroid/support/v4/media/session/PlaybackStateCompat;

    return-object v0
.end method

.method public static synthetic b()V
    .locals 0

    return-void
.end method

.method public static final c()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/im/freechat/service/music/c;->b:Landroid/support/v4/media/MediaMetadataCompat;

    return-object v0
.end method

.method public static synthetic d()V
    .locals 0

    return-void
.end method
