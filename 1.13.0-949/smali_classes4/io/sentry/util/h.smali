.class public final Lio/sentry/util/h;
.super Ljava/lang/Object;
.source "HintUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/util/h$a;,
        Lio/sentry/util/h$c;,
        Lio/sentry/util/h$b;
    }
.end annotation

.annotation build Lm8/a$c;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/util/h;->k(Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method

.method public static synthetic b(Lio/sentry/o0;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/sentry/util/h;->l(Lio/sentry/o0;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method

.method public static synthetic c(Lio/sentry/util/h$c;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/sentry/util/h;->j(Lio/sentry/util/h$c;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0}, Lio/sentry/util/h;->i(Ljava/lang/Object;)V

    return-void
.end method

.method public static e(Ljava/lang/Object;)Lio/sentry/b0;
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/b0;

    invoke-direct {v0}, Lio/sentry/b0;-><init>()V

    .line 2
    invoke-static {v0, p0}, Lio/sentry/util/h;->r(Lio/sentry/b0;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static f(Lio/sentry/b0;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lio/sentry/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    const-string v0, "sentry:typeCheckHint"

    invoke-virtual {p0, v0}, Lio/sentry/b0;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lio/sentry/b0;Ljava/lang/Class;)Z
    .locals 0
    .param p0    # Lio/sentry/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/b0;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/sentry/util/h;->f(Lio/sentry/b0;)Ljava/lang/Object;

    move-result-object p0

    .line 2
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static h(Lio/sentry/b0;)Z
    .locals 3
    .param p0    # Lio/sentry/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-class v1, Ljava/lang/Boolean;

    const-string v2, "sentry:isFromHybridSdk"

    invoke-virtual {p0, v2, v1}, Lio/sentry/b0;->f(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic i(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method private static synthetic j(Lio/sentry/util/h$c;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0

    invoke-interface {p0, p1}, Lio/sentry/util/h$c;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic k(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0

    return-void
.end method

.method private static synthetic l(Lio/sentry/o0;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0

    invoke-static {p2, p1, p0}, Lio/sentry/util/k;->a(Ljava/lang/Class;Ljava/lang/Object;Lio/sentry/o0;)V

    return-void
.end method

.method public static m(Lio/sentry/b0;Ljava/lang/Class;Lio/sentry/util/h$c;)V
    .locals 2
    .param p0    # Lio/sentry/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/sentry/b0;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lio/sentry/util/h$c<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lio/sentry/util/d;->a:Lio/sentry/util/d;

    new-instance v1, Lio/sentry/util/f;

    invoke-direct {v1, p2}, Lio/sentry/util/f;-><init>(Lio/sentry/util/h$c;)V

    invoke-static {p0, p1, v0, v1}, Lio/sentry/util/h;->o(Lio/sentry/b0;Ljava/lang/Class;Lio/sentry/util/h$a;Lio/sentry/util/h$b;)V

    return-void
.end method

.method public static n(Lio/sentry/b0;Ljava/lang/Class;Lio/sentry/util/h$a;)V
    .locals 1
    .param p0    # Lio/sentry/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/sentry/b0;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lio/sentry/util/h$a<",
            "TT;>;)V"
        }
    .end annotation

    sget-object v0, Lio/sentry/util/g;->a:Lio/sentry/util/g;

    invoke-static {p0, p1, p2, v0}, Lio/sentry/util/h;->o(Lio/sentry/b0;Ljava/lang/Class;Lio/sentry/util/h$a;Lio/sentry/util/h$b;)V

    return-void
.end method

.method public static o(Lio/sentry/b0;Ljava/lang/Class;Lio/sentry/util/h$a;Lio/sentry/util/h$b;)V
    .locals 1
    .param p0    # Lio/sentry/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/sentry/b0;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lio/sentry/util/h$a<",
            "TT;>;",
            "Lio/sentry/util/h$b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/sentry/util/h;->f(Lio/sentry/b0;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-static {p0, p1}, Lio/sentry/util/h;->g(Lio/sentry/b0;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p2, v0}, Lio/sentry/util/h$a;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p3, v0, p1}, Lio/sentry/util/h$b;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    :goto_0
    return-void
.end method

.method public static p(Lio/sentry/b0;Ljava/lang/Class;Lio/sentry/o0;Lio/sentry/util/h$a;)V
    .locals 1
    .param p0    # Lio/sentry/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/sentry/b0;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lio/sentry/o0;",
            "Lio/sentry/util/h$a<",
            "TT;>;)V"
        }
    .end annotation

    new-instance v0, Lio/sentry/util/e;

    invoke-direct {v0, p2}, Lio/sentry/util/e;-><init>(Lio/sentry/o0;)V

    invoke-static {p0, p1, p3, v0}, Lio/sentry/util/h;->o(Lio/sentry/b0;Ljava/lang/Class;Lio/sentry/util/h$a;Lio/sentry/util/h$b;)V

    return-void
.end method

.method public static q(Lio/sentry/b0;Ljava/lang/String;)V
    .locals 1
    .param p0    # Lio/sentry/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "sentry.javascript"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sentry.dart"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sentry.dotnet"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "sentry:isFromHybridSdk"

    invoke-virtual {p0, v0, p1}, Lio/sentry/b0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static r(Lio/sentry/b0;Ljava/lang/Object;)V
    .locals 1
    .param p0    # Lio/sentry/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "sentry:typeCheckHint"

    invoke-virtual {p0, v0, p1}, Lio/sentry/b0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static s(Lio/sentry/b0;)Z
    .locals 1
    .param p0    # Lio/sentry/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-class v0, Lio/sentry/hints/d;

    invoke-static {p0, v0}, Lio/sentry/util/h;->g(Lio/sentry/b0;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lio/sentry/hints/c;

    invoke-static {p0, v0}, Lio/sentry/util/h;->g(Lio/sentry/b0;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
