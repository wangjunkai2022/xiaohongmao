.class public final synthetic Lcom/google/android/exoplayer2/i1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/j1;

.field public final synthetic b:Lcom/google/common/collect/ImmutableList$a;

.field public final synthetic c:Lcom/google/android/exoplayer2/source/z$a;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/j1;Lcom/google/common/collect/ImmutableList$a;Lcom/google/android/exoplayer2/source/z$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/i1;->a:Lcom/google/android/exoplayer2/j1;

    iput-object p2, p0, Lcom/google/android/exoplayer2/i1;->b:Lcom/google/common/collect/ImmutableList$a;

    iput-object p3, p0, Lcom/google/android/exoplayer2/i1;->c:Lcom/google/android/exoplayer2/source/z$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/i1;->a:Lcom/google/android/exoplayer2/j1;

    iget-object v1, p0, Lcom/google/android/exoplayer2/i1;->b:Lcom/google/common/collect/ImmutableList$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/i1;->c:Lcom/google/android/exoplayer2/source/z$a;

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/j1;->a(Lcom/google/android/exoplayer2/j1;Lcom/google/common/collect/ImmutableList$a;Lcom/google/android/exoplayer2/source/z$a;)V

    return-void
.end method
