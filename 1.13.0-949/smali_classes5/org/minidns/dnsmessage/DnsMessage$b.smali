.class public Lorg/minidns/dnsmessage/DnsMessage$b;
.super Ljava/lang/Object;
.source "DnsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/dnsmessage/DnsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

.field private c:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:J

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/minidns/dnsmessage/a;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/h;",
            ">;>;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/h;",
            ">;>;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/h;",
            ">;>;"
        }
    .end annotation
.end field

.field private p:Lorg/minidns/edns/Edns$b;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->QUERY:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->b:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 5
    sget-object v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->NO_ERROR:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->c:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->k:J

    return-void
.end method

.method synthetic constructor <init>(Lorg/minidns/dnsmessage/DnsMessage$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/minidns/dnsmessage/DnsMessage$b;-><init>()V

    return-void
.end method

.method private constructor <init>(Lorg/minidns/dnsmessage/DnsMessage;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget-object v0, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->QUERY:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->b:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 9
    sget-object v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->NO_ERROR:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->c:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    const-wide/16 v0, -0x1

    .line 10
    iput-wide v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->k:J

    .line 11
    iget v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->a:I

    iput v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->a:I

    .line 12
    iget-object v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->b:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->b:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 13
    iget-object v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->c:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->c:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 14
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->d:Z

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->d:Z

    .line 15
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->e:Z

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->e:Z

    .line 16
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->f:Z

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->f:Z

    .line 17
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->g:Z

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->g:Z

    .line 18
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->h:Z

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->h:Z

    .line 19
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->i:Z

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->i:Z

    .line 20
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->j:Z

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->j:Z

    .line 21
    iget-wide v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->q:J

    iput-wide v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->k:J

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/minidns/dnsmessage/DnsMessage;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->l:Ljava/util/List;

    .line 23
    iget-object v1, p1, Lorg/minidns/dnsmessage/DnsMessage;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/minidns/dnsmessage/DnsMessage;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->m:Ljava/util/List;

    .line 25
    iget-object v1, p1, Lorg/minidns/dnsmessage/DnsMessage;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/minidns/dnsmessage/DnsMessage;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->n:Ljava/util/List;

    .line 27
    iget-object v1, p1, Lorg/minidns/dnsmessage/DnsMessage;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/minidns/dnsmessage/DnsMessage;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->o:Ljava/util/List;

    .line 29
    iget-object p1, p1, Lorg/minidns/dnsmessage/DnsMessage;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsmessage/DnsMessage$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/minidns/dnsmessage/DnsMessage$b;-><init>(Lorg/minidns/dnsmessage/DnsMessage;)V

    return-void
.end method

.method static synthetic a(Lorg/minidns/dnsmessage/DnsMessage$b;)I
    .locals 0

    iget p0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->a:I

    return p0
.end method

.method static synthetic b(Lorg/minidns/dnsmessage/DnsMessage$b;)Lorg/minidns/dnsmessage/DnsMessage$OPCODE;
    .locals 0

    iget-object p0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->b:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    return-object p0
.end method

.method static synthetic c(Lorg/minidns/dnsmessage/DnsMessage$b;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->j:Z

    return p0
.end method

.method static synthetic d(Lorg/minidns/dnsmessage/DnsMessage$b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->l:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lorg/minidns/dnsmessage/DnsMessage$b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->m:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lorg/minidns/dnsmessage/DnsMessage$b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->n:Ljava/util/List;

    return-object p0
.end method

.method static synthetic g(Lorg/minidns/dnsmessage/DnsMessage$b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->o:Ljava/util/List;

    return-object p0
.end method

.method static synthetic h(Lorg/minidns/dnsmessage/DnsMessage$b;)Lorg/minidns/edns/Edns$b;
    .locals 0

    iget-object p0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->p:Lorg/minidns/edns/Edns$b;

    return-object p0
.end method

.method static synthetic i(Lorg/minidns/dnsmessage/DnsMessage$b;)Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;
    .locals 0

    iget-object p0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->c:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    return-object p0
.end method

.method static synthetic j(Lorg/minidns/dnsmessage/DnsMessage$b;)J
    .locals 2

    iget-wide v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->k:J

    return-wide v0
.end method

.method static synthetic k(Lorg/minidns/dnsmessage/DnsMessage$b;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->d:Z

    return p0
.end method

.method static synthetic l(Lorg/minidns/dnsmessage/DnsMessage$b;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->e:Z

    return p0
.end method

.method static synthetic m(Lorg/minidns/dnsmessage/DnsMessage$b;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->f:Z

    return p0
.end method

.method static synthetic n(Lorg/minidns/dnsmessage/DnsMessage$b;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->g:Z

    return p0
.end method

.method static synthetic o(Lorg/minidns/dnsmessage/DnsMessage$b;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->h:Z

    return p0
.end method

.method static synthetic p(Lorg/minidns/dnsmessage/DnsMessage$b;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->i:Z

    return p0
.end method


# virtual methods
.method public A()Lorg/minidns/edns/Edns$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->p:Lorg/minidns/edns/Edns$b;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lorg/minidns/edns/Edns;->c()Lorg/minidns/edns/Edns$b;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->p:Lorg/minidns/edns/Edns$b;

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->p:Lorg/minidns/edns/Edns$b;

    return-object v0
.end method

.method public B(Ljava/util/Collection;)Lorg/minidns/dnsmessage/DnsMessage$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/h;",
            ">;>;)",
            "Lorg/minidns/dnsmessage/DnsMessage$b;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->o:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public C(Ljava/util/Collection;)Lorg/minidns/dnsmessage/DnsMessage$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/h;",
            ">;>;)",
            "Lorg/minidns/dnsmessage/DnsMessage$b;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->m:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public D(Z)Lorg/minidns/dnsmessage/DnsMessage$b;
    .locals 0

    iput-boolean p1, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->i:Z

    return-object p0
.end method

.method public E(Z)Lorg/minidns/dnsmessage/DnsMessage$b;
    .locals 0

    iput-boolean p1, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->e:Z

    return-object p0
.end method

.method public F(Z)Lorg/minidns/dnsmessage/DnsMessage$b;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->j:Z

    return-object p0
.end method

.method public G(Z)Lorg/minidns/dnsmessage/DnsMessage$b;
    .locals 0

    iput-boolean p1, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->j:Z

    return-object p0
.end method

.method public H(I)Lorg/minidns/dnsmessage/DnsMessage$b;
    .locals 1

    const v0, 0xffff

    and-int/2addr p1, v0

    iput p1, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->a:I

    return-object p0
.end method

.method public I(Ljava/util/Collection;)Lorg/minidns/dnsmessage/DnsMessage$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/h;",
            ">;>;)",
            "Lorg/minidns/dnsmessage/DnsMessage$b;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->n:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public J(Lorg/minidns/dnsmessage/DnsMessage$OPCODE;)Lorg/minidns/dnsmessage/DnsMessage$b;
    .locals 0

    iput-object p1, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->b:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    return-object p0
.end method

.method public K(Z)Lorg/minidns/dnsmessage/DnsMessage$b;
    .locals 0

    iput-boolean p1, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->d:Z

    return-object p0
.end method

.method public L(Lorg/minidns/dnsmessage/a;)Lorg/minidns/dnsmessage/DnsMessage$b;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->l:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public M(Ljava/util/List;)Lorg/minidns/dnsmessage/DnsMessage$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/minidns/dnsmessage/a;",
            ">;)",
            "Lorg/minidns/dnsmessage/DnsMessage$b;"
        }
    .end annotation

    iput-object p1, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->l:Ljava/util/List;

    return-object p0
.end method

.method public N(J)Lorg/minidns/dnsmessage/DnsMessage$b;
    .locals 0

    iput-wide p1, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->k:J

    return-object p0
.end method

.method public O(Z)Lorg/minidns/dnsmessage/DnsMessage$b;
    .locals 0

    iput-boolean p1, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->h:Z

    return-object p0
.end method

.method public P(Z)Lorg/minidns/dnsmessage/DnsMessage$b;
    .locals 0

    iput-boolean p1, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->g:Z

    return-object p0
.end method

.method public Q(Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;)Lorg/minidns/dnsmessage/DnsMessage$b;
    .locals 0

    iput-object p1, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->c:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    return-object p0
.end method

.method public R(Z)Lorg/minidns/dnsmessage/DnsMessage$b;
    .locals 0

    iput-boolean p1, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->f:Z

    return-object p0
.end method

.method public q(Lorg/minidns/record/Record;)Lorg/minidns/dnsmessage/DnsMessage$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/h;",
            ">;)",
            "Lorg/minidns/dnsmessage/DnsMessage$b;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->o:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->o:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public r(Ljava/util/List;)Lorg/minidns/dnsmessage/DnsMessage$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/h;",
            ">;>;)",
            "Lorg/minidns/dnsmessage/DnsMessage$b;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->o:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->o:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public s(Lorg/minidns/record/Record;)Lorg/minidns/dnsmessage/DnsMessage$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/h;",
            ">;)",
            "Lorg/minidns/dnsmessage/DnsMessage$b;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->m:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->m:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public t(Ljava/util/Collection;)Lorg/minidns/dnsmessage/DnsMessage$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/h;",
            ">;>;)",
            "Lorg/minidns/dnsmessage/DnsMessage$b;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->m:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->m:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public u(Lorg/minidns/record/Record;)Lorg/minidns/dnsmessage/DnsMessage$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/h;",
            ">;)",
            "Lorg/minidns/dnsmessage/DnsMessage$b;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->n:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->n:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public v(Lorg/minidns/dnsmessage/a;)Lorg/minidns/dnsmessage/DnsMessage$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->l:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->l:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public w()Lorg/minidns/dnsmessage/DnsMessage;
    .locals 1

    new-instance v0, Lorg/minidns/dnsmessage/DnsMessage;

    invoke-direct {v0, p0}, Lorg/minidns/dnsmessage/DnsMessage;-><init>(Lorg/minidns/dnsmessage/DnsMessage$b;)V

    return-object v0
.end method

.method public x(Lorg/minidns/dnsmessage/DnsMessage;)V
    .locals 2

    .line 1
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->d:Z

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->d:Z

    .line 2
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->i:Z

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->e:Z

    .line 3
    iget-boolean v1, p1, Lorg/minidns/dnsmessage/DnsMessage;->f:Z

    iput-boolean v1, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->f:Z

    .line 4
    iget-boolean v1, p1, Lorg/minidns/dnsmessage/DnsMessage;->g:Z

    iput-boolean v1, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->g:Z

    .line 5
    iget-boolean v1, p1, Lorg/minidns/dnsmessage/DnsMessage;->h:Z

    iput-boolean v1, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->h:Z

    .line 6
    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->i:Z

    .line 7
    iget-boolean p1, p1, Lorg/minidns/dnsmessage/DnsMessage;->j:Z

    iput-boolean p1, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->j:Z

    return-void
.end method

.method public y()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/h;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->o:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public z()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/h;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$b;->m:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method
