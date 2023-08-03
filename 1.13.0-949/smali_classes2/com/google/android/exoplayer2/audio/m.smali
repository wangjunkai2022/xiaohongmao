.class public final synthetic Lcom/google/android/exoplayer2/audio/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/audio/u$a;

.field public final synthetic b:Lcom/google/android/exoplayer2/Format;

.field public final synthetic c:Lcom/google/android/exoplayer2/decoder/e;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/u$a;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/m;->a:Lcom/google/android/exoplayer2/audio/u$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/m;->b:Lcom/google/android/exoplayer2/Format;

    iput-object p3, p0, Lcom/google/android/exoplayer2/audio/m;->c:Lcom/google/android/exoplayer2/decoder/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/m;->a:Lcom/google/android/exoplayer2/audio/u$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/m;->b:Lcom/google/android/exoplayer2/Format;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/m;->c:Lcom/google/android/exoplayer2/decoder/e;

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/u$a;->e(Lcom/google/android/exoplayer2/audio/u$a;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V

    return-void
.end method
