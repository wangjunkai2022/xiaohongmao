.class public Lorg/minidns/iterative/b;
.super Ljava/lang/Object;
.source "ResolutionState.java"


# static fields
.field static final synthetic d:Z


# instance fields
.field private final a:Lorg/minidns/iterative/a;

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/net/InetAddress;",
            "Ljava/util/Set<",
            "Lorg/minidns/dnsmessage/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lorg/minidns/iterative/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/minidns/iterative/b;->b:Ljava/util/HashMap;

    .line 3
    iput-object p1, p0, Lorg/minidns/iterative/b;->a:Lorg/minidns/iterative/a;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    iget v0, p0, Lorg/minidns/iterative/b;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/minidns/iterative/b;->c:I

    return-void
.end method

.method b(Ljava/net/InetAddress;Lorg/minidns/dnsmessage/DnsMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/minidns/iterative/IterativeClientException$LoopDetected;,
            Lorg/minidns/iterative/IterativeClientException$MaxIterativeStepsReached;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lorg/minidns/dnsmessage/DnsMessage;->o()Lorg/minidns/dnsmessage/a;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lorg/minidns/iterative/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/minidns/iterative/b;->b:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/minidns/iterative/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    :goto_0
    iget v0, p0, Lorg/minidns/iterative/b;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/minidns/iterative/b;->c:I

    iget-object v1, p0, Lorg/minidns/iterative/b;->a:Lorg/minidns/iterative/a;

    iget v1, v1, Lorg/minidns/iterative/a;->j:I

    if-gt v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lorg/minidns/iterative/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 7
    :cond_1
    new-instance p1, Lorg/minidns/iterative/IterativeClientException$MaxIterativeStepsReached;

    invoke-direct {p1}, Lorg/minidns/iterative/IterativeClientException$MaxIterativeStepsReached;-><init>()V

    throw p1

    .line 8
    :cond_2
    new-instance p1, Lorg/minidns/iterative/IterativeClientException$LoopDetected;

    invoke-direct {p1}, Lorg/minidns/iterative/IterativeClientException$LoopDetected;-><init>()V

    throw p1
.end method
