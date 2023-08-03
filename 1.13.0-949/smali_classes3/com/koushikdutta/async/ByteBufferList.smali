.class public Lcom/koushikdutta/async/ByteBufferList;
.super Ljava/lang/Object;
.source "ByteBufferList.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/ByteBufferList$Reclaimer;
    }
.end annotation


# static fields
.field static d:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static e:I

.field public static f:I

.field static g:I

.field static h:I

.field private static final i:Ljava/lang/Object;

.field public static final j:Ljava/nio/ByteBuffer;


# instance fields
.field a:Lcom/koushikdutta/async/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/util/ArrayDeque<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/nio/ByteOrder;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/PriorityQueue;

    new-instance v1, Lcom/koushikdutta/async/ByteBufferList$Reclaimer;

    invoke-direct {v1}, Lcom/koushikdutta/async/ByteBufferList$Reclaimer;-><init>()V

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    sput-object v0, Lcom/koushikdutta/async/ByteBufferList;->d:Ljava/util/PriorityQueue;

    const/high16 v0, 0x100000

    .line 2
    sput v0, Lcom/koushikdutta/async/ByteBufferList;->e:I

    const/high16 v0, 0x40000

    .line 3
    sput v0, Lcom/koushikdutta/async/ByteBufferList;->f:I

    const/4 v0, 0x0

    .line 4
    sput v0, Lcom/koushikdutta/async/ByteBufferList;->g:I

    .line 5
    sput v0, Lcom/koushikdutta/async/ByteBufferList;->h:I

    .line 6
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/koushikdutta/async/ByteBufferList;->i:Ljava/lang/Object;

    .line 7
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/ByteBufferList;->j:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-direct {v0}, Lcom/koushikdutta/async/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/util/ArrayDeque;

    .line 3
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->b:Ljava/nio/ByteOrder;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/koushikdutta/async/ByteBufferList;->c:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-direct {v0}, Lcom/koushikdutta/async/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/util/ArrayDeque;

    .line 12
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->b:Ljava/nio/ByteOrder;

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/koushikdutta/async/ByteBufferList;->c:I

    .line 14
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/ByteBufferList;->b(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    return-void
.end method

.method public varargs constructor <init>([Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-direct {v0}, Lcom/koushikdutta/async/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/util/ArrayDeque;

    .line 7
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->b:Ljava/nio/ByteOrder;

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/koushikdutta/async/ByteBufferList;->c:I

    .line 9
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/ByteBufferList;->d([Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    return-void
.end method

.method private J(I)Ljava/nio/ByteBuffer;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->P()I

    move-result v0

    if-lt v0, p1, :cond_6

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    :goto_0
    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->M(Ljava/nio/ByteBuffer;)V

    .line 5
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 6
    sget-object p1, Lcom/koushikdutta/async/ByteBufferList;->j:Ljava/nio/ByteBuffer;

    return-object p1

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lt v1, p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/koushikdutta/async/ByteBufferList;->b:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    invoke-static {p1}, Lcom/koushikdutta/async/ByteBufferList;->y(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 11
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    move-object v4, v3

    :cond_3
    if-ge v2, p1, :cond_4

    .line 12
    iget-object v4, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v4}, Lcom/koushikdutta/async/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    sub-int v5, p1, v2

    .line 13
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 14
    invoke-virtual {v4, v1, v2, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v2, v5

    .line 15
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-nez v5, :cond_3

    .line 16
    invoke-static {v4}, Lcom/koushikdutta/async/ByteBufferList;->M(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_5

    .line 17
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    if-lez p1, :cond_5

    .line 18
    iget-object p1, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {p1, v4}, Lcom/koushikdutta/async/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 19
    :cond_5
    iget-object p1, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 20
    iget-object p1, p0, Lcom/koushikdutta/async/ByteBufferList;->b:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 21
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->P()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static M(Ljava/nio/ByteBuffer;)V
    .locals 4

    if-eqz p0, :cond_7

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-eq v0, v1, :cond_1

    goto/16 :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    const/16 v1, 0x2000

    if-ge v0, v1, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    sget v1, Lcom/koushikdutta/async/ByteBufferList;->f:I

    if-le v0, v1, :cond_3

    return-void

    .line 5
    :cond_3
    invoke-static {}, Lcom/koushikdutta/async/ByteBufferList;->u()Ljava/util/PriorityQueue;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    .line 6
    :cond_4
    sget-object v1, Lcom/koushikdutta/async/ByteBufferList;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 7
    :goto_0
    :try_start_0
    sget v2, Lcom/koushikdutta/async/ByteBufferList;->g:I

    sget v3, Lcom/koushikdutta/async/ByteBufferList;->e:I

    if-le v2, v3, :cond_5

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 8
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 9
    sget v3, Lcom/koushikdutta/async/ByteBufferList;->g:I

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    sub-int/2addr v3, v2

    sput v3, Lcom/koushikdutta/async/ByteBufferList;->g:I

    goto :goto_0

    .line 10
    :cond_5
    sget v2, Lcom/koushikdutta/async/ByteBufferList;->g:I

    sget v3, Lcom/koushikdutta/async/ByteBufferList;->e:I

    if-le v2, v3, :cond_6

    .line 11
    monitor-exit v1

    return-void

    :cond_6
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 13
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 14
    sget v2, Lcom/koushikdutta/async/ByteBufferList;->g:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    add-int/2addr v2, v3

    sput v2, Lcom/koushikdutta/async/ByteBufferList;->g:I

    .line 15
    invoke-virtual {v0, p0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 16
    sget v0, Lcom/koushikdutta/async/ByteBufferList;->h:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sput p0, Lcom/koushikdutta/async/ByteBufferList;->h:I

    .line 17
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_7
    :goto_1
    return-void
.end method

.method private static N(Ljava/nio/ByteBuffer;)Z
    .locals 2

    sget-object v0, Lcom/koushikdutta/async/ByteBufferList;->d:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    if-ne v1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static R(I)V
    .locals 0

    sput p0, Lcom/koushikdutta/async/ByteBufferList;->f:I

    return-void
.end method

.method public static S(I)V
    .locals 0

    sput p0, Lcom/koushikdutta/async/ByteBufferList;->e:I

    return-void
.end method

.method public static X(Ljava/io/OutputStream;Ljava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 4
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 8
    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method private f(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->P()I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/koushikdutta/async/ByteBufferList;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/koushikdutta/async/ByteBufferList;->c:I

    :cond_0
    return-void
.end method

.method public static g(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->y(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method private static u()Ljava/util/PriorityQueue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/PriorityQueue<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Lcom/koushikdutta/async/ByteBufferList;->d:Ljava/util/PriorityQueue;

    return-object v0
.end method

.method public static y(I)Ljava/nio/ByteBuffer;
    .locals 5

    .line 1
    sget v0, Lcom/koushikdutta/async/ByteBufferList;->h:I

    if-gt p0, v0, :cond_3

    .line 2
    invoke-static {}, Lcom/koushikdutta/async/ByteBufferList;->u()Ljava/util/PriorityQueue;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3
    sget-object v1, Lcom/koushikdutta/async/ByteBufferList;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 5
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    .line 7
    sput v3, Lcom/koushikdutta/async/ByteBufferList;->h:I

    .line 8
    :cond_1
    sget v3, Lcom/koushikdutta/async/ByteBufferList;->g:I

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    sub-int/2addr v3, v4

    sput v3, Lcom/koushikdutta/async/ByteBufferList;->g:I

    .line 9
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-lt v3, p0, :cond_0

    .line 10
    monitor-exit v1

    return-object v2

    .line 11
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_0
    const/16 v0, 0x2000

    .line 12
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static z([Ljava/nio/ByteBuffer;I)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/koushikdutta/async/ByteBufferList;->u()Ljava/util/PriorityQueue;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    sget-object v2, Lcom/koushikdutta/async/ByteBufferList;->i:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    .line 3
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v4

    if-lez v4, :cond_0

    if-ge v1, p1, :cond_0

    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 5
    sget v5, Lcom/koushikdutta/async/ByteBufferList;->g:I

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    sub-int/2addr v5, v6

    sput v5, Lcom/koushikdutta/async/ByteBufferList;->g:I

    sub-int v5, p1, v1

    .line 6
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/2addr v1, v5

    add-int/lit8 v5, v3, 0x1

    .line 7
    aput-object v4, p0, v3

    move v3, v5

    goto :goto_0

    .line 8
    :cond_0
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ge v1, p1, :cond_2

    const/16 v0, 0x2000

    sub-int/2addr p1, v1

    .line 9
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    add-int/lit8 v0, v3, 0x1

    .line 10
    aput-object p1, p0, v3

    move v3, v0

    .line 11
    :cond_2
    :goto_2
    array-length p1, p0

    if-ge v3, p1, :cond_3

    .line 12
    sget-object p1, Lcom/koushikdutta/async/ByteBufferList;->j:Ljava/nio/ByteBuffer;

    aput-object p1, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public A(Ljava/nio/ByteOrder;)Lcom/koushikdutta/async/ByteBufferList;
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/ByteBufferList;->b:Ljava/nio/ByteOrder;

    return-object p0
.end method

.method public B()Ljava/nio/ByteOrder;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->b:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public C()B
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->J(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    return v0
.end method

.method public D(I)[B
    .locals 3

    .line 1
    new-array v0, p1, [B

    .line 2
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/ByteBufferList;->J(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v2}, Lcom/koushikdutta/async/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1, v0, v2, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public E()I
    .locals 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->J(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public F()J
    .locals 2

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->J(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public G()S
    .locals 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->J(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    return v0
.end method

.method public H()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->I(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public I(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/koushikdutta/async/util/Charsets;->b:Ljava/nio/charset/Charset;

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    new-array v3, v3, [B

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    .line 7
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 9
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    .line 10
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    .line 11
    :goto_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public K()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->L(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public L(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/ByteBufferList;->I(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->O()V

    return-object p1
.end method

.method public O()V
    .locals 1

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/ArrayDeque;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->M(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/koushikdutta/async/ByteBufferList;->c:I

    return-void
.end method

.method public P()I
    .locals 1

    iget v0, p0, Lcom/koushikdutta/async/ByteBufferList;->c:I

    return v0
.end method

.method public Q()Ljava/nio/ByteBuffer;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 2
    iget v1, p0, Lcom/koushikdutta/async/ByteBufferList;->c:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/koushikdutta/async/ByteBufferList;->c:I

    return-object v0
.end method

.method public T()I
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/ArrayDeque;->size()I

    move-result v0

    return v0
.end method

.method public U(I)Lcom/koushikdutta/async/ByteBufferList;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/koushikdutta/async/ByteBufferList;->m([BII)V

    return-object p0
.end method

.method public V()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public W()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->J(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public a(Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/ByteBufferList;
    .locals 0

    invoke-virtual {p1, p0}, Lcom/koushikdutta/async/ByteBufferList;->j(Lcom/koushikdutta/async/ByteBufferList;)V

    return-object p0
.end method

.method public b(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gtz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/koushikdutta/async/ByteBufferList;->M(Ljava/nio/ByteBuffer;)V

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->f(I)V

    .line 4
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/ArrayDeque;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 7
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 8
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 10
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 12
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 13
    invoke-static {p1}, Lcom/koushikdutta/async/ByteBufferList;->M(Ljava/nio/ByteBuffer;)V

    .line 14
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->W()V

    return-object p0

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->W()V

    return-object p0
.end method

.method public varargs c([Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/ByteBufferList;
    .locals 3

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 2
    invoke-virtual {v2, p0}, Lcom/koushikdutta/async/ByteBufferList;->j(Lcom/koushikdutta/async/ByteBufferList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs d([Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;
    .locals 3

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 2
    invoke-virtual {p0, v2}, Lcom/koushikdutta/async/ByteBufferList;->b(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public e(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gtz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/koushikdutta/async/ByteBufferList;->M(Ljava/nio/ByteBuffer;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->f(I)V

    .line 4
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/ArrayDeque;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 7
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 8
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 9
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 10
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 11
    invoke-static {p1}, Lcom/koushikdutta/async/ByteBufferList;->M(Ljava/nio/ByteBuffer;)V

    return-void

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public h()B
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->J(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 2
    iget v2, p0, Lcom/koushikdutta/async/ByteBufferList;->c:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/koushikdutta/async/ByteBufferList;->c:I

    return v1
.end method

.method public i(I)Lcom/koushikdutta/async/ByteBufferList;
    .locals 1

    .line 1
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/koushikdutta/async/ByteBufferList;->k(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 3
    iget-object p1, p0, Lcom/koushikdutta/async/ByteBufferList;->b:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/ByteBufferList;->A(Ljava/nio/ByteOrder;)Lcom/koushikdutta/async/ByteBufferList;

    move-result-object p1

    return-object p1
.end method

.method public j(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 1

    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->P()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/ByteBufferList;->k(Lcom/koushikdutta/async/ByteBufferList;I)V

    return-void
.end method

.method public k(Lcom/koushikdutta/async/ByteBufferList;I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->P()I

    move-result v0

    if-lt v0, p2, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 2
    iget-object v2, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v2}, Lcom/koushikdutta/async/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-nez v3, :cond_0

    .line 4
    invoke-static {v2}, Lcom/koushikdutta/async/ByteBufferList;->M(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_0
    add-int/2addr v3, v1

    if-le v3, p2, :cond_1

    sub-int v1, p2, v1

    .line 5
    invoke-static {v1}, Lcom/koushikdutta/async/ByteBufferList;->y(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 6
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 7
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2, v4, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {p1, v3}, Lcom/koushikdutta/async/ByteBufferList;->b(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 9
    iget-object p1, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {p1, v2}, Lcom/koushikdutta/async/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p1, v2}, Lcom/koushikdutta/async/ByteBufferList;->b(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    move v1, v3

    goto :goto_0

    .line 11
    :cond_2
    :goto_1
    iget p1, p0, Lcom/koushikdutta/async/ByteBufferList;->c:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/koushikdutta/async/ByteBufferList;->c:I

    return-void

    .line 12
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/koushikdutta/async/ByteBufferList;->m([BII)V

    return-void
.end method

.method public m([BII)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->P()I

    move-result v0

    if-lt v0, p3, :cond_3

    move v0, p3

    :cond_0
    :goto_0
    if-lez v0, :cond_2

    .line 2
    iget-object v1, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {v1, p1, p2, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_1
    sub-int/2addr v0, v2

    add-int/2addr p2, v2

    .line 6
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-nez v2, :cond_0

    .line 7
    iget-object v2, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v2}, Lcom/koushikdutta/async/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 8
    invoke-static {v1}, Lcom/koushikdutta/async/ByteBufferList;->M(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 9
    :cond_2
    iget p1, p0, Lcom/koushikdutta/async/ByteBufferList;->c:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/koushikdutta/async/ByteBufferList;->c:I

    return-void

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public n()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->P()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/koushikdutta/async/ByteBufferList;->j:Ljava/nio/ByteBuffer;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->P()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->J(I)Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->Q()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public o()[Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/ArrayDeque;->size()I

    move-result v0

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    .line 2
    iget-object v1, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/util/ArrayDeque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/ByteBuffer;

    .line 3
    iget-object v1, p0, Lcom/koushikdutta/async/ByteBufferList;->a:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v1}, Lcom/koushikdutta/async/util/ArrayDeque;->clear()V

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/koushikdutta/async/ByteBufferList;->c:I

    return-object v0
.end method

.method public p()[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->P()I

    move-result v0

    new-array v0, v0, [B

    .line 2
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->l([B)V

    return-object v0
.end method

.method public q()C
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->J(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    int-to-char v1, v1

    .line 2
    iget v2, p0, Lcom/koushikdutta/async/ByteBufferList;->c:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/koushikdutta/async/ByteBufferList;->c:I

    return v1
.end method

.method public r(I)[B
    .locals 0

    .line 1
    new-array p1, p1, [B

    .line 2
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/ByteBufferList;->l([B)V

    return-object p1
.end method

.method public s()I
    .locals 3

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->J(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 2
    iget v2, p0, Lcom/koushikdutta/async/ByteBufferList;->c:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/koushikdutta/async/ByteBufferList;->c:I

    return v1
.end method

.method public t()J
    .locals 4

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->J(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    .line 2
    iget v3, p0, Lcom/koushikdutta/async/ByteBufferList;->c:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/koushikdutta/async/ByteBufferList;->c:I

    return-wide v1
.end method

.method public v()S
    .locals 3

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->J(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 2
    iget v2, p0, Lcom/koushikdutta/async/ByteBufferList;->c:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/koushikdutta/async/ByteBufferList;->c:I

    return v1
.end method

.method public w()Z
    .locals 1

    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->P()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public x()Z
    .locals 1

    iget v0, p0, Lcom/koushikdutta/async/ByteBufferList;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
