.class Lcom/google/android/exoplayer2/d$a;
.super Ljava/lang/Object;
.source "AudioFocusManager.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field final synthetic b:Lcom/google/android/exoplayer2/d;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/d;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/d$a;->b:Lcom/google/android/exoplayer2/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/exoplayer2/d$a;->a:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/d$a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/d$a;->b(I)V

    return-void
.end method

.method private synthetic b(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/d$a;->b:Lcom/google/android/exoplayer2/d;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/d;->d(Lcom/google/android/exoplayer2/d;I)V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/d$a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/c;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/c;-><init>(Lcom/google/android/exoplayer2/d$a;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
