.class public final synthetic Lcom/google/android/exoplayer2/y;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/util/v$a;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/r1;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/r1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/y;->a:Lcom/google/android/exoplayer2/r1;

    iput p2, p0, Lcom/google/android/exoplayer2/y;->b:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/y;->a:Lcom/google/android/exoplayer2/r1;

    iget v1, p0, Lcom/google/android/exoplayer2/y;->b:I

    check-cast p1, Lcom/google/android/exoplayer2/v1$f;

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/p0;->f2(Lcom/google/android/exoplayer2/r1;ILcom/google/android/exoplayer2/v1$f;)V

    return-void
.end method
