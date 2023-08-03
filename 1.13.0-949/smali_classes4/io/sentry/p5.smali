.class public final Lio/sentry/p5;
.super Lio/sentry/f5;
.source "TransactionContext.java"


# instance fields
.field private final k:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final l:Lio/sentry/protocol/TransactionNameSource;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private m:Lio/sentry/o5;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private n:Lio/sentry/d;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private o:Lio/sentry/Instrumenter;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/protocol/TransactionNameSource;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/a$c;
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lio/sentry/p5;-><init>(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;Ljava/lang/String;Lio/sentry/o5;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;Ljava/lang/String;Lio/sentry/o5;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/protocol/TransactionNameSource;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lio/sentry/o5;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/a$c;
    .end annotation

    .line 4
    invoke-direct {p0, p3}, Lio/sentry/f5;-><init>(Ljava/lang/String;)V

    .line 5
    sget-object p3, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    iput-object p3, p0, Lio/sentry/p5;->o:Lio/sentry/Instrumenter;

    const-string p3, "name is required"

    .line 6
    invoke-static {p1, p3}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/sentry/p5;->k:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lio/sentry/p5;->l:Lio/sentry/protocol/TransactionNameSource;

    .line 8
    invoke-virtual {p0, p4}, Lio/sentry/f5;->o(Lio/sentry/o5;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/p5;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/sentry/o5;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lio/sentry/o5;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/o5;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 3
    sget-object v0, Lio/sentry/protocol/TransactionNameSource;->CUSTOM:Lio/sentry/protocol/TransactionNameSource;

    invoke-direct {p0, p1, v0, p2, p3}, Lio/sentry/p5;-><init>(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;Ljava/lang/String;Lio/sentry/o5;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lio/sentry/protocol/n;Lio/sentry/h5;Lio/sentry/protocol/TransactionNameSource;Lio/sentry/h5;Lio/sentry/o5;Lio/sentry/d;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/protocol/n;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lio/sentry/h5;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Lio/sentry/protocol/TransactionNameSource;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p6    # Lio/sentry/h5;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p7    # Lio/sentry/o5;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p8    # Lio/sentry/d;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/a$c;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p2

    move-object v4, p6

    .line 9
    invoke-direct/range {v0 .. v5}, Lio/sentry/f5;-><init>(Lio/sentry/protocol/n;Lio/sentry/h5;Ljava/lang/String;Lio/sentry/h5;Lio/sentry/o5;)V

    .line 10
    sget-object p2, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    iput-object p2, p0, Lio/sentry/p5;->o:Lio/sentry/Instrumenter;

    const-string p2, "name is required"

    .line 11
    invoke-static {p1, p2}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/sentry/p5;->k:Ljava/lang/String;

    .line 12
    iput-object p7, p0, Lio/sentry/p5;->m:Lio/sentry/o5;

    .line 13
    iput-object p5, p0, Lio/sentry/p5;->l:Lio/sentry/protocol/TransactionNameSource;

    .line 14
    iput-object p8, p0, Lio/sentry/p5;->n:Lio/sentry/d;

    return-void
.end method

.method public static r(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;Ljava/lang/String;Lio/sentry/v4;)Lio/sentry/p5;
    .locals 11
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lio/sentry/protocol/TransactionNameSource;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/v4;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/a$c;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    invoke-virtual {p3}, Lio/sentry/v4;->e()Ljava/lang/Boolean;

    move-result-object v0

    .line 2
    new-instance v10, Lio/sentry/p5;

    .line 3
    invoke-virtual {p3}, Lio/sentry/v4;->c()Lio/sentry/protocol/n;

    move-result-object v4

    new-instance v5, Lio/sentry/h5;

    invoke-direct {v5}, Lio/sentry/h5;-><init>()V

    .line 4
    invoke-virtual {p3}, Lio/sentry/v4;->b()Lio/sentry/h5;

    move-result-object v7

    if-nez v0, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p3, Lio/sentry/o5;

    invoke-direct {p3, v0}, Lio/sentry/o5;-><init>(Ljava/lang/Boolean;)V

    :goto_0
    move-object v8, p3

    const/4 v9, 0x0

    move-object v1, v10

    move-object v2, p0

    move-object v3, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v9}, Lio/sentry/p5;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/sentry/protocol/n;Lio/sentry/h5;Lio/sentry/protocol/TransactionNameSource;Lio/sentry/h5;Lio/sentry/o5;Lio/sentry/d;)V

    return-object v10
.end method

.method public static s(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;Ljava/lang/String;Lio/sentry/v4;Lio/sentry/d;Lio/sentry/h5;)Lio/sentry/p5;
    .locals 11
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lio/sentry/protocol/TransactionNameSource;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/v4;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lio/sentry/d;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Lio/sentry/h5;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/a$c;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    invoke-virtual {p3}, Lio/sentry/v4;->e()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Lio/sentry/o5;

    invoke-direct {v1, v0}, Lio/sentry/o5;-><init>(Ljava/lang/Boolean;)V

    :goto_0
    if-eqz p4, :cond_3

    .line 3
    invoke-virtual {p4}, Lio/sentry/d;->c()V

    .line 4
    invoke-virtual {p4}, Lio/sentry/d;->o()Ljava/lang/Double;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v1, :cond_2

    .line 6
    new-instance v2, Lio/sentry/o5;

    invoke-direct {v2, v0, v1}, Lio/sentry/o5;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;)V

    move-object v9, v2

    goto :goto_2

    .line 7
    :cond_2
    new-instance v1, Lio/sentry/o5;

    invoke-direct {v1, v0}, Lio/sentry/o5;-><init>(Ljava/lang/Boolean;)V

    :cond_3
    move-object v9, v1

    :goto_2
    if-nez p5, :cond_4

    .line 8
    new-instance v0, Lio/sentry/h5;

    invoke-direct {v0}, Lio/sentry/h5;-><init>()V

    move-object v6, v0

    goto :goto_3

    :cond_4
    move-object/from16 v6, p5

    .line 9
    :goto_3
    new-instance v0, Lio/sentry/p5;

    .line 10
    invoke-virtual {p3}, Lio/sentry/v4;->c()Lio/sentry/protocol/n;

    move-result-object v5

    .line 11
    invoke-virtual {p3}, Lio/sentry/v4;->b()Lio/sentry/h5;

    move-result-object v8

    move-object v2, v0

    move-object v3, p0

    move-object v4, p2

    move-object v7, p1

    move-object v10, p4

    invoke-direct/range {v2 .. v10}, Lio/sentry/p5;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/sentry/protocol/n;Lio/sentry/h5;Lio/sentry/protocol/TransactionNameSource;Lio/sentry/h5;Lio/sentry/o5;Lio/sentry/d;)V

    return-object v0
