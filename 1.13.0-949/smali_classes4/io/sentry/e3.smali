.class public abstract Lio/sentry/e3;
.super Ljava/lang/Object;
.source "SentryBaseEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/e3$a;,
        Lio/sentry/e3$c;,
        Lio/sentry/e3$b;
    }
.end annotation


# static fields
.field public static final p:Ljava/lang/String; = "java"


# instance fields
.field private a:Lio/sentry/protocol/n;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final b:Lio/sentry/protocol/Contexts;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private c:Lio/sentry/protocol/l;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private d:Lio/sentry/protocol/i;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private i:Lio/sentry/protocol/w;
    .annotation build Lm8/h;
    .end annotation
.end field

.field protected transient j:Ljava/lang/Throwable;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private l:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/f;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private n:Lio/sentry/protocol/c;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 4
    new-instance v0, Lio/sentry/protocol/n;

    invoke-direct {v0}, Lio/sentry/protocol/n;-><init>()V

    invoke-direct {p0, v0}, Lio/sentry/e3;-><init>(Lio/sentry/protocol/n;)V

    return-void
.end method

.method protected constructor <init>(Lio/sentry/protocol/n;)V
    .locals 1
    .param p1    # Lio/sentry/protocol/n;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/sentry/protocol/Contexts;

    invoke-direct {v0}, Lio/sentry/protocol/Contexts;-><init>()V

    iput-object v0, p0, Lio/sentry/e3;->b:Lio/sentry/protocol/Contexts;

    .line 3
    iput-object p1, p0, Lio/sentry/e3;->a:Lio/sentry/protocol/n;

    return-void
.end method

.method static synthetic A(Lio/sentry/e3;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/sentry/e3;->k:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lio/sentry/e3;)Lio/sentry/protocol/n;
    .locals 0

    iget-object p0, p0, Lio/sentry/e3;->a:Lio/sentry/protocol/n;

    return-object p0
.end method

.method static synthetic b(Lio/sentry/e3;Lio/sentry/protocol/n;)Lio/sentry/protocol/n;
    .locals 0

    iput-object p1, p0, Lio/sentry/e3;->a:Lio/sentry/protocol/n;

    return-object p1
.end method

.method static synthetic c(Lio/sentry/e3;)Lio/sentry/protocol/Contexts;
    .locals 0

    iget-object p0, p0, Lio/sentry/e3;->b:Lio/sentry/protocol/Contexts;

    return-object p0
.end method

