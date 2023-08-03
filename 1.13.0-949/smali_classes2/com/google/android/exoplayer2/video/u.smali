.class public final synthetic Lcom/google/android/exoplayer2/video/u;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/video/z$a;

.field public final synthetic b:Lcom/google/android/exoplayer2/video/b0;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/video/z$a;Lcom/google/android/exoplayer2/video/b0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/u;->a:Lcom/google/android/exoplayer2/video/z$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/video/u;->b:Lcom/google/android/exoplayer2/video/b0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/u;->a:Lcom/google/android/exoplayer2/video/z$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/u;->b:Lcom/google/android/exoplayer2/video/b0;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/video/z$a;->h(Lcom/google/android/exoplayer2/video/z$a;Lcom/google/android/exoplayer2/video/b0;)V

    return-void
.end method