.end method

.method public static t(Ljava/lang/String;Ljava/lang/String;Lio/sentry/v4;)Lio/sentry/p5;
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/v4;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    sget-object v1, Lio/sentry/protocol/TransactionNameSource;->CUSTOM:Lio/sentry/protocol/TransactionNameSource;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lio/sentry/p5;->s(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;Ljava/lang/String;Lio/sentry/v4;Lio/sentry/d;Lio/sentry/h5;)Lio/sentry/p5;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A(Lio/sentry/Instrumenter;)V
    .locals 0
    .param p1    # Lio/sentry/Instrumenter;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iput-object p1, p0, Lio/sentry/p5;->o:Lio/sentry/Instrumenter;

    return-void
.end method

.method public B(Ljava/lang/Boolean;)V
    .locals 1
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lio/sentry/p5;->m:Lio/sentry/o5;

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lio/sentry/o5;

    invoke-direct {v0, p1}, Lio/sentry/o5;-><init>(Ljava/lang/Boolean;)V

    iput-object v0, p0, Lio/sentry/p5;->m:Lio/sentry/o5;

    :goto_0
    return-void
.end method

.method public C(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    iput-object v0, p0, Lio/sentry/p5;->m:Lio/sentry/o5;

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 2
    new-instance p2, Lio/sentry/o5;

    invoke-direct {p2, p1}, Lio/sentry/o5;-><init>(Ljava/lang/Boolean;)V

    iput-object p2, p0, Lio/sentry/p5;->m:Lio/sentry/o5;

    goto :goto_0

    .line 3
    :cond_1
    new-instance v1, Lio/sentry/o5;

    invoke-direct {v1, p1, v0, p2, v0}, Lio/sentry/o5;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Double;)V

    iput-object v1, p0, Lio/sentry/p5;->m:Lio/sentry/o5;

    :goto_0
    return-void
.end method

.method public u()Lio/sentry/d;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/p5;->n:Lio/sentry/d;

    return-object v0
.end method

.method public v()Lio/sentry/Instrumenter;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/p5;->o:Lio/sentry/Instrumenter;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/p5;->k:Ljava/lang/String;

    return-object v0
.end method

.method public x()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/p5;->m:Lio/sentry/o5;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lio/sentry/o5;->d()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public y()Lio/sentry/o5;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/p5;->m:Lio/sentry/o5;

    return-object v0
.end method

.method public z()Lio/sentry/protocol/TransactionNameSource;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/p5;->l:Lio/sentry/protocol/TransactionNameSource;

    return-object v0
.end method
