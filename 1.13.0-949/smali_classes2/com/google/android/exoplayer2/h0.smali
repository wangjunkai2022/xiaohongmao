.class public final synthetic Lcom/google/android/exoplayer2/h0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/util/v$a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/exoplayer2/v1$l;

.field public final synthetic c:Lcom/google/android/exoplayer2/v1$l;


# direct methods
.method public synthetic constructor <init>(ILcom/google/android/exoplayer2/v1$l;Lcom/google/android/exoplayer2/v1$l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/h0;->a:I

    iput-object p2, p0, Lcom/google/android/exoplayer2/h0;->b:Lcom/google/android/exoplayer2/v1$l;

    iput-object p3, p0, Lcom/google/android/exoplayer2/h0;->c:Lcom/google/android/exoplayer2/v1$l;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/google/android/exoplayer2/h0;->a:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/h0;->b:Lcom/google/android/exoplayer2/v1$l;

    iget-object v2, p0, Lcom/google/android/exoplayer2/h0;->c:Lcom/google/android/exoplayer2/v1$l;

    check-cast p1, Lcom/google/android/exoplayer2/v1$f;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/exoplayer2/p0;->b2(ILcom/google/android/exoplayer2/v1$l;Lcom/google/android/exoplayer2/v1$l;Lcom/google/android/exoplayer2/v1$f;)V

    return-void
.end method
