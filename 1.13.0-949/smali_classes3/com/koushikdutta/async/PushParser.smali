.class public Lcom/koushikdutta/async/PushParser;
.super Ljava/lang/Object;
.source "PushParser.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/PushParser$TapWaiter;,
        Lcom/koushikdutta/async/PushParser$UntilWaiter;,
        Lcom/koushikdutta/async/PushParser$LenByteBufferListWaiter;,
        Lcom/koushikdutta/async/PushParser$ByteBufferListWaiter;,
        Lcom/koushikdutta/async/PushParser$LenByteArrayWaiter;,
        Lcom/koushikdutta/async/PushParser$ByteArrayWaiter;,
        Lcom/koushikdutta/async/PushParser$IntWaiter;,
        Lcom/koushikdutta/async/PushParser$Waiter;,
        Lcom/koushikdutta/async/PushParser$ParseCallback;
    }
.end annotation


# static fields
.field static n:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/koushikdutta/async/PushParser$Waiter;

.field private b:Lcom/koushikdutta/async/PushParser$Waiter;

.field private c:Lcom/koushikdutta/async/PushParser$Waiter;

.field private d:Lcom/koushikdutta/async/PushParser$Waiter;

.field private e:Lcom/koushikdutta/async/PushParser$Waiter;

.field private f:Lcom/koushikdutta/async/PushParser$ParseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/PushParser$ParseCallback<",
            "[B>;"
        }
    .end annotation
.end field

.field private g:Lcom/koushikdutta/async/PushParser$ParseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/PushParser$ParseCallback<",
            "Lcom/koushikdutta/async/ByteBufferList;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/koushikdutta/async/PushParser$ParseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/PushParser$ParseCallback<",
            "[B>;"
        }
    .end annotation
.end field

.field i:Lcom/koushikdutta/async/DataEmitter;

.field private j:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/koushikdutta/async/PushParser$Waiter;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field l:Ljava/nio/ByteOrder;

