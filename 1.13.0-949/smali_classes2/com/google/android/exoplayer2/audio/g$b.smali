.class final Lcom/google/android/exoplayer2/audio/g$b;
.super Landroid/database/ContentObserver;
.source "AudioCapabilitiesReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/content/ContentResolver;

.field private final b:Landroid/net/Uri;

.field final synthetic c:Lcom/google/android/exoplayer2/audio/g;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/audio/g;Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/g$b;->c:Lcom/google/android/exoplayer2/audio/g;

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3
    iput-object p3, p0, Lcom/google/android/exoplayer2/audio/g$b;->a:Landroid/content/ContentResolver;

    .line 4
    iput-object p4, p0, Lcom/google/android/exoplayer2/audio/g$b;->b:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/g$b;->a:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/g$b;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/g$b;->a:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/g$b;->c:Lcom/google/android/exoplayer2/audio/g;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/g;->b(Lcom/google/android/exoplayer2/audio/g;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/f;->c(Landroid/content/Context;)Lcom/google/android/exoplayer2/audio/f;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/audio/g;->a(Lcom/google/android/exoplayer2/audio/g;Lcom/google/android/exoplayer2/audio/f;)V

    return-void
.end method
