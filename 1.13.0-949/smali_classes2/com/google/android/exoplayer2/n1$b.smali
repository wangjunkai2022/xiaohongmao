.class final Lcom/google/android/exoplayer2/n1$b;
.super Ljava/lang/Object;
.source "MetadataRetriever.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/n1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/n1$b$a;
    }
.end annotation


# static fields
.field private static final e:I = 0x0

.field private static final f:I = 0x1

.field private static final g:I = 0x2

.field private static final h:I = 0x3


# instance fields
.field private final a:Lcom/google/android/exoplayer2/source/j0;

.field private final b:Landroid/os/HandlerThread;

.field private final c:Lcom/google/android/exoplayer2/util/q;

.field private final d:Lcom/google/common/util/concurrent/e1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/e1<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/j0;Lcom/google/android/exoplayer2/util/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/n1$b;->a:Lcom/google/android/exoplayer2/source/j0;

    .line 3
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "ExoPlayer:MetadataRetriever"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/n1$b;->b:Landroid/os/HandlerThread;

    .line 4
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 5
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    new-instance v0, Lcom/google/android/exoplayer2/n1$b$a;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/n1$b$a;-><init>(Lcom/google/android/exoplayer2/n1$b;)V

    invoke-interface {p2, p1, v0}, Lcom/google/android/exoplayer2/util/d;->d(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/q;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/n1$b;->c:Lcom/google/android/exoplayer2/util/q;

    .line 6
    invoke-static {}, Lcom/google/common/util/concurrent/e1;->R()Lcom/google/common/util/concurrent/e1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/n1$b;->d:Lcom/google/common/util/concurrent/e1;

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/n1$b;)Lcom/google/android/exoplayer2/source/j0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/n1$b;->a:Lcom/google/android/exoplayer2/source/j0;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/n1$b;)Lcom/google/android/exoplayer2/util/q;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/n1$b;->c:Lcom/google/android/exoplayer2/util/q;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/n1$b;)Lcom/google/common/util/concurrent/e1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/n1$b;->d:Lcom/google/common/util/concurrent/e1;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/n1$b;)Landroid/os/HandlerThread;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/n1$b;->b:Landroid/os/HandlerThread;

    return-object p0
.end method


# virtual methods
.method public e(Lcom/google/android/exoplayer2/b1;)Lcom/google/common/util/concurrent/q0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/b1;",
            ")",
            "Lcom/google/common/util/concurrent/q0<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/n1$b;->c:Lcom/google/android/exoplayer2/util/q;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/q;->h(ILjava/lang/Object;)Lcom/google/android/exoplayer2/util/q$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/q$a;->b()V

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/n1$b;->d:Lcom/google/common/util/concurrent/e1;

    return-object p1
.end method
