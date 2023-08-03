.class public final Lcom/google/android/exoplayer2/ext/mediasession/e;
.super Ljava/lang/Object;
.source "TimelineQueueEditor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ext/mediasession/b$k;
.implements Lcom/google/android/exoplayer2/ext/mediasession/b$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ext/mediasession/e$c;,
        Lcom/google/android/exoplayer2/ext/mediasession/e$b;,
        Lcom/google/android/exoplayer2/ext/mediasession/e$d;,
        Lcom/google/android/exoplayer2/ext/mediasession/e$a;
    }
.end annotation


# static fields
.field public static final g:Ljava/lang/String; = "exo_move_window"

.field public static final h:Ljava/lang/String; = "from_index"

.field public static final i:Ljava/lang/String; = "to_index"


# instance fields
.field private final c:Landroid/support/v4/media/session/MediaControllerCompat;

.field private final d:Lcom/google/android/exoplayer2/ext/mediasession/e$d;

.field private final e:Lcom/google/android/exoplayer2/ext/mediasession/e$a;

.field private final f:Lcom/google/android/exoplayer2/ext/mediasession/e$b;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaControllerCompat;Lcom/google/android/exoplayer2/ext/mediasession/e$d;Lcom/google/android/exoplayer2/ext/mediasession/e$a;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/ext/mediasession/e$c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/ext/mediasession/e$c;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/ext/mediasession/e;-><init>(Landroid/support/v4/media/session/MediaControllerCompat;Lcom/google/android/exoplayer2/ext/mediasession/e$d;Lcom/google/android/exoplayer2/ext/mediasession/e$a;Lcom/google/android/exoplayer2/ext/mediasession/e$b;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/media/session/MediaControllerCompat;Lcom/google/android/exoplayer2/ext/mediasession/e$d;Lcom/google/android/exoplayer2/ext/mediasession/e$a;Lcom/google/android/exoplayer2/ext/mediasession/e$b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/e;->c:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 4
    iput-object p2, p0, Lcom/google/android/exoplayer2/ext/mediasession/e;->d:Lcom/google/android/exoplayer2/ext/mediasession/e$d;

    .line 5
    iput-object p3, p0, Lcom/google/android/exoplayer2/ext/mediasession/e;->e:Lcom/google/android/exoplayer2/ext/mediasession/e$a;

    .line 6
    iput-object p4, p0, Lcom/google/android/exoplayer2/ext/mediasession/e;->f:Lcom/google/android/exoplayer2/ext/mediasession/e$b;

    return-void
.end method


# virtual methods
.method public i(Lcom/google/android/exoplayer2/v1;Landroid/support/v4/media/MediaDescriptionCompat;)V
    .locals 1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->A0()Lcom/google/android/exoplayer2/s2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2;->u()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ext/mediasession/e;->m(Lcom/google/android/exoplayer2/v1;Landroid/support/v4/media/MediaDescriptionCompat;I)V

    return-void
.end method

.method public m(Lcom/google/android/exoplayer2/v1;Landroid/support/v4/media/MediaDescriptionCompat;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/e;->e:Lcom/google/android/exoplayer2/ext/mediasession/e$a;

    invoke-interface {v0, p2}, Lcom/google/android/exoplayer2/ext/mediasession/e$a;->a(Landroid/support/v4/media/MediaDescriptionCompat;)Lcom/google/android/exoplayer2/b1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/mediasession/e;->d:Lcom/google/android/exoplayer2/ext/mediasession/e$d;

    invoke-interface {v1, p3, p2}, Lcom/google/android/exoplayer2/ext/mediasession/e$d;->a(ILandroid/support/v4/media/MediaDescriptionCompat;)V

    .line 3
    invoke-interface {p1, p3, v0}, Lcom/google/android/exoplayer2/v1;->M1(ILcom/google/android/exoplayer2/b1;)V

    :cond_0
    return-void
.end method

.method public o(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/j;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)Z
    .locals 0
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/os/ResultReceiver;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string p2, "exo_move_window"

    .line 1
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "from_index"

    const/4 p3, -0x1

    .line 2
    invoke-virtual {p4, p2, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    const-string p5, "to_index"

    .line 3
    invoke-virtual {p4, p5, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p4

    if-eq p2, p3, :cond_1

    if-eq p4, p3, :cond_1

    .line 4
    iget-object p3, p0, Lcom/google/android/exoplayer2/ext/mediasession/e;->d:Lcom/google/android/exoplayer2/ext/mediasession/e$d;

    invoke-interface {p3, p2, p4}, Lcom/google/android/exoplayer2/ext/mediasession/e$d;->b(II)V

    .line 5
    invoke-interface {p1, p2, p4}, Lcom/google/android/exoplayer2/v1;->z1(II)V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public s(Lcom/google/android/exoplayer2/v1;Landroid/support/v4/media/MediaDescriptionCompat;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/mediasession/e;->c:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->m()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/mediasession/e;->f:Lcom/google/android/exoplayer2/ext/mediasession/e$b;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lcom/google/android/exoplayer2/ext/mediasession/e$b;->a(Landroid/support/v4/media/MediaDescriptionCompat;Landroid/support/v4/media/MediaDescriptionCompat;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/mediasession/e;->d:Lcom/google/android/exoplayer2/ext/mediasession/e$d;

    invoke-interface {p2, v1}, Lcom/google/android/exoplayer2/ext/mediasession/e$d;->remove(I)V

    .line 5
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/v1;->d0(I)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
