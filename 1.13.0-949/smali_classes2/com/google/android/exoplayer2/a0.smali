.class public final synthetic Lcom/google/android/exoplayer2/a0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/util/v$a;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/r1;

.field public final synthetic b:Lcom/google/android/exoplayer2/trackselection/m;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/r1;Lcom/google/android/exoplayer2/trackselection/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/a0;->a:Lcom/google/android/exoplayer2/r1;

    iput-object p2, p0, Lcom/google/android/exoplayer2/a0;->b:Lcom/google/android/exoplayer2/trackselection/m;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/a0;->a:Lcom/google/android/exoplayer2/r1;

    iget-object v1, p0, Lcom/google/android/exoplayer2/a0;->b:Lcom/google/android/exoplayer2/trackselection/m;

    check-cast p1, Lcom/google/android/exoplayer2/v1$f;

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/p0;->R1(Lcom/google/android/exoplayer2/r1;Lcom/google/android/exoplayer2/trackselection/m;Lcom/google/android/exoplayer2/v1$f;)V

    return-void
.end method
