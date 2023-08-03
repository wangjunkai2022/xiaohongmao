.class public final synthetic Lcom/google/android/exoplayer2/audio/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/audio/u$a;

.field public final synthetic b:Lcom/google/android/exoplayer2/decoder/d;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/u$a;Lcom/google/android/exoplayer2/decoder/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/n;->a:Lcom/google/android/exoplayer2/audio/u$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/n;->b:Lcom/google/android/exoplayer2/decoder/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/n;->a:Lcom/google/android/exoplayer2/audio/u$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/n;->b:Lcom/google/android/exoplayer2/decoder/d;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/audio/u$a;->b(Lcom/google/android/exoplayer2/audio/u$a;Lcom/google/android/exoplayer2/decoder/d;)V

    return-void
.end method
