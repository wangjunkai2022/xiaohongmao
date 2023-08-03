.class public final synthetic Lcom/google/android/exoplayer2/video/y;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/video/z$a;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/video/z$a;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/y;->a:Lcom/google/android/exoplayer2/video/z$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/video/y;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/exoplayer2/video/y;->c:J

    iput-wide p5, p0, Lcom/google/android/exoplayer2/video/y;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/y;->a:Lcom/google/android/exoplayer2/video/z$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/y;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/y;->c:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/video/y;->d:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/video/z$a;->g(Lcom/google/android/exoplayer2/video/z$a;Ljava/lang/String;JJ)V

    return-void
.end method
