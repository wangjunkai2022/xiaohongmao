.class public final synthetic Lcom/google/android/exoplayer2/audio/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/audio/u$a;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/u$a;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/l;->a:Lcom/google/android/exoplayer2/audio/u$a;

    iput-wide p2, p0, Lcom/google/android/exoplayer2/audio/l;->b:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/l;->a:Lcom/google/android/exoplayer2/audio/u$a;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/audio/l;->b:J

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/u$a;->h(Lcom/google/android/exoplayer2/audio/u$a;J)V

    return-void
.end method
