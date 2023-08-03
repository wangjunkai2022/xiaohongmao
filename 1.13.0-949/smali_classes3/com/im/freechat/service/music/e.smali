.class public final Lcom/im/freechat/service/music/e;
.super Ljava/lang/Object;
.source "PlaybackPreparer.kt"

# interfaces
.implements Lcom/google/android/exoplayer2/ext/mediasession/b$j;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlaybackPreparer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlaybackPreparer.kt\ncom/im/freechat/service/music/PlaybackPreparer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 MediaMetadataCompatExtensions.kt\ncom/im/freechat/extend/MediaMetadataCompatExtensionsKt\n*L\n1#1,54:1\n288#2:55\n289#2:57\n33#3:56\n*S KotlinDebug\n*F\n+ 1 PlaybackPreparer.kt\ncom/im/freechat/service/music/PlaybackPreparer\n*L\n42#1:55\n42#1:57\n42#1:56\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ4\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016J\u0008\u0010\u000f\u001a\u00020\u000eH\u0016J\u0010\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000cH\u0016J\"\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000c2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016J\"\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000c2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016J\"\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0010\u001a\u00020\u000c2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/im/freechat/service/music/e;",
        "Lcom/google/android/exoplayer2/ext/mediasession/b$j;",
        "Lcom/google/android/exoplayer2/v1;",
        "player",
        "Lcom/google/android/exoplayer2/j;",
        "controlDispatcher",
        "",
        "command",
        "Landroid/os/Bundle;",
        "extras",
        "Landroid/os/ResultReceiver;",
        "cb",
        "",
        "o",
        "",
        "h",
        "playWhenReady",
        "",
        "g",
        "mediaId",
        "t",
        "query",
        "c",
        "Landroid/net/Uri;",
        "uri",
        "j",
        "Lp4/a;",
        "playback",
        "<init>",
        "(Lp4/a;)V",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final c:Lp4/a;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp4/a;)V
    .locals 1
    .param p1    # Lp4/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "playback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/service/music/e;->c:Lp4/a;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string p2, "query"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public g(Z)V
    .locals 0

    return-void
.end method

.method public h()J
    .locals 2

    const-wide/32 v0, 0x8400

    return-wide v0
.end method

.method public j(Landroid/net/Uri;ZLandroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string p2, "uri"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public o(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/j;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)Z
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/v1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/exoplayer2/j;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Landroid/os/ResultReceiver;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string p4, "player"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "controlDispatcher"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "command"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public t(Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string p2, "mediaId"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_4

    const-string p2, "music_source"

    .line 1
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 2
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/support/v4/media/MediaMetadataCompat;

    const-string v2, "it"

    .line 3
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "android.media.metadata.MEDIA_ID"

    .line 4
    invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroid/support/v4/media/MediaMetadataCompat;

    .line 6
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 7
    iget-object p3, p0, Lcom/im/freechat/service/music/e;->c:Lp4/a;

    invoke-interface {p3, p2}, Lp4/a;->M(Ljava/util/List;)V

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    return-void

    .line 8
    :cond_2
    iget-object p2, p0, Lcom/im/freechat/service/music/e;->c:Lp4/a;

    const-wide/16 v0, 0x0

    invoke-interface {p2, p1, v0, v1}, Lp4/a;->x(IJ)V

    return-void

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "no datasource"

    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Required value was null."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
