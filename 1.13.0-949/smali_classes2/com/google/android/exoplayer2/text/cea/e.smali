.class abstract Lcom/google/android/exoplayer2/text/cea/e;
.super Ljava/lang/Object;
.source "CeaDecoder.java"

# interfaces
.implements Lcom/google/android/exoplayer2/text/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/cea/e$c;,
        Lcom/google/android/exoplayer2/text/cea/e$b;
    }
.end annotation


# static fields
.field private static final g:I = 0xa

.field private static final h:I = 0x2


# instance fields
.field private final a:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/text/cea/e$b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/text/i;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/google/android/exoplayer2/text/cea/e$b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/google/android/exoplayer2/text/cea/e$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->a:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/e;->a:Ljava/util/ArrayDeque;

    new-instance v3, Lcom/google/android/exoplayer2/text/cea/e$b;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/text/cea/e$b;-><init>(Lcom/google/android/exoplayer2/text/cea/e$a;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/text/cea/e;->b:Ljava/util/ArrayDeque;

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/e;->b:Ljava/util/ArrayDeque;

    new-instance v2, Lcom/google/android/exoplayer2/text/cea/e$c;

    new-instance v3, Lcom/google/android/exoplayer2/text/cea/d;

    invoke-direct {v3, p0}, Lcom/google/android/exoplayer2/text/cea/d;-><init>(Lcom/google/android/exoplayer2/text/cea/e;)V

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/text/cea/e$c;-><init>(Lcom/google/android/exoplayer2/decoder/f$a;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6
    :cond_1
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->c:Ljava/util/PriorityQueue;

    return-void
.end method

.method private m(Lcom/google/android/exoplayer2/text/cea/e$b;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->f()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/text/cea/e;->e:J

    return-void
.end method

.method public bridge synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/e;->h()Lcom/google/android/exoplayer2/text/i;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/exoplayer2/text/h;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/e;->l(Lcom/google/android/exoplayer2/text/h;)V

    return-void
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/e;->g()Lcom/google/android/exoplayer2/text/h;

    move-result-object v0

    return-object v0
.end method

.method protected abstract e()Lcom/google/android/exoplayer2/text/e;
.end method

.method protected abstract f(Lcom/google/android/exoplayer2/text/h;)V
.end method

.method public flush()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->f:J

    .line 2
    iput-wide v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->e:J

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/cea/e$b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/cea/e$b;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/cea/e;->m(Lcom/google/android/exoplayer2/text/cea/e$b;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->d:Lcom/google/android/exoplayer2/text/cea/e$b;

    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/cea/e;->m(Lcom/google/android/exoplayer2/text/cea/e$b;)V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->d:Lcom/google/android/exoplayer2/text/cea/e$b;

    :cond_1
    return-void
.end method

.method public g()Lcom/google/android/exoplayer2/text/h;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->d:Lcom/google/android/exoplayer2/text/cea/e$b;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/cea/e$b;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->d:Lcom/google/android/exoplayer2/text/cea/e$b;

    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public h()Lcom/google/android/exoplayer2/text/i;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->c:Ljava/util/PriorityQueue;

    .line 3
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/cea/e$b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/cea/e$b;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/text/cea/e;->e:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/cea/e$b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/cea/e$b;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/a;->l()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/e;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/text/i;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/text/i;

    const/4 v2, 0x4

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/decoder/a;->e(I)V

    .line 8
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/cea/e;->m(Lcom/google/android/exoplayer2/text/cea/e$b;)V

    return-object v1

    .line 9
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/text/cea/e;->f(Lcom/google/android/exoplayer2/text/h;)V

    .line 10
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/e;->k()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/e;->e()Lcom/google/android/exoplayer2/text/e;

    move-result-object v6

    .line 12
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/e;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/text/i;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/text/i;

    .line 13
    iget-wide v4, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    const-wide v7, 0x7fffffffffffffffL

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/text/i;->p(JLcom/google/android/exoplayer2/text/e;J)V

    .line 14
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/cea/e;->m(Lcom/google/android/exoplayer2/text/cea/e$b;)V

    return-object v1

    .line 15
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/cea/e;->m(Lcom/google/android/exoplayer2/text/cea/e$b;)V

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method protected final i()Lcom/google/android/exoplayer2/text/i;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/i;

    return-object v0
.end method

.method protected final j()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->e:J

    return-wide v0
.end method

.method protected abstract k()Z
.end method

.method public l(Lcom/google/android/exoplayer2/text/h;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->d:Lcom/google/android/exoplayer2/text/cea/e$b;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 2
    check-cast p1, Lcom/google/android/exoplayer2/text/cea/e$b;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/a;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/cea/e;->m(Lcom/google/android/exoplayer2/text/cea/e$b;)V

    goto :goto_1

    .line 5
    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/exoplayer2/text/cea/e;->f:J

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/text/cea/e$b;->u(Lcom/google/android/exoplayer2/text/cea/e$b;J)J

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/cea/e;->d:Lcom/google/android/exoplayer2/text/cea/e$b;

    return-void
.end method

.method protected n(Lcom/google/android/exoplayer2/text/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/i;->f()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method
