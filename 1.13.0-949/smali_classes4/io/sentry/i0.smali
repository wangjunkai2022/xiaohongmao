.class public final Lio/sentry/i0;
.super Ljava/lang/Object;
.source "HubAdapter.java"

# interfaces
.implements Lio/sentry/n0;


# static fields
.field private static final a:Lio/sentry/i0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/i0;

    invoke-direct {v0}, Lio/sentry/i0;-><init>()V

    sput-object v0, Lio/sentry/i0;->a:Lio/sentry/i0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d0()Lio/sentry/i0;
    .locals 1

    sget-object v0, Lio/sentry/i0;->a:Lio/sentry/i0;

    return-object v0
.end method


# virtual methods
.method public A()Lio/sentry/SentryOptions;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/n0;->A()Lio/sentry/SentryOptions;

    move-result-object v0

    return-object v0
.end method

.method public B()V
    .locals 0

    invoke-static {}, Lio/sentry/c3;->w()V

    return-void
.end method

.method public synthetic C(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/m0;->b(Lio/sentry/n0;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic D(Ljava/lang/String;Lio/sentry/s2;)Lio/sentry/protocol/n;
    .locals 0

    invoke-static {p0, p1, p2}, Lio/sentry/m0;->j(Lio/sentry/n0;Ljava/lang/String;Lio/sentry/s2;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public E()Lio/sentry/v4;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    invoke-static {}, Lio/sentry/c3;->p0()Lio/sentry/v4;

    move-result-object v0

    return-object v0
.end method

.method public synthetic F(Ljava/lang/String;)Lio/sentry/protocol/n;
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/m0;->i(Lio/sentry/n0;Ljava/lang/String;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public synthetic G(Ljava/lang/String;Ljava/lang/String;Lio/sentry/j;)Lio/sentry/w0;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lio/sentry/m0;->r(Lio/sentry/n0;Ljava/lang/String;Ljava/lang/String;Lio/sentry/j;)Lio/sentry/w0;

    move-result-object p1

    return-object p1
.end method

.method public H()V
    .locals 0

    invoke-static {}, Lio/sentry/c3;->z()V

    return-void
.end method

.method public I(Lio/sentry/SentryLevel;)V
    .locals 0
    .param p1    # Lio/sentry/SentryLevel;
        .annotation build Lm8/h;
        .end annotation
    .end param

    invoke-static {p1}, Lio/sentry/c3;->Z(Lio/sentry/SentryLevel;)V

    return-void
.end method

.method public J()Lio/sentry/protocol/n;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    invoke-static {}, Lio/sentry/c3;->C()Lio/sentry/protocol/n;

    move-result-object v0

    return-object v0
.end method

.method public synthetic K(Lio/sentry/h4;Lio/sentry/s2;)Lio/sentry/protocol/n;
    .locals 0

    invoke-static {p0, p1, p2}, Lio/sentry/m0;->f(Lio/sentry/n0;Lio/sentry/h4;Lio/sentry/s2;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public L(Lio/sentry/p5;)Lio/sentry/w0;
    .locals 0
    .param p1    # Lio/sentry/p5;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    invoke-static {p1}, Lio/sentry/c3;->e0(Lio/sentry/p5;)Lio/sentry/w0;

    move-result-object p1

    return-object p1
.end method

.method public synthetic M(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/w0;
    .locals 0

    invoke-static {p0, p1, p2}, Lio/sentry/m0;->q(Lio/sentry/n0;Ljava/lang/String;Ljava/lang/String;)Lio/sentry/w0;

    move-result-object p1

    return-object p1
.end method

.method public N(Lio/sentry/p5;Lio/sentry/r5;)Lio/sentry/w0;
    .locals 0
    .param p1    # Lio/sentry/p5;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/r5;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    invoke-static {p1, p2}, Lio/sentry/c3;->h0(Lio/sentry/p5;Lio/sentry/r5;)Lio/sentry/w0;

    move-result-object p1

    return-object p1
.end method

.method public synthetic O(Ljava/lang/Throwable;Lio/sentry/s2;)Lio/sentry/protocol/n;
    .locals 0

    invoke-static {p0, p1, p2}, Lio/sentry/m0;->h(Lio/sentry/n0;Ljava/lang/Throwable;Lio/sentry/s2;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public P(Lio/sentry/s0;)V
    .locals 0
    .param p1    # Lio/sentry/s0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-static {p1}, Lio/sentry/c3;->i(Lio/sentry/s0;)V

    return-void
.end method

.method public Q()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    invoke-static {}, Lio/sentry/c3;->N()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic R(Lio/sentry/p5;Z)Lio/sentry/w0;
    .locals 0

    invoke-static {p0, p1, p2}, Lio/sentry/m0;->p(Lio/sentry/n0;Lio/sentry/p5;Z)Lio/sentry/w0;

    move-result-object p1

    return-object p1
.end method

.method public S(Lio/sentry/h4;Lio/sentry/b0;Lio/sentry/s2;)Lio/sentry/protocol/n;
    .locals 0
    .param p1    # Lio/sentry/h4;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b0;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lio/sentry/s2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    invoke-static {p1, p2, p3}, Lio/sentry/c3;->l(Lio/sentry/h4;Lio/sentry/b0;Lio/sentry/s2;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public synthetic T(Lio/sentry/p5;Lio/sentry/j;)Lio/sentry/w0;
    .locals 0

    invoke-static {p0, p1, p2}, Lio/sentry/m0;->o(Lio/sentry/n0;Lio/sentry/p5;Lio/sentry/j;)Lio/sentry/w0;

    move-result-object p1

    return-object p1
.end method

.method public synthetic U(Lio/sentry/protocol/u;Lio/sentry/b0;)Lio/sentry/protocol/n;
    .locals 0

    invoke-static {p0, p1, p2}, Lio/sentry/m0;->k(Lio/sentry/n0;Lio/sentry/protocol/u;Lio/sentry/b0;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public V(Lio/sentry/s2;)V
    .locals 0
    .param p1    # Lio/sentry/s2;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-static {p1}, Lio/sentry/c3;->q0(Lio/sentry/s2;)V

    return-void
.end method

.method public W(Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/s2;)Lio/sentry/protocol/n;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/SentryLevel;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/s2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    invoke-static {p1, p2, p3}, Lio/sentry/c3;->u(Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/s2;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public X(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    invoke-static {p1}, Lio/sentry/c3;->b0(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic Y(Ljava/lang/String;Ljava/lang/String;Lio/sentry/j;Z)Lio/sentry/w0;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lio/sentry/m0;->s(Lio/sentry/n0;Ljava/lang/String;Ljava/lang/String;Lio/sentry/j;Z)Lio/sentry/w0;

    move-result-object p1

    return-object p1
.end method

.method public synthetic Z(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/sentry/m0;->c(Lio/sentry/n0;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-static {p1, p2}, Lio/sentry/c3;->a0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a0(Lio/sentry/protocol/u;Lio/sentry/m5;Lio/sentry/b0;Lio/sentry/m2;)Lio/sentry/protocol/n;
    .locals 1
    .param p1    # Lio/sentry/protocol/u;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/m5;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lio/sentry/b0;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Lio/sentry/m2;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Lio/sentry/n0;->a0(Lio/sentry/protocol/u;Lio/sentry/m5;Lio/sentry/b0;Lio/sentry/m2;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-static {p1}, Lio/sentry/c3;->U(Ljava/lang/String;)V

    return-void
.end method

.method public b0()V
    .locals 0

    invoke-static {}, Lio/sentry/c3;->d0()V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-static {p1}, Lio/sentry/c3;->V(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic c0(Ljava/lang/String;Ljava/lang/String;Z)Lio/sentry/w0;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lio/sentry/m0;->t(Lio/sentry/n0;Ljava/lang/String;Ljava/lang/String;Z)Lio/sentry/w0;

    move-result-object p1

    return-object p1
.end method

.method public clone()Lio/sentry/n0;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    .line 2
    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/n0;->clone()Lio/sentry/n0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/sentry/i0;->clone()Lio/sentry/n0;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    invoke-static {}, Lio/sentry/c3;->x()V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-static {p1, p2}, Lio/sentry/c3;->X(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(J)V
    .locals 0

    invoke-static {p1, p2}, Lio/sentry/c3;->A(J)V

    return-void
.end method

.method public f(Lio/sentry/protocol/w;)V
    .locals 0
    .param p1    # Lio/sentry/protocol/w;
        .annotation build Lm8/h;
        .end annotation
    .end param

    invoke-static {p1}, Lio/sentry/c3;->c0(Lio/sentry/protocol/w;)V

    return-void
.end method

.method public synthetic g(Lio/sentry/f;)V
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/m0;->a(Lio/sentry/n0;Lio/sentry/f;)V

    return-void
.end method

.method public h(Ljava/lang/String;Lio/sentry/SentryLevel;)Lio/sentry/protocol/n;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/SentryLevel;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    invoke-static {p1, p2}, Lio/sentry/c3;->t(Ljava/lang/String;Lio/sentry/SentryLevel;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public synthetic i(Lio/sentry/l3;)Lio/sentry/protocol/n;
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/m0;->d(Lio/sentry/n0;Lio/sentry/l3;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public isEnabled()Z
    .locals 1

    invoke-static {}, Lio/sentry/c3;->O()Z

    move-result v0

    return v0
.end method

.method public j(Lio/sentry/h4;Lio/sentry/b0;)Lio/sentry/protocol/n;
    .locals 0
    .param p1    # Lio/sentry/h4;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b0;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    invoke-static {p1, p2}, Lio/sentry/c3;->k(Lio/sentry/h4;Lio/sentry/b0;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public synthetic k(Lio/sentry/h4;)Lio/sentry/protocol/n;
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/m0;->e(Lio/sentry/n0;Lio/sentry/h4;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public synthetic l(Lio/sentry/protocol/u;Lio/sentry/m5;)Lio/sentry/protocol/n;
    .locals 0

    invoke-static {p0, p1, p2}, Lio/sentry/m0;->l(Lio/sentry/n0;Lio/sentry/protocol/u;Lio/sentry/m5;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public synthetic m(Ljava/lang/Throwable;)Lio/sentry/protocol/n;
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/m0;->g(Lio/sentry/n0;Ljava/lang/Throwable;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public n(Ljava/lang/Throwable;Lio/sentry/b0;)Lio/sentry/protocol/n;
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b0;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    invoke-static {p1, p2}, Lio/sentry/c3;->o(Ljava/lang/Throwable;Lio/sentry/b0;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public o(Lio/sentry/l3;Lio/sentry/b0;)Lio/sentry/protocol/n;
    .locals 1
    .param p1    # Lio/sentry/l3;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b0;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/a$c;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/sentry/n0;->o(Lio/sentry/l3;Lio/sentry/b0;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public p(Lio/sentry/w5;)V
    .locals 0
    .param p1    # Lio/sentry/w5;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-static {p1}, Lio/sentry/c3;->v(Lio/sentry/w5;)V

    return-void
.end method

.method public q(Ljava/lang/Throwable;Lio/sentry/b0;Lio/sentry/s2;)Lio/sentry/protocol/n;
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b0;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lio/sentry/s2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    invoke-static {p1, p2, p3}, Lio/sentry/c3;->p(Ljava/lang/Throwable;Lio/sentry/b0;Lio/sentry/s2;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public synthetic r(Lio/sentry/protocol/u;Lio/sentry/m5;Lio/sentry/b0;)Lio/sentry/protocol/n;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lio/sentry/m0;->m(Lio/sentry/n0;Lio/sentry/protocol/u;Lio/sentry/m5;Lio/sentry/b0;)Lio/sentry/protocol/n;

    move-result-object p1

    return-object p1
.end method

.method public s(Lio/sentry/f;Lio/sentry/b0;)V
    .locals 0
    .param p1    # Lio/sentry/f;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b0;
        .annotation build Lm8/h;
        .end annotation
    .end param

    invoke-static {p1, p2}, Lio/sentry/c3;->e(Lio/sentry/f;Lio/sentry/b0;)V

    return-void
.end method

.method public t(Lio/sentry/s2;)V
    .locals 0
    .param p1    # Lio/sentry/s2;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-static {p1}, Lio/sentry/c3;->y(Lio/sentry/s2;)V

    return-void
.end method

.method public u()Lio/sentry/v0;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/n0;->u()Lio/sentry/v0;

    move-result-object v0

    return-object v0
.end method

.method public v(Lio/sentry/p5;Lio/sentry/j;Z)Lio/sentry/w0;
    .locals 0
    .param p1    # Lio/sentry/p5;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/j;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    invoke-static {p1, p2, p3}, Lio/sentry/c3;->g0(Lio/sentry/p5;Lio/sentry/j;Z)Lio/sentry/w0;

    move-result-object p1

    return-object p1
.end method

.method public w()V
    .locals 0

    invoke-static {}, Lio/sentry/c3;->T()V

    return-void
.end method

.method public x(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lio/sentry/c3;->Y(Ljava/util/List;)V

    return-void
.end method

.method public y(Ljava/lang/Throwable;Lio/sentry/v0;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/v0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-static {}, Lio/sentry/c3;->B()Lio/sentry/n0;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lio/sentry/n0;->y(Ljava/lang/Throwable;Lio/sentry/v0;Ljava/lang/String;)V

    return-void
.end method

.method public z()V
    .locals 0

    invoke-static {}, Lio/sentry/c3;->S()V

    return-void
.end method
