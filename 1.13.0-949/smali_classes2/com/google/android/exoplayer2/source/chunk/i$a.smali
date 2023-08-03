.class public final Lcom/google/android/exoplayer2/source/chunk/i$a;
.super Ljava/lang/Object;
.source "ChunkSampleStream.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/x0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/chunk/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/chunk/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/source/chunk/i<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/exoplayer2/source/w0;

.field private final c:I

.field private d:Z

.field final synthetic e:Lcom/google/android/exoplayer2/source/chunk/i;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/chunk/i;Lcom/google/android/exoplayer2/source/chunk/i;Lcom/google/android/exoplayer2/source/w0;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/chunk/i<",
            "TT;>;",
            "Lcom/google/android/exoplayer2/source/w0;",
            "I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/i$a;->e:Lcom/google/android/exoplayer2/source/chunk/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/chunk/i$a;->a:Lcom/google/android/exoplayer2/source/chunk/i;

    .line 3
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/i$a;->b:Lcom/google/android/exoplayer2/source/w0;

    .line 4
    iput p4, p0, Lcom/google/android/exoplayer2/source/chunk/i$a;->c:I

    return-void
.end method

.method private b()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/i$a;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/i$a;->e:Lcom/google/android/exoplayer2/source/chunk/i;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/chunk/i;->B(Lcom/google/android/exoplayer2/source/chunk/i;)Lcom/google/android/exoplayer2/source/h0$a;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/i$a;->e:Lcom/google/android/exoplayer2/source/chunk/i;

    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/chunk/i;->y(Lcom/google/android/exoplayer2/source/chunk/i;)[I

    move-result-object v0

    iget v2, p0, Lcom/google/android/exoplayer2/source/chunk/i$a;->c:I

    aget v2, v0, v2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/i$a;->e:Lcom/google/android/exoplayer2/source/chunk/i;

    .line 4
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/chunk/i;->z(Lcom/google/android/exoplayer2/source/chunk/i;)[Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iget v3, p0, Lcom/google/android/exoplayer2/source/chunk/i$a;->c:I

    aget-object v3, v0, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/i$a;->e:Lcom/google/android/exoplayer2/source/chunk/i;

    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/chunk/i;->A(Lcom/google/android/exoplayer2/source/chunk/i;)J

    move-result-wide v6

    .line 6
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/h0$a;->i(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/i$a;->d:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/i$a;->e:Lcom/google/android/exoplayer2/source/chunk/i;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/chunk/i;->x(Lcom/google/android/exoplayer2/source/chunk/i;)[Z

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/source/chunk/i$a;->c:I

    aget-boolean v0, v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/i$a;->e:Lcom/google/android/exoplayer2/source/chunk/i;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/chunk/i;->x(Lcom/google/android/exoplayer2/source/chunk/i;)[Z

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/source/chunk/i$a;->c:I

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    return-void
.end method

.method public f()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/i$a;->e:Lcom/google/android/exoplayer2/source/chunk/i;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/chunk/i;->J()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/i$a;->b:Lcom/google/android/exoplayer2/source/w0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/i$a;->e:Lcom/google/android/exoplayer2/source/chunk/i;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/chunk/i;->w:Z

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/w0;->L(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q(Lcom/google/android/exoplayer2/v0;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/i$a;->e:Lcom/google/android/exoplayer2/source/chunk/i;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/chunk/i;->J()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/i$a;->e:Lcom/google/android/exoplayer2/source/chunk/i;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/chunk/i;->w(Lcom/google/android/exoplayer2/source/chunk/i;)Lcom/google/android/exoplayer2/source/chunk/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/i$a;->e:Lcom/google/android/exoplayer2/source/chunk/i;

    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/chunk/i;->w(Lcom/google/android/exoplayer2/source/chunk/i;)Lcom/google/android/exoplayer2/source/chunk/a;

    move-result-object v0

    iget v2, p0, Lcom/google/android/exoplayer2/source/chunk/i$a;->c:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/chunk/a;->i(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/i$a;->b:Lcom/google/android/exoplayer2/source/w0;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/w0;->D()I

    move-result v2

    if-gt v0, v2, :cond_1

    return v1

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/chunk/i$a;->b()V

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/i$a;->b:Lcom/google/android/exoplayer2/source/w0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/i$a;->e:Lcom/google/android/exoplayer2/source/chunk/i;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/chunk/i;->w:Z

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/exoplayer2/source/w0;->T(Lcom/google/android/exoplayer2/v0;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;IZ)I

    move-result p1

    return p1
.end method

.method public t(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/i$a;->e:Lcom/google/android/exoplayer2/source/chunk/i;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/chunk/i;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/i$a;->b:Lcom/google/android/exoplayer2/source/w0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/i$a;->e:Lcom/google/android/exoplayer2/source/chunk/i;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/chunk/i;->w:Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/source/w0;->F(JZ)I

    move-result p1

    .line 3
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/chunk/i$a;->e:Lcom/google/android/exoplayer2/source/chunk/i;

    invoke-static {p2}, Lcom/google/android/exoplayer2/source/chunk/i;->w(Lcom/google/android/exoplayer2/source/chunk/i;)Lcom/google/android/exoplayer2/source/chunk/a;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 4
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/chunk/i$a;->e:Lcom/google/android/exoplayer2/source/chunk/i;

    .line 5
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/chunk/i;->w(Lcom/google/android/exoplayer2/source/chunk/i;)Lcom/google/android/exoplayer2/source/chunk/a;

    move-result-object p2

    iget v0, p0, Lcom/google/android/exoplayer2/source/chunk/i$a;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/source/chunk/a;->i(I)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/i$a;->b:Lcom/google/android/exoplayer2/source/w0;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/w0;->D()I

    move-result v0

    sub-int/2addr p2, v0

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 8
    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/chunk/i$a;->b:Lcom/google/android/exoplayer2/source/w0;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/w0;->f0(I)V

    if-lez p1, :cond_2

    .line 9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/chunk/i$a;->b()V

    :cond_2
    return p1
.end method
