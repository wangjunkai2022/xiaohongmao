.class public final Lio/sentry/r5;
.super Ljava/lang/Object;
.source "TransactionOptions.java"


# annotations
.annotation build Lm8/a$c;
.end annotation


# instance fields
.field private a:Lio/sentry/j;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private b:Z

.field private c:Lio/sentry/j3;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private d:Z

.field private e:Ljava/lang/Long;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private f:Z

.field private g:Lio/sentry/q5;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/sentry/r5;->a:Lio/sentry/j;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lio/sentry/r5;->b:Z

    .line 4
    iput-object v0, p0, Lio/sentry/r5;->c:Lio/sentry/j3;

    .line 5
    iput-boolean v1, p0, Lio/sentry/r5;->d:Z

    .line 6
    iput-object v0, p0, Lio/sentry/r5;->e:Ljava/lang/Long;

    .line 7
    iput-boolean v1, p0, Lio/sentry/r5;->f:Z

    .line 8
    iput-object v0, p0, Lio/sentry/r5;->g:Lio/sentry/q5;

    return-void
.end method


# virtual methods
.method public a()Lio/sentry/j;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/r5;->a:Lio/sentry/j;

    return-object v0
.end method

.method public b()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/r5;->e:Ljava/lang/Long;

    return-object v0
.end method

.method public c()Lio/sentry/j3;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/r5;->c:Lio/sentry/j3;

    return-object v0
.end method

.method public d()Lio/sentry/q5;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/r5;->g:Lio/sentry/q5;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lio/sentry/r5;->b:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lio/sentry/r5;->f:Z

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lio/sentry/r5;->d:Z

    return v0
.end method

.method public h(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/r5;->b:Z

    return-void
.end method

.method public i(Lio/sentry/j;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/r5;->a:Lio/sentry/j;

    return-void
.end method

.method public j(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/r5;->e:Ljava/lang/Long;

    return-void
.end method

.method public k(Lio/sentry/j3;)V
    .locals 0
    .param p1    # Lio/sentry/j3;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/r5;->c:Lio/sentry/j3;

    return-void
.end method

.method public l(Lio/sentry/q5;)V
    .locals 0
    .param p1    # Lio/sentry/q5;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/r5;->g:Lio/sentry/q5;

    return-void
.end method

.method public m(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/r5;->f:Z

    return-void
.end method

.method public n(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/r5;->d:Z

    return-void
.end method