.method static synthetic d(Lio/sentry/e3;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/e3;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lio/sentry/e3;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/sentry/e3;->l:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lio/sentry/e3;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/sentry/e3;->m:Ljava/util/List;

    return-object p0
.end method

.method static synthetic g(Lio/sentry/e3;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/sentry/e3;->m:Ljava/util/List;

    return-object p1
.end method

.method static synthetic h(Lio/sentry/e3;)Lio/sentry/protocol/c;
    .locals 0

    iget-object p0, p0, Lio/sentry/e3;->n:Lio/sentry/protocol/c;

    return-object p0
.end method

.method static synthetic i(Lio/sentry/e3;Lio/sentry/protocol/c;)Lio/sentry/protocol/c;
    .locals 0

    iput-object p1, p0, Lio/sentry/e3;->n:Lio/sentry/protocol/c;

    return-object p1
.end method

.method static synthetic j(Lio/sentry/e3;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lio/sentry/e3;->o:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic k(Lio/sentry/e3;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lio/sentry/e3;->o:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic l(Lio/sentry/e3;)Lio/sentry/protocol/l;
    .locals 0

    iget-object p0, p0, Lio/sentry/e3;->c:Lio/sentry/protocol/l;

    return-object p0
.end method

.method static synthetic m(Lio/sentry/e3;Lio/sentry/protocol/l;)Lio/sentry/protocol/l;
    .locals 0

    iput-object p1, p0, Lio/sentry/e3;->c:Lio/sentry/protocol/l;

    return-object p1
.end method

.method static synthetic n(Lio/sentry/e3;)Lio/sentry/protocol/i;
    .locals 0

    iget-object p0, p0, Lio/sentry/e3;->d:Lio/sentry/protocol/i;

    return-object p0
.end method

.method static synthetic o(Lio/sentry/e3;Lio/sentry/protocol/i;)Lio/sentry/protocol/i;
    .locals 0

    iput-object p1, p0, Lio/sentry/e3;->d:Lio/sentry/protocol/i;

    return-object p1
.end method

.method static synthetic p(Lio/sentry/e3;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lio/sentry/e3;->e:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic q(Lio/sentry/e3;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lio/sentry/e3;->e:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic r(Lio/sentry/e3;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/e3;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic s(Lio/sentry/e3;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/sentry/e3;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic t(Lio/sentry/e3;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/e3;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic u(Lio/sentry/e3;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/sentry/e3;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic v(Lio/sentry/e3;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/e3;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic w(Lio/sentry/e3;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/sentry/e3;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic x(Lio/sentry/e3;)Lio/sentry/protocol/w;
    .locals 0

    iget-object p0, p0, Lio/sentry/e3;->i:Lio/sentry/protocol/w;

    return-object p0
.end method

.method static synthetic y(Lio/sentry/e3;Lio/sentry/protocol/w;)Lio/sentry/protocol/w;
    .locals 0

    iput-object p1, p0, Lio/sentry/e3;->i:Lio/sentry/protocol/w;

    return-object p1
.end method

.method static synthetic z(Lio/sentry/e3;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/e3;->k:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public B(Lio/sentry/f;)V
    .locals 1
    .param p1    # Lio/sentry/f;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/e3;->m:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/e3;->m:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lio/sentry/e3;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public C(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    new-instance v0, Lio/sentry/f;

    invoke-direct {v0, p1}, Lio/sentry/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/sentry/e3;->B(Lio/sentry/f;)V

    return-void
.end method

.method public D()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/f;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/e3;->m:Ljava/util/List;

    return-object v0
.end method

.method public E()Lio/sentry/protocol/Contexts;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/e3;->b:Lio/sentry/protocol/Contexts;

    return-object v0
.end method

.method public F()Lio/sentry/protocol/c;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/e3;->n:Lio/sentry/protocol/c;

    return-object v0
.end method

.method public G()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/e3;->l:Ljava/lang/String;

    return-object v0
.end method

.method public H()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/e3;->g:Ljava/lang/String;

    return-object v0
.end method

.method public I()Lio/sentry/protocol/n;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/e3;->a:Lio/sentry/protocol/n;

    return-object v0
.end method

.method public J(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/e3;->o:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method K()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/e3;->o:Ljava/util/Map;

    return-object v0
.end method

.method public L()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/e3;->h:Ljava/lang/String;

    return-object v0
.end method

.method public M()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/e3;->f:Ljava/lang/String;

    return-object v0
.end method

.method public N()Lio/sentry/protocol/i;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/e3;->d:Lio/sentry/protocol/i;

    return-object v0
.end method

.method public O()Lio/sentry/protocol/l;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/e3;->c:Lio/sentry/protocol/l;

    return-object v0
.end method

.method public P()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/e3;->k:Ljava/lang/String;

    return-object v0
.end method

.method public Q(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/e3;->e:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public R()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/a$c;
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/e3;->e:Ljava/util/Map;

    return-object v0
.end method

.method public S()Ljava/lang/Throwable;
    .locals 2
    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/e3;->j:Ljava/lang/Throwable;

    .line 2
    instance-of v1, v0, Lio/sentry/exception/ExceptionMechanismException;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lio/sentry/exception/ExceptionMechanismException;

    invoke-virtual {v0}, Lio/sentry/exception/ExceptionMechanismException;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public T()Ljava/lang/Throwable;
    .locals 1
    .annotation build Lm8/a$c;
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/e3;->j:Ljava/lang/Throwable;

    return-object v0
.end method

.method public U()Lio/sentry/protocol/w;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/e3;->i:Lio/sentry/protocol/w;

    return-object v0
.end method

.method public V(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/e3;->o:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public W(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/e3;->e:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public X(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/f;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lio/sentry/util/a;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/e3;->m:Ljava/util/List;

    return-void
.end method

.method public Y(Lio/sentry/protocol/c;)V
    .locals 0
    .param p1    # Lio/sentry/protocol/c;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/e3;->n:Lio/sentry/protocol/c;

    return-void
.end method

.method public Z(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/e3;->l:Ljava/lang/String;

    return-void
.end method

.method public a0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/e3;->g:Ljava/lang/String;

    return-void
.end method

.method public b0(Lio/sentry/protocol/n;)V
    .locals 0
    .param p1    # Lio/sentry/protocol/n;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/e3;->a:Lio/sentry/protocol/n;

    return-void
.end method

.method public c0(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/e3;->o:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/e3;->o:Ljava/util/Map;

    .line 3
    :cond_0
    iget-object v0, p0, Lio/sentry/e3;->o:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public d0(Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lio/sentry/util/a;->f(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/e3;->o:Ljava/util/Map;

    return-void
.end method

.method public e0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/e3;->h:Ljava/lang/String;

    return-void
.end method

.method public f0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/e3;->f:Ljava/lang/String;

    return-void
.end method

.method public g0(Lio/sentry/protocol/i;)V
    .locals 0
    .param p1    # Lio/sentry/protocol/i;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/e3;->d:Lio/sentry/protocol/i;

    return-void
.end method

.method public h0(Lio/sentry/protocol/l;)V
    .locals 0
    .param p1    # Lio/sentry/protocol/l;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/e3;->c:Lio/sentry/protocol/l;

    return-void
.end method

.method public i0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/e3;->k:Ljava/lang/String;

    return-void
.end method

.method public j0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/e3;->e:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/e3;->e:Ljava/util/Map;

    .line 3
    :cond_0
    iget-object v0, p0, Lio/sentry/e3;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public k0(Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lio/sentry/util/a;->f(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/e3;->e:Ljava/util/Map;

    return-void
.end method

.method public l0(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/e3;->j:Ljava/lang/Throwable;

    return-void
.end method

.method public m0(Lio/sentry/protocol/w;)V
    .locals 0
    .param p1    # Lio/sentry/protocol/w;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/e3;->i:Lio/sentry/protocol/w;

    return-void
.end method
