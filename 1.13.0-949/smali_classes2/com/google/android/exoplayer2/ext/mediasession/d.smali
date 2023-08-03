.class public final Lcom/google/android/exoplayer2/ext/mediasession/d;
.super Ljava/lang/Object;
.source "RepeatModeActionProvider.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ext/mediasession/b$e;


# static fields
.field public static final e:I = 0x3

.field private static final f:Ljava/lang/String; = "ACTION_EXO_REPEAT_MODE"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/CharSequence;

.field private final c:Ljava/lang/CharSequence;

.field private final d:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ext/mediasession/d;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p2, p0, Lcom/google/android/exoplayer2/ext/mediasession/d;->a:I

    .line 4
    sget p2, Lcom/google/android/exoplayer2/ext/mediasession/c$h;->a:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ext/mediasession/d;->b:Ljava/lang/CharSequence;

    .line 5
    sget p2, Lcom/google/android/exoplayer2/ext/mediasession/c$h;->c:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ext/mediasession/d;->c:Ljava/lang/CharSequence;

    .line 6
    sget p2, Lcom/google/android/exoplayer2/ext/mediasession/c$h;->b:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/d;->d:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/j;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->k()I

    move-result p3

    .line 2
    iget p4, p0, Lcom/google/android/exoplayer2/ext/mediasession/d;->a:I

    invoke-static {p3, p4}, Lcom/google/android/exoplayer2/util/j0;->a(II)I

    move-result p4

    if-eq p3, p4, :cond_0

    .line 3
    invoke-interface {p2, p1, p4}, Lcom/google/android/exoplayer2/j;->e(Lcom/google/android/exoplayer2/v1;I)Z

    :cond_0
    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/v1;)Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;
    .locals 3

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->k()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/d;->d:Ljava/lang/CharSequence;

    .line 3
    sget v0, Lcom/google/android/exoplayer2/ext/mediasession/c$d;->b:I

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/d;->b:Ljava/lang/CharSequence;

    .line 5
    sget v0, Lcom/google/android/exoplayer2/ext/mediasession/c$d;->a:I

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/mediasession/d;->c:Ljava/lang/CharSequence;

    .line 7
    sget v0, Lcom/google/android/exoplayer2/ext/mediasession/c$d;->c:I

    .line 8
    :goto_0
    new-instance v1, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$b;

    const-string v2, "ACTION_EXO_REPEAT_MODE"

    invoke-direct {v1, v2, p1, v0}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$b;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 9
    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction$b;->a()Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    move-result-object p1

    return-object p1
.end method