.field m:Lcom/koushikdutta/async/ByteBufferList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/PushParser;->n:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/DataEmitter;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/koushikdutta/async/PushParser$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/PushParser$1;-><init>(Lcom/koushikdutta/async/PushParser;I)V

    iput-object v0, p0, Lcom/koushikdutta/async/PushParser;->a:Lcom/koushikdutta/async/PushParser$Waiter;

    .line 3
    new-instance v0, Lcom/koushikdutta/async/PushParser$2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/PushParser$2;-><init>(Lcom/koushikdutta/async/PushParser;I)V

    iput-object v0, p0, Lcom/koushikdutta/async/PushParser;->b:Lcom/koushikdutta/async/PushParser$Waiter;

    .line 4
    new-instance v0, Lcom/koushikdutta/async/PushParser$3;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/PushParser$3;-><init>(Lcom/koushikdutta/async/PushParser;I)V

    iput-object v0, p0, Lcom/koushikdutta/async/PushParser;->c:Lcom/koushikdutta/async/PushParser$Waiter;

    .line 5
    new-instance v0, Lcom/koushikdutta/async/PushParser$4;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/PushParser$4;-><init>(Lcom/koushikdutta/async/PushParser;I)V

    iput-object v0, p0, Lcom/koushikdutta/async/PushParser;->d:Lcom/koushikdutta/async/PushParser$Waiter;

    .line 6
    new-instance v0, Lcom/koushikdutta/async/PushParser$5;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/PushParser$5;-><init>(Lcom/koushikdutta/async/PushParser;I)V

    iput-object v0, p0, Lcom/koushikdutta/async/PushParser;->e:Lcom/koushikdutta/async/PushParser$Waiter;

    .line 7
    new-instance v0, Lcom/koushikdutta/async/PushParser$6;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/PushParser$6;-><init>(Lcom/koushikdutta/async/PushParser;)V

    iput-object v0, p0, Lcom/koushikdutta/async/PushParser;->f:Lcom/koushikdutta/async/PushParser$ParseCallback;

    .line 8
    new-instance v0, Lcom/koushikdutta/async/PushParser$7;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/PushParser$7;-><init>(Lcom/koushikdutta/async/PushParser;)V

    iput-object v0, p0, Lcom/koushikdutta/async/PushParser;->g:Lcom/koushikdutta/async/PushParser$ParseCallback;

    .line 9
    new-instance v0, Lcom/koushikdutta/async/PushParser$8;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/PushParser$8;-><init>(Lcom/koushikdutta/async/PushParser;)V

    iput-object v0, p0, Lcom/koushikdutta/async/PushParser;->h:Lcom/koushikdutta/async/PushParser$ParseCallback;

    .line 10
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/PushParser;->j:Ljava/util/LinkedList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/PushParser;->k:Ljava/util/ArrayList;

    .line 12
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/koushikdutta/async/PushParser;->l:Ljava/nio/ByteOrder;

    .line 13
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/PushParser;->m:Lcom/koushikdutta/async/ByteBufferList;

    .line 14
    iput-object p1, p0, Lcom/koushikdutta/async/PushParser;->i:Lcom/koushikdutta/async/DataEmitter;

    .line 15
    invoke-interface {p1, p0}, Lcom/koushikdutta/async/DataEmitter;->b0(Lcom/koushikdutta/async/callback/DataCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/PushParser;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/koushikdutta/async/PushParser;->k:Ljava/util/ArrayList;

    return-object p0
.end method

.method static b(Lcom/koushikdutta/async/TapCallback;)Ljava/lang/reflect/Method;
    .locals 7

    .line 1
    sget-object v0, Lcom/koushikdutta/async/PushParser;->n:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 3
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "tap"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4
    sget-object v0, Lcom/koushikdutta/async/PushParser;->n:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    .line 6
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 7
    aget-object p0, p0, v2

    return-object p0

    .line 8
    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "-keep class * extends com.koushikdutta.async.TapCallback {\n    *;\n}\n"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public c()Lcom/koushikdutta/async/PushParser;
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->j:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/koushikdutta/async/PushParser;->a:Lcom/koushikdutta/async/PushParser$Waiter;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public d()Lcom/koushikdutta/async/PushParser;
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->j:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/koushikdutta/async/PushParser;->b:Lcom/koushikdutta/async/PushParser$Waiter;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public e(I)Lcom/koushikdutta/async/PushParser;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/koushikdutta/async/PushParser;->k()Lcom/koushikdutta/async/PushParser;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->f:Lcom/koushikdutta/async/PushParser$ParseCallback;

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/PushParser;->f(ILcom/koushikdutta/async/PushParser$ParseCallback;)Lcom/koushikdutta/async/PushParser;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public f(ILcom/koushikdutta/async/PushParser$ParseCallback;)Lcom/koushikdutta/async/PushParser;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/koushikdutta/async/PushParser$ParseCallback<",
            "[B>;)",
            "Lcom/koushikdutta/async/PushParser;"
        }
    .end annotation

    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->j:Ljava/util/LinkedList;

    new-instance v1, Lcom/koushikdutta/async/PushParser$ByteArrayWaiter;

    invoke-direct {v1, p1, p2}, Lcom/koushikdutta/async/PushParser$ByteArrayWaiter;-><init>(ILcom/koushikdutta/async/PushParser$ParseCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public g(I)Lcom/koushikdutta/async/PushParser;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/koushikdutta/async/PushParser;->l()Lcom/koushikdutta/async/PushParser;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->g:Lcom/koushikdutta/async/PushParser$ParseCallback;

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/PushParser;->h(ILcom/koushikdutta/async/PushParser$ParseCallback;)Lcom/koushikdutta/async/PushParser;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public h(ILcom/koushikdutta/async/PushParser$ParseCallback;)Lcom/koushikdutta/async/PushParser;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/koushikdutta/async/PushParser$ParseCallback<",
            "Lcom/koushikdutta/async/ByteBufferList;",
            ">;)",
            "Lcom/koushikdutta/async/PushParser;"
        }
    .end annotation

    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->j:Ljava/util/LinkedList;

    new-instance v1, Lcom/koushikdutta/async/PushParser$ByteBufferListWaiter;

    invoke-direct {v1, p1, p2}, Lcom/koushikdutta/async/PushParser$ByteBufferListWaiter;-><init>(ILcom/koushikdutta/async/PushParser$ParseCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public i()Lcom/koushikdutta/async/PushParser;
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->j:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/koushikdutta/async/PushParser;->d:Lcom/koushikdutta/async/PushParser$Waiter;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public j(Lcom/koushikdutta/async/PushParser$ParseCallback;)Lcom/koushikdutta/async/PushParser;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/PushParser$ParseCallback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/koushikdutta/async/PushParser;"
        }
    .end annotation

    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->j:Ljava/util/LinkedList;

    new-instance v1, Lcom/koushikdutta/async/PushParser$IntWaiter;

    invoke-direct {v1, p1}, Lcom/koushikdutta/async/PushParser$IntWaiter;-><init>(Lcom/koushikdutta/async/PushParser$ParseCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public k()Lcom/koushikdutta/async/PushParser;
    .locals 3

    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->j:Ljava/util/LinkedList;

    new-instance v1, Lcom/koushikdutta/async/PushParser$LenByteArrayWaiter;

    iget-object v2, p0, Lcom/koushikdutta/async/PushParser;->f:Lcom/koushikdutta/async/PushParser$ParseCallback;

    invoke-direct {v1, v2}, Lcom/koushikdutta/async/PushParser$LenByteArrayWaiter;-><init>(Lcom/koushikdutta/async/PushParser$ParseCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public l()Lcom/koushikdutta/async/PushParser;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->g:Lcom/koushikdutta/async/PushParser$ParseCallback;

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/PushParser;->m(Lcom/koushikdutta/async/PushParser$ParseCallback;)Lcom/koushikdutta/async/PushParser;

    move-result-object v0

    return-object v0
.end method

.method public m(Lcom/koushikdutta/async/PushParser$ParseCallback;)Lcom/koushikdutta/async/PushParser;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/PushParser$ParseCallback<",
            "Lcom/koushikdutta/async/ByteBufferList;",
            ">;)",
            "Lcom/koushikdutta/async/PushParser;"
        }
    .end annotation

    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->j:Ljava/util/LinkedList;

    new-instance v1, Lcom/koushikdutta/async/PushParser$LenByteBufferListWaiter;

    invoke-direct {v1, p1}, Lcom/koushikdutta/async/PushParser$LenByteBufferListWaiter;-><init>(Lcom/koushikdutta/async/PushParser$ParseCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public n()Lcom/koushikdutta/async/PushParser;
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->j:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/koushikdutta/async/PushParser;->e:Lcom/koushikdutta/async/PushParser$Waiter;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public o()Lcom/koushikdutta/async/PushParser;
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->j:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/koushikdutta/async/PushParser;->c:Lcom/koushikdutta/async/PushParser$Waiter;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public p()Lcom/koushikdutta/async/PushParser;
    .locals 3

    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->j:Ljava/util/LinkedList;

    new-instance v1, Lcom/koushikdutta/async/PushParser$LenByteArrayWaiter;

    iget-object v2, p0, Lcom/koushikdutta/async/PushParser;->h:Lcom/koushikdutta/async/PushParser$ParseCallback;

    invoke-direct {v1, v2}, Lcom/koushikdutta/async/PushParser$LenByteArrayWaiter;-><init>(Lcom/koushikdutta/async/PushParser$ParseCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public q(Ljava/nio/ByteOrder;)Lcom/koushikdutta/async/PushParser;
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/PushParser;->l:Ljava/nio/ByteOrder;

    return-object p0
.end method

.method public r(Lcom/koushikdutta/async/TapCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->j:Ljava/util/LinkedList;

    new-instance v1, Lcom/koushikdutta/async/PushParser$TapWaiter;

    invoke-direct {v1, p0, p1}, Lcom/koushikdutta/async/PushParser$TapWaiter;-><init>(Lcom/koushikdutta/async/PushParser;Lcom/koushikdutta/async/TapCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public s(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->m:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/ByteBufferList;->j(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 2
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->m:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->P()I

    move-result v0

    iget-object v1, p0, Lcom/koushikdutta/async/PushParser;->j:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/PushParser$Waiter;

    iget v1, v1, Lcom/koushikdutta/async/PushParser$Waiter;->a:I

    if-lt v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->m:Lcom/koushikdutta/async/ByteBufferList;

    iget-object v1, p0, Lcom/koushikdutta/async/PushParser;->l:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/ByteBufferList;->A(Ljava/nio/ByteOrder;)Lcom/koushikdutta/async/ByteBufferList;

    .line 4
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/PushParser$Waiter;

    iget-object v1, p0, Lcom/koushikdutta/async/PushParser;->m:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0, p1, v1}, Lcom/koushikdutta/async/PushParser$Waiter;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/PushParser$Waiter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/koushikdutta/async/PushParser;->j:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/koushikdutta/async/PushParser;->j:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/koushikdutta/async/PushParser;->m:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/ByteBufferList;->j(Lcom/koushikdutta/async/ByteBufferList;)V

    :cond_2
    return-void
.end method

.method public t(BLcom/koushikdutta/async/callback/DataCallback;)Lcom/koushikdutta/async/PushParser;
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->j:Ljava/util/LinkedList;

    new-instance v1, Lcom/koushikdutta/async/PushParser$UntilWaiter;

    invoke-direct {v1, p1, p2}, Lcom/koushikdutta/async/PushParser$UntilWaiter;-><init>(BLcom/koushikdutta/async/callback/DataCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
